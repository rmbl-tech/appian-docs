---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueQueryValidator.html
original_path: api/com/appiancorp/common/query/TypedValueQueryValidator.html
version: "25.3"
title: "Class TypedValueQueryValidator"
page_id: "api/com/appiancorp/common/query/TypedValueQueryValidator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueQueryValidator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.TypedValueQueryValidator

All Implemented Interfaces:

`com.appiancorp.common.query.ValidatesFilterProperties`, `com.appiancorp.common.query.ValidatesSortInfo`

* * *

@NotThreadSafe public class TypedValueQueryValidator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.common.query.ValidatesFilterProperties, com.appiancorp.common.query.ValidatesSortInfo

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected final [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),com.appiancorp.core.expr.portable.ReadOnlyType>`

    `[aggregationCastMap](#aggregationCastMap)`

    `protected int`

    `[aliasCounter](#aliasCounter)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[aliasDotNotation](#aliasDotNotation)`

    `protected final [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")>`

    `[aliases](#aliases)`

    `protected com.appiancorp.core.expr.IdChain[]`

    `[columnsIdChains](#columnsIdChains)`

    `protected static final [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[FEATURE_CONTEXT_CLASS](#FEATURE_CONTEXT_CLASS)`

    `protected final com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor>`

    `[properties](#properties)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueQueryValidator](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,com.google.common.collect.ImmutableList\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties)`

    `[TypedValueQueryValidator](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,com.google.common.collect.ImmutableList,boolean\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties, boolean isMultiColumnSortSupported)`

    `[TypedValueQueryValidator](#%3Cinit%3E\(com.appiancorp.services.ServiceContext,com.google.common.collect.ImmutableList,com.appiancorp.common.query.TypedValueCriteriaValidatorProvider\))([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties, [TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query") criteriaValidatorProvider)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `protected boolean`

    `[doesAliasExist](#doesAliasExist\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),com.appiancorp.core.expr.portable.ReadOnlyType>`

    `[getAggregationCastMap](#getAggregationCastMap\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[getAliasDotNotation](#getAliasDotNotation\(\))()`

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")>`

    `[getAliasesPosition](#getAliasesPosition\(\))()`

    `protected com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor>`

    `[getAllVisibleProperties](#getAllVisibleProperties\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFieldDisplayName](#getFieldDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldNameOrUuid)`

    `com.appiancorp.core.expr.portable.ReadOnlyType`

    `[getValidatedFieldTypeForFilter](#getValidatedFieldTypeForFilter\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    `[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[getValue](#getValue\(com.appiancorp.common.query.Filter\))([Filter](Filter.html "class in com.appiancorp.common.query") filterToValidate)`

    `protected void`

    `[initializeArrays](#initializeArrays\(int\))(int size)`

    `protected boolean`

    `[isStringNil](#isStringNil\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") str)`

    `protected boolean`

    `[skipCriteriaValidation](#skipCriteriaValidation\(\))()`

    `protected boolean`

    `[skipSelectionValidation](#skipSelectionValidation\(\))()`

    `[Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[validate](#validate\(com.appiancorp.common.query.Query\))([Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> query)`

    `[Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[validate](#validate\(com.appiancorp.common.query.Query,boolean\))([Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")> query, boolean skipDefaultSort)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validateAlias](#validateAlias\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    `protected void`

    `[validateAliasInner](#validateAliasInner\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)`

    `protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")>`

    `[validateColumns](#validateColumns\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")> columns)`

    `[Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[validateCriteria](#validateCriteria\(com.appiancorp.common.query.Criteria\))([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)`

    `protected com.appiancorp.core.expr.portable.ReadOnlyType`

    `[validateFieldDefinitionInner](#validateFieldDefinitionInner\(java.lang.String,boolean,java.lang.String,com.appiancorp.suiteapi.common.exceptions.ErrorCode,com.appiancorp.suiteapi.common.exceptions.ErrorCode,com.appiancorp.suiteapi.common.exceptions.ErrorCode,com.appiancorp.common.query.AggregationFunction,com.appiancorp.common.query.GroupingFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean disallowComplexFieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") nullFieldErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") complexTypeErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") indexOnMultipleErrorCode, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)`

    `protected com.appiancorp.core.expr.portable.ReadOnlyType`

    `[validateFieldDefinitionWithIdChain](#validateFieldDefinitionWithIdChain\(java.lang.String,boolean,com.appiancorp.core.expr.IdChain,com.appiancorp.suiteapi.common.exceptions.ErrorCode,com.appiancorp.suiteapi.common.exceptions.ErrorCode,com.appiancorp.common.query.AggregationFunction,com.appiancorp.common.query.GroupingFunction\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean disallowComplexFieldType, com.appiancorp.core.expr.IdChain idChain, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") complexTypeErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") indexOnMultipleErrorCode, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)`

    `protected void`

    `[validateFieldDefinitionWithIdChainForSorting](#validateFieldDefinitionWithIdChainForSorting\(com.appiancorp.core.expr.IdChain\))(com.appiancorp.core.expr.IdChain idChain)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validateFieldName](#validateFieldName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)`

    `protected void`

    `[validateGrouping](#validateGrouping\(com.appiancorp.common.query.Query.Builder,com.appiancorp.common.query.Aggregation,com.appiancorp.suiteapi.common.paging.PagingInfo,boolean\))([Query.Builder](Query.Builder.html "class in com.appiancorp.common.query") builder, [Aggregation](Aggregation.html "class in com.appiancorp.common.query") aggregation, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, boolean isValidMeasuresWithoutGrouping)`

    `void`

    `[validateSortInfo](#validateSortInfo\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sorts)`

    `protected void`

    `[validateSortInfoForGrouping](#validateSortInfoForGrouping\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")> sortInfos)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.common.query.ValidatesFilterProperties

    `getValidatedFieldTypeForSearchFilter, getValidatedFilterOperator, supportsAndAllOperator, validateFieldSecurityForFilter`

-   ## Field Details

    -   ### FEATURE\_CONTEXT\_CLASS

        protected static final [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") FEATURE\_CONTEXT\_CLASS

    -   ### properties

        protected final com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties

    -   ### aggregationCastMap

        protected final [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),com.appiancorp.core.expr.portable.ReadOnlyType> aggregationCastMap

    -   ### aliases

        protected final [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\> aliases

    -   ### columnsIdChains

        protected com.appiancorp.core.expr.IdChain\[\] columnsIdChains

    -   ### aliasDotNotation

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] aliasDotNotation

    -   ### aliasCounter

        protected int aliasCounter

-   ## Constructor Details

    -   ### TypedValueQueryValidator

        public TypedValueQueryValidator([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties)

    -   ### TypedValueQueryValidator

        public TypedValueQueryValidator([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties, [TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query") criteriaValidatorProvider)

    -   ### TypedValueQueryValidator

        public TypedValueQueryValidator([ServiceContext](../../services/ServiceContext.html "interface in com.appiancorp.services") serviceContext, com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> properties, boolean isMultiColumnSortSupported)

-   ## Method Details

    -   ### validate

        public [Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> validate([Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> query)

    -   ### validate

        public [Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> validate([Query](Query.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> query, boolean skipDefaultSort)

    -   ### skipCriteriaValidation

        protected boolean skipCriteriaValidation()

    -   ### skipSelectionValidation

        protected boolean skipSelectionValidation()

    -   ### getAliasesPosition

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\> getAliasesPosition()

    -   ### getAliasDotNotation

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] getAliasDotNotation()

    -   ### getAggregationCastMap

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),com.appiancorp.core.expr.portable.ReadOnlyType> getAggregationCastMap()

    -   ### initializeArrays

        protected void initializeArrays(int size)

    -   ### validateGrouping

        protected void validateGrouping([Query.Builder](Query.Builder.html "class in com.appiancorp.common.query") builder, [Aggregation](Aggregation.html "class in com.appiancorp.common.query") aggregation, [PagingInfo](../../suiteapi/common/paging/PagingInfo.html "class in com.appiancorp.suiteapi.common.paging") pagingInfo, boolean isValidMeasuresWithoutGrouping)

    -   ### getAllVisibleProperties

        protected com.google.common.collect.ImmutableList<com.appiancorp.core.expr.portable.ReadOnlyPropertyDescriptor> getAllVisibleProperties()

    -   ### validateColumns

        protected [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")\> validateColumns([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Column](Column.html "class in com.appiancorp.common.query")\> columns)

    -   ### validateSortInfo

        public void validateSortInfo([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sorts)

        Specified by:

        `validateSortInfo` in interface `com.appiancorp.common.query.ValidatesSortInfo`

    -   ### validateSortInfoForGrouping

        protected void validateSortInfoForGrouping([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[SortInfo](../../suiteapi/common/paging/SortInfo.html "class in com.appiancorp.suiteapi.common.paging")\> sortInfos)

    -   ### isStringNil

        protected boolean isStringNil([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") str)

    -   ### doesAliasExist

        protected boolean doesAliasExist([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

    -   ### validateAliasInner

        protected void validateAliasInner([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias)

    -   ### validateAlias

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validateAlias([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

    -   ### validateFieldDefinitionWithIdChainForSorting

        protected void validateFieldDefinitionWithIdChainForSorting(com.appiancorp.core.expr.IdChain idChain)

    -   ### getValidatedFieldTypeForFilter

        public com.appiancorp.core.expr.portable.ReadOnlyType getValidatedFieldTypeForFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Specified by:

        `getValidatedFieldTypeForFilter` in interface `com.appiancorp.common.query.ValidatesFilterProperties`

    -   ### validateFieldDefinitionInner

        protected com.appiancorp.core.expr.portable.ReadOnlyType validateFieldDefinitionInner([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean disallowComplexFieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") nullFieldErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") complexTypeErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") indexOnMultipleErrorCode, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction)

    -   ### validateFieldDefinitionWithIdChain

        protected com.appiancorp.core.expr.portable.ReadOnlyType validateFieldDefinitionWithIdChain([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") alias, boolean disallowComplexFieldType, com.appiancorp.core.expr.IdChain idChain, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") complexTypeErrorCode, [ErrorCode](../../suiteapi/common/exceptions/ErrorCode.html "class in com.appiancorp.suiteapi.common.exceptions") indexOnMultipleErrorCode, [AggregationFunction](AggregationFunction.html "enum class in com.appiancorp.common.query") aggregationFunction, com.appiancorp.common.query.GroupingFunction groupingFunction) throws [InvalidTypeException](../../suiteapi/type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")

        Throws:

        `[InvalidTypeException](../../suiteapi/type/exceptions/InvalidTypeException.html "class in com.appiancorp.suiteapi.type.exceptions")`

    -   ### validateCriteria

        public [Criteria](Criteria.html "interface in com.appiancorp.common.query") validateCriteria([Criteria](Criteria.html "interface in com.appiancorp.common.query") criteria)

    -   ### getValue

        public [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") getValue([Filter](Filter.html "class in com.appiancorp.common.query") filterToValidate)

        Specified by:

        `getValue` in interface `com.appiancorp.common.query.ValidatesFilterProperties`

    -   ### getFieldDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFieldDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldNameOrUuid)

        Specified by:

        `getFieldDisplayName` in interface `com.appiancorp.common.query.ValidatesFilterProperties`

    -   ### validateFieldName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validateFieldName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") field)

        Specified by:

        `validateFieldName` in interface `com.appiancorp.common.query.ValidatesFilterProperties`