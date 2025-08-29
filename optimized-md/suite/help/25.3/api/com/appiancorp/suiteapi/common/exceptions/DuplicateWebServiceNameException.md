---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/DuplicateWebServiceNameException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/DuplicateWebServiceNameException.html
version: "25.3"
title: "Class DuplicateWebServiceNameException"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/DuplicateWebServiceNameException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class DuplicateWebServiceNameException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.exceptions.AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

com.appiancorp.suiteapi.common.exceptions.DuplicateWebServiceNameException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class DuplicateWebServiceNameException extends [AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")

Exception that is thrown if the user tries to create a web service to start a process model, and a web service with the same name already exists.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.DuplicateWebServiceNameException)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[_errorCode](#_errorCode)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DuplicateWebServiceNameException](#%3Cinit%3E\(\))()`

    Constructs a new exception using the default ErrorCode for this Exception

    `[DuplicateWebServiceNameException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_)`

    Initializes the exception with a specific `ErrorCode`

    `[DuplicateWebServiceNameException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause_)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Returns this exception's errorCode

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](AppianException.html#getMessage\(\)), [toString](AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### \_errorCode

        protected [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") \_errorCode

-   ## Constructor Details

    -   ### DuplicateWebServiceNameException

        public DuplicateWebServiceNameException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_)

        Initializes the exception with a specific `ErrorCode`

        Parameters:

        `errorCode_` - the error code to use

    -   ### DuplicateWebServiceNameException

        public DuplicateWebServiceNameException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause\_)

    -   ### DuplicateWebServiceNameException

        public DuplicateWebServiceNameException()

        Constructs a new exception using the default ErrorCode for this Exception

-   ## Method Details

    -   ### getErrorCode

        public [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Returns this exception's errorCode

        Overrides:

        `[getErrorCode](AppianException.html#getErrorCode\(\))` in class `[AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](ErrorCode.html#GENERIC_ERROR)