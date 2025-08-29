---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/InvalidRankNameException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/InvalidRankNameException.html
version: "25.3"
title: "Class InvalidRankNameException"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/InvalidRankNameException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class InvalidRankNameException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.common.exceptions.InvalidRankNameException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidRankNameException extends [AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception may be thrown by service methods detecting that the rank name is invalid.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.InvalidRankNameException)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[NAME](#NAME)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidRankNameException](#%3Cinit%3E\(\))()`

    `[InvalidRankNameException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](AppianRuntimeException.html#getCause\(\)), [getErrorCode](AppianRuntimeException.html#getErrorCode\(\)), [getErrorCodeArguments](AppianRuntimeException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](AppianRuntimeException.html#getMessage\(\)), [getStackTrace](AppianRuntimeException.html#getStackTrace\(\)), [hashCode](AppianRuntimeException.html#hashCode\(\)), [initCause](AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](AppianRuntimeException.html#toAppianException\(\)), [toString](AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") NAME

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.common.exceptions.InvalidRankNameException.NAME)

-   ## Constructor Details

    -   ### InvalidRankNameException

        public InvalidRankNameException()

    -   ### InvalidRankNameException

        public InvalidRankNameException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)