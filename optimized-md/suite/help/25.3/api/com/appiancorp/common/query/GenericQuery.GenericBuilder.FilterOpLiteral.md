---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/GenericQuery.GenericBuilder.FilterOpLiteral.html
original_path: api/com/appiancorp/common/query/GenericQuery.GenericBuilder.FilterOpLiteral.html
version: "25.3"
---

Package [com.appiancorp.common.query](package-summary.html)

# Class GenericQuery.GenericBuilder.FilterOpLiteral

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.common.query.GenericQuery.GenericBuilder.FilterOpLiteral

Enclosing class:

[GenericQuery.GenericBuilder](GenericQuery.GenericBuilder.html "class in com.appiancorp.common.query")

* * *

public static final class GenericQuery.GenericBuilder.FilterOpLiteral extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is available as a preview of functionality that will be added to the supported public API in a future release. While it is in the preview phase, it is subject to change or removal without deprecation or notice. Although notice of change is not guaranteed, we will try to let developers know of major changes through announcements in release notes.

This class encapsulates the available filters and allows to specify an specific value to filter by.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[FilterOpLiteral](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Criteria](Criteria.html "interface in com.appiancorp.common.query")`

    `[between](#between\(java.lang.String,java.lang.Object,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") lowBound, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") highBound)`

    Apply an "in bound between" constraint to the given column or alias.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[endsWith](#endsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suffix)`

    Apply a "ends with" constraint to the given column or alias Checks if ends with the given suffix.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[eq](#eq\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply an equality constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[equal](#equal\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply an equality constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[filter](#filter\(java.lang.String,com.appiancorp.common.query.FilterOperator,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Creates a [`GenericFilter`](GenericFilter.html "class in com.appiancorp.common.query") instance with the given values.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[greaterThan](#greaterThan\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "greater than" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[greaterThanOrEqual](#greaterThanOrEqual\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "greater than or equal" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[gt](#gt\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "greater than" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[gte](#gte\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "greater than or equal" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[in](#in\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply an "in" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[in](#in\(java.lang.String,java.util.Collection\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<?> values)`

    Apply an "in" constraint to the given column or alias

    `static <T> [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[in](#in\(java.lang.String,T...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, T... values)`

    Apply an "in" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[includes](#includes\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") infix)`

    Apply a "includes" constraint to the given column or alias Checks if it contains the given substring.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[isNull](#isNull\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    Apply an "is null" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[lessThan](#lessThan\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "less than" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[lessThanOrEqual](#lessThanOrEqual\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "less than or equal" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[lt](#lt\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "less than" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[lte](#lte\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "less than or equal" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[neq](#neq\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "not equals" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notEndsWith](#notEndsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sufix)`

    Apply a "not ends with" constraint to the given column or alias Checks if it doesn't ends with the given suffix.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notEquals](#notEquals\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "not equals" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notIn](#notIn\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)`

    Apply a "not in" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notIn](#notIn\(java.lang.String,java.util.Collection\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<?> values)`

    Apply a "not in" constraint to the given column or alias

    `static <T> [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notIn](#notIn\(java.lang.String,T...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, T... values)`

    Apply a "not in" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notIncludes](#notIncludes\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") infix)`

    Apply a "not includes" constraint to the given column or alias Checks if it doesn't contains the given substring.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notNull](#notNull\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)`

    Apply a "not null" constraint to the given column or alias

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[notStartsWith](#notStartsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix)`

    Apply a "not starts with" constraint to the given column or alias Checks if it doesn't starts with the given prefix.

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[search](#search\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchString)`

    Apply a "search" operator to the given column or alias Uses semantic search to find similar values

    `static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[startsWith](#startsWith\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix)`

    Apply a "starts with" constraint to the given column or alias Checks if starts with the given prefix.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### FilterOpLiteral

        public FilterOpLiteral()

-   ## Method Details

    -   ### filter

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> filter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") fo, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Creates a [`GenericFilter`](GenericFilter.html "class in com.appiancorp.common.query") instance with the given values.

        Parameters:

        `c` - column or alias name

        `fo` - filter type define as [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` constraint instance

    -   ### equal

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> equal([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply an equality constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "equals" constraint

    -   ### eq

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> eq([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply an equality constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "equals" constraint

    -   ### isNull

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> isNull([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

        Apply an "is null" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        Returns:

        a `Filter<Object>` "is null" constraint

    -   ### startsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> startsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix)

        Apply a "starts with" constraint to the given column or alias Checks if starts with the given prefix. Applies to string values.

        Parameters:

        `c` - column or alias

        `prefix` - the prefix

        Returns:

        a `Filter<Object>` "starts with" constraint

    -   ### endsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> endsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suffix)

        Apply a "ends with" constraint to the given column or alias Checks if ends with the given suffix. Applies to string values.

        Parameters:

        `c` - column or alias

        `suffix` - the suffix

        Returns:

        a `Filter<Object>` "ends with" constraint

    -   ### includes

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> includes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") infix)

        Apply a "includes" constraint to the given column or alias Checks if it contains the given substring. Applies to string values.

        Parameters:

        `c` - column or alias

        `infix` - the substring

        Returns:

        a `Filter<Object>` "includes" constraint

    -   ### search

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> search([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchString)

        Apply a "search" operator to the given column or alias Uses semantic search to find similar values

        Parameters:

        `c` - column or alias

        `searchString` - string to find semantic matches against

        Returns:

        a `Filter<Object>` "includes" constraint

    -   ### in

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> in([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply an "in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "in" constraint

    -   ### in

        [@SafeVarargs](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/SafeVarargs.html "class or interface in java.lang") public static <T> [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> in([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, T... values)

        Apply an "in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `values` - array of Objects to constraint the column or alias

        Returns:

        a `Filter<Object>` "in" constraint

    -   ### in

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> in([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<?> values)

        Apply an "in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `values` - collection of Objects to constraint the column or alias

        Returns:

        a `Filter<Object>` "in" constraint

    -   ### notEquals

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notEquals([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "not equals" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "not equals" constraint

    -   ### neq

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> neq([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "not equals" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "not equals" constraint

    -   ### notNull

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notNull([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c)

        Apply a "not null" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        Returns:

        a `Filter<Object>` "not null" constraint

    -   ### notStartsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notStartsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") prefix)

        Apply a "not starts with" constraint to the given column or alias Checks if it doesn't starts with the given prefix. Applies to string values.

        Parameters:

        `c` - column or alias

        `prefix` - the prefix

        Returns:

        a `Filter<Object>` "not starts with" constraint

    -   ### notEndsWith

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notEndsWith([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sufix)

        Apply a "not ends with" constraint to the given column or alias Checks if it doesn't ends with the given suffix. Applies to string values.

        Parameters:

        `c` - column or alias

        `suffix` - the suffix

        Returns:

        a `Filter<Object>` "not ends with" constraint

    -   ### notIncludes

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notIncludes([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") infix)

        Apply a "not includes" constraint to the given column or alias Checks if it doesn't contains the given substring. Applies to string values.

        Parameters:

        `c` - column or alias

        `substring` - the substring

        Returns:

        a `Filter<Object>` "not includes" constraint

    -   ### notIn

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notIn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "not in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "not in" constraint

    -   ### notIn

        [@SafeVarargs](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/SafeVarargs.html "class or interface in java.lang") public static <T> [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notIn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, T... values)

        Apply a "not in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `values` - array of Objects to constraint the column or alias

        Returns:

        a `Filter<Object>` "not in" constraint

    -   ### notIn

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> notIn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<?> values)

        Apply a "not in" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `values` - collection of Objects to constraint the column or alias

        Returns:

        a `Filter<Object>` "not in" constraint

    -   ### between

        public static [Criteria](Criteria.html "interface in com.appiancorp.common.query") between([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") lowBound, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") highBound)

        Apply an "in bound between" constraint to the given column or alias.

        Parameters:

        `c` - column or alias

        `lowBound` - low in bound Object value to constraint the column or alias

        `highBound` - high in bound Object value to constraint the column or alias

        Returns:

        a `Filter<Object>` "between" constraint

    -   ### greaterThan

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> greaterThan([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "greater than" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "greater than" constraint

    -   ### gt

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> gt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "greater than" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "greater than" constraint

    -   ### greaterThanOrEqual

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> greaterThanOrEqual([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "greater than or equal" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "greater than or equal" constraint

    -   ### gte

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> gte([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "greater than or equal" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "greater than or equal" constraint

    -   ### lessThan

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> lessThan([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "less than" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "less than" constraint

    -   ### lt

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> lt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "less than" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "less than" constraint

    -   ### lessThanOrEqual

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> lessThanOrEqual([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "less than or equal" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "less than or equal" constraint

    -   ### lte

        public static [Filter](Filter.html "class in com.appiancorp.common.query")<[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> lte([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") c, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") v)

        Apply a "less than or equal" constraint to the given column or alias

        Parameters:

        `c` - column or alias

        `v` - Object use to constraint the column or alias

        Returns:

        a `Filter<Object>` "less than or equal" constraint