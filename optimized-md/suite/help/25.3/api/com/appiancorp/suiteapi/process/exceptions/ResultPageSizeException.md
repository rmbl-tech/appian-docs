---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/ResultPageSizeException.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/ResultPageSizeException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class ResultPageSizeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.process.exceptions.ResultPageSizeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ResultPageSizeException](../../../exceptions/ResultPageSizeException.html "class in com.appiancorp.exceptions")`

* * *

public class ResultPageSizeException extends [AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.exceptions.ResultPageSizeException)

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[ResultPageSizeException](#%3Cinit%3E\(\))()`

    Constructs a new exception with `null` as its detail message.

    `protected`

    `[ResultPageSizeException](#%3Cinit%3E\(com.appiancorp.exceptions.Environment\))([Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)`

    `[ResultPageSizeException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    `protected`

    `[ResultPageSizeException](#%3Cinit%3E\(java.lang.String,com.appiancorp.exceptions.Environment\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)`

    Constructs a new exception with the specified detail message.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions")`

    `[getEnvironment](#getEnvironment\(\))()`

    `[ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Gets the error code associated with this exception.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    Gets the arguments that must be used to render this exception's message representation.

    `protected void`

    `[setEnvironment](#setEnvironment\(com.appiancorp.exceptions.Environment\))([Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ResultPageSizeException

        public ResultPageSizeException()

        Constructs a new exception with `null` as its detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

    -   ### ResultPageSizeException

        protected ResultPageSizeException([Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)

    -   ### ResultPageSizeException

        protected ResultPageSizeException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)

        Constructs a new exception with the specified detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

    -   ### ResultPageSizeException

        public ResultPageSizeException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

-   ## Method Details

    -   ### setEnvironment

        protected void setEnvironment([Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") env)

    -   ### getEnvironment

        protected [Environment](../../../exceptions/Environment.html "enum class in com.appiancorp.exceptions") getEnvironment()

    -   ### getErrorCode

        public [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Description copied from class: `[AppianException](../../common/exceptions/AppianException.html#getErrorCode\(\))`

        Gets the error code associated with this exception. Subclasses should override this method to return specific error codes. The default implementation returns APNX-1-0000-000 (ErrorCode.GENERIC\_ERROR).

        Overrides:

        `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        Description copied from class: `[AppianException](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\))`

        Gets the arguments that must be used to render this exception's message representation. Subclasses should override this method to return specific arguments. The default implementation returns a length 1 array containing the message as returned by the parent class of AppianException. This method is only called when [`AppianException.getErrorCodeArguments(Locale)`](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)) hasn't been overwritten.

        Overrides:

        `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Returns:

        the arguments of the error code tied to this exception

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)