---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/Function.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/Function.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface Function

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")}) [@Inherited](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Inherited.html "class or interface in java.lang.annotation") [@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") public @interface Function

Indicates that either a method is a function (if placed on a method), or that all public methods in a class are functions (if placed on a class). The method name will be used as the function name. Use the `@Category` annotation to designate which category should contain the function. Use the `@Type` annotation to indicate the return type. Describe additional behaviors of the parameters to the function using the `@Parameter` annotation.

See Also:

-   [`Parameter`](Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")
-   [`Category`](Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")
-   [`Type`](../../type/Type.html "annotation interface in com.appiancorp.suiteapi.type")

-   ## Optional Element Summary

    Optional Elements

    Modifier and Type

    Optional Element

    Description

    `int`

    `[returnType](#returnType\(\))`

    Deprecated.

    since 6.0.3.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[NOT_DEFINED](#NOT_DEFINED)`

-   ## Field Details

    -   ### NOT\_DEFINED

        static final int NOT\_DEFINED

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.expression.annotations.Function.NOT_DEFINED)

-   ## Element Details

    -   ### returnType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int returnType

        Deprecated.

        since 6.0.3. Use the @Type annotation instead.

        The AppianType this function returns.

        Returns:

        See Also:

        -   [`Type`](../../type/Type.html "annotation interface in com.appiancorp.suiteapi.type")

        Default:

        \-2147483648