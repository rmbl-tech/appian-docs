---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/SupportedEvaluationEnvironmentTypes.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/SupportedEvaluationEnvironmentTypes.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface SupportedEvaluationEnvironmentTypes

* * *

[@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation")) public @interface SupportedEvaluationEnvironmentTypes

Defines the environments in which this function is supported
By default, all functions created with the @Function annotation will be marked as supported in the low code platform environment. See `EvaluationEnvironmentType` for a list of valid environments
This information is used to show design guidance in the interface designer

-   ## Optional Element Summary

    Optional Elements

    Modifier and Type

    Optional Element

    Description

    `com.appiancorp.core.expr.EvaluationEnvironmentType[]`

    `[value](#value\(\))`

-   ## Element Details

    -   ### value

        com.appiancorp.core.expr.EvaluationEnvironmentType\[\] value

        Default:

        {LOW\_CODE\_PLATFORM}