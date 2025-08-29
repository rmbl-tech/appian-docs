---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianResponseError.Builder.html
original_path: api/com/appiancorp/exceptions/AppianResponseError.Builder.html
version: "25.3"
title: "Class AppianResponseError.Builder"
page_id: "api/com/appiancorp/exceptions/AppianResponseError.Builder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Class AppianResponseError.Builder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.exceptions.AppianResponseError.Builder

Enclosing class:

[AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions")

* * *

public static class AppianResponseError.Builder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

A builder to create instances of [`AppianResponseError`](AppianResponseError.html "class in com.appiancorp.exceptions").

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Builder](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)`

    `[Builder](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)`

    `[Builder](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String,int,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, int httpCode, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") responseBody)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions")`

    `[build](#build\(\))()`

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    `[setCause](#setCause\(com.appiancorp.exceptions.AppianError\))([AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)`

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    `[setDetails](#setDetails\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)`

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    `[setHttpCode](#setHttpCode\(int\))(int httpCode)`

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    `[setResponseBody](#setResponseBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") responseBody)`

    `[AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions")`

    `[setTitle](#setTitle\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Builder

        public Builder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title, int httpCode, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") responseBody)

    -   ### Builder

        public Builder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)

    -   ### Builder

        public Builder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") code, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message)

-   ## Method Details

    -   ### setTitle

        public [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions") setTitle([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") title)

    -   ### setDetails

        public [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions") setDetails([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") details)

    -   ### setCause

        public [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions") setCause([AppianError](AppianError.html "class in com.appiancorp.exceptions") cause)

    -   ### setHttpCode

        public [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions") setHttpCode(int httpCode)

    -   ### setResponseBody

        public [AppianResponseError.Builder](AppianResponseError.Builder.html "class in com.appiancorp.exceptions") setResponseBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") responseBody)

    -   ### build

        public [AppianResponseError](AppianResponseError.html "class in com.appiancorp.exceptions") build()