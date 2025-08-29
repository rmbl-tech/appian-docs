---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/CriteriaValidatorProvider.html
original_path: api/com/appiancorp/common/query/CriteriaValidatorProvider.html
version: "25.3"
title: "Interface CriteriaValidatorProvider"
page_id: "api/com/appiancorp/common/query/CriteriaValidatorProvider"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface CriteriaValidatorProvider

All Known Implementing Classes:

`[TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query")`

* * *

public interface CriteriaValidatorProvider

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")`

    `[getFilterValidator](#getFilterValidator\(com.appiancorp.common.query.FilterOperator\))([FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") filterOperator)`

    `[LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query")`

    `[getLogicalExpressionValidator](#getLogicalExpressionValidator\(\))()`

    `com.google.common.collect.ImmutableList<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")>`

    `[getValidCriteriaTypes](#getValidCriteriaTypes\(\))()`

    `com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getValidOperators](#getValidOperators\(\))()`

-   ## Method Details

    -   ### getFilterValidator

        [FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query") getFilterValidator([FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") filterOperator)

    -   ### getLogicalExpressionValidator

        [LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query") getLogicalExpressionValidator()

    -   ### getValidOperators

        com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getValidOperators()

    -   ### getValidCriteriaTypes

        com.google.common.collect.ImmutableList<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")\> getValidCriteriaTypes()