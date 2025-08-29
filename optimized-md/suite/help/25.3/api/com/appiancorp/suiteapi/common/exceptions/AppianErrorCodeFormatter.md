---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/exceptions/AppianErrorCodeFormatter.html
original_path: api/com/appiancorp/suiteapi/common/exceptions/AppianErrorCodeFormatter.html
version: "25.3"
title: "Interface AppianErrorCodeFormatter"
page_id: "api/com/appiancorp/suiteapi/common/exceptions/AppianErrorCodeFormatter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common.exceptions](package-summary.html)

# Interface AppianErrorCodeFormatter

All Known Implementing Classes:

`[LocaleFormatter](LocaleFormatter.html "class in com.appiancorp.suiteapi.common.exceptions")`

* * *

public interface AppianErrorCodeFormatter

Callback used to format an AppianErrorCode.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[format](#format\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

-   ## Method Details

    -   ### format

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") format([AppianErrorCode](../../../exceptions/AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)