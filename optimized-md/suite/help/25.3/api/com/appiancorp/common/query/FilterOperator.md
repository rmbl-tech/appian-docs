---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/common/query/FilterOperator.html
original_path: api/com/appiancorp/common/query/FilterOperator.html
version: "25.3"
title: "Enum Class FilterOperator"
page_id: "api/com/appiancorp/common/query/FilterOperator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.common.query](package-summary.html)

# Enum Class FilterOperator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")\>

com.appiancorp.common.query.FilterOperator

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

* * *

@GwtCompatible public enum FilterOperator extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")\>

Enumeration of existing filter expression operators.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[BETWEEN](#BETWEEN)`

    `[ENDS_WITH](#ENDS_WITH)`

    `[EQUALS](#EQUALS)`

    `[GREATER_EQUALS_THAN](#GREATER_EQUALS_THAN)`

    `[GREATER_THAN](#GREATER_THAN)`

    `[IN](#IN)`

    `[INCLUDES](#INCLUDES)`

    `[IS_NULL](#IS_NULL)`

    `[LESS_EQUALS_THAN](#LESS_EQUALS_THAN)`

    `[LESS_THAN](#LESS_THAN)`

    `[NOT_ENDS_WITH](#NOT_ENDS_WITH)`

    `[NOT_EQUALS](#NOT_EQUALS)`

    `[NOT_IN](#NOT_IN)`

    `[NOT_INCLUDES](#NOT_INCLUDES)`

    `[NOT_NULL](#NOT_NULL)`

    `[NOT_STARTS_WITH](#NOT_STARTS_WITH)`

    `[SEARCH](#SEARCH)`

    `[STARTS_WITH](#STARTS_WITH)`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[LOCAL_PART](#LOCAL_PART)`

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")`

    `[get](#get\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") symbol)`

    `static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")`

    `[getById](#getById\(byte\))(byte b)`

    `static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")`

    `[getByName](#getByName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Get FilterOperator by name

    `[FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query")`

    `[getCategory](#getCategory\(\))()`

    `byte`

    `[getId](#getId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSymbol](#getSymbol\(\))()`

    `static com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getSymbols](#getSymbols\(\))()`

    Get the list of valid [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query") symbols.

    `boolean`

    `[requiresArg](#requiresArg\(\))()`

    `static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### EQUALS

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") EQUALS

    -   ### NOT\_EQUALS

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_EQUALS

    -   ### GREATER\_THAN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") GREATER\_THAN

    -   ### GREATER\_EQUALS\_THAN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") GREATER\_EQUALS\_THAN

    -   ### LESS\_THAN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") LESS\_THAN

    -   ### LESS\_EQUALS\_THAN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") LESS\_EQUALS\_THAN

    -   ### BETWEEN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") BETWEEN

    -   ### IN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") IN

    -   ### NOT\_IN

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_IN

    -   ### IS\_NULL

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") IS\_NULL

    -   ### NOT\_NULL

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_NULL

    -   ### STARTS\_WITH

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") STARTS\_WITH

    -   ### NOT\_STARTS\_WITH

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_STARTS\_WITH

    -   ### ENDS\_WITH

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") ENDS\_WITH

    -   ### NOT\_ENDS\_WITH

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_ENDS\_WITH

    -   ### INCLUDES

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") INCLUDES

    -   ### NOT\_INCLUDES

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") NOT\_INCLUDES

    -   ### SEARCH

        public static final [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") SEARCH

-   ## Field Details

    -   ### LOCAL\_PART

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") LOCAL\_PART

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.common.query.FilterOperator.LOCAL_PART)

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Method Details

    -   ### values

        public static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### getSymbol

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSymbol()

    -   ### getId

        public byte getId()

    -   ### getCategory

        public [FilterOperatorCategory](FilterOperatorCategory.html "enum class in com.appiancorp.common.query") getCategory()

    -   ### requiresArg

        public boolean requiresArg()

    -   ### get

        public static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") get([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") symbol)

    -   ### getById

        public static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") getById(byte b)

    -   ### getByName

        public static [FilterOperator](FilterOperator.html "enum class in com.appiancorp.common.query") getByName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Get FilterOperator by name

        Parameters:

        `name` - Operator Name

        Returns:

        The FilterOperator for the given name

    -   ### getSymbols

        public static com.google.common.collect.ImmutableList<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getSymbols()

        Get the list of valid [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query") symbols.

        Returns:

        an `ImmutableList` of `String`s representing all valid [`FilterOperator`](FilterOperator.html "enum class in com.appiancorp.common.query")s.