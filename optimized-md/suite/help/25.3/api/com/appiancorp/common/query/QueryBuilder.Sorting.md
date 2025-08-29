---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilder.Sorting.html
original_path: api/com/appiancorp/common/query/QueryBuilder.Sorting.html
version: "25.3"
title: "Interface QueryBuilder.Sorting<T>"
page_id: "api/com/appiancorp/common/query/QueryBuilder.Sorting"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Interface QueryBuilder.Sorting<T>

Type Parameters:

`T` - Type of value

All Superinterfaces:

`[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>`

All Known Subinterfaces:

`[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>`

All Known Implementing Classes:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

Enclosing interface:

[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")\>

* * *

public static interface QueryBuilder.Sorting<T> extends [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>

This interface is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

Restricts path after Sorting.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>, [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>, [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>, [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>, [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>, [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>, [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

    `[sortBy](#sortBy\(com.appiancorp.suiteapi.common.paging.ReadOnlySortInfo...\))([ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")... sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

    `[sortBy](#sortBy\(com.appiancorp.suiteapi.common.paging.SortInfo...\))([SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

    `[sortBy](#sortBy\(com.google.common.collect.ImmutableList\))(com.google.common.collect.ImmutableList<[ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")> sortInfos)`

    Defines the query's sorting information

    `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

    `[sortBy](#sortBy\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sortInfos)`

    Defines the query's sorting information

    ### Methods inherited from interface com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")

    `[build](QueryBuilder.html#build\(\))`

-   ## Method Details

    -   ### sortBy

        [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")\> sortBy([SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")... sortInfos)

        Defines the query's sorting information

        Parameters:

        `sortInfos` - the array of [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")\> sortBy([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sortInfos)

        Defines the query's sorting information

        Parameters:

        `sortInfos` - the list of [`SortInfo`](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")\> sortBy([ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")... sortInfos)

        Defines the query's sorting information

        Parameters:

        `sortInfos` - the array of [`ReadOnlySortInfo`](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.

    -   ### sortBy

        [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")\> sortBy(com.google.common.collect.ImmutableList<[ReadOnlySortInfo](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging")\> sortInfos)

        Defines the query's sorting information

        Parameters:

        `sortInfos` - the list of [`ReadOnlySortInfo`](../../suiteapi/common/paging/ReadOnlySortInfo.html "interface in com.appiancorp.suiteapi.common.paging") which the query is going to use to determine the order of the result data.

        Returns:

        the `[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` which can produce a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>` instance.