---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilder.Filtering.html
original_path: api/com/appiancorp/common/query/QueryBuilder.Filtering.html
version: "25.3"
title: "Interface QueryBuilder.Filtering<T>"
page_id: "api/com/appiancorp/common/query/QueryBuilder.Filtering"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface QueryBuilder.Filtering<T>

Type Parameters:

`T` - Type of value

All Superinterfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>`

All Known Implementing Classes:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")\>

* * *

public static interface QueryBuilder.Filtering<T> extends [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>

This interface is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

Restricts path after Filtering for Selection.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    `[and](#and\(com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    `[criteria](#criteria\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    `[or](#or\(com.appiancorp.common.query.Criteria...\))([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)`

    Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[build](QueryBuilder.html#build\(\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")

    `[page](QueryBuilder.Paging.html#page\(int,int\)), [page](QueryBuilder.Paging.html#page\(com.appiancorp.suiteapi.common.paging.PagingInfo\))`

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")

    `[sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(com.google.common.collect.ImmutableList\)), [sortBy](QueryBuilder.Sorting.html#sortBy\(java.util.List\))`

-   ## Method Details

    -   ### criteria

        [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")\> criteria([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)

        Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") used to bound the query.

        Returns:

        the `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>` interface with the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    -   ### and

        [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")\> and([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)

        Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") that will be combined with the existing Criteria using the AND operator.

        Returns:

        the `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>` interface with the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    -   ### or

        [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")\> or([Criteria](Criteria.html "interface in com.appiancorp.common.query")... criteria)

        Obtains the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

        Parameters:

        `criteria` - The [`Criteria`](Criteria.html "interface in com.appiancorp.common.query") that will be combined with the existing Criteria using the OR operator.

        Returns:

        the `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>` interface with the set of operations allowed after `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`