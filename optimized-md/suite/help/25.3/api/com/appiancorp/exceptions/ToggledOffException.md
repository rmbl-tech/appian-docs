---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/ToggledOffException.html
original_path: api/com/appiancorp/exceptions/ToggledOffException.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Class ToggledOffException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.exceptions.ToggledOffException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ToggledOffException extends [AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

This is a marker exception that is intended to be thrown from code that requires a feature toggle to be on. Locations upstream of this should be able to gracefully handle this, i.e. this could be thrown from a JAX-RS Resource (REST Service) and AppianExceptionMapper will turn it into 403 - Forbidden since [`ErrorCode.FEATURE_TOGGLED_OFF`](../suiteapi/common/exceptions/ErrorCode.html#FEATURE_TOGGLED_OFF) is mapped to the 403 status code.

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.ToggledOffException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ToggledOffException](#%3Cinit%3E\(\))()`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianRuntimeException](../suiteapi/common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[equals](../suiteapi/common/exceptions/AppianRuntimeException.html#equals\(java.lang.Object\)), [getCause](../suiteapi/common/exceptions/AppianRuntimeException.html#getCause\(\)), [getErrorCode](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianRuntimeException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../suiteapi/common/exceptions/AppianRuntimeException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../suiteapi/common/exceptions/AppianRuntimeException.html#getMessage\(\)), [getStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#getStackTrace\(\)), [hashCode](../suiteapi/common/exceptions/AppianRuntimeException.html#hashCode\(\)), [initCause](../suiteapi/common/exceptions/AppianRuntimeException.html#initCause\(java.lang.Throwable\)), [isDelegateInstanceOf](../suiteapi/common/exceptions/AppianRuntimeException.html#isDelegateInstanceOf\(java.lang.Class\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintStream\)), [printStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#printStackTrace\(java.io.PrintWriter\)), [setStackTrace](../suiteapi/common/exceptions/AppianRuntimeException.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\)), [toAppianException](../suiteapi/common/exceptions/AppianRuntimeException.html#toAppianException\(\)), [toString](../suiteapi/common/exceptions/AppianRuntimeException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ToggledOffException

        public ToggledOffException()