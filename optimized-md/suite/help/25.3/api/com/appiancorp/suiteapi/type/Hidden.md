---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/Hidden.html
original_path: api/com/appiancorp/suiteapi/type/Hidden.html
version: "25.3"
title: "Annotation Interface Hidden"
page_id: "api/com/appiancorp/suiteapi/type/Hidden"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.type](package-summary.html)

# Annotation Interface Hidden

* * *

[@Retention](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Retention.html "class or interface in java.lang.annotation")([RUNTIME](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/RetentionPolicy.html#RUNTIME "class or interface in java.lang.annotation")) [@Target](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/Target.html "class or interface in java.lang.annotation")([TYPE](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/annotation/ElementType.html#TYPE "class or interface in java.lang.annotation")) public @interface Hidden

[`Datatype`](Datatype.html "class in com.appiancorp.suiteapi.type")s created from a POJO containing this annotation will be created as hidden data types. This annotation is not automatically inherited to subclasses. See [`DatatypeProperties.isHidden()`](DatatypeProperties.html#isHidden\(\))