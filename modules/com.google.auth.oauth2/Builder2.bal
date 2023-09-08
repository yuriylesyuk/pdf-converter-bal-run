// This is an empty Ballerina class autogenerated to represent the `com.google.auth.oauth2.OAuth2Credentials$Builder` Java class.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen com.google.auth.oauth2.OAuth2Credentials\$Builder

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.google.auth.oauth2.OAuth2Credentials$Builder` class.
@java:Binding {'class: "com.google.auth.oauth2.OAuth2Credentials$Builder"}
public distinct class Builder2 {

    *java:JObject;

    # The `handle` field that stores the reference to the `com.google.auth.oauth2.OAuth2Credentials$Builder` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.google.auth.oauth2.OAuth2Credentials$Builder` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.google.auth.oauth2.OAuth2Credentials$Builder` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

}
