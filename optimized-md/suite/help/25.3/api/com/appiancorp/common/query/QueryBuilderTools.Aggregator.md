---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilderTools.Aggregator.html
original_path: api/com/appiancorp/common/query/QueryBuilderTools.Aggregator.html
version: "25.3"
title: "Class QueryBuilderTools.Aggregator"
page_id: "api/com/appiancorp/common/query/QueryBuilderTools.Aggregator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class QueryBuilderTools.Aggregator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.QueryBuilderTools.Aggregator

Direct Known Subclasses:

`[GenericQuery.GenericBuilder.Aggregator](GenericQuery.GenericBuilder.Aggregator.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder.Aggregator](TypedValueQuery.TypedValueBuilder.Aggregator.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

* * *

public static class QueryBuilderTools.Aggregator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class encapsulates all the available Aggregation Functions in a more object oriented way.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Aggregator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[aggregation](#aggregation\(java.lang.String,com.appiancorp.common.query.AggregationFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)`

    Creates an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[aggregation](#aggregation\(java.lang.String,java.lang.String,boolean,com.appiancorp.common.query.AggregationFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)`

    Creates an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[avg](#avg\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Apply a "average" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[avg](#avg\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)`

    Apply a "average" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[avg](#avg\(com.appiancorp.common.query.ColumnAlias,boolean\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)`

    Apply a "average" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[avg](#avg\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Apply a "average" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[avg](#avg\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)`

    Apply a "average" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[count](#count\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Apply a "count" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[count](#count\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)`

    Apply a "count" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[count](#count\(com.appiancorp.common.query.ColumnAlias,boolean\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)`

    Apply a "count" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[count](#count\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Apply a "count" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[count](#count\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)`

    Apply a "count" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Creates a grouping projection for the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)`

    Creates a grouping projection for the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") This projection can be referred to by the given alias.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    Creates a grouping projection for the given field name

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean visible)`

    Creates a visible or hidden grouping projection for the given field name

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Creates a grouping projection for the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)`

    Creates a visible or hidden grouping projection for the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[group](#group\(java.lang.String,java.lang.String,com.appiancorp.common.query.GroupingFunction,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, com.appiancorp.common.query.GroupingFunction groupingFunction, boolean visible)`

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[max](#max\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Apply a "maximum" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[max](#max\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)`

    Apply a "maximum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[max](#max\(com.appiancorp.common.query.ColumnAlias,boolean\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)`

    Apply a "maximum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[max](#max\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Apply a "maximum" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[max](#max\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)`

    Apply a "maximum" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[min](#min\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Apply a "minimum" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[min](#min\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)`

    Apply a "minimum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[min](#min\(com.appiancorp.common.query.ColumnAlias,boolean\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)`

    Apply a "minimum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[min](#min\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Apply a "minimum" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[min](#min\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)`

    Apply a "minimum" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[sum](#sum\(com.appiancorp.common.query.Column\))([Column](Column.html "class in com.appiancorp.common.query") c)`

    Apply a "summation" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[sum](#sum\(com.appiancorp.common.query.ColumnAlias\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)`

    Apply a "summation" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[sum](#sum\(com.appiancorp.common.query.ColumnAlias,boolean\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)`

    Apply a "summation" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query").

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[sum](#sum\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    Apply a "summation" aggregation function to the given field name.

    `static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")`

    `[sum](#sum\(java.lang.String,java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)`

    Apply a "summation" aggregation function to the given field name.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Aggregator

        public Aggregator()

-   ## Method Details

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Creates a grouping projection for the given field name

        Parameters:

        `field` - a field name

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Creates a grouping projection for the given field name. This projection can be referred to by the given alias.

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, boolean visible)

        Creates a visible or hidden grouping projection for the given field name

        Parameters:

        `field` - a field name

        `visible` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") ca)

        Creates a grouping projection for the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") This projection can be referred to by the given alias.

        Parameters:

        `ca` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible)

        Creates a visible or hidden grouping projection for the given field name. This projection can be referred to by the given alias.

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the projection

        `visible` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([Column](Column.html "class in com.appiancorp.common.query") c)

        Creates a grouping projection for the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") representing a grouping projection

    -   ### group

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") group([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, com.appiancorp.common.query.GroupingFunction groupingFunction, boolean visible)

    -   ### aggregation

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") aggregation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)

        Creates an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance

        Parameters:

        `field` - a field name

        `function` - an aggregation function define by the [`AggregationFunction`](AggregationFunction.html "enum class in com.appiancorp.common.query") enum

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance

    -   ### aggregation

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") aggregation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visible, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") function)

        Creates an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance. This projection can be referred to by the given alias.

        Parameters:

        `field` - a field name

        `alias` - an alias name to assign to the projection

        `visible` - if `true` the projection will be visible; otherwise it will be hidden

        `function` - an aggregation function define by the [`AggregationFunction`](AggregationFunction.html "enum class in com.appiancorp.common.query") enum

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") instance

    -   ### sum

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") sum([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)

        Apply a "summation" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "summation" is applied.

    -   ### avg

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") avg([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)

        Apply a "average" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "average" is applied.

    -   ### count

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") count([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)

        Apply a "count" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "count" is applied.

    -   ### min

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") min([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)

        Apply a "minimum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "minimum" is applied.

    -   ### max

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") max([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias)

        Apply a "maximum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query")

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "maximum" is applied.

    -   ### sum

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") sum([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Apply a "summation" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "summation" is applied.

    -   ### avg

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") avg([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Apply a "average" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "average" is applied.

    -   ### count

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") count([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Apply a "count" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "count" is applied.

    -   ### min

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") min([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Apply a "minimum" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "minimum" is applied.

    -   ### max

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") max([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

        Apply a "maximum" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "maximum" is applied.

    -   ### sum

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") sum([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)

        Apply a "summation" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "summation" is applied.

    -   ### avg

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") avg([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)

        Apply a "average" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "average" is applied.

    -   ### count

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") count([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)

        Apply a "count" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "count" is applied.

    -   ### min

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") min([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)

        Apply a "minimum" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "minimum" is applied.

    -   ### max

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") max([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean visibility)

        Apply a "maximum" aggregation function to the given field name. This projection can be referred to by the given alias.

        Parameters:

        `c` - field name

        `alias` - an alias name to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "maximum" is applied.

    -   ### sum

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") sum([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)

        Apply a "summation" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "summation" is applied.

    -   ### avg

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") avg([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)

        Apply a "average" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "average" is applied.

    -   ### count

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") count([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)

        Apply a "count" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "count" is applied.

    -   ### min

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") min([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)

        Apply a "minimum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "minimum" is applied.

    -   ### max

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") max([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query") alias, boolean visibility)

        Apply a "maximum" aggregation function to the given [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query"). This projection can be referred to by the given alias.

        Parameters:

        `alias` - a [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") to assign to the projection

        `visibility` - if `true` the projection will be visible; otherwise it will be hidden

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "maximum" is applied.

    -   ### sum

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") sum([Column](Column.html "class in com.appiancorp.common.query") c)

        Apply a "summation" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "summation" is applied.

    -   ### avg

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") avg([Column](Column.html "class in com.appiancorp.common.query") c)

        Apply a "average" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "average" is applied.

    -   ### count

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") count([Column](Column.html "class in com.appiancorp.common.query") c)

        Apply a "count" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "count" is applied.

    -   ### min

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") min([Column](Column.html "class in com.appiancorp.common.query") c)

        Apply a "minimum" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "minimum" is applied.

    -   ### max

        public static [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query") max([Column](Column.html "class in com.appiancorp.common.query") c)

        Apply a "maximum" aggregation function to the given [`Column`](Column.html "class in com.appiancorp.common.query")

        Parameters:

        `c` - a [`Column`](Column.html "class in com.appiancorp.common.query")

        Returns:

        an [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where "maximum" is applied.