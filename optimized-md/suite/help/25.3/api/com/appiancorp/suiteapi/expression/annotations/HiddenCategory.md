---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/HiddenCategory.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/HiddenCategory.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface HiddenCategory

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")}) [@Category](Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")("category.name.Hidden") public @interface HiddenCategory

Functions annotated with this annotation will not show up in the Expression Editor UI. However, the functions will still be executable wherever Java Expression Functions are permitted.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[KEY](#KEY)`

    Category Key

-   ## Field Details

    -   ### KEY

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") KEY

        Category Key

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.expression.annotations.HiddenCategory.KEY)