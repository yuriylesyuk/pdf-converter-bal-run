// This is an empty Ballerina class autogenerated to represent the `com.google.auth.http.HttpTransportFactory` Java interface.
//
// If you need the implementation of this class generated, please use the following command.
//
// $ bal bindgen [(-cp|--classpath) <classpath>...]
//               [(-mvn|--maven) <groupId>:<artifactId>:<version>]
//               [(-o|--output) <output-path>]
//               [--public]
//               (<class-name>...)
//
// E.g. $ bal bindgen com.google.auth.http.HttpTransportFactory

import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.google.auth.http.HttpTransportFactory` interface.
@java:Binding {'class: "com.google.auth.http.HttpTransportFactory"}
public distinct class HttpTransportFactory {

    *java:JObject;

    # The `handle` field that stores the reference to the `com.google.auth.http.HttpTransportFactory` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.google.auth.http.HttpTransportFactory` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.google.auth.http.HttpTransportFactory` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

}

