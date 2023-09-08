import ballerina/lang.'string;
import ballerina/os;
import ballerina/log;
import ballerina/regex;

import ballerina/http;
import ballerina/mime;

//import pdf_converter.java.io as javaio;
import pdf_converter.com.google.auth.oauth2;
import pdf_converter.googleapis.storage;


string pdfBucket = os:getEnv( "PDF_BUCKET" );

// TODO: is it an error? isolated 
function getADCToken() returns string|error {
    oauth2:GoogleCredentials credentials = check oauth2:GoogleCredentials_getApplicationDefault();

    credentials = check credentials.createScoped3(["https://www.googleapis.com/auth/cloud-platform"]);

    check credentials.refreshIfExpired();

    oauth2:AccessToken accessToken = credentials.getAccessToken();

    string token = accessToken.getTokenValue();

    log:printInfo( "Get ADC Token: " + token.substring( 0,8 ) + "..." );

    return token;
}


function getPort() returns int|error {
    string port = os:getEnv("PORT");

    if port == "" {
        port = "8080";
    }

    log:printInfo("PDF Converter Service Listening on port: " + port);

    return check int:fromString(port);
}

int PORT =  check getPort();

service / on new http:Listener( PORT ) {

    # A resource to convert a file to the pdf format 
    # + payload - pubsub notification
    # + return - status
    resource function post .(http:Request request) returns http:Response|error {

        // process event notification
        json notification = check request.getJsonPayload();

        log:printInfo( notification.toString() );

        json messageData = check notification.message.data;

        string messageString = messageData.toString();
        byte[] messageBytes = check mime:base64DecodeBlob( messageString.toBytes());

        string dataString = check string:fromBytes(messageBytes);
        json data = check dataString.fromJsonString();

        string fileName = check data.name;
        string bucket = check data.bucket;

        log:printInfo( string `Convert from Bucket: ${bucket} file: ${fileName}` );


        // init google cloud storage client instance
        storage:ConnectionConfig config = {
            auth: {
                token: check getADCToken()
            }
        };

        storage:Client storageClient= check new (config) ;

        // download file
        //storage:Object 'object = check storageClient->storageObjectsGet( bucket, fileName );
// // error: Payload binding failed: 'map<json>' value cannot be converted to 'pdf_converter.googleapis.storage:Object': 
//                 field 'generation' in record 'pdf_converter.googleapis.storage:Object' should be of type 'int', found '"1693935640492407"'
//                 field 'metageneration' in record 'pdf_converter.googleapis.storage:Object' should be of type 'int', found '"1"'
//         at ballerina.http.2:createPayloadBindingError(http_client_payload_builder.bal:183)
//            ballerina.http.2:nonNilablejsonPayloadBuilder(http_client_payload_builder.bal:165)
//            ballerina.http.2:jsonPayloadBuilder(http_client_payload_builder.bal:139)
//            ballerina.http.2:getBuilderFromType(http_client_payload_builder.bal:69)
//            ballerina.http.2:performDataBinding(http_client_payload_builder.bal:43)
//            ballerina.http.2:processResponse(http_client_endpoint.bal:644)
//            ballerina.http.2.Client:processGet(http_client_endpoint.bal:286)
// cause: {ballerina/lang.value}ConversionError
//         at ballerina.lang.value.0:fromJsonWithType(value.bal:370)
//            ballerina.http.2:nonNilablejsonPayloadBuilder(http_client_payload_builder.bal:164)

        storage:Object 'object = check storageClient->storageObjectsGet( bucket, fileName );
        //string? objectUrl = check storageClient->storageObjectsGet( bucket, fileName ).mediaLink;

        string? objectUrl = 'object.mediaLink;

        byte[] fileToConvert = [];

        if( objectUrl is () ){
            return error( string `MediaLink is not provided for the bucket/object: ${bucket}/${fileName}`);
        }

        http:Client httpClient = check new( objectUrl );

        http:Response resp = check httpClient->get("", {"Authorization": "Bearer " + config.auth.token});

        fileToConvert = check resp.getBinaryPayload();

        //
        // convert file using https://github.com/philiplehmann/unoserver
        //
        // curl -X POST 
        // -H "Authorization: Bearer $(gcloud auth print-identity-token)" 
        //  -H 'content-type: application/x-www-form-urlencoded' 
        //  --data-binary "@file.txt" --output document.pdf 
        //  https://unoserver-esz7hg74qq-uc.a.run.app/convert

        // process the file with unoserver
        http:Client unoServer = check new( "http://127.0.0.1:5000" );

        http:Request unoRequest = new;

        unoRequest.setBinaryPayload( fileToConvert, mime:APPLICATION_FORM_URLENCODED);

        // 
        log:printInfo("Request to convert input file: " + fileName);
        http:Response unoResponse = check unoServer->post( "/convert", unoRequest );

        // prepare pdf file name
        string pdfFileName = regex:replace( fileName, "\\.\\w+$", ".pdf");


        // publish file to -processed bucket

        //fileToConvert
        http:Client storageServer = check new( "https://storage.googleapis.com/upload/storage/v1/b" );

        http:Request storageRequest = new;

        storageRequest.setHeader( "Authorization", "Bearer " + config.auth.token );
        storageRequest.setBinaryPayload(  check unoResponse.getBinaryPayload(),  mime:APPLICATION_PDF);


        http:Response storageResponse = check storageServer->post( 
            string `/${pdfBucket}/o?alt=json&prettyPrint=true&uploadType=media&name=${pdfFileName}`, 
            storageRequest
        );

        string responsePayload = check storageResponse.getTextPayload();
        log:printInfo("Uploaded PDF File: " + responsePayload );


        // delete file:
        http:Response objectDeleteResponse = check storageClient->storageObjectsDelete( bucket, fileName );
        log:printInfo("File Deleted: " + objectDeleteResponse.statusCode.toString() + "; " + objectDeleteResponse.reasonPhrase );


        // response 200
        http:Response response = new;
        response.setTextPayload( "\n\nOK\n\n" );

        return response;
    }
}
