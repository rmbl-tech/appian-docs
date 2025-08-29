---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Criteria.html
original_path: api/com/appiancorp/common/query/Criteria.html
version: "25.3"
title: "Interface Criteria"
page_id: "api/com/appiancorp/common/query/Criteria"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface Criteria

All Known Implementing Classes:

`[Filter](Filter.html "class in com.appiancorp.common.query")`, `[GenericFilter](GenericFilter.html "class in com.appiancorp.common.query")`, `[GenericLogicalExpression](GenericLogicalExpression.html "class in com.appiancorp.common.query")`, `[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")`, `[Search](Search.html "class in com.appiancorp.common.query")`, `[TypedValueFilter](TypedValueFilter.html "class in com.appiancorp.common.query")`, `[TypedValueLogicalExpression](TypedValueLogicalExpression.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public interface Criteria

Marker interface to be able to create a tree structure while combining filters, search and logical expressions.

See Also:

-   [`Filter`](Filter.html "class in com.appiancorp.common.query")
-   [`Search`](Search.html "class in com.appiancorp.common.query")
-   [`LogicalExpression`](LogicalExpression.html "class in com.appiancorp.common.query")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[copy](#copy\(\))()`

-   ## Method Details

    -   ### copy

        [Criteria](Criteria.html "interface in com.appiancorp.common.query") copy()