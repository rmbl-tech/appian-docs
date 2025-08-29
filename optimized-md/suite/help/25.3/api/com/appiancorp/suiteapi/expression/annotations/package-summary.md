---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/expression/annotations/package-summary.html
original_path: api/com/appiancorp/suiteapi/expression/annotations/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.expression.annotations"
page_id: "api/com/appiancorp/suiteapi/expression/annotations/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.expression.annotations

* * *

package com.appiancorp.suiteapi.expression.annotations

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.expression](../package-summary.html)

-   Annotation Interfaces

    Class

    Description

    [AppianScriptingFunctionsCategory](AppianScriptingFunctionsCategory.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Functions annotated with this annotation will show up under the internal "Appian Scripting Functions" category.

    [Category](Category.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Defines the category in the expression editor in which the function annotated with this annotation should appear.

    [Function](Function.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Indicates that either a method is a function (if placed on a method), or that all public methods in a class are functions (if placed on a class).

    [HiddenCategory](HiddenCategory.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Functions annotated with this annotation will not show up in the Expression Editor UI.

    [Parameter](Parameter.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Defines the behavior of an expression function parameter.

    [SupportedEvaluationEnvironmentTypes](SupportedEvaluationEnvironmentTypes.html "annotation interface in com.appiancorp.suiteapi.expression.annotations")

    Defines the environments in which this function is supported
    By default, all functions created with the @Function annotation will be marked as supported in the low code platform environment.