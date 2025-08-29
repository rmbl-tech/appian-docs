---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/package-tree.html
original_path: api/com/appiancorp/common/query/package-tree.html
version: "25.3"
---

# Hierarchy For Package com.appiancorp.common.query

Package Hierarchies:

-   [All Packages](../../../../overview-tree.html)

## Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   com.appiancorp.common.query.[AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query"))
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterContainmentValidation](TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterEqualityValidation](TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterInequalityValidation](TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterNullnessValidation](TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterRangeValidation](TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.FilterWildcardValidation](TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Aggregation](Aggregation.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[Projection](Projection.html "interface in com.appiancorp.common.query")<T>)
    -   com.appiancorp.common.query.[ColumnAlias](ColumnAlias.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[Column](Column.html "class in com.appiancorp.common.query")
            -   com.appiancorp.common.query.[AggregationColumn](AggregationColumn.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[CriteriaValidator](CriteriaValidator.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Facet](Facet.html "class in com.appiancorp.common.query")<T> (implements com.appiancorp.common.query.ReadOnlyFacet<T>)
        -   com.appiancorp.common.query.[GenericFacet](GenericFacet.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueFacet](TypedValueFacet.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[FacetOption](FacetOption.html "class in com.appiancorp.common.query")<T> (implements com.appiancorp.common.query.ReadOnlyFacetOption<T>)
        -   com.appiancorp.common.query.[GenericFacetOption](GenericFacetOption.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueFacetOption](TypedValueFacetOption.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Filter](Filter.html "class in com.appiancorp.common.query")<T> (implements com.appiancorp.common.query.ReadOnlyFilter)
        -   com.appiancorp.common.query.[GenericFilter](GenericFilter.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueFilter](TypedValueFilter.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[GenericFacet.GenericFacetBuilder](GenericFacet.GenericFacetBuilder.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.FilterOpLiteral](GenericQuery.GenericBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.LogicalOp](GenericQuery.GenericBuilder.LogicalOp.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[LogicalExpression](LogicalExpression.html "class in com.appiancorp.common.query")<T> (implements com.appiancorp.common.query.[Criteria](Criteria.html "interface in com.appiancorp.common.query"))
        -   com.appiancorp.common.query.[GenericLogicalExpression](GenericLogicalExpression.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueLogicalExpression](TypedValueLogicalExpression.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Query](Query.html "class in com.appiancorp.common.query")<T>
        -   com.appiancorp.common.query.[GenericQuery](GenericQuery.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueQuery](TypedValueQuery.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Query.Builder](Query.Builder.html "class in com.appiancorp.common.query")<T> (implements com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T>, com.appiancorp.common.query.[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>)
        -   com.appiancorp.common.query.[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query"))
        -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[QueryBuilderTools.Aggregator](QueryBuilderTools.Aggregator.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.Aggregator](GenericQuery.GenericBuilder.Aggregator.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.Aggregator](TypedValueQuery.TypedValueBuilder.Aggregator.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[QueryBuilderTools.Order](QueryBuilderTools.Order.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.Order](GenericQuery.GenericBuilder.Order.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.Order](TypedValueQuery.TypedValueBuilder.Order.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[QueryBuilderTools.SearchOp](QueryBuilderTools.SearchOp.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.SearchOp](GenericQuery.GenericBuilder.SearchOp.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.SearchOp](TypedValueQuery.TypedValueBuilder.SearchOp.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[QueryBuilderTools.Selector](QueryBuilderTools.Selector.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[GenericQuery.GenericBuilder.Selector](GenericQuery.GenericBuilder.Selector.html "class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.Selector](TypedValueQuery.TypedValueBuilder.Selector.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Search](Search.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[Criteria](Criteria.html "interface in com.appiancorp.common.query"))
    -   com.appiancorp.common.query.[SearchAndCriteria](SearchAndCriteria.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[SearchCriteriaProvider](SearchCriteriaProvider.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[SearchCriteriaProvider.SearchFields](SearchCriteriaProvider.SearchFields.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[Selection](Selection.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[Projection](Projection.html "interface in com.appiancorp.common.query")<T>)
    -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query"))
    -   com.appiancorp.common.query.[TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator](TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.[LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query"))
    -   com.appiancorp.common.query.[TypedValueFacet.TypedValueFacetBuilder](TypedValueFacet.TypedValueFacetBuilder.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.FilterOpExpr](TypedValueQuery.TypedValueBuilder.FilterOpExpr.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.FilterOpLiteral](TypedValueQuery.TypedValueBuilder.FilterOpLiteral.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[TypedValueQuery.TypedValueBuilder.LogicalOp](TypedValueQuery.TypedValueBuilder.LogicalOp.html "class in com.appiancorp.common.query")
    -   com.appiancorp.common.query.[TypedValueQueryValidator](TypedValueQueryValidator.html "class in com.appiancorp.common.query") (implements com.appiancorp.common.query.ValidatesFilterProperties, com.appiancorp.common.query.ValidatesSortInfo)

## Interface Hierarchy

-   java.lang.[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")
    -   com.appiancorp.common.query.[Projection](Projection.html "interface in com.appiancorp.common.query")<T>
-   com.appiancorp.common.query.[Criteria](Criteria.html "interface in com.appiancorp.common.query")
-   com.appiancorp.common.query.[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")
-   com.appiancorp.common.query.[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")
-   com.appiancorp.common.query.[LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query")
-   com.appiancorp.common.query.[QueryBuilder](QueryBuilder.html "interface in com.appiancorp.common.query")<T>
    -   com.appiancorp.common.query.[QueryBuilder.Sorting](QueryBuilder.Sorting.html "interface in com.appiancorp.common.query")<T>
        -   com.appiancorp.common.query.[QueryBuilder.Paging](QueryBuilder.Paging.html "interface in com.appiancorp.common.query")<T>
            -   com.appiancorp.common.query.[QueryBuilder.Aggregating](QueryBuilder.Aggregating.html "interface in com.appiancorp.common.query")<T>
                -   com.appiancorp.common.query.[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>
                    -   com.appiancorp.common.query.[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T> (also extends com.appiancorp.common.query.[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>)
            -   com.appiancorp.common.query.[QueryBuilder.Filtering](QueryBuilder.Filtering.html "interface in com.appiancorp.common.query")<T>
            -   com.appiancorp.common.query.[QueryBuilder.FilteringCriteria](QueryBuilder.FilteringCriteria.html "interface in com.appiancorp.common.query")<T>
                -   com.appiancorp.common.query.[QueryBuilder.Selecting](QueryBuilder.Selecting.html "interface in com.appiancorp.common.query")<T> (also extends com.appiancorp.common.query.[QueryBuilder.Grouping](QueryBuilder.Grouping.html "interface in com.appiancorp.common.query")<T>)
-   com.appiancorp.common.query.[QueryBuilderTools](QueryBuilderTools.html "interface in com.appiancorp.common.query")
-   com.appiancorp.common.query.[SearchCriteriaProvider.SearchCriteriaFactory](SearchCriteriaProvider.SearchCriteriaFactory.html "interface in com.appiancorp.common.query")

## Enum Class Hierarchy

-   java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")
    -   java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<E> (implements java.lang.[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<T>, java.lang.constant.[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant"), java.io.[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"))
        -   com.appiancorp.common.query.[AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query")
        -   com.appiancorp.common.query.[LogicalOperator](LogicalOperator.html "enum class in com.appiancorp.common.query")