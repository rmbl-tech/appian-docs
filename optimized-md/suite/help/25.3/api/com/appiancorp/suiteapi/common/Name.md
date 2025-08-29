---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Name.html
original_path: api/com/appiancorp/suiteapi/common/Name.html
version: "25.3"
title: "Annotation Interface Name"
page_id: "api/com/appiancorp/suiteapi/common/Name"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Annotation Interface Name

* * *

[@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[PARAMETER](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#PARAMETER "class or interface in java.lang.annotation")}) public @interface Name

Defines the name of the annotated item. Used for methods (in the case of smart service inputs and outputs), or method parameters (in the case of expression function parameters).

See Also:

-   [`AppianSmartService`](../process/framework/AppianSmartService.html "class in com.appiancorp.suiteapi.process.framework")

-   ## Required Element Summary

    Required Elements

    Modifier and Type

    Required Element

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[value](#value\(\))`

    The name of the item.

-   ## Element Details

    -   ### value

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value

        The name of the item. This is the ACP name (not the display name) for smart service inputs and outputs. The display name can be optionally defined in a bundle. In the case of expression function parameters, this defines the actual name that will appear to end-users.