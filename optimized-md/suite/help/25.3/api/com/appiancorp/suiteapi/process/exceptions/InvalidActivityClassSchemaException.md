---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/InvalidActivityClassSchemaException.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class InvalidActivityClassSchemaException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class InvalidActivityClassSchemaException extends [AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

This exception is thrown if the user calls an API method that acts on an activity class schema (or schemaId or local Id), and that schema does not exist in the database.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.exceptions.InvalidActivityClassSchemaException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InvalidActivityClassSchemaException](#%3Cinit%3E\(\))()`

    Deprecated.

    `[InvalidActivityClassSchemaException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)`

    `[InvalidActivityClassSchemaException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    `[InvalidActivityClassSchemaException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Deprecated.

    `[InvalidActivityClassSchemaException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t_)`

    Deprecated.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Gets the error code associated with this exception.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    Gets the arguments that must be used to render this exception's message representation.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InvalidActivityClassSchemaException

        public InvalidActivityClassSchemaException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArguments)

    -   ### InvalidActivityClassSchemaException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public InvalidActivityClassSchemaException()

        Deprecated.

        Constructs a new exception with `null` as its detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

    -   ### InvalidActivityClassSchemaException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public InvalidActivityClassSchemaException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_)

        Deprecated.

        Constructs a new exception with the specified detail message. The cause is not initialized, and may subsequently be initialized by a call to Throwable.initCause(java.lang.Throwable)

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

    -   ### InvalidActivityClassSchemaException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public InvalidActivityClassSchemaException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Deprecated.

        Constructs a new exception with the specified cause and a detail message of (cause==null ? null : cause.toString()) (which typically contains the class and detail message of cause). This constructor is useful for exceptions that are little more than wrappers for other throwables (for example, PrivilegedActionException)

        Parameters:

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

    -   ### InvalidActivityClassSchemaException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public InvalidActivityClassSchemaException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") t\_)

        Deprecated.

        Constructs a new exception with the specified detail message and cause. Note that the detail message associated with cause is not automatically incorporated in this exception's detail message.

        Parameters:

        `message_` - the detail message. The detail message is saved for later retrieval by the Throwable.getMessage() method

        `t_` - the cause (which is saved for later retrieval by the Throwable.getCause() method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

-   ## Method Details

    -   ### getErrorCode

        public [ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Description copied from class: `[AppianException](../../common/exceptions/AppianException.html#getErrorCode\(\))`

        Gets the error code associated with this exception. Subclasses should override this method to return specific error codes. The default implementation returns APNX-1-0000-000 (ErrorCode.GENERIC\_ERROR).

        Overrides:

        `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCodeArguments

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        Description copied from class: `[AppianException](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\))`

        Gets the arguments that must be used to render this exception's message representation. Subclasses should override this method to return specific arguments. The default implementation returns a length 1 array containing the message as returned by the parent class of AppianException. This method is only called when [`AppianException.getErrorCodeArguments(Locale)`](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)) hasn't been overwritten.

        Overrides:

        `[getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\))` in class `[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        Returns:

        the arguments of the error code tied to this exception

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](../../common/exceptions/ErrorCode.html#GENERIC_ERROR)