import ballerina/jballerina.java;
import pdf_converter.java.lang as javalang;
import pdf_converter.java.util as javautil;
import pdf_converter.java.net as javanet;
import pdf_converter.java.io as javaio;
import pdf_converter.java.util.concurrent as javautilconcurrent;
import pdf_converter.com.google.auth as comgoogleauth;

# Ballerina class mapping for the Java `com.google.auth.oauth2.OAuth2Credentials` class.
@java:Binding {'class: "com.google.auth.oauth2.OAuth2Credentials"}
public distinct class OAuth2Credentials {

    *java:JObject;
    *comgoogleauth:Credentials;

    # The `handle` field that stores the reference to the `com.google.auth.oauth2.OAuth2Credentials` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.google.auth.oauth2.OAuth2Credentials` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.google.auth.oauth2.OAuth2Credentials` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `addChangeListener` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `CredentialsChangedListener` value required to map with the Java method parameter.
    public function addChangeListener(CredentialsChangedListener arg0) {
        com_google_auth_oauth2_OAuth2Credentials_addChangeListener(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_google_auth_oauth2_OAuth2Credentials_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getAccessToken` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `AccessToken` value returning from the Java mapping.
    public function getAccessToken() returns AccessToken {
        handle externalObj = com_google_auth_oauth2_OAuth2Credentials_getAccessToken(self.jObj);
        AccessToken newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getAuthenticationType` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getAuthenticationType() returns string {
        return java:toString(com_google_auth_oauth2_OAuth2Credentials_getAuthenticationType(self.jObj)) ?: "";
    }

    # The function that maps to the `getClass` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_google_auth_oauth2_OAuth2Credentials_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getRequestMetadata` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `javautil:Map` or the `javaio:IOException` value returning from the Java mapping.
    public function getRequestMetadata() returns javautil:Map|javaio:IOException {
        handle|error externalObj = com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javautil:Map newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `getRequestMetadata` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `javanet:URI` value required to map with the Java method parameter.
    # + return - The `javautil:Map` or the `javaio:IOException` value returning from the Java mapping.
    public function getRequestMetadata2(javanet:URI arg0) returns javautil:Map|javaio:IOException {
        handle|error externalObj = com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata2(self.jObj, arg0.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javautil:Map newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `getRequestMetadata` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `javanet:URI` value required to map with the Java method parameter.
    # + arg1 - The `javautilconcurrent:Executor` value required to map with the Java method parameter.
    # + arg2 - The `comgoogleauth:RequestMetadataCallback` value required to map with the Java method parameter.
    public function getRequestMetadata3(javanet:URI arg0, javautilconcurrent:Executor arg1, comgoogleauth:RequestMetadataCallback arg2) {
        com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata3(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
    }

    # The function that maps to the `hasRequestMetadata` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function hasRequestMetadata() returns boolean {
        return com_google_auth_oauth2_OAuth2Credentials_hasRequestMetadata(self.jObj);
    }

    # The function that maps to the `hasRequestMetadataOnly` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function hasRequestMetadataOnly() returns boolean {
        return com_google_auth_oauth2_OAuth2Credentials_hasRequestMetadataOnly(self.jObj);
    }

    # The function that maps to the `hashCode` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_google_auth_oauth2_OAuth2Credentials_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.google.auth.oauth2.OAuth2Credentials`.
    public function notify() {
        com_google_auth_oauth2_OAuth2Credentials_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.google.auth.oauth2.OAuth2Credentials`.
    public function notifyAll() {
        com_google_auth_oauth2_OAuth2Credentials_notifyAll(self.jObj);
    }

    # The function that maps to the `refresh` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public function refresh() returns javaio:IOException? {
        error|() externalObj = com_google_auth_oauth2_OAuth2Credentials_refresh(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `refreshAccessToken` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `AccessToken` or the `javaio:IOException` value returning from the Java mapping.
    public function refreshAccessToken() returns AccessToken|javaio:IOException {
        handle|error externalObj = com_google_auth_oauth2_OAuth2Credentials_refreshAccessToken(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            AccessToken newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `refreshIfExpired` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `javaio:IOException` value returning from the Java mapping.
    public function refreshIfExpired() returns javaio:IOException? {
        error|() externalObj = com_google_auth_oauth2_OAuth2Credentials_refreshIfExpired(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `removeChangeListener` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `CredentialsChangedListener` value required to map with the Java method parameter.
    public function removeChangeListener(CredentialsChangedListener arg0) {
        com_google_auth_oauth2_OAuth2Credentials_removeChangeListener(self.jObj, arg0.jObj);
    }

    # The function that maps to the `toBuilder` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `Builder2` value returning from the Java mapping.
    public function toBuilder() returns Builder2 {
        handle externalObj = com_google_auth_oauth2_OAuth2Credentials_toBuilder(self.jObj);
        Builder2 newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_OAuth2Credentials_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_OAuth2Credentials_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.OAuth2Credentials`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_OAuth2Credentials_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `create` method of `com.google.auth.oauth2.OAuth2Credentials`.
#
# + arg0 - The `AccessToken` value required to map with the Java method parameter.
# + return - The `OAuth2Credentials` value returning from the Java mapping.
public function OAuth2Credentials_create(AccessToken arg0) returns OAuth2Credentials {
    handle externalObj = com_google_auth_oauth2_OAuth2Credentials_create(arg0.jObj);
    OAuth2Credentials newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `newBuilder` method of `com.google.auth.oauth2.OAuth2Credentials`.
#
# + return - The `Builder2` value returning from the Java mapping.
public function OAuth2Credentials_newBuilder() returns Builder2 {
    handle externalObj = com_google_auth_oauth2_OAuth2Credentials_newBuilder();
    Builder2 newObj = new (externalObj);
    return newObj;
}

function com_google_auth_oauth2_OAuth2Credentials_addChangeListener(handle receiver, handle arg0) = @java:Method {
    name: "addChangeListener",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["com.google.auth.oauth2.OAuth2Credentials$CredentialsChangedListener"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_create(handle arg0) returns handle = @java:Method {
    name: "create",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["com.google.auth.oauth2.AccessToken"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["java.lang.Object"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_getAccessToken(handle receiver) returns handle = @java:Method {
    name: "getAccessToken",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_getAuthenticationType(handle receiver) returns handle = @java:Method {
    name: "getAuthenticationType",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata(handle receiver) returns handle|error = @java:Method {
    name: "getRequestMetadata",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata2(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "getRequestMetadata",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["java.net.URI"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_getRequestMetadata3(handle receiver, handle arg0, handle arg1, handle arg2) = @java:Method {
    name: "getRequestMetadata",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["java.net.URI", "java.util.concurrent.Executor", "com.google.auth.RequestMetadataCallback"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_hasRequestMetadata(handle receiver) returns boolean = @java:Method {
    name: "hasRequestMetadata",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_hasRequestMetadataOnly(handle receiver) returns boolean = @java:Method {
    name: "hasRequestMetadataOnly",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_newBuilder() returns handle = @java:Method {
    name: "newBuilder",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_refresh(handle receiver) returns error? = @java:Method {
    name: "refresh",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_refreshAccessToken(handle receiver) returns handle|error = @java:Method {
    name: "refreshAccessToken",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_refreshIfExpired(handle receiver) returns error? = @java:Method {
    name: "refreshIfExpired",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_removeChangeListener(handle receiver, handle arg0) = @java:Method {
    name: "removeChangeListener",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["com.google.auth.oauth2.OAuth2Credentials$CredentialsChangedListener"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_toBuilder(handle receiver) returns handle = @java:Method {
    name: "toBuilder",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: []
} external;

function com_google_auth_oauth2_OAuth2Credentials_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["long"]
} external;

function com_google_auth_oauth2_OAuth2Credentials_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.OAuth2Credentials",
    paramTypes: ["long", "int"]
} external;

