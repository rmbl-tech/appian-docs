---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/ObjectNotFoundException.html
original_path: api/com/appiancorp/exceptions/ObjectNotFoundException.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Class ObjectNotFoundException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.exceptions.ObjectNotFoundException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ObjectNotFoundException extends [AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

See Also:

-   [Serialized Form](../../../serialized-form.html#com.appiancorp.exceptions.ObjectNotFoundException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ObjectNotFoundException](#%3Cinit%3E\(java.lang.Object,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") invalidIdentifier, [ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    `[ObjectNotFoundException](#%3Cinit%3E\(java.lang.Object,java.lang.Throwable,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") invalidIdentifier, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getInvalidIdentifier](#getInvalidIdentifier\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a detailed exception's message representation.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../suiteapi/common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../suiteapi/common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../suiteapi/common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../suiteapi/common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../suiteapi/common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../suiteapi/common/exceptions/AppianException.html#getMessage\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ObjectNotFoundException

        public ObjectNotFoundException([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") invalidIdentifier, [ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

    -   ### ObjectNotFoundException

        public ObjectNotFoundException([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") invalidIdentifier, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

-   ## Method Details

    -   ### getInvalidIdentifier

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getInvalidIdentifier()

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[AppianException](../suiteapi/common/exceptions/AppianException.html#toString\(\))`

        Returns a detailed exception's message representation. **This method should not be used to display messages to the end user**. The default representation includes the exception class name, the exception's message as returned by [`AppianException.getMessage()`](../suiteapi/common/exceptions/AppianException.html#getMessage\(\)) and the error code associated with this exception. If the error code is [`ErrorCode.GENERIC_ERROR`](../suiteapi/common/exceptions/ErrorCode.html#GENERIC_ERROR), no error code information is included.

        Overrides:

        `[toString](../suiteapi/common/exceptions/AppianException.html#toString\(\))` in class `[AppianException](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`