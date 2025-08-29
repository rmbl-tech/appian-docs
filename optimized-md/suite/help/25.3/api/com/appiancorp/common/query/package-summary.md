---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/package-summary.html
original_path: api/com/appiancorp/common/query/package-summary.html
version: "25.3"
title: "Package com.appiancorp.common.query"
page_id: "api/com/appiancorp/common/query/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.common.query

* * *

package com.appiancorp.common.query

These classes are available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

-   Related Packages

    Package

    Description

    [com.appiancorp.common.query.returns](returns/package-summary.html)

-   All Classes and InterfacesInterfacesClassesEnum Classes

    Class

    Description

    [AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")

    [Aggregation](Aggregation.html "class in com.appiancorp.common.query")

    Holds the List of AggregationColumns to project by the Query.

    [AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")

    Immutable bean representing the column dot notation, alias, visibility (if it's should be shown to the client or not).

    [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query")

    Enumeration containing the valid aggregation functions which can be applied to a column.

    [Column](Column.html "class in com.appiancorp.common.query")

    Immutable bean representing the column dot notation, its alias and its visibility (if it should be shown to the client or not).

    [ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")

    Immutable bean representing the column dot notation and it's alias.

    [Criteria](Criteria.html "interface in com.appiancorp.common.query")

    Marker interface to be able to create a tree structure while combining filters, search and logical expressions.

    [CriteriaValidator](CriteriaValidator.html "class in com.appiancorp.common.query")

    [CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")

    [Facet](Facet.html "class in com.appiancorp.common.query")<T>

    This class holds the metadata for a facet and its options.

    [FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T>

    This class holds the metadata for an individual option for a [`facet`](Facet.html "class in com.appiancorp.common.query").

    [Filter](Filter.html "class in com.appiancorp.common.query")<T>

    Bean representing a configured Filter on a column.

    [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")

    Enumeration of existing filter expression operators.

    [FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query")

    Categories used by [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query").

    [FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")

    [GenericFacet](GenericFacet.html "class in com.appiancorp.common.query")

    This class holds the metadata for a facet and its options.

    [GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")

    A builder that will construct a GenericFacet with the correct parameters

    [GenericFacetOption](GenericFacetOption.html "class in com.appiancorp.common.query")

    This class holds the metadata for an individual option for a [`facet`](Facet.html "class in com.appiancorp.common.query").

    [GenericFilter](GenericFilter.html "class in com.appiancorp.common.query")

    Immutable bean representing a configured [`Filter`](Filter.html "class in com.appiancorp.common.query") on a column.

    [GenericLogicalExpression](GenericLogicalExpression.html "class in com.appiancorp.common.query")

    This class represents a logical expression combining multiple filters in a query.

    [GenericQuery](GenericQuery.html "class in com.appiancorp.common.query")

    A `Query` concrete class An instance can only be obtained by using the helper class [`GenericQuery.GenericBuilder`](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

    [GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

    A class for incrementally build a `GenericQuery`.

    [GenericQuery.GenericBuilder.Aggregator](GenericQuery.GenericBuilder.Aggregator.html "class in com.appiancorp.common.query")

    This class encapsulates all the available Aggregation Functions in a more object oriented way.

    [GenericQuery.GenericBuilder.FilterOpLiteral](GenericQuery.GenericBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [GenericQuery.GenericBuilder.LogicalOp](GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [GenericQuery.GenericBuilder.Order](GenericQuery.GenericBuilder.Order.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [GenericQuery.GenericBuilder.SearchOp](GenericQuery.GenericBuilder.SearchOp.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [GenericQuery.GenericBuilder.Selector](GenericQuery.GenericBuilder.Selector.html "class in com.appiancorp.common.query")

    This is how you instantiate columns to configure a query for selection, grouping or aggregation.

    [LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<T>

    This class represents a logical expression combining multiple filters in a query.

    [LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query")

    [LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query")

    Enumeration containing the valid logical operators which can be used to construct filters.

    [Projection](Projection.html "interface in com.appiancorp.common.query")<T extends [Column](Column.html "class in com.appiancorp.common.query")\>

    Marker interface for [`Selection`](Selection.html "class in com.appiancorp.common.query") and [`Aggregation`](Aggregation.html "class in com.appiancorp.common.query").

    [Query](Query.html "class in com.appiancorp.common.query")<T>

    An object-oriented representation of a query.

    [Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<T>

    A class for incrementally build a Query.

    [QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>

    Interface for incrementally build a Query.

    [QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>

    This interface is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")

    [QueryBuilderTools.Aggregator](QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")

    This class encapsulates all the available Aggregation Functions in a more object oriented way.

    [QueryBuilderTools.Order](QueryBuilderTools.Order.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilderTools.SearchOp](QueryBuilderTools.SearchOp.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [QueryBuilderTools.Selector](QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")

    This is how you instantiate columns to configure a query for selection, grouping or aggregation.

    [Search](Search.html "class in com.appiancorp.common.query")

    This class holds a full-text search query, such as "2004 TPS report deadline".

    [SearchAndCriteria](SearchAndCriteria.html "class in com.appiancorp.common.query")

    [SearchCriteriaProvider](SearchCriteriaProvider.html "class in com.appiancorp.common.query")

    [SearchCriteriaProvider.SearchCriteriaFactory](SearchCriteriaProvider.SearchCriteriaFactory.html "interface in com.appiancorp.common.query")

    [SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")

    [Selection](Selection.html "class in com.appiancorp.common.query")

    Holds the List of Columns to project the Query by.

    [TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterContainmentValidation](TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterEqualityValidation](TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterInequalityValidation](TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterNullnessValidation](TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterRangeValidation](TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.FilterWildcardValidation](TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")

    [TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator](TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator.html "class in com.appiancorp.common.query")

    [TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query")

    This class holds the metadata for a facet and its options.

    [TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")

    A builder that will construct a TypedValueFacet with the correct parameters

    [TypedValueFacetOption](TypedValueFacetOption.html "class in com.appiancorp.common.query")

    This class holds the metadata for an individual option for a [`facet`](Facet.html "class in com.appiancorp.common.query").

    [TypedValueFilter](TypedValueFilter.html "class in com.appiancorp.common.query")

    Immutable bean representing a configured [`Filter`](Filter.html "class in com.appiancorp.common.query") on a column.

    [TypedValueLogicalExpression](TypedValueLogicalExpression.html "class in com.appiancorp.common.query")

    This class represents a logical expression combining multiple filters in a query.

    [TypedValueQuery](TypedValueQuery.html "class in com.appiancorp.common.query")

    A `Query` concrete class An instance can only be obtained by using the helper class [`TypedValueQuery.TypedValueBuilder`](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

    [TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.Aggregator](TypedValueQuery.TypedValueBuilder.Aggregator.html "class in com.appiancorp.common.query")

    This class encapsulates all the available Aggregation Functions in a more object oriented way.

    [TypedValueQuery.TypedValueBuilder.FilterOpExpr](TypedValueQuery.TypedValueBuilder.FilterOpExpr.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.FilterOpLiteral](TypedValueQuery.TypedValueBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.LogicalOp](TypedValueQuery.TypedValueBuilder.LogicalOp.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.Order](TypedValueQuery.TypedValueBuilder.Order.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.SearchOp](TypedValueQuery.TypedValueBuilder.SearchOp.html "class in com.appiancorp.common.query")

    This class is available as a preview of functionality that will be added to the supported public API in a future release.

    [TypedValueQuery.TypedValueBuilder.Selector](TypedValueQuery.TypedValueBuilder.Selector.html "class in com.appiancorp.common.query")

    This is how you instantiate columns to configure a query for selection, grouping or aggregation.

    [TypedValueQueryValidator](TypedValueQueryValidator.html "class in com.appiancorp.common.query")