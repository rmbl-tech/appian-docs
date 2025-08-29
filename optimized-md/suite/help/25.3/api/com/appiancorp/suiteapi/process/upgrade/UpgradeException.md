---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/upgrade/UpgradeException.html
original_path: api/com/appiancorp/suiteapi/process/upgrade/UpgradeException.html
version: "25.3"
title: "Class UpgradeException"
page_id: "api/com/appiancorp/suiteapi/process/upgrade/UpgradeException"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.upgrade](package-summary.html)

# Class UpgradeException

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

[java.lang.Exception](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Exception.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.exceptions.AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

com.appiancorp.suiteapi.process.upgrade.UpgradeException

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class UpgradeException extends [AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

Thrown when a condition occurs during a process upgrade that prevents the upgrade from continuing.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.upgrade.UpgradeException)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[UpgradeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

    `[UpgradeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Creates an instance with the given error code and cause.

    `[UpgradeException](#%3Cinit%3E\(com.appiancorp.suiteapi.common.exceptions.ErrorCode,java.lang.Throwable,java.lang.Object...\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[]`

    `[getCompletedUpgrades](#getCompletedUpgrades\(\))()`

    Gets the ProcessUpgrade objects representing the upgrade attempts that completed before the exception occurred.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getProcessIdsCausingFailure](#getProcessIdsCausingFailure\(\))()`

    Gets the process ids of the batch of processes that were being upgraded when the exception occurred.

    `void`

    `[setCompletedUpgrades](#setCompletedUpgrades\(com.appiancorp.suiteapi.process.upgrade.ProcessUpgrade%5B%5D\))([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")[] completedUpgrades)`

    Sets the ProcessUpgrade objects representing the upgrade attempts that completed before the exception occurred.

    `void`

    `[setProcessIdsCausingFailure](#setProcessIdsCausingFailure\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIdsCausingFailure)`

    Sets the process ids of the batch of processes that were being upgraded when the exception occurred.

    ### Methods inherited from class com.appiancorp.suiteapi.common.exceptions.[AppianException](../../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions")

    `[getErrorCode](../../common/exceptions/AppianException.html#getErrorCode\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(\)), [getErrorCodeArguments](../../common/exceptions/AppianException.html#getErrorCodeArguments\(java.util.Locale\)), [getErrorCodeArgumentsAsStringArray](../../common/exceptions/AppianException.html#getErrorCodeArgumentsAsStringArray\(java.util.Locale\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(\)), [getLocalizedMessage](../../common/exceptions/AppianException.html#getLocalizedMessage\(java.util.Locale\)), [getLocalizedMessageWithErrorCode](../../common/exceptions/AppianException.html#getLocalizedMessageWithErrorCode\(java.util.Locale\)), [getLocalizedStaticMessage](../../common/exceptions/AppianException.html#getLocalizedStaticMessage\(java.util.Locale\)), [getLocalizedTitle](../../common/exceptions/AppianException.html#getLocalizedTitle\(java.util.Locale\)), [getMessage](../../common/exceptions/AppianException.html#getMessage\(\)), [toString](../../common/exceptions/AppianException.html#toString\(\))`

    ### Methods inherited from class java.lang.[Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang")

    `[addSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#addSuppressed\(java.lang.Throwable\) "class or interface in java.lang"), [fillInStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#fillInStackTrace\(\) "class or interface in java.lang"), [getCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang"), [getStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getStackTrace\(\) "class or interface in java.lang"), [getSuppressed](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getSuppressed\(\) "class or interface in java.lang"), [initCause](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#initCause\(java.lang.Throwable\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintStream\) "class or interface in java.lang"), [printStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#printStackTrace\(java.io.PrintWriter\) "class or interface in java.lang"), [setStackTrace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#setStackTrace\(java.lang.StackTraceElement%5B%5D\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### UpgradeException

        public UpgradeException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Creates an instance with the given error code and cause.

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause (which is saved for later retrieval by the [`Throwable.getCause()`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang") method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

    -   ### UpgradeException

        public UpgradeException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Parameters:

        `errorCode` - the error code associated with the exception

        `errorCodeArgs` - the arguments to be used to render this exception's message representation

    -   ### UpgradeException

        public UpgradeException([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... errorCodeArgs)

        Parameters:

        `errorCode` - the error code associated with the exception

        `cause` - the cause (which is saved for later retrieval by the [`Throwable.getCause()`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html#getCause\(\) "class or interface in java.lang") method). (A `null` value is permitted, and indicates that the cause is nonexistent or unknown.)

        `errorCodeArgs` - the arguments to be used to render this exception's message representation

-   ## Method Details

    -   ### setCompletedUpgrades

        public void setCompletedUpgrades([ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] completedUpgrades)

        Sets the ProcessUpgrade objects representing the upgrade attempts that completed before the exception occurred. Completed does not mean that the outcome was [`ProcessUpgrade.Outcome.SUCCESS`](ProcessUpgrade.Outcome.html#SUCCESS) and any outcomes are allowed.

        Parameters:

        `completedUpgrades` - the completed upgrade attempts, which can be empty but not null

    -   ### getCompletedUpgrades

        public [ProcessUpgrade](ProcessUpgrade.html "class in com.appiancorp.suiteapi.process.upgrade")\[\] getCompletedUpgrades()

        Gets the ProcessUpgrade objects representing the upgrade attempts that completed before the exception occurred. Completed does not mean that the outcome was [`ProcessUpgrade.Outcome.SUCCESS`](ProcessUpgrade.Outcome.html#SUCCESS) and any outcomes may be present.

        Returns:

        the completed upgrade attempts, which may be empty but will not be null

    -   ### setProcessIdsCausingFailure

        public void setProcessIdsCausingFailure([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIdsCausingFailure)

        Sets the process ids of the batch of processes that were being upgraded when the exception occurred.

        Parameters:

        `processIdsCausingFailure` - The process ids whose attempted upgrade resulted in failure. Can be empty if the exception occurred prior to processing any of the batches, but may not be null.

    -   ### getProcessIdsCausingFailure

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getProcessIdsCausingFailure()

        Gets the process ids of the batch of processes that were being upgraded when the exception occurred.

        Returns:

        The process ids whose attempted upgrade resulted in failure. Can be empty if the exception occurred prior to processing any of the batches, but will not be null.