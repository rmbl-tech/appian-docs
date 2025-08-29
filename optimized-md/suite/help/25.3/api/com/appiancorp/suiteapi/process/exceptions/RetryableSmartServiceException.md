---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class RetryableSmartServiceException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

[com.appiancorp.suiteapi.process.exceptions.SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

com.appiancorp.suiteapi.process.exceptions.RetryableSmartServiceException

All Implemented Interfaces:

`[Retryable](../../common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RetryableSmartServiceException extends [SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions") implements [Retryable](../../common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")

A subclass of SmartServiceException that indicates that the exception is transient and the smart service can be safely retried.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.exceptions.RetryableSmartServiceException)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[RetryableSmartServiceException.Builder](RetryableSmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    The Builder inner class is used to create an instance of the SmartServiceException.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.exceptions.[SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    `[addCauseToAlertMessageArgs](SmartServiceException.html#addCauseToAlertMessageArgs), [addCauseToUserMessageArgs](SmartServiceException.html#addCauseToUserMessageArgs), [alertMessageArgs](SmartServiceException.html#alertMessageArgs), [alertMessageKey](SmartServiceException.html#alertMessageKey), [userMessageArgs](SmartServiceException.html#userMessageArgs), [userMessageKey](SmartServiceException.html#userMessageKey)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RetryableSmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructor to be used if the RetryableSmartServiceException has an error code associated with it.

    `[RetryableSmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Constructor to be used if the RetryableSmartServiceException has an error code associated with it and the root cause of the exception is to be included.

    `[RetryableSmartServiceException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructor to be used if the RetryableSmartServiceException has an error code associated with it and the root cause of the exception is to be included.

    `[RetryableSmartServiceException](#%3Cinit%3E\(java.lang.Class,java.lang.Throwable,java.lang.String,java.lang.Object...\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianSmartService](../framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")> smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

    Construct a RetryableSmartServiceException from all of its constituent parts.

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.exceptions.[SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

    `[getAlertMessage](SmartServiceException.html#getAlertMessage\(java.util.Locale\)), [getAttendedUserMessage](SmartServiceException.html#getAttendedUserMessage\(java.util.Locale\)), [getCauseMessage](SmartServiceException.html#getCauseMessage\(java.util.Locale\)), [getExceptionClassName](SmartServiceException.html#getExceptionClassName\(\)), [getMessageFromBundle](SmartServiceException.html#getMessageFromBundle\(java.lang.String,java.lang.Object%5B%5D,java.util.Locale\)), [toString](SmartServiceException.html#toString\(\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RetryableSmartServiceException

        public RetryableSmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructor to be used if the RetryableSmartServiceException has an error code associated with it.

        Parameters:

        `errorCode` - the error code associated with the exception

        `errorCodeArg` - the parameters to the error code message

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### RetryableSmartServiceException

        public RetryableSmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructor to be used if the RetryableSmartServiceException has an error code associated with it and the root cause of the exception is to be included.

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause of the exception

        `errorCodeArg` - the parameters to the error code message

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### RetryableSmartServiceException

        public RetryableSmartServiceException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Constructor to be used if the RetryableSmartServiceException has an error code associated with it and the root cause of the exception is to be included.

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause of the exception

        See Also:

        -   [`ErrorCode`](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")

    -   ### RetryableSmartServiceException

        public RetryableSmartServiceException([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianSmartService](../framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")\> smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)

        Construct a RetryableSmartServiceException from all of its constituent parts. It's recommended to use the Builder inner class instead of this constructor.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

        `key` - the key to the error message in the bundle

        `args` - the set of paramaters that are passed with the error message to include dynamic information in the message if the value of the error bundle contains templates.