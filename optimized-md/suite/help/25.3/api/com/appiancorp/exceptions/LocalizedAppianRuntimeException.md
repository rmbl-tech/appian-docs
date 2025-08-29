---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/LocalizedAppianRuntimeException.html
original_path: api/com/appiancorp/exceptions/LocalizedAppianRuntimeException.html
version: "25.3"
title: "Class LocalizedAppianRuntimeException"
page_id: "api/com/appiancorp/exceptions/LocalizedAppianRuntimeException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class LocalizedAppianRuntimeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.exceptions.LocalizedAppianRuntimeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class LocalizedAppianRuntimeException extends [AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This is a wrapper Exception for the purposes of localizing the exception before it is sent to the client

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.LocalizedAppianRuntimeException)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[LocalizedAppianRuntimeException.LocalizedAppianException](LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocalizedAppianRuntimeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.AppianException,java.util.Locale\))([AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](../suiteapi/common/exceptions/AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](../suiteapi/common/exceptions/AppianRuntimeException.html#getCause\(\)), [getErrorCode](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getMessage\(\)), [getStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#getStackTrace\(\)), [hashCode](../suiteapi/common/exceptions/AppianRuntimeException.html#hashCode\(\)), [initCause](../suiteapi/common/exceptions/AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](../suiteapi/common/exceptions/AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](../suiteapi/common/exceptions/AppianRuntimeException.html#toAppianException\(\)), [toString](../suiteapi/common/exceptions/AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### LocalizedAppianRuntimeException

        public LocalizedAppianRuntimeException([AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)