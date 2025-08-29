---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/Category.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/Category.html
version: "25.3"
title: "Annotation Interface Category"
page_id: "api/com/appiancorp/suiteapi/expression/annotations/Category"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface Category

* * *

[@Inherited](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Inherited.html "class or interface in java.lang.annotation") [@Documented](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Documented.html "class or interface in java.lang.annotation") [@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")}) public @interface Category

Defines the category in the expression editor in which the function annotated with this annotation should appear. The name is given as the key in a bundle included with the custom function plug-in. When placed on the class, all functions contained in the class will appear in the give category.

Example usage:
`@Category("category.name.AppianScriptingFunctions")`
`public class XpathExpression`
In this example, all functions defined in XpathExpression will appear in the category whose value is given for the key "category.name.AppianScriptingFunctions."

-   ## Required Element Summary

    Required Elements

    Modifier and Type

    Required Element

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[value](#value\(\))`

    The bundle key for the category name.

-   ## Element Details

    -   ### value

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value

        The bundle key for the category name.