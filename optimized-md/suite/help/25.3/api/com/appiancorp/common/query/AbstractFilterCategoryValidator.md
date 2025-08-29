---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/AbstractFilterCategoryValidator.html
original_path: api/com/appiancorp/common/query/AbstractFilterCategoryValidator.html
version: "25.3"
title: "Class AbstractFilterCategoryValidator"
page_id: "api/com/appiancorp/common/query/AbstractFilterCategoryValidator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class AbstractFilterCategoryValidator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.AbstractFilterCategoryValidator

All Implemented Interfaces:

`[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")`

Direct Known Subclasses:

`[TypedValueCriteriaValidatorProvider.FilterContainmentValidation](TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterEqualityValidation](TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterInequalityValidation](TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterNullnessValidation](TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterRangeValidation](TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")`, `[TypedValueCriteriaValidatorProvider.FilterWildcardValidation](TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")`

* * *

public abstract class AbstractFilterCategoryValidator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractFilterCategoryValidator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[doesMapContainTypes](#doesMapContainTypes\(com.appiancorp.core.expr.portable.ReadOnlyType,com.appiancorp.core.expr.portable.Type\))(com.appiancorp.core.expr.portable.ReadOnlyType leftType, com.appiancorp.core.expr.portable.Type rightType)`

    `com.appiancorp.core.expr.portable.Type`

    `[getFoundationOrListOfFoundation](#getFoundationOrListOfFoundation\(com.appiancorp.core.expr.portable.PortableTypedValue\))(com.appiancorp.core.expr.portable.PortableTypedValue tv)`

    `abstract [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getValidOperationsMap](#getValidOperationsMap\(\))()`

    `void`

    `[validate](#validate\(com.appiancorp.common.query.Filter,com.appiancorp.core.expr.portable.ReadOnlyType,java.lang.String\))([Filter](Filter.html "class in com.appiancorp.common.query")<? extends com.appiancorp.core.expr.portable.PortableTypedValue> criteria, com.appiancorp.core.expr.portable.ReadOnlyType fieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldDisplayName)`

    `void`

    `[validateOperation](#validateOperation\(java.lang.String,com.appiancorp.core.expr.portable.ReadOnlyType,com.appiancorp.common.query.FilterOperator,com.appiancorp.core.expr.portable.PortableTypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterFieldQueryInfo, com.appiancorp.core.expr.portable.ReadOnlyType leftType, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") op, com.appiancorp.core.expr.portable.PortableTypedValue value)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.common.query.[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")

    `[getFilterOperatorCategory](FilterValidator.html#getFilterOperatorCategory\(\))`

-   ## Constructor Details

    -   ### AbstractFilterCategoryValidator

        public AbstractFilterCategoryValidator()

-   ## Method Details

    -   ### getFoundationOrListOfFoundation

        public com.appiancorp.core.expr.portable.Type getFoundationOrListOfFoundation(com.appiancorp.core.expr.portable.PortableTypedValue tv)

    -   ### doesMapContainTypes

        public boolean doesMapContainTypes(com.appiancorp.core.expr.portable.ReadOnlyType leftType, com.appiancorp.core.expr.portable.Type rightType)

    -   ### validate

        public void validate([Filter](Filter.html "class in com.appiancorp.common.query")<? extends com.appiancorp.core.expr.portable.PortableTypedValue> criteria, com.appiancorp.core.expr.portable.ReadOnlyType fieldType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldDisplayName)

        Specified by:

        `[validate](FilterValidator.html#validate\(com.appiancorp.common.query.Filter,com.appiancorp.core.expr.portable.ReadOnlyType,java.lang.String\))` in interface `[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")`

    -   ### validateOperation

        public void validateOperation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterFieldQueryInfo, com.appiancorp.core.expr.portable.ReadOnlyType leftType, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") op, com.appiancorp.core.expr.portable.PortableTypedValue value)

    -   ### getValidOperationsMap

        public abstract [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getValidOperationsMap()