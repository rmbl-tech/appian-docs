---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.html
original_path: api/com/appiancorp/common/query/TypedValueCriteriaValidatorProvider.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueCriteriaValidatorProvider

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.TypedValueCriteriaValidatorProvider

All Implemented Interfaces:

`[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")`

* * *

public class TypedValueCriteriaValidatorProvider extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterContainmentValidation](TypedValueCriteriaValidatorProvider.FilterContainmentValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterEqualityValidation](TypedValueCriteriaValidatorProvider.FilterEqualityValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterInequalityValidation](TypedValueCriteriaValidatorProvider.FilterInequalityValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterNullnessValidation](TypedValueCriteriaValidatorProvider.FilterNullnessValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterRangeValidation](TypedValueCriteriaValidatorProvider.FilterRangeValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.FilterWildcardValidation](TypedValueCriteriaValidatorProvider.FilterWildcardValidation.html "class in com.appiancorp.common.query")`

    `protected static final class` 

    `[TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator](TypedValueCriteriaValidatorProvider.TypedValueLogicalExpressionValidator.html "class in com.appiancorp.common.query")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValueCriteriaValidatorProvider](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query")`

    `[getFilterValidator](#getFilterValidator\(com.appiancorp.common.query.FilterOperator\))([FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") filterOperator)`

    `[LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query")`

    `[getLogicalExpressionValidator](#getLogicalExpressionValidator\(\))()`

    `com.google.common.collect.ImmutableList<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")>`

    `[getValidCriteriaTypes](#getValidCriteriaTypes\(\))()`

    `com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getValidOperators](#getValidOperators\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TypedValueCriteriaValidatorProvider

        public TypedValueCriteriaValidatorProvider()

-   ## Method Details

    -   ### getFilterValidator

        public [FilterValidator](FilterValidator.html "interface in com.appiancorp.common.query") getFilterValidator([FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") filterOperator)

        Specified by:

        `[getFilterValidator](CriteriaValidatorProvider.html#getFilterValidator\(com.appiancorp.common.query.FilterOperator\))` in interface `[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")`

    -   ### getLogicalExpressionValidator

        public [LogicalExpressionValidator](LogicalExpressionValidator.html "interface in com.appiancorp.common.query") getLogicalExpressionValidator()

        Specified by:

        `[getLogicalExpressionValidator](CriteriaValidatorProvider.html#getLogicalExpressionValidator\(\))` in interface `[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")`

    -   ### getValidOperators

        public com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getValidOperators()

        Specified by:

        `[getValidOperators](CriteriaValidatorProvider.html#getValidOperators\(\))` in interface `[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")`

    -   ### getValidCriteriaTypes

        public com.google.common.collect.ImmutableList<[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")\> getValidCriteriaTypes()

        Specified by:

        `[getValidCriteriaTypes](CriteriaValidatorProvider.html#getValidCriteriaTypes\(\))` in interface `[CriteriaValidatorProvider](CriteriaValidatorProvider.html "interface in com.appiancorp.common.query")`