---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilder.Selecting.html
original_path: api/com/appiancorp/common/query/QueryBuilder.Selecting.html
version: "25.3"
title: "Interface QueryBuilder.Selecting<T>"
page_id: "api/com/appiancorp/common/query/QueryBuilder.Selecting"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface QueryBuilder.Selecting<T>

Type Parameters:

`T` - Type of value

All Superinterfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>`

All Known Implementing Classes:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")\>

* * *

public static interface QueryBuilder.Selecting<T> extends [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>

This interface is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This is the first basic configuration and the starting point of the flow. Column(s) Selection.

Define first sets of operations allowed for `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` construction.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[project](#project\(com.appiancorp.common.query.Selection\))([Selection](Selection.html "class in com.appiancorp.common.query") s)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[select](#select\(com.appiancorp.common.query.Column...\))([Column](Column.html "class in com.appiancorp.common.query")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[select](#select\(com.appiancorp.common.query.ColumnAlias...\))([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[select](#select\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[select](#select\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    `[select](#select\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")> c)`

    Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[build](QueryBuilder.html#build\(\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")

    `[aggregate](QueryBuilder.Aggregating.html#aggregate\(com.appiancorp.common.query.AggregationColumn...\)), [aggregate](QueryBuilder.Aggregating.html#aggregate\(java.util.List\)), [project](QueryBuilder.Aggregating.html#project\(com.appiancorp.common.query.Aggregation\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")

    `[and](QueryBuilder.FilteringCriteria.html#and\(com.appiancorp.common.query.Criteria...\)), [criteria](QueryBuilder.FilteringCriteria.html#criteria\(com.appiancorp.common.query.Criteria\)), [or](QueryBuilder.FilteringCriteria.html#or\(com.appiancorp.common.query.Criteria...\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")

    `[groupBy](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.Column...\)), [groupBy](QueryBuilder.Grouping.html#groupBy\(com.appiancorp.common.query.ColumnAlias...\)), [groupBy](QueryBuilder.Grouping.html#groupBy\(java.lang.String...\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")

    `[page](QueryBuilder.Paging.html#page\(int,int\)), [page](QueryBuilder.Paging.html#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")

    `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.google.common.collect.ImmutableList\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(java.util.List\))`

-   ## Method Details

    -   ### select

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> select([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... c)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `c` - the array of column names which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> select([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> c)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `c` - the list of column names which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> select([ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")... alias)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `alias` - the array of [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> select([Column](Column.html "class in com.appiancorp.common.query")... c)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `c` - the array of [`Column`](Column.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### select

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> select([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")\> c)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `c` - the list of [`ColumnAlias`](ColumnAlias.html "class in com.appiancorp.common.query") which the query is going to select

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    -   ### project

        [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")\> project([Selection](Selection.html "class in com.appiancorp.common.query") s)

        Obtains the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

        Parameters:

        `s` - the [`Selection`](Selection.html "class in com.appiancorp.common.query") to be performed by the query

        Returns:

        the `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>` interface with the set of operations allowed after `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`