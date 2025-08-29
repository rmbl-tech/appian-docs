---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserOrGroupDataType.html
original_path: api/com/appiancorp/suiteapi/personalization/UserOrGroupDataType.html
version: "25.3"
title: "Annotation Interface UserOrGroupDataType"
page_id: "api/com/appiancorp/suiteapi/personalization/UserOrGroupDataType"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Annotation Interface UserOrGroupDataType

* * *

[@Inherited](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Inherited.html "class or interface in java.lang.annotation") [@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation"),[PARAMETER](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#PARAMETER "class or interface in java.lang.annotation")}) [@Type](../type/Type.html "annotation interface in com.appiancorp.suiteapi.type")([namespace](../type/Type.html#namespace\(\))\="http://www.appian.com/ae/types/2009", [name](../type/Type.html#name\(\))\="UserOrGroup") public @interface UserOrGroupDataType

Convenience annotation to indicate a value represents an Appian Object. For instance, in a Smart Service the annotation can be used to indicate that an input or output is of this type.

See Also:

-   [`Type`](../type/Type.html "annotation interface in com.appiancorp.suiteapi.type")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[NAMESPACE](#NAMESPACE)`

-   ## Field Details

    -   ### NAMESPACE

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") NAMESPACE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserOrGroupDataType.NAMESPACE)

    -   ### LOCAL\_PART

        static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserOrGroupDataType.LOCAL_PART)