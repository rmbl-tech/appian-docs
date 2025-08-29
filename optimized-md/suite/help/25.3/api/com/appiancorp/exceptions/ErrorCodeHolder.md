---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/ErrorCodeHolder.html
original_path: api/com/appiancorp/exceptions/ErrorCodeHolder.html
version: "25.3"
title: "Interface ErrorCodeHolder"
page_id: "api/com/appiancorp/exceptions/ErrorCodeHolder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.exceptions](package-summary.html)

# Interface ErrorCodeHolder

* * *

public interface ErrorCodeHolder

Used to indicate that an error includes Appian ErrorCode information

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions")`

    `[getErrorCode](#getErrorCode\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getErrorCodeArguments](#getErrorCodeArguments\(java.util.Locale\))([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)`

-   ## Method Details

    -   ### getErrorCode

        [ErrorCode](../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") getErrorCode()

    -   ### getErrorCodeArguments

        [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getErrorCodeArguments([Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale)