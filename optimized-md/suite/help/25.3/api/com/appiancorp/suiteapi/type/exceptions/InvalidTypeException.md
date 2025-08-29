---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/exceptions/InvalidTypeException.html
original_path: api/com/appiancorp/suiteapi/type/exceptions/InvalidTypeException.html
version: "25.3"
title: "Class InvalidTypeException"
page_id: "api/com/appiancorp/suiteapi/type/exceptions/InvalidTypeException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type.exceptions](package-summary.html)

# Class InvalidTypeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.type.exceptions.InvalidTypeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[InvalidTypeReferenceException](InvalidTypeReferenceException.html "class in com.appiancorp.suiteapi.type.exceptions")`

* * *

public class InvalidTypeException extends [AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

Thrown when a type id is used that does not refer to an existing datatype.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.type.exceptions.InvalidTypeException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidTypeException](#%3Cinit%3E\(\))()`

    Constructs a new exception with `null` as its detail message.

    `[InvalidTypeException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Constructs a new exception with the specified detail message.

    `[InvalidTypeException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Constructs a new exception with the specified detail message and cause.

    `[InvalidTypeException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Constructs a new exception with the specified cause and a detail message of (cause==null ?

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](../../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](../../common/exceptions/AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](../../common/exceptions/AppianRuntimeException.html#getCause\(\)), [getErrorCode](../../common/exceptions/AppianRuntimeException.html#getErrorCode\(\)), [getErrorCodeArguments](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianRuntimeException.html#getMessage\(\)), [getStackTrace](../../common/exceptions/AppianRuntimeException.html#getStackTrace\(\)), [hashCode](../../common/exceptions/AppianRuntimeException.html#hashCode\(\)), [initCause](../../common/exceptions/AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](../../common/exceptions/AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](../../common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](../../common/exceptions/AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](../../common/exceptions/AppianRuntimeException.html#toAppianException\(\)), [toString](../../common/exceptions/AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InvalidTypeException

        public InvalidTypeException()

        Constructs a new exception with `null` as its detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

    -   ### InvalidTypeException

        public InvalidTypeException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Constructs a new exception with the specified detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

    -   ### InvalidTypeException

        public InvalidTypeException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Constructs a new exception with the specified cause and a detail message of (cause==null ? null : cause.toString()) (which typically contains the class and detail message of cause). This constructor is useful for exceptions that are little more than wrappers for other throwables (for example, PrivilegedActionException)

        Parameters:

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

    -   ### InvalidTypeException

        public InvalidTypeException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Constructs a new exception with the specified detail message and cause. Note that the detail message associated with cause is not automatically incorporated in this exception's detail message.

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)