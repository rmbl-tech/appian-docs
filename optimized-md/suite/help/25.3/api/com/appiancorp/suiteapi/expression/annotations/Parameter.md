---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/Parameter.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/Parameter.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface Parameter

* * *

[@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([PARAMETER](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#PARAMETER "class or interface in java.lang.annotation")) public @interface Parameter

Defines the behavior of an expression function parameter.

See Also:

-   [`Function`](Function.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

-   ## Optional Element Summary

    Optional Elements

    Modifier and Type

    Optional Element

    Description

    `boolean`

    `[required](#required\(\))`

    The `required` attribute indicates whether or not the parameter must be supplied in order to run the expression function.

    `boolean`

    `[unlimited](#unlimited\(\))`

    The `unlimited` attribute indicates whether this parameter represents an unlimited number of parameters that the user of the expression function can pass.

-   ## Element Details

    -   ### required

        boolean required

        The `required` attribute indicates whether or not the parameter must be supplied in order to run the expression function. Set to `false` for optional parameters.

        Default:

        true

    -   ### unlimited

        boolean unlimited

        The `unlimited` attribute indicates whether this parameter represents an unlimited number of parameters that the user of the expression function can pass. If `true`, this parameter must be the last in the list of parameters.

        Default:

        false