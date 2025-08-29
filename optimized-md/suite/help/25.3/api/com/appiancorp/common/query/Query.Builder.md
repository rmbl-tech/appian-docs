---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/Query.Builder.html
original_path: api/com/appiancorp/common/query/Query.Builder.html
version: "25.3"
title: "Class Query.Builder<T>"
page_id: "api/com/appiancorp/common/query/Query.Builder"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class Query.Builder<T>

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.Query.Builder<T>

All Implemented Interfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>`

Direct Known Subclasses:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

Enclosing class:

[Query](Query.html "class in com.appiancorp.common.query")<[T](Query.html "type parameter in Query")\>

* * *

public abstract static class Query.Builder<T> extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>

A class for incrementally build a Query.

The objective of this builder is to help the developer to construct a Query in a more organic way to ease development and avoid invalid configurations.

Each method returns the same Builder instance, but it is bound by interface which the method returns. This way is simulating a flow and the available valid configurations after the current configuration.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Constructor Summary

    Constructors

    Modifier

    Constructor

    Description

    `protected`

    `[Builder](#%3Cinit%3E\(\))()`

    Initializes a newly created `Builder`

    `protected`

    `[Builder](#%3Cinit%3E\(com.appiancorp.common.query.Query\))([Query](Query.html "class in com.appiancorp.common.query") query)`

    Constructs a `Builder` using the given `Query` as a base

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[aggregate](#aggregate\(com.appiancorp.common.query.AggregationColumn...\))([AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")... a)`

    Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[aggregate](#aggregate\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")> a)`

    Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[and](#and\(com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    `[Query](Query.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[build](#build\(\))()`

    Produces a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance at any point in time its called.

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[criteria](#criteria\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[groupBy](#groupBy\(com.appiancorp.common.query.Column...\))([Column](Column.html "class in com.appiancorp.common.query")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[groupBy](#groupBy\(com.appiancorp.common.query.ColumnAlias...\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)`

    Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[groupBy](#groupBy\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    `protected abstract [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<?>`

    `[newLogicalOperation](#newLogicalOperation\(com.appiancorp.common.query.LogicalOperator,java.util.List\))([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") lo, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")> conditions)`

    Returns a `LogicalExpression` instance

    `protected final [Query](Query.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[newQuerySimplified](#newQuerySimplified\(com.appiancorp.common.query.Projection,com.appiancorp.common.query.Criteria,com.appiancorp.suiteapi.common.paging.PagingInfo\))([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")> projection, [Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)`

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[or](#or\(com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[page](#page\(int,int\))(int startIndex, int batchSize)`

    Obtains the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[page](#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)`

    Defines query's [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[project](#project\(com.appiancorp.common.query.Aggregation\))([Aggregation](Aggregation.html "class in com.appiancorp.common.query") a)`

    Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[project](#project\(com.appiancorp.common.query.Selection\))([Selection](Selection.html "class in com.appiancorp.common.query") s)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[select](#select\(com.appiancorp.common.query.Column...\))([Column](Column.html "class in com.appiancorp.common.query")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[select](#select\(com.appiancorp.common.query.ColumnAlias...\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[select](#select\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[select](#select\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[select](#select\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")> c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[selectFirst](#selectFirst\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") column)`

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[sortBy](#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\))([ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")... sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[sortBy](#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\))([SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[sortBy](#sortBy\(com.google.common.collect.ImmutableList\))(com.google.common.collect.ImmutableList<[ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")> sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

    `[sortBy](#sortBy\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sortInfos)`

    Defines the query's sorting information

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Builder

        protected Builder()

        Initializes a newly created `Builder`

    -   ### Builder

        protected Builder([Query](Query.html "class in com.appiancorp.common.query") query)

        Constructs a `Builder` using the given `Query` as a base

        Parameters:

        `query` - a `Query`

-   ## Method Details

    -   ### newQuerySimplified

        protected final [Query](Query.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> newQuerySimplified([Projection](Projection.html "interface in com.appiancorp.common.query")<? extends [Column](Column.html "class in com.appiancorp.common.query")\> projection, [Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)

    -   ### select

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> select([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#select\(java.lang.String...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[select](QueryBuilder.Selecting.html#select\(java.lang.String...\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the array of column names which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> select([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> c)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#select\(java.util.Collection\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[select](QueryBuilder.Selecting.html#select\(java.util.Collection\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the list of column names which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### selectFirst

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> selectFirst([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") column)

    -   ### select

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> select([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#select\(com.appiancorp.common.query.ColumnAlias...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[select](QueryBuilder.Selecting.html#select\(com.appiancorp.common.query.ColumnAlias...\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `alias` - the array of [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> select([Column](Column.html "class in com.appiancorp.common.query")... c)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#select\(com.appiancorp.common.query.Column...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[select](QueryBuilder.Selecting.html#select\(com.appiancorp.common.query.Column...\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the array of [`Column`](Column.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> select([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")\> c)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#select\(java.util.List\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[select](QueryBuilder.Selecting.html#select\(java.util.List\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the list of [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### project

        public [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> project([Selection](Selection.html "class in com.appiancorp.common.query") s)

        Description copied from interface: `[QueryBuilder.Selecting](QueryBuilder.Selecting.html#project\(com.appiancorp.common.query.Selection\))`

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Specified by:

        `[project](QueryBuilder.Selecting.html#project\(com.appiancorp.common.query.Selection\))` in interface `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `s` - the [`Selection`](Selection.html "class in com.appiancorp.common.query") to be performed by the query

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### criteria

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> criteria([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)

        Description copied from interface: `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html#criteria\(com.appiancorp.common.query.Criteria\))`

        Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

        Specified by:

        `[criteria](QueryBuilder.Filtering.html#criteria\(com.appiancorp.common.query.Criteria\))` in interface `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Specified by:

        `[criteria](QueryBuilder.FilteringCriteria.html#criteria\(com.appiancorp.common.query.Criteria\))` in interface `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") used to bound the query.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>` interface with the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    -   ### and

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)

        Description copied from interface: `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html#and\(com.appiancorp.common.query.Criteria...\))`

        Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

        Specified by:

        `[and](QueryBuilder.Filtering.html#and\(com.appiancorp.common.query.Criteria...\))` in interface `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Specified by:

        `[and](QueryBuilder.FilteringCriteria.html#and\(com.appiancorp.common.query.Criteria...\))` in interface `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") that will be combined with the existing Criteria using the AND operator.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>` interface with the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    -   ### or

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)

        Description copied from interface: `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html#or\(com.appiancorp.common.query.Criteria...\))`

        Obtains the set of operations allowed after `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

        Specified by:

        `[or](QueryBuilder.Filtering.html#or\(com.appiancorp.common.query.Criteria...\))` in interface `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Specified by:

        `[or](QueryBuilder.FilteringCriteria.html#or\(com.appiancorp.common.query.Criteria...\))` in interface `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") that will be combined with the existing Criteria using the OR operator.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>` interface with the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    -   ### groupBy

        public [QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> groupBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)

        Description copied from interface: `[QueryBuilder.Grouping](QueryBuilder.Grouping.html#groupBy\(java.lang.String...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

        Specified by:

        `[groupBy](QueryBuilder.Grouping.html#groupBy\(java.lang.String...\))` in interface `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the array of column names which the query is going to group by.

        Returns:

        the `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>` interface with the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    -   ### groupBy

        public [QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> groupBy([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)

        Description copied from interface: `[QueryBuilder.Grouping](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.ColumnAlias...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

        Specified by:

        `[groupBy](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.ColumnAlias...\))` in interface `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `alias` - the array of [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") which the query is going to group by.

        Returns:

        the `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>` interface with the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    -   ### groupBy

        public [QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> groupBy([Column](Column.html "class in com.appiancorp.common.query")... c)

        Description copied from interface: `[QueryBuilder.Grouping](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.Column...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

        Specified by:

        `[groupBy](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.Column...\))` in interface `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `c` - the array of [`Column`](Column.html "class in com.appiancorp.common.query") which the query is going to group by.

        Returns:

        the `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>` interface with the set of operations allowed after `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    -   ### aggregate

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> aggregate([AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")... a)

        Description copied from interface: `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html#aggregate\(com.appiancorp.common.query.AggregationColumn...\))`

        Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

        Specified by:

        `[aggregate](QueryBuilder.Aggregating.html#aggregate\(com.appiancorp.common.query.AggregationColumn...\))` in interface `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `a` - the array of [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where the query is going perform aggregation operations.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>` interface with the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    -   ### aggregate

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> aggregate([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")\> a)

        Description copied from interface: `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html#aggregate\(java.util.List\))`

        Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

        Specified by:

        `[aggregate](QueryBuilder.Aggregating.html#aggregate\(java.util.List\))` in interface `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `a` - the list of [`AggregationColumn`](AggregationColumn.html "class in com.appiancorp.common.query") where the query is going perform aggregation operations.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>` interface with the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    -   ### project

        public [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> project([Aggregation](Aggregation.html "class in com.appiancorp.common.query") a)

        Description copied from interface: `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html#project\(com.appiancorp.common.query.Aggregation\))`

        Obtains the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

        Specified by:

        `[project](QueryBuilder.Aggregating.html#project\(com.appiancorp.common.query.Aggregation\))` in interface `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `a` - the [`Aggregation`](Aggregation.html "class in com.appiancorp.common.query") to be performed by the query.

        Returns:

        the `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>` interface with the set of operations allowed after `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    -   ### page

        public [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> page(int startIndex, int batchSize)

        Description copied from interface: `[QueryBuilder.Paging](QueryBuilder.Paging.html#page\(int,int\))`

        Obtains the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

        Specified by:

        `[page](QueryBuilder.Paging.html#page\(int,int\))` in interface `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        Returns:

        the `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` interface with the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    -   ### page

        public [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> page([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)

        Description copied from interface: `[QueryBuilder.Paging](QueryBuilder.Paging.html#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))`

        Defines query's [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

        Specified by:

        `[page](QueryBuilder.Paging.html#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))` in interface `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `pagingInfo` - the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") describing how to page the results

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` instance.

    -   ### sortBy

        public [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> sortBy([SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sortInfos)

        Description copied from interface: `[QueryBuilder.Sorting](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\))`

        Defines the query's sorting information

        Specified by:

        `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\))` in interface `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `sortInfos` - the array of [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        public [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> sortBy([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sortInfos)

        Description copied from interface: `[QueryBuilder.Sorting](QueryBuilder.Sorting.html#sortBy\(java.util.List\))`

        Defines the query's sorting information

        Specified by:

        `[sortBy](QueryBuilder.Sorting.html#sortBy\(java.util.List\))` in interface `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `sortInfos` - the list of [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        public [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> sortBy([ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")... sortInfos)

        Description copied from interface: `[QueryBuilder.Sorting](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\))`

        Defines the query's sorting information

        Specified by:

        `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\))` in interface `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `sortInfos` - the array of [`ReadOnlySortInfo`](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        public [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> sortBy(com.google.common.collect.ImmutableList<[ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")\> sortInfos)

        Description copied from interface: `[QueryBuilder.Sorting](QueryBuilder.Sorting.html#sortBy\(com.google.common.collect.ImmutableList\))`

        Defines the query's sorting information

        Specified by:

        `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.google.common.collect.ImmutableList\))` in interface `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Parameters:

        `sortInfos` - the list of [`ReadOnlySortInfo`](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### build

        public [Query](Query.html "class in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")\> build()

        Description copied from interface: `[QueryBuilder](QueryBuilder.html#build\(\))`

        Produces a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance at any point in time its called.

        Specified by:

        `[build](QueryBuilder.html#build\(\))` in interface `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](Query.Builder.html "type parameter in Query.Builder")>`

        Returns:

        a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance.

    -   ### newLogicalOperation

        protected abstract [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<?> newLogicalOperation([LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query") lo, [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Criteria](Criteria.html "interface in com.appiancorp.common.query")\> conditions)

        Returns a `LogicalExpression` instance

        Parameters:

        `lo` - logical operation type represented by [`LogicalOperator`](LogicalOperator.html "enum class in com.appiancorp.common.query")

        `conditions` -

        Returns:

        a `LogicalExpression` instance