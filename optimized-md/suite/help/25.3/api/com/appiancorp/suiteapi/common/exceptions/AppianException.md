---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/AppianException.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/AppianException.html
version: "25.3"
title: "Class AppianException"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/AppianException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Class AppianException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.exceptions.AppianException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[ActionNotFoundException](../../applications/ActionNotFoundException.html "class in com.appiancorp.suiteapi.applications")`, `[AppianException](../../../exceptions/AppianException.html "class in com.appiancorp.exceptions")`, `[AppianStorageException](AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ApplicationNotFoundException](../../applications/ApplicationNotFoundException.html "class in com.appiancorp.suiteapi.applications")`, `[Controller.ControllerException](../../process/test/Controller.ControllerException.html "class in com.appiancorp.suiteapi.process.test")`, `[DuplicateExpressionException](DuplicateExpressionException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicateIdException](DuplicateIdException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicateNameException](DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[DuplicateUuidException](DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidActionException](../../applications/InvalidActionException.html "class in com.appiancorp.suiteapi.applications")`, `[InvalidActivityClassSchemaException](../../process/exceptions/InvalidActivityClassSchemaException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[InvalidApplicationException](../../applications/InvalidApplicationException.html "class in com.appiancorp.suiteapi.applications")`, `[InvalidCalendarException](../../process/calendar/InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")`, `[InvalidDecimalException](InvalidDecimalException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[InvalidNavigationItemException](../../applications/InvalidNavigationItemException.html "class in com.appiancorp.suiteapi.applications")`, `[InvalidStatusException](InvalidStatusException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[LocalizedAppianRuntimeException.LocalizedAppianException](../../../exceptions/LocalizedAppianRuntimeException.LocalizedAppianException.html "class in com.appiancorp.exceptions")`, `[ObjectNotFoundException](../../../exceptions/ObjectNotFoundException.html "class in com.appiancorp.exceptions")`, `[RenameNotAllowedException](../../content/exceptions/RenameNotAllowedException.html "class in com.appiancorp.suiteapi.content.exceptions")`, `[ResultPageSizeException](../../process/exceptions/ResultPageSizeException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[RetryableAppianException](RetryableAppianException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[SelfRenameException](SelfRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[ServiceLocatorException](ServiceLocatorException.html "class in com.appiancorp.suiteapi.common.exceptions")`, `[SmartServiceException](../../process/exceptions/SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`, `[UnavailableApplicationException](../../applications/UnavailableApplicationException.html "class in com.appiancorp.suiteapi.applications")`, `[UpgradeException](../../process/upgrade/UpgradeException.html "class in com.appiancorp.suiteapi.process.upgrade")`

* * *

public class AppianException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

`AppianException` is the base class of all application-level exceptions thrown in the product. Application-level exceptions are intended to be caught and handled locally by one of the callers that is capable of taking the appropriate action (such as retrying, performing alternative operations, notifying the user, showing a local message on the user interface, etc.) AppianException takes care of properly formatting and internationalizing the exception messages by associating the exception with an error code. Subclasses should override the getErrorCode and getErrorCodeArguments methods to map the appropriate message to the exception.

See Also:

-   [`AppianRuntimeException`](AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.common.exceptions.AppianException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AppianException](#%3Cinit%3E\(\))()`

    Deprecated.

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    `[AppianException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    `[AppianException](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    Deprecated.

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    `[AppianException](#%3Cinit%3E\(java.lang.String,java.lang.Throwable\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Deprecated.

    this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    `[AppianException](#%3Cinit%3E\(java.lang.Throwable\))([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Constructs a new `AppianException` as a wrapper around the `Throwable` passed in with a detail message of `(cause==null ?`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    Gets the error code associated with this exception.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(\))()`

    Gets the arguments that must be used to render this exception's message representation.

    `protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Gets the arguments that must be used to render this exception's message and title representation.

    `final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getErrorCodeArgumentsAsStringArray](#getErrorCodeArgumentsAsStringArray\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns the arguments (converted to Strings) of the error code tied to this exception.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(\))()`

    The default implementation is equivalent to calling [`getLocalizedMessage(Locale)`](#getLocalizedMessage\(java.util.Locale\)) with `Locale.US` as argument.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessage](#getLocalizedMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's message representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedMessageWithErrorCode](#getLocalizedMessageWithErrorCode\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's default message representation with error code information.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedStaticMessage](#getLocalizedStaticMessage\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's static message representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLocalizedTitle](#getLocalizedTitle\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

    Returns this exception's title representation.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessage](#getMessage\(\))()`

    The default implementation is equivalent to calling [`getLocalizedMessage()`](#getLocalizedMessage\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a detailed exception's message representation.

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### AppianException

        public AppianException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

    -   ### AppianException

        public AppianException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

    -   ### AppianException

        public AppianException([ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException()

        Deprecated.

        Constructs a new `AppianException` with an empty string as its detail message.

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

        Deprecated.

        this constructor will be removed in future releases, as all exception messages must be associated via an error code.

    -   ### AppianException

        public AppianException([Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Constructs a new `AppianException` as a wrapper around the `Throwable` passed in with a detail message of `(cause==null ? "" : cause.toString())`.

        Parameters:

        `cause` - the cause, or the `Throwable` that caused this `AppianException` to get thrown

    -   ### AppianException

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public AppianException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Deprecated.

        this constructor will be removed in future releases, as all exception messages must be associated via an error code.

-   ## Method Details

    -   ### getErrorCode

        public [ErrorCode](ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

        Gets the error code associated with this exception. Subclasses should override this method to return specific error codes. The default implementation returns APNX-1-0000-000 (ErrorCode.GENERIC\_ERROR).

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments()

        Gets the arguments that must be used to render this exception's message representation. Subclasses should override this method to return specific arguments. The default implementation returns a length 1 array containing the message as returned by the parent class of AppianException. This method is only called when [`getErrorCodeArguments(Locale)`](#getErrorCodeArguments\(java.util.Locale\)) hasn't been overwritten.

        Returns:

        the arguments of the error code tied to this exception

        See Also:

        -   [`ErrorCode.GENERIC_ERROR`](ErrorCode.html#GENERIC_ERROR)

    -   ### getErrorCodeArgumentsAsStringArray

        public final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getErrorCodeArgumentsAsStringArray([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns the arguments (converted to Strings) of the error code tied to this exception. Returns an empty array if there are no arguments.

        Parameters:

        `locale` - The locale to use for retrieving the arguments.

    -   ### getErrorCodeArguments

        protected [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Gets the arguments that must be used to render this exception's message and title representation. Subclasses should override this method to return specific locale-sensitive arguments. The default implementation calls [`getErrorCodeArguments()`](#getErrorCodeArguments\(\)).

        Parameters:

        `locale` - arguments' locale

        Returns:

        the arguments of the error code tied to this exception

    -   ### getMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessage()

        The default implementation is equivalent to calling [`getLocalizedMessage()`](#getLocalizedMessage\(\))

        Overrides:

        `[getMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getMessage\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage()

        The default implementation is equivalent to calling [`getLocalizedMessage(Locale)`](#getLocalizedMessage\(java.util.Locale\)) with `Locale.US` as argument. Please note that the error message filtering logic in https://issues.appian.com/browse/AN-274235 depends on this default behavior. Please contact Portals Foundations before changing this default behavior.

        Overrides:

        `[getLocalizedMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getLocalizedMessage\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`

    -   ### getLocalizedMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this exception's message representation. This method should be used whenever the message is to be displayed to the end user. The default representation does not include any error code information because this may be rendered in different ways across the application. If needed, the exception's error code can be retrieved from [`getErrorCode()`](#getErrorCode\(\)).

        Parameters:

        `locale` - message's locale

        Returns:

        this exception's message representation

        See Also:

        -   [`toString()`](#toString\(\))

    -   ### getLocalizedTitle

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedTitle([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this exception's title representation. This method should be used whenever the title is to be displayed to the end user. The default representation does not include any error code information because this may be rendered in different ways across the application. If needed, the exception's error code can be retrieved from [`getErrorCode()`](#getErrorCode\(\)).

        Parameters:

        `locale` - title's locale

        Returns:

        this exception's title representation

        See Also:

        -   [`toString()`](#toString\(\))

    -   ### getLocalizedStaticMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedStaticMessage([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this exception's static message representation. Note that currently static messages are only supported on ErrorCode objects No error code arguments are put in the static message as the return value should only depend on error code.

        Parameters:

        `locale` - title's locale

        Returns:

        this exception's static message representation

    -   ### getLocalizedMessageWithErrorCode

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLocalizedMessageWithErrorCode([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)

        Returns this exception's default message representation with error code information. This method could be used whenever the message is to be displayed to the end user. Although the default representation [`getLocalizedMessage(Locale)`](#getLocalizedMessage\(java.util.Locale\)) does not include any error code information, as the representation could vary in different ways across the application, this method provides a utility for a representation with error code. If the error code is `null` or [`ErrorCode.GENERIC_ERROR`](ErrorCode.html#GENERIC_ERROR), no error code information is included. **Be sure while using this method as the requirements could vary, in which case use [`getLocalizedMessage(Locale)`](#getLocalizedMessage\(java.util.Locale\)) in conjunction with [`getErrorCode()`](#getErrorCode\(\))**.

        Parameters:

        `locale` - message's locale

        Returns:

        this exception's default message representation with error code

        See Also:

        -   [`getLocalizedMessage(Locale)`](#getLocalizedMessage\(java.util.Locale\))
        -   [`toString()`](#toString\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a detailed exception's message representation. **This method should not be used to display messages to the end user**. The default representation includes the exception class name, the exception's message as returned by [`getMessage()`](#getMessage\(\)) and the error code associated with this exception. If the error code is [`ErrorCode.GENERIC_ERROR`](ErrorCode.html#GENERIC_ERROR), no error code information is included.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#toString\(\) "class or interface in java.lang")` in class `[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")`