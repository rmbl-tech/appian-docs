---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/AppianPrivilegeNotFoundException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/AppianPrivilegeNotFoundException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class AppianPrivilegeNotFoundException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.common.exceptions.AppianPrivilegeNotFoundException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class AppianPrivilegeNotFoundException extends [AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

`AppianPrivilegeNotFoundException` acts as a wrapper around an equivalent `AppianPrivelegeException`. Used as a marker for specialized error handling for SAIL interfaces.

See Also:

-   [`AppianRuntimeException`](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.AppianPrivilegeNotFoundException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianPrivilegeNotFoundException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    `[AppianPrivilegeNotFoundException](#%3Cinit%3E\(java.lang.Throwable,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](AppianRuntimeException.html#getCause\(\)), [getErrorCode](AppianRuntimeException.html#getErrorCode\(\)), [getErrorCodeArguments](AppianRuntimeException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](AppianRuntimeException.html#getMessage\(\)), [getStackTrace](AppianRuntimeException.html#getStackTrace\(\)), [hashCode](AppianRuntimeException.html#hashCode\(\)), [initCause](AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](AppianRuntimeException.html#toAppianException\(\)), [toString](AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianPrivilegeNotFoundException

        public AppianPrivilegeNotFoundException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

    -   ### AppianPrivilegeNotFoundException

        public AppianPrivilegeNotFoundException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)