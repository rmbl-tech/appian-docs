---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html
original_path: api/com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html
version: "25.3"
title: "Class TypedValueCriteriaValidatorProvider.FilterNullnessValidation"
page_id: "api/com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.FilterNullnessValidation"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueCriteriaValidatorProvider.FilterNullnessValidation

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.common.query.AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")

com.appiancorp.common.query.TypedValueCriteriaValidatorProvider.FilterNullnessValidation

All Implemented Interfaces:

`[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")`

Enclosing class:

[TypedValueCriteriaValidatorProvider](TypedValueCriteriaValidatorProvider.html "class in com.appiancorp.common.query")

* * *

protected static final class TypedValueCriteriaValidatorProvider.FilterNullnessValidation extends [AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query")`

    `[getFilterOperatorCategory](#getFilterOperatorCategory\(\))()`

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getValidOperationsMap](#getValidOperationsMap\(\))()`

    `void`

    `[validateOperation](#validateOperation\(java.lang.String,com.appiancorp.core.expr.portable.ReadOnlyType,com.appiancorp.common.query.FilterOperator,com.appiancorp.core.expr.portable.PortableTypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterFieldQueryInfo, com.appiancorp.core.expr.portable.ReadOnlyType leftType, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") op, com.appiancorp.core.expr.portable.PortableTypedValue rightTv)`

    ### Methods inherited from class com.appiancorp.common.query.[AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")

    `[doesMapContainTypes](AbstractFilterCategoryValidator.html#doesMapContainTypes\(com.appiancorp.core.expr.portable.ReadOnlyType,com.appiancorp.core.expr.portable.Type\)), [getFoundationOrListOfFoundation](AbstractFilterCategoryValidator.html#getFoundationOrListOfFoundation\(com.appiancorp.core.expr.portable.PortableTypedValue\)), [validate](AbstractFilterCategoryValidator.html#validate\(com.appiancorp.common.query.Filter,com.appiancorp.core.expr.portable.ReadOnlyType,java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Method Details

    -   ### validateOperation

        public void validateOperation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") filterFieldQueryInfo, com.appiancorp.core.expr.portable.ReadOnlyType leftType, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") op, com.appiancorp.core.expr.portable.PortableTypedValue rightTv)

        Overrides:

        `[validateOperation](AbstractFilterCategoryValidator.html#validateOperation\(java.lang.String,com.appiancorp.core.expr.portable.ReadOnlyType,com.appiancorp.common.query.FilterOperator,com.appiancorp.core.expr.portable.PortableTypedValue\))` in class `[AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")`

    -   ### getValidOperationsMap

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getValidOperationsMap()

        Specified by:

        `[getValidOperationsMap](AbstractFilterCategoryValidator.html#getValidOperationsMap\(\))` in class `[AbstractFilterCategoryValidator](AbstractFilterCategoryValidator.html "class in com.appiancorp.common.query")`

    -   ### getFilterOperatorCategory

        public [FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query") getFilterOperatorCategory()