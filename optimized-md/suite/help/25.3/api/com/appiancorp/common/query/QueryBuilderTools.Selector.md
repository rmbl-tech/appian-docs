---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilderTools.Selector.html
original_path: api/com/appiancorp/common/query/QueryBuilderTools.Selector.html
version: "25.3"
title: "Class QueryBuilderTools.Selector"
page_id: "api/com/appiancorp/common/query/QueryBuilderTools.Selector"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class QueryBuilderTools.Selector

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.QueryBuilderTools.Selector

Direct Known Subclasses:

`[GenericQuery.GenericBuilder.Selector](GenericQuery.GenericBuilder.Selector.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder.Selector](TypedValueQuery.TypedValueBuilder.Selector.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

* * *

public static class QueryBuilderTools.Selector extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This is how you instantiate columns to configure a query for selection, grouping or aggregation.

For aggregations there is `QueryBuilder.Aggregator` to help creating an aggregation it in a more organic way.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Selector](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")`

    `[as](#as\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Creates a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") for the given field name as the given alias

    `static [Column](Column.html "class in com.appiancorp.common.query")`

    `[column](#column\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)`

    Creates a projection with the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [Column](Column.html "class in com.appiancorp.common.query")`

    `[column](#column\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    Creates a projection for the given field name.

    `static [Column](Column.html "class in com.appiancorp.common.query")`

    `[column](#column\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean visible)`

    Creates a visible or hidden projection for the given field name

    `static [Column](Column.html "class in com.appiancorp.common.query")`

    `[column](#column\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Creates a projection for the given field name.

    `static [Column](Column.html "class in com.appiancorp.common.query")`

    `[column](#column\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)`

    Creates a visible or hidden projection for the given field name.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Selector

        public Selector()

-   ## Method Details

    -   ### as

        public static [ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") as([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Creates a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") for the given field name as the given alias

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the column

        Returns:

        a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

    -   ### column

        public static [Column](Column.html "class in com.appiancorp.common.query") column([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Creates a projection for the given field name.

        Parameters:

        `field` - a field name

        Returns:

        a [`Column`](Column.html "class in com.appiancorp.common.query") representing a projection for the given field

    -   ### column

        public static [Column](Column.html "class in com.appiancorp.common.query") column([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)

        Creates a projection with the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `ca` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        a [`Column`](Column.html "class in com.appiancorp.common.query") representing a projection for the given field

    -   ### column

        public static [Column](Column.html "class in com.appiancorp.common.query") column([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Creates a projection for the given field name. This projection can be referred to by the given alias.

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the projection

        Returns:

        a [`Column`](Column.html "class in com.appiancorp.common.query") representing a projection for the given field as the given alias

    -   ### column

        public static [Column](Column.html "class in com.appiancorp.common.query") column([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean visible)

        Creates a visible or hidden projection for the given field name

        Parameters:

        `field` - a field name

        `visible` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        a [`Column`](Column.html "class in com.appiancorp.common.query") representing a projection for the given field.

    -   ### column

        public static [Column](Column.html "class in com.appiancorp.common.query") column([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)

        Creates a visible or hidden projection for the given field name. This projection can be referred to by the given alias.

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the projection

        `visible` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        a [`Column`](Column.html "class in com.appiancorp.common.query") representing a projection for the given field.