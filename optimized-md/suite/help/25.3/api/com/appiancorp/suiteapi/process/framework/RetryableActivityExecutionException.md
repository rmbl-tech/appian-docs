---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/framework/RetryableActivityExecutionException.html
original_path: api/com/appiancorp/suiteapi/process/framework/RetryableActivityExecutionException.html
version: "25.3"
title: "Class RetryableActivityExecutionException"
page_id: "api/com/appiancorp/suiteapi/process/framework/RetryableActivityExecutionException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.framework](package-summary.html)

# Class RetryableActivityExecutionException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.framework.ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

com.appiancorp.suiteapi.process.framework.RetryableActivityExecutionException

All Implemented Interfaces:

`[Retryable](../../common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RetryableActivityExecutionException extends [ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") implements [Retryable](../../common/exceptions/Retryable.html "interface in com.appiancorp.suiteapi.common.exceptions")

An [`ActivityExecutionException`](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework") that is transient. The activity can be retried.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.framework.RetryableActivityExecutionException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RetryableActivityExecutionException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.util.Locale,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") code, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)`

    `[RetryableActivityExecutionException](#%3Cinit%3E\(java.lang.Exception,java.lang.String,java.lang.String\))([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)`

    Construct a new `RetryableActivityExecutionException`

    `[RetryableActivityExecutionException](#%3Cinit%3E\(java.lang.Exception,java.lang.String,java.lang.String,boolean\))([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)`

    Construct a new `RetryableActivityExecutionException`

    `[RetryableActivityExecutionException](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)`

    Construct a new `RetryableActivityExecutionException`

    `[RetryableActivityExecutionException](#%3Cinit%3E\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)`

    Construct a new `RetryableActivityExecutionException`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.framework.[ActivityExecutionException](ActivityExecutionException.html "class in com.appiancorp.suiteapi.process.framework")

    `[getException](ActivityExecutionException.html#getException\(\)), [getExceptionClassName](ActivityExecutionException.html#getExceptionClassName\(\)), [getNotified](ActivityExecutionException.html#getNotified\(\)), [getNotifyMessage](ActivityExecutionException.html#getNotifyMessage\(\)), [getUserMessage](ActivityExecutionException.html#getUserMessage\(\)), [setNotified](ActivityExecutionException.html#setNotified\(boolean\)), [setNotifyMessage](ActivityExecutionException.html#setNotifyMessage\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getLocalizedMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getLocalizedMessage\(\) "class or interface in java.lang"), [getMessage](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getMessage\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#toString\(\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RetryableActivityExecutionException

        public RetryableActivityExecutionException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") code, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... arguments)

    -   ### RetryableActivityExecutionException

        public RetryableActivityExecutionException([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)

        Construct a new `RetryableActivityExecutionException`

        Parameters:

        `cause` - the exception which occurred while executing the activity

        `attendedMsg` - the message to be displayed to the user in an attended activity

        `notifyMsg` - the message to be sent to the process administrator

    -   ### RetryableActivityExecutionException

        public RetryableActivityExecutionException([Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang") cause, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)

        Construct a new `RetryableActivityExecutionException`

        Parameters:

        `cause` - the exception which occurred while executing the activity

        `attendedMsg` - the message to be displayed to the user

        `adminMsg` - the message to be sent to the process administrator

        `notified` - whether or not the process administrator has been notified

    -   ### RetryableActivityExecutionException

        public RetryableActivityExecutionException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg)

        Construct a new `RetryableActivityExecutionException`

        Parameters:

        `attendedMsg` - the message to be displayed to the user in an attended activity

        `adminMsg` - the message to be sent to the process administrator

    -   ### RetryableActivityExecutionException

        public RetryableActivityExecutionException([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attendedMsg, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") notifyMsg, boolean notified)

        Construct a new `RetryableActivityExecutionException`

        Parameters:

        `usrMsg` - the message to be displayed to the user

        `adminMsg` - the message to be sent to the process administrator

        `notified` - whether or not the process administrator has been notified