---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilder.Paging.html
original_path: api/com/appiancorp/common/query/QueryBuilder.Paging.html
version: "25.3"
title: "Interface QueryBuilder.Paging<T>"
page_id: "api/com/appiancorp/common/query/QueryBuilder.Paging"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface QueryBuilder.Paging<T>

Type Parameters:

`T` - Type of value

All Superinterfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>`

All Known Subinterfaces:

`[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>`

All Known Implementing Classes:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")\>

* * *

public static interface QueryBuilder.Paging<T> extends [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>

This interface is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

Restricts path after Paging.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    `[page](#page\(int,int\))(int startIndex, int batchSize)`

    Obtains the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    `[page](#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)`

    Defines query's [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[build](QueryBuilder.html#build\(\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")

    `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.google.common.collect.ImmutableList\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(java.util.List\))`

-   ## Method Details

    -   ### page

        [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")\> page(int startIndex, int batchSize)

        Obtains the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

        Parameters:

        `pagingInfo` - the index from which to start paging. This may be 0-based or 1-based depending on where this PagingInfo object will be used.

        `batchSize` - the number of results to return in one page. If negative, the full result set should be returned.

        Returns:

        the `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` interface with the set of operations allowed after `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    -   ### page

        [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")\> page([PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo)

        Defines query's [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging")

        Parameters:

        `pagingInfo` - the [`PagingInfo`](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") describing how to page the results

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>` instance.