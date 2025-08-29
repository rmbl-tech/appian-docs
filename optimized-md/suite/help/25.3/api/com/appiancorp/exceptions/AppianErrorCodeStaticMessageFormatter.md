---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/exceptions/AppianErrorCodeStaticMessageFormatter.html
original_path: api/com/appiancorp/exceptions/AppianErrorCodeStaticMessageFormatter.html
version: "25.3"
---

Package [com.appiancorp.exceptions](package-summary.html)

# Interface AppianErrorCodeStaticMessageFormatter

All Known Implementing Classes:

`[LocaleFormatter](../suiteapi/common/exceptions/LocaleFormatter.html "class in com.appiancorp.suiteapi.common.exceptions")`

* * *

public interface AppianErrorCodeStaticMessageFormatter

Callback used to format an AppianErrorCode's static message.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[formatStaticMessage](#formatStaticMessage\(com.appiancorp.exceptions.AppianErrorCode\))([AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStaticMessageFromErrorCode](#getStaticMessageFromErrorCode\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") errorCode)`

-   ## Method Details

    -   ### formatStaticMessage

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") formatStaticMessage([AppianErrorCode](AppianErrorCode.html "class in com.appiancorp.exceptions") errorCode)

    -   ### getStaticMessageFromErrorCode

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStaticMessageFromErrorCode([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") errorCode)