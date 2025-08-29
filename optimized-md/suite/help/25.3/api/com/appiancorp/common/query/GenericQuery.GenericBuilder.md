---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericQuery.GenericBuilder.html
original_path: api/com/appiancorp/common/query/GenericQuery.GenericBuilder.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericQuery.GenericBuilder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\>

com.appiancorp.common.query.GenericQuery.GenericBuilder

All Implemented Interfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`, `[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")`

Enclosing class:

[GenericQuery](GenericQuery.html "class in com.appiancorp.common.query")

* * *

public static final class GenericQuery.GenericBuilder extends [Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> implements [QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

A class for incrementally build a `GenericQuery`.

The objective of this builder is to help the developer to construct a Query in a more organic way to ease development and avoid invalid configurations.

Each method returns the same Builder instance, but it is bound by interface which the method returns. This way is simulating a flow and the available valid configurations after the current configuration.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static final class` 

    `[GenericQuery.GenericBuilder.Aggregator](GenericQuery.GenericBuilder.Aggregator.html "class in com.appiancorp.common.query")`

    This class encapsulates all the available Aggregation Functions in a more object oriented way.

    `static final class` 

    `[GenericQuery.GenericBuilder.FilterOpLiteral](GenericQuery.GenericBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")`

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    `static final class` 

    `[GenericQuery.GenericBuilder.LogicalOp](GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")`

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    `static final class` 

    `[GenericQuery.GenericBuilder.Order](GenericQuery.GenericBuilder.Order.html "class in com.appiancorp.common.query")`

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    `static final class` 

    `[GenericQuery.GenericBuilder.SearchOp](GenericQuery.GenericBuilder.SearchOp.html "class in com.appiancorp.common.query")`

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    `static final class` 

    `[GenericQuery.GenericBuilder.Selector](GenericQuery.GenericBuilder.Selector.html "class in com.appiancorp.common.query")`

    This is how you instantiate columns to configure a query for selection, grouping or aggregation.

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[GenericBuilder](#%3Cinit%3E\(\))()`

    Initializes a newly created `GenericBuilder`

    `protected`

    `[GenericBuilder](#%3Cinit%3E\(com.appiancorp.common.query.Query\))([Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> query)`

    Constructs a `GenericBuilder` using the given `Query` as a base

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<?>`

    `[newLogicalOperation](#newLogicalOperation\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") lo, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Returns a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") instance

    ### Methods inherited from class com.appiancorp.common.query.[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")

    `[aggregate](Query.Builder.html#aggregate\(com.appiancorp.common.query.AggregationColumn...\)), [aggregate](Query.Builder.html#aggregate\(java.util.List\)), [and](Query.Builder.html#and\(com.appiancorp.common.query.Criteria...\)), [build](Query.Builder.html#build\(\)), [criteria](Query.Builder.html#criteria\(com.appiancorp.common.query.Criteria\)), [groupBy](Query.Builder.html#groupBy\(com.appiancorp.common.query.Column...\)), [groupBy](Query.Builder.html#groupBy\(com.appiancorp.common.query.ColumnAlias...\)), [groupBy](Query.Builder.html#groupBy\(java.lang.String...\)), [newQuerySimplified](Query.Builder.html#newQuerySimplified\(com.appiancorp.common.query.Projection,com.appiancorp.common.query.Criteria,com.appiancorp.suiteapi.common.paging.PagingInfo\)), [or](Query.Builder.html#or\(com.appiancorp.common.query.Criteria...\)), [page](Query.Builder.html#page\(int,int\)), [page](Query.Builder.html#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\)), [project](Query.Builder.html#project\(com.appiancorp.common.query.Aggregation\)), [project](Query.Builder.html#project\(com.appiancorp.common.query.Selection\)), [select](Query.Builder.html#select\(com.appiancorp.common.query.Column...\)), [select](Query.Builder.html#select\(com.appiancorp.common.query.ColumnAlias...\)), [select](Query.Builder.html#select\(java.lang.String...\)), [select](Query.Builder.html#select\(java.util.Collection\)), [select](Query.Builder.html#select\(java.util.List\)), [selectFirst](Query.Builder.html#selectFirst\(java.lang.String\)), [sortBy](Query.Builder.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\)), [sortBy](Query.Builder.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\)), [sortBy](Query.Builder.html#sortBy\(com.google.common.collect.ImmutableList\)), [sortBy](Query.Builder.html#sortBy\(java.util.List\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### GenericBuilder

        protected GenericBuilder()

        Initializes a newly created `GenericBuilder`

    -   ### GenericBuilder

        protected GenericBuilder([Query](Query.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> query)

        Constructs a `GenericBuilder` using the given `Query` as a base

        Parameters:

        `query` - a `Query`

-   ## Method Details

    -   ### newLogicalOperation

        protected [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<?> newLogicalOperation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") lo, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Returns a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") instance

        Specified by:

        `[newLogicalOperation](Query.Builder.html#newLogicalOperation\(com.appiancorp.common.query.LogicalOperator,java.util.List\))` in class `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

        Parameters:

        `lo` - logical operation type represented by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query")

        `conditions` -

        Returns:

        a [`GenericLogicalExpression`](GenericLogicalExpression.html "class in com.appiancorp.common.query") instance