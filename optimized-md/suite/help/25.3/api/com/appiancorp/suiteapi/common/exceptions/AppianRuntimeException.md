---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/AppianRuntimeException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class AppianRuntimeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[java.lang.RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[AppianPrivilegeNotFoundException](AppianPrivilegeNotFoundException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DecryptionException](DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[EncryptionException](EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidRankNameException](InvalidRankNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidTypeException](../../type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`, `[LocalizedAppianRuntimeException](../../../exceptions/LocalizedAppianRuntimeException.html "class in com.appiancorp.exceptions")`, `[NullUserRenameException](NullUserRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[RetryableAppianRuntimeException](RetryableAppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ToggledOffException](../../../exceptions/ToggledOffException.html "class in com.appiancorp.exceptions")`

* * *

public class AppianRuntimeException extends [RuntimeException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/RuntimeException.html "class or interface in java.lang")

`AppianRuntimeException` is the base class of all application-level runtime exceptions thrown in the product. AppianRuntimeException takes care of properly formatting and internationalizing the exception messages by associating the exception with an error code. Subclasses should override the getErrorCode and getErrorCodeArguments methods to map the appropriate message to the exception. This class acts as a wrapper around an equivalent [`AppianException`](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions"). Use [`toAppianException()`](#toAppianException\(\)) to get the equivalent checked exception

See Also:

-   [`AppianException`](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.AppianRuntimeException)

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `[AppianRuntimeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.AppianException\))([AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate)`

    `[AppianRuntimeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructs a new exception with the specified error code.

    `protected`

    `[AppianRuntimeException](#%3Cinit%3E\(java.lang.Throwable,com.appiancorp.suiteapi.common.exceptions.AppianException\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate)`

    `[AppianRuntimeException](#%3Cinit%3E\(java.lang.Throwable,com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    Constructs a new exception with the specified cause and error code.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    `[getCause](#getCause\(\))()`

    `[ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    See [`AppianException.getErrorCode()`](AppianException.html#getErrorCode\(\))

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    See [`AppianException.getErrorCodeArguments()`](AppianException.html#getErrorCodeArguments\(\))

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    See [`AppianException.getErrorCodeArguments(Locale)`](AppianException.html#getErrorCodeArguments\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getErrorCodeArgumentsAsStringArray](#getErrorCodeArgumentsAsStringArray\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(\))()`

    See [`AppianException.getLocalizedMessage()`](AppianException.html#getLocalizedMessage\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    See [`AppianException.getLocalizedMessage(Locale)`](AppianException.html#getLocalizedMessage\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessageWithErrorCode](#getLocalizedMessageWithErrorCode\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    See [`AppianException.getLocalizedMessageWithErrorCode(Locale)`](AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedStaticMessage](#getLocalizedStaticMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    See [`AppianException.getLocalizedStaticMessage(Locale)`](AppianException.html#getLocalizedStaticMessage\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedTitle](#getLocalizedTitle\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    See [`AppianException.getLocalizedTitle(Locale)`](AppianException.html#getLocalizedTitle\(java.util.Locale\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    See [`AppianException.getMessage()`](AppianException.html#getMessage\(\))

    `[StackTraceElement](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StackTraceElement.html "class or interface in java.lang")[]`

    `[getStackTrace](#getStackTrace\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    `[initCause](#initCause\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    `boolean`

    `[isDelegateInstanceOf](#isDelegateInstanceOf\(java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")> targetExceptionClass)`

    Convenience method that returns whether the [`delegate AppianException`](#toAppianException\(\)) is an instance of the given class.

    `void`

    `[printStackTrace](#printStackTrace\(\))()`

    `void`

    `[printStackTrace](#printStackTrace\(java.io.PrintStream\))([PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") s)`

    `void`

    `[printStackTrace](#printStackTrace\(java.io.PrintWriter\))([PrintWriter](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintWriter.html "class or interface in java.io") s)`

    `void`

    `[setStackTrace](#setStackTrace\(java.lang.StackTraceElement%5B%5D\))([StackTraceElement](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StackTraceElement.html "class or interface in java.lang")[] stackTrace)`

    `[AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[toAppianException](#toAppianException\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    See [`AppianException.toString()`](AppianException.html#toString\(\))

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianRuntimeException

        public AppianRuntimeException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructs a new exception with the specified error code.

        Parameters:

        `errorCode` - the error code

        `errorCodeArgs` - the arguments to use for the error code message

    -   ### AppianRuntimeException

        public AppianRuntimeException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Constructs a new exception with the specified cause and error code.

        Parameters:

        `cause` - the cause (which is saved for later retrieval by the [`getCause()`](#getCause\(\)) method). (A null value is permitted, and indicates that the cause is nonexistent or unknown.)

        `errorCode` - the error code

        `errorCodeArgs` - the arguments to use for the error code message

    -   ### AppianRuntimeException

        protected AppianRuntimeException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate)

    -   ### AppianRuntimeException

        public AppianRuntimeException([AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") delegate)

-   ## Method Details

    -   ### toAppianException

        public [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions") toAppianException()

    -   ### isDelegateInstanceOf

        public boolean isDelegateInstanceOf([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")<? extends [AppianException](AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")\> targetExceptionClass)

        Convenience method that returns whether the [`delegate AppianException`](#toAppianException\(\)) is an instance of the given class.

    -   ### getErrorCode

        public [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        See [`AppianException.getErrorCode()`](AppianException.html#getErrorCode\(\))

    -   ### getErrorCodeArguments

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        See [`AppianException.getErrorCodeArguments()`](AppianException.html#getErrorCodeArguments\(\))

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        See [`AppianException.getErrorCodeArguments(Locale)`](AppianException.html#getErrorCodeArguments\(java.util.Locale\))

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        See [`AppianException.getMessage()`](AppianException.html#getMessage\(\))

        Overrides:

        `[getMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getMessage\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage()

        See [`AppianException.getLocalizedMessage()`](AppianException.html#getLocalizedMessage\(\))

        Overrides:

        `[getLocalizedMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getLocalizedMessage\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        See [`AppianException.getLocalizedMessage(Locale)`](AppianException.html#getLocalizedMessage\(java.util.Locale\))

    -   ### getLocalizedTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedTitle([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        See [`AppianException.getLocalizedTitle(Locale)`](AppianException.html#getLocalizedTitle\(java.util.Locale\))

    -   ### getLocalizedMessageWithErrorCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessageWithErrorCode([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        See [`AppianException.getLocalizedMessageWithErrorCode(Locale)`](AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\))

    -   ### getLocalizedStaticMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedStaticMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        See [`AppianException.getLocalizedStaticMessage(Locale)`](AppianException.html#getLocalizedStaticMessage\(java.util.Locale\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        See [`AppianException.toString()`](AppianException.html#toString\(\))

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#toString\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getCause

        public [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") getCause()

        Overrides:

        `[getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### initCause

        public [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") initCause([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Overrides:

        `[initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### printStackTrace

        public void printStackTrace()

        Overrides:

        `[printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### printStackTrace

        public void printStackTrace([PrintStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintStream.html "class or interface in java.io") s)

        Overrides:

        `[printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### printStackTrace

        public void printStackTrace([PrintWriter](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/PrintWriter.html "class or interface in java.io") s)

        Overrides:

        `[printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getStackTrace

        public [StackTraceElement](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StackTraceElement.html "class or interface in java.lang")\[\] getStackTrace()

        Overrides:

        `[getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### setStackTrace

        public void setStackTrace([StackTraceElement](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StackTraceElement.html "class or interface in java.lang")\[\] stackTrace)

        Overrides:

        `[setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getErrorCodeArgumentsAsStringArray

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getErrorCodeArgumentsAsStringArray([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)