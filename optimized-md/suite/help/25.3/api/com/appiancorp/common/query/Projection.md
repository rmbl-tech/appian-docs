---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Projection.html
original_path: api/com/appiancorp/common/query/Projection.html
version: "25.3"
title: "Interface Projection<T extends [Column](Column.html \"class in com.appiancorp.common.query\")\>"
page_id: "api/com/appiancorp/common/query/Projection"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface Projection<T extends [Column](Column.html "class in com.appiancorp.common.query")\>

Type Parameters:

`T` - Type of Column it encapsulates.

All Superinterfaces:

`[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

All Known Implementing Classes:

`[Aggregation](Aggregation.html "class in com.appiancorp.common.query")`, `[Selection](Selection.html "class in com.appiancorp.common.query")`

* * *

@GwtCompatible public interface Projection<T extends [Column](Column.html "class in com.appiancorp.common.query")\> extends [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Marker interface for [`Selection`](Selection.html "class in com.appiancorp.common.query") and [`Aggregation`](Aggregation.html "class in com.appiancorp.common.query").

This represents the selected columns in a [`Query`](Query.html "class in com.appiancorp.common.query") object.

The reason why this class exist is to encapsulate the List of columns, otherwise we could have ended up having a list mixed with [`Column`](Column.html "class in com.appiancorp.common.query") and [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") when they are mutually exclusive and is not a valid configuration.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Projection](Projection.html "interface in com.appiancorp.common.query")<[T](Projection.html "type parameter in Projection")>`

    `[clone](#clone\(\))()`

    Returns a new `Projection` containing the same data as this `Projection`.

    `[List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](Projection.html "type parameter in Projection")>`

    `[getColumns](#getColumns\(\))()`

    Returns the list of projected columns

-   ## Method Details

    -   ### getColumns

        [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[T](Projection.html "type parameter in Projection")\> getColumns()

        Returns the list of projected columns

        Returns:

        the list of projected columns

    -   ### clone

        [Projection](Projection.html "interface in com.appiancorp.common.query")<[T](Projection.html "type parameter in Projection")\> clone()

        Returns a new `Projection` containing the same data as this `Projection`. This is not a deep clone, it just creates new lists to allow data manipulation.

        Returns:

        new `Projection` containing the same data as this `Projection` copied by value.