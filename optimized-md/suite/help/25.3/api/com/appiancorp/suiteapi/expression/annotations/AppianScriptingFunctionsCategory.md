---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/AppianScriptingFunctionsCategory.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/AppianScriptingFunctionsCategory.html
version: "25.3"
title: "Annotation Interface AppianScriptingFunctionsCategory"
page_id: "api/com/appiancorp/suiteapi/expression/annotations/AppianScriptingFunctionsCategory"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.expression.annotations](package-summary.html)

# Annotation Interface AppianScriptingFunctionsCategory

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")({[METHOD](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#METHOD "class or interface in java.lang.annotation"),[TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")}) [@Category](Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")("category.name.AppianScriptingFunctions") public @interface AppianScriptingFunctionsCategory

Functions annotated with this annotation will show up under the internal "Appian Scripting Functions" category. Such category is hidden (in the Expression Editor UI) wherever Java Expression Functions are not permitted.

See Also:

-   [`Category`](Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")