---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianErrorCodeTitleFormatter.html
original_path: api/com/appiancorp/exceptions/AppianErrorCodeTitleFormatter.html
version: "25.3"
title: "Interface AppianErrorCodeTitleFormatter"
page_id: "api/com/appiancorp/exceptions/AppianErrorCodeTitleFormatter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Interface AppianErrorCodeTitleFormatter

All Known Implementing Classes:

`[LocaleFormatter](../suiteapi/common/exceptions/LocaleFormatter.html "class in com.appiancorp.suiteapi.common.exceptions")`

* * *

public interface AppianErrorCodeTitleFormatter

Callback used to format an AppianErrorCode's title.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[formatTitle](#formatTitle\(com.appiancorp.exceptions.AppianErrorCode,java.lang.Object...\))([AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)`

    Returns the error title rendered with the included arguments.

-   ## Method Details

    -   ### formatTitle

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatTitle([AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")... args)

        Returns the error title rendered with the included arguments.

        Parameters:

        `errorCode` - The code corresponding to the thrown exception

        `args` - Additional parameters required to render the title

        Returns:

        The title, localized and rendered with the included arguments where applicable.