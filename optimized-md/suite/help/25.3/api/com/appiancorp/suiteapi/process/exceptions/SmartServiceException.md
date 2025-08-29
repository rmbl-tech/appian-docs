---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/SmartServiceException.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/SmartServiceException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class SmartServiceException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.process.exceptions.SmartServiceException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[RetryableSmartServiceException](RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`

* * *

public class SmartServiceException extends [AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

An exception thrown by a smart service in the course of its execution. Throwing this exception is the mechanism by which a smart service alerts the process execution engine that the node has failed to complete successfully. The execution layer is then responsible for taking the appropriate action (pausing the node by exception, displaying an error message, sending an alert, etc.).

The `Builder` inner class can be used to easily create an exception that has an internationalized message text based on a key in the bundle file included with the smart service plug-in.

For example, your smart service class may include a method such as the following:
`private SmartServiceException createException(Throwable t, String key, Object... args) { return new SmartServiceException.Builder(getClass(), t).userMessage(key, args).build(); }`
and then when the smart service encounters an exception, `throw createException(e,"error.my.message")` where "error.my.message" is a key to an error message defined in the bundle.

See Also:

-   [`AppianSmartService`](../framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.exceptions.SmartServiceException)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    The Builder inner class is used to create an instance of the SmartServiceException.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected boolean`

    `[addCauseToAlertMessageArgs](#addCauseToAlertMessageArgs)`

    `protected boolean`

    `[addCauseToUserMessageArgs](#addCauseToUserMessageArgs)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[alertMessageArgs](#alertMessageArgs)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[alertMessageKey](#alertMessageKey)`

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[userMessageArgs](#userMessageArgs)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[userMessageKey](#userMessageKey)`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[SmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructor to be used if the SmartServiceException has an error code associated with it.

    `[SmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Constructor to be used if the SmartServiceException has an error code associated with it and the root cause of the exception is to be included.

    `[SmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructor to be used if the SmartServiceException has an error code associated with it and the root cause of the exception is to be included.

    `protected`

    `[SmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.process.exceptions.SmartServiceException.Builder\))([SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") builder)`

    Constructor that creates the SmartServiceException based on the Builder inner class.

    `[SmartServiceException](#%3Cinit%3E\(java.lang.Class,java.lang.Throwable,java.lang.String,java.lang.Object...\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianSmartService](../framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")> smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

    Construct a SmartServiceException from all of its constituent parts.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAlertMessage](#getAlertMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    This method is called by the process execution layer to determine the message that should be shown in the body of the alert.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttendedUserMessage](#getAttendedUserMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    This method is called by the process execution layer to determine the message that should be shown to the user in their locale.

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCauseMessage](#getCauseMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExceptionClassName](#getExceptionClassName\(\))()`

    If the exception that caused this SmartServiceException is set, this method returns the name of that exception class, otherwise it will return null.

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageFromBundle](#getMessageFromBundle\(java.lang.String,java.lang.Object%5B%5D,java.util.Locale\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[] args, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a detailed exception's message representation.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### alertMessageKey

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alertMessageKey

    -   ### alertMessageArgs

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] alertMessageArgs

    -   ### addCauseToAlertMessageArgs

        protected boolean addCauseToAlertMessageArgs

    -   ### userMessageKey

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userMessageKey

    -   ### userMessageArgs

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] userMessageArgs

    -   ### addCauseToUserMessageArgs

        protected boolean addCauseToUserMessageArgs

-   ## Constructor Details

    -   ### SmartServiceException

        public SmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructor to be used if the SmartServiceException has an error code associated with it.

        Parameters:

        `errorCode` - the error code associated with the exception

        `errorCodeArgs` - the parameters to the error code message

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### SmartServiceException

        public SmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructor to be used if the SmartServiceException has an error code associated with it and the root cause of the exception is to be included.

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause of the exception

        `errorCodeArgs` - the parameters to the error code message

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### SmartServiceException

        public SmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Constructor to be used if the SmartServiceException has an error code associated with it and the root cause of the exception is to be included.

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause of the exception

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### SmartServiceException

        public SmartServiceException([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianSmartService](../framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")\> smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)

        Construct a SmartServiceException from all of its constituent parts. It's recommended to use the Builder inner class instead of this constructor.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

        `key` - the key to the error message in the bundle

        `args` - the set of paramaters that are passed with the error message to include dynamic information in the message if the value of the error bundle contains templates.

    -   ### SmartServiceException

        protected SmartServiceException([SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") builder)

        Constructor that creates the SmartServiceException based on the Builder inner class. Instead of passing a Builder to this constructor use the `Builder.build` method.

        Parameters:

        `builder` - the instance of the Builder inner class on which the SmartServiceException should be based.

-   ## Method Details

    -   ### getAlertMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAlertMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        This method is called by the process execution layer to determine the message that should be shown in the body of the alert. If no message is defined for the preferred locale, it falls back to US.

        Returns:

        the text of the error message intended for the user

    -   ### getAttendedUserMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttendedUserMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        This method is called by the process execution layer to determine the message that should be shown to the user in their locale. If no message is defined for their preferred locale, it falls back to US.

        Returns:

        the text of the error message intended for the user

    -   ### getExceptionClassName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExceptionClassName()

        If the exception that caused this SmartServiceException is set, this method returns the name of that exception class, otherwise it will return null.

        Returns:

        the name of the exception or null

    -   ### getCauseMessage

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCauseMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

    -   ### getMessageFromBundle

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageFromBundle([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] args, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[AppianException](../../common/exceptions/AppianException.html#toString\(\))`

        Returns a detailed exception's message representation. **This method should not be used to display messages to the end user**. The default representation includes the exception class name, the exception's message as returned by [`AppianException.getMessage()`](../../common/exceptions/AppianException.html#getMessage\(\)) and the error code associated with this exception. If the error code is [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR), no error code information is included.

        Overrides:

        `[toString](../../common/exceptions/AppianException.html#toString\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`