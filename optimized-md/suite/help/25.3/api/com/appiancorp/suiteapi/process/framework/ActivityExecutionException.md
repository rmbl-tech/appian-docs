---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html
original_path: api/com/appiancorp/suiteapi/process/framework/ActivityExecutionException.html
version: "25.3"
title: "Class ActivityExecutionException"
page_id: "api/com/appiancorp/suiteapi/process/framework/ActivityExecutionException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class ActivityExecutionException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.framework.ActivityExecutionException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[HandledActivityExecutionException](HandledActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")`, `[RetryableActivityExecutionException](RetryableActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")`, `[UnattendedActivityValidationException](../exceptions/UnattendedActivityValidationException.html "class in com.appiancorp.suiteapi.process.exceptions")`

* * *

public class ActivityExecutionException extends [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

This is an Exception wrapper, which is used by Activity classes to inform about error conditions while running the activity. This exception contains the actual exception that occurred while executing the activity. The exception can also contain messages for both user and the administrator. In the case of attended activity the message for the user will be displayed immediately. The actual error that occurred inside the activity class will be logged both on the Java and database side.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.framework.ActivityExecutionException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ActivityExecutionException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.util.Locale,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") code, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `[ActivityExecutionException](#%3Cinit%3E\(java.lang.Exception,java.lang.String,java.lang.String\))([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)`

    Construct a new `ActivityExecutionException`

    `[ActivityExecutionException](#%3Cinit%3E\(java.lang.Exception,java.lang.String,java.lang.String,boolean\))([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)`

    Construct a new `ActivityExecutionException`

    `[ActivityExecutionException](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)`

    Construct a new `ActivityExecutionException`

    `[ActivityExecutionException](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)`

    Construct a new `ActivityExecutionException`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")`

    `[getException](#getException\(\))()`

    Method returns the actual exception that occurred in the Activity class

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExceptionClassName](#getExceptionClassName\(\))()`

    Returns the name of the type of the exception that occurred in the activity class

    `boolean`

    `[getNotified](#getNotified\(\))()`

    Has the process administrator been notified of this exception?

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNotifyMessage](#getNotifyMessage\(\))()`

    Gets the message that will be sent to the process initiator in a notification.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserMessage](#getUserMessage\(\))()`

    Returns the message set by the Activity class for the current user.

    `void`

    `[setNotified](#setNotified\(boolean\))(boolean notified)`

    `void`

    `[setNotifyMessage](#setNotifyMessage\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMessage)`

    Sets the messages that will be sent to the process initiator in a notification.

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getLocalizedMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getLocalizedMessage\(\) "class or interface in java.lang"), [getMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getMessage\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#toString\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ActivityExecutionException

        public ActivityExecutionException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") code, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

    -   ### ActivityExecutionException

        public ActivityExecutionException([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)

        Construct a new `ActivityExecutionException`

        Parameters:

        `cause` - the exception which occurred while executing the activity

        `attendedMsg` - the message to be displayed to the user in an attended activity

        `notifyMsg` - the message to be sent to the process administrator

    -   ### ActivityExecutionException

        public ActivityExecutionException([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)

        Construct a new `ActivityExecutionException`

        Parameters:

        `cause` - the exception which occurred while executing the activity

        `attendedMsg` - the message to be displayed to the user

        `adminMsg` - the message to be sent to the process administrator

        `notified` - whether or not the process administrator has been notified

    -   ### ActivityExecutionException

        public ActivityExecutionException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)

        Construct a new `ActivityExecutionException`

        Parameters:

        `attendedMsg` - the message to be displayed to the user in an attended activity

        `adminMsg` - the message to be sent to the process administrator

    -   ### ActivityExecutionException

        public ActivityExecutionException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)

        Construct a new `ActivityExecutionException`

        Parameters:

        `usrMsg` - the message to be displayed to the user

        `adminMsg` - the message to be sent to the process administrator

        `notified` - whether or not the process administrator has been notified

-   ## Method Details

    -   ### getUserMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserMessage()

        Returns the message set by the Activity class for the current user. This will be displayed on the UI only in the case of attended activity classes.

        Returns:

        Error message for the user

    -   ### getException

        public [Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") getException()

        Method returns the actual exception that occurred in the Activity class

        Returns:

        exception in the activity class

    -   ### getNotifyMessage

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNotifyMessage()

        Gets the message that will be sent to the process initiator in a notification. By default, this value is the message of the exception.

        Returns:

        Message to be sent to the process initiator

    -   ### setNotifyMessage

        public void setNotifyMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMessage)

        Sets the messages that will be sent to the process initiator in a notification.

        Parameters:

        `notifyMessage` - the message to be sent to the process initiator

    -   ### getExceptionClassName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExceptionClassName()

        Returns the name of the type of the exception that occurred in the activity class

        Returns:

        Type name of the exception that occurred in the activity class

    -   ### getNotified

        public boolean getNotified()

        Has the process administrator been notified of this exception?

        Returns:

        `true` if the process administrator has been notified; `false` otherwise

    -   ### setNotified

        public void setNotified(boolean notified)

        See Also:

        -   [`getNotified()`](#getNotified\(\))