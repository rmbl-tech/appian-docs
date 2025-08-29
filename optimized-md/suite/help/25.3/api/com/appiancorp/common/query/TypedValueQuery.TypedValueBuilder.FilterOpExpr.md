---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.FilterOpExpr.html
original_path: api/com/appiancorp/common/query/TypedValueQuery.TypedValueBuilder.FilterOpExpr.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class TypedValueQuery.TypedValueBuilder.FilterOpExpr

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.TypedValueQuery.TypedValueBuilder.FilterOpExpr

Enclosing class:

[TypedValueQuery.TypedValueBuilder](TypedValueQuery.TypedValueBuilder.html "class in com.appiancorp.common.query")

* * *

public static final class TypedValueQuery.TypedValueBuilder.FilterOpExpr extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This class encapsulates the available filters and allows to specify an expression to filter by.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FilterOpExpr](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[between](#between\(java.lang.String,java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") a, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") b)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[endsWith](#endsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[eq](#eq\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[equal](#equal\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[filter](#filter\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[greaterThan](#greaterThan\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[greaterThanOrEqual](#greaterThanOrEqual\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[gt](#gt\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[gte](#gte\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[in](#in\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[includes](#includes\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[isNull](#isNull\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[lessThan](#lessThan\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[lessThanOrEqual](#lessThanOrEqual\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[lt](#lt\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[lte](#lte\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[neq](#neq\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[newFilter](#newFilter\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[newFilter](#newFilter\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.String,com.appiancorp.suiteapi.type.TypedValue\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr, [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notEndsWith](#notEndsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notEquals](#notEquals\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notIn](#notIn\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notIncludes](#notIncludes\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notNull](#notNull\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[notStartsWith](#notStartsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")>`

    `[startsWith](#startsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### FilterOpExpr

        public FilterOpExpr()

-   ## Method Details

    -   ### newFilter

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> newFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)

    -   ### newFilter

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> newFilter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr, [TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type") value)

    -   ### filter

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> filter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") expr)

    -   ### equal

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> equal([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### eq

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> eq([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### isNull

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> isNull([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

    -   ### startsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> startsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### endsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> endsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### includes

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> includes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### in

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> in([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### notEquals

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notEquals([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### neq

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> neq([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### notNull

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notNull([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

    -   ### notStartsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notStartsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### notEndsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notEndsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### notIncludes

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notIncludes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### notIn

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> notIn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### between

        public static [Criteria](Criteria.html "interface in com.appiancorp.common.query") between([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") a, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") b)

    -   ### greaterThan

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> greaterThan([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### gt

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> gt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### greaterThanOrEqual

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> greaterThanOrEqual([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### gte

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> gte([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### lessThanOrEqual

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> lessThanOrEqual([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### lte

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> lte([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### lessThan

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> lessThan([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)

    -   ### lt

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[TypedValue](../../suiteapi/type/TypedValue.html "class in com.appiancorp.suiteapi.type")\> lt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") x)