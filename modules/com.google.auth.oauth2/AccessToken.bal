import ballerina/jballerina.java;
import pdf_converter.java.util as javautil;
import pdf_converter.java.lang as javalang;

# Ballerina class mapping for the Java `com.google.auth.oauth2.AccessToken` class.
@java:Binding {'class: "com.google.auth.oauth2.AccessToken"}
public distinct class AccessToken {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `com.google.auth.oauth2.AccessToken` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `com.google.auth.oauth2.AccessToken` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.google.auth.oauth2.AccessToken` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }
    # The function that maps to the `equals` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return com_google_auth_oauth2_AccessToken_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = com_google_auth_oauth2_AccessToken_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getExpirationTime` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `javautil:Date` value returning from the Java mapping.
    public function getExpirationTime() returns javautil:Date {
        handle externalObj = com_google_auth_oauth2_AccessToken_getExpirationTime(self.jObj);
        javautil:Date newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getScopes` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `javautil:List` value returning from the Java mapping.
    public function getScopes() returns javautil:List {
        handle externalObj = com_google_auth_oauth2_AccessToken_getScopes(self.jObj);
        javautil:List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTokenValue` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getTokenValue() returns string {
        return java:toString(com_google_auth_oauth2_AccessToken_getTokenValue(self.jObj)) ?: "";
    }

    # The function that maps to the `hashCode` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_google_auth_oauth2_AccessToken_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.google.auth.oauth2.AccessToken`.
    public function notify() {
        com_google_auth_oauth2_AccessToken_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.google.auth.oauth2.AccessToken`.
    public function notifyAll() {
        com_google_auth_oauth2_AccessToken_notifyAll(self.jObj);
    }

    # The function that maps to the `toBuilder` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `Builder` value returning from the Java mapping.
    public function toBuilder() returns Builder {
        handle externalObj = com_google_auth_oauth2_AccessToken_toBuilder(self.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_AccessToken_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_AccessToken_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.google.auth.oauth2.AccessToken`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = com_google_auth_oauth2_AccessToken_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `com.google.auth.oauth2.AccessToken`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `javautil:Date` value required to map with the Java constructor parameter.
# + return - The new `AccessToken` class generated.
public function newAccessToken1(string arg0, javautil:Date arg1) returns AccessToken {
    handle externalObj = com_google_auth_oauth2_AccessToken_newAccessToken1(java:fromString(arg0), arg1.jObj);
    AccessToken newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `newBuilder` method of `com.google.auth.oauth2.AccessToken`.
#
# + return - The `Builder` value returning from the Java mapping.
public function AccessToken_newBuilder() returns Builder {
    handle externalObj = com_google_auth_oauth2_AccessToken_newBuilder();
    Builder newObj = new (externalObj);
    return newObj;
}

function com_google_auth_oauth2_AccessToken_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: ["java.lang.Object"]
} external;

function com_google_auth_oauth2_AccessToken_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_getExpirationTime(handle receiver) returns handle = @java:Method {
    name: "getExpirationTime",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_getScopes(handle receiver) returns handle = @java:Method {
    name: "getScopes",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_getTokenValue(handle receiver) returns handle = @java:Method {
    name: "getTokenValue",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_newBuilder() returns handle = @java:Method {
    name: "newBuilder",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_toBuilder(handle receiver) returns handle = @java:Method {
    name: "toBuilder",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: []
} external;

function com_google_auth_oauth2_AccessToken_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: ["long"]
} external;

function com_google_auth_oauth2_AccessToken_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: ["long", "int"]
} external;

function com_google_auth_oauth2_AccessToken_newAccessToken1(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "com.google.auth.oauth2.AccessToken",
    paramTypes: ["java.lang.String", "java.util.Date"]
} external;

