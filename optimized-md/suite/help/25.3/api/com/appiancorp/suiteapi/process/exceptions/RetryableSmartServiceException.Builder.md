---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.Builder.html
original_path: api/com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.Builder.html
version: "25.3"
title: "Class RetryableSmartServiceException.Builder"
page_id: "api/com/appiancorp/suiteapi/process/exceptions/RetryableSmartServiceException.Builder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.exceptions](package-summary.html)

# Class RetryableSmartServiceException.Builder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.exceptions.SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

com.appiancorp.suiteapi.process.exceptions.RetryableSmartServiceException.Builder

Enclosing class:

[RetryableSmartServiceException](RetryableSmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")

* * *

public static class RetryableSmartServiceException.Builder extends [SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

The Builder inner class is used to create an instance of the SmartServiceException. Pass the class that is throwing the SmartServiceException and the Throwable that caused the exception to the constructor, then set the `userMessage`, then `build`. See the example in the main class javadoc.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Builder](#%3Cinit%3E\(java.lang.Class,java.lang.String,java.lang.Throwable\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") smartServiceBundleName, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Construct a `RetryableSmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

    `[Builder](#%3Cinit%3E\(java.lang.Class,java.lang.Throwable\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)`

    Construct a `RetryableSmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions")`

    `[build](#build\(\))()`

    After setting the `userMessage`, call `build` to create an instance of the RetryableSmartServiceException with the message set.

    ### Methods inherited from class com.appiancorp.suiteapi.process.exceptions.[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")

    `[addCauseToAlertMessageArgs](SmartServiceException.Builder.html#addCauseToAlertMessageArgs\(\)), [addCauseToUserMessageArgs](SmartServiceException.Builder.html#addCauseToUserMessageArgs\(\)), [alertMessage](SmartServiceException.Builder.html#alertMessage\(java.lang.String,java.lang.Object...\)), [errorCode](SmartServiceException.Builder.html#errorCode\(com.appiancorp.suiteapi.common.exceptions.ErrorCode\)), [userMessage](SmartServiceException.Builder.html#userMessage\(java.lang.String,java.lang.Object...\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Builder

        public Builder([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Construct a `RetryableSmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

    -   ### Builder

        public Builder([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") smartServiceClass, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") smartServiceBundleName, [Throwable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Throwable.html "class or interface in java.lang") cause)

        Construct a `RetryableSmartServiceException.Builder` using the class that is throwing the exception and the cause of the exception.

        Parameters:

        `smartServiceClass` - the class that is throwing the exception

        `smartServiceBundleName` - the bundle name used to locate the i18n properties file

        `cause` - the Throwable that was caught, causing the SmartServiceException to be thrown

-   ## Method Details

    -   ### build

        public [SmartServiceException](SmartServiceException.html "class in com.appiancorp.suiteapi.process.exceptions") build()

        After setting the `userMessage`, call `build` to create an instance of the RetryableSmartServiceException with the message set.

        Overrides:

        `[build](SmartServiceException.Builder.html#build\(\))` in class `[SmartServiceException.Builder](SmartServiceException.Builder.html "class in com.appiancorp.suiteapi.process.exceptions")`

        Returns:

        the RetryableSmartServiceException with everything set