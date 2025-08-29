---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/QueryBuilder.html
original_path: api/com/appiancorp/common/query/QueryBuilder.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Interface QueryBuilder<T>

Type Parameters:

`T` - Type of value

All Known Subinterfaces:

`[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>`, `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>`

All Known Implementing Classes:

`[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")`, `[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")`, `[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")`

* * *

public interface QueryBuilder<T>

Interface for incrementally build a Query.

The objective of this builder is to help the developer to construct a Query in a more organic way to ease development and avoid invalid configurations.

Each method returns the same Builder instance, but it is bound by the interface which the method returns. This way is simulating a flow and the available valid configurations after the current configuration.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Interface

    Description

    `static interface` 

    `[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Aggregating.html "type parameter in QueryBuilder.Aggregating")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Filtering.html "type parameter in QueryBuilder.Filtering")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.FilteringCriteria.html "type parameter in QueryBuilder.FilteringCriteria")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Grouping.html "type parameter in QueryBuilder.Grouping")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Paging.html "type parameter in QueryBuilder.Paging")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Selecting.html "type parameter in QueryBuilder.Selecting")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    `static interface` 

    `[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<[T](QueryBuilder.Sorting.html "type parameter in QueryBuilder.Sorting")>`

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>`

    `[build](#build\(\))()`

    Produces a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance at any point in time its called.

-   ## Method Details

    -   ### build

        [Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")\> build()

        Produces a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance at any point in time its called.

        Returns:

        a `[Query](Query.html "class in com.appiancorp.common.query")<[T](QueryBuilder.html "type parameter in QueryBuilder")>` instance.