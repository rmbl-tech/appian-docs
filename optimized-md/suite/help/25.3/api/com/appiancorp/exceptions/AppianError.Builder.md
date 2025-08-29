---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianError.Builder.html
original_path: api/com/appiancorp/exceptions/AppianError.Builder.html
version: "25.3"
title: "Class AppianError.Builder"
page_id: "api/com/appiancorp/exceptions/AppianError.Builder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianError.Builder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.exceptions.AppianError.Builder

Enclosing class:

[AppianError](AppianError.html "class in com.appiancorp.exceptions")

* * *

public static class AppianError.Builder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A builder to create instances of [`AppianError`](AppianError.html "class in com.appiancorp.exceptions"). For errors based on an [`ErrorCode`](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions"), [`ValidationItem`](../suiteapi/common/ValidationItem.html "class in com.appiancorp.suiteapi.common"), [`AppianException`](../suiteapi/common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions"), etc, instead of calling this builder, use [`AppianErrorBuilder`](AppianErrorBuilder.html "class in com.appiancorp.exceptions").

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Builder](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    `[Builder](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[AppianError](AppianError.html "class in com.appiancorp.exceptions")`

    `[build](#build\(\))()`

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    `[setCause](#setCause\(com.appiancorp.exceptions.AppianError\))([AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)`

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    `[setData](#setData\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") data)`

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    `[setDetails](#setDetails\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)`

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    `[setOriginalMessageWithErrorCode](#setOriginalMessageWithErrorCode\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalMessageWithErrorCode)`

    `[AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions")`

    `[setTitle](#setTitle\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Builder

        public Builder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)

    -   ### Builder

        public Builder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

-   ## Method Details

    -   ### setTitle

        public [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions") setTitle([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)

    -   ### setDetails

        public [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions") setDetails([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)

    -   ### setCause

        public [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions") setCause([AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)

    -   ### setData

        public [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions") setData([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") data)

    -   ### setOriginalMessageWithErrorCode

        public [AppianError.Builder](AppianError.Builder.html "class in com.appiancorp.exceptions") setOriginalMessageWithErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalMessageWithErrorCode)

    -   ### build

        public [AppianError](AppianError.html "class in com.appiancorp.exceptions") build()