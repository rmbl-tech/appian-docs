---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/SmartServiceException.Builder.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/SmartServiceException.Builder.html
version: "25.3"
title: "Class SmartServiceException.Builder"
page_id: "api/com/appiancorp/suiteapi/process/exceptions/SmartServiceException.Builder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class SmartServiceException.Builder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.exceptions.SmartServiceException.Builder

Direct Known Subclasses:

`[RetryableSmartServiceException.Builder](RetryableSmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

Enclosing class:

[SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

* * *

public static class SmartServiceException.Builder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

The Builder inner class is used to create an instance of the SmartServiceException. Pass the class that is throwing the SmartServiceException and the Throwable that caused the exception to the constructor, then set the `userMessage`, then `build`. See the example in the main class javadoc.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Builder](#%3Cinit%3E\(java.lang.Class,java.lang.String,java.lang.Throwable\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") smartServiceBundleName, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Construct a `SmartServiceException.Builder` using the class that is throwing the exception, the bundle name, and the cause of the exception.

    `[Builder](#%3Cinit%3E\(java.lang.Class,java.lang.Throwable\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Construct a `SmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[addCauseToAlertMessageArgs](#addCauseToAlertMessageArgs\(\))()`

    Specifies that the message of the cause exception should be added to the list of arguments passed to the alert message.

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[addCauseToUserMessageArgs](#addCauseToUserMessageArgs\(\))()`

    Specifies that the message of the cause exception should be added to the list of arguments passed to the user message.

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[alertMessage](#alertMessage\(java.lang.String,java.lang.Object...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

    Set the message that will be displayed in the error alert for both attended and unattended nodes.

    `[SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[build](#build\(\))()`

    After setting the `userMessage`, call `build` to create an instance of the SmartServiceException with the message set.

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[errorCode](#errorCode\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\))([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode)`

    Set the ErrorCode for the SmartServiceException that is to be built.

    `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[userMessage](#userMessage\(java.lang.String,java.lang.Object...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

    Set the message that will be displayed in the user interface for attended nodes and in the error alert for both attended and unattended nodes if `alertMessage` is not set.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Builder

        public Builder([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Construct a `SmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

    -   ### Builder

        public Builder([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") smartServiceBundleName, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Construct a `SmartServiceException.Builder` using the class that is throwing the exception, the bundle name, and the cause of the exception.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `smartServiceBundleName` - the bundle name used to locate the i18n properties file

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

-   ## Method Details

    -   ### alertMessage

        public [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") alertMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)

        Set the message that will be displayed in the error alert for both attended and unattended nodes.

        Parameters:

        `key` - the key to the error message in the bundle

        `args` - the set of parameters that are passed with the error message to include dynamic information in the message if the value of the error bundle contains templates.

        See Also:

        -   [`userMessage(java.lang.String,java.lang.Object...)`](#userMessage\(java.lang.String,java.lang.Object...\))

    -   ### addCauseToAlertMessageArgs

        public [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") addCauseToAlertMessageArgs()

        Specifies that the message of the cause exception should be added to the list of arguments passed to the alert message.

    -   ### userMessage

        public [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") userMessage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)

        Set the message that will be displayed in the user interface for attended nodes and in the error alert for both attended and unattended nodes if `alertMessage` is not set. The message is used when the smart service throws the exception.

        Parameters:

        `key` - the key to the error message in the bundle

        `args` - the set of parameters that are passed with the error message to include dynamic information in the message if the value of the error bundle contains templates.

    -   ### addCauseToUserMessageArgs

        public [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") addCauseToUserMessageArgs()

        Specifies that the message of the cause exception should be added to the list of arguments passed to the user message.

    -   ### errorCode

        public [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions") errorCode([ErrorCode](../../common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") errorCode)

        Set the ErrorCode for the SmartServiceException that is to be built.

        Parameters:

        `errorCode` -

    -   ### build

        public [SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions") build()

        After setting the `userMessage`, call `build` to create an instance of the SmartServiceException with the message set.

        Returns:

        the SmartServiceException with everything set