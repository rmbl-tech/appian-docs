---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/Operator.html
original_path: api/com/appiancorp/suiteapi/personalization/Operator.html
version: "25.3"
title: "Class Operator"
page_id: "api/com/appiancorp/suiteapi/personalization/Operator"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class Operator

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.Operator

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Operator extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Holds the operator id and its display name. Operator id is required for searches. Default search operators include:

-   [`LIKE`](#LIKE)
-   [`EQUALS`](#EQUALS)
-   [`GREATER_THAN`](#GREATER_THAN)
-   [`LESS_THAN`](#LESS_THAN)
-   [`GREATER_THAN_OR_EQUALS`](#GREATER_THAN_OR_EQUALS)
-   [`LESS_THAN_OR_EQUALS`](#LESS_THAN_OR_EQUALS)
-   [`DOES_NOT_EQUAL`](#DOES_NOT_EQUAL)
-   [`CONTAINS`](#CONTAINS)
-   [`STARTS_WITH`](#STARTS_WITH)
-   [`ENDS_WITH`](#ENDS_WITH)

Used in conjunction with [`GroupTypeService.getOperatorsForDataType(int)`](GroupTypeService.html#getOperatorsForDataType\(int\))

See Also:

-   [`GroupTypeService`](GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.Operator)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[CONTAINS](#CONTAINS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DOES_NOT_EQUAL](#DOES_NOT_EQUAL)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ENDS_WITH](#ENDS_WITH)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[EQUALS](#EQUALS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN](#GREATER_THAN)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN_OR_EQUALS](#GREATER_THAN_OR_EQUALS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN](#LESS_THAN)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN_OR_EQUALS](#LESS_THAN_OR_EQUALS)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LIKE](#LIKE)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STARTS_WITH](#STARTS_WITH)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Operator](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    operator id - can be one of: LIKE, EQUALS, GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUALS, LESS\_THAN\_OR\_EQUALS, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH,ENDS\_WITH

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    operator name

    `void`

    `[setId](#setId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") id_)`

    Sets the operator id.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Sets the operator name.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LIKE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LIKE

    -   ### EQUALS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") EQUALS

    -   ### GREATER\_THAN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN

    -   ### LESS\_THAN

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN

    -   ### GREATER\_THAN\_OR\_EQUALS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN\_OR\_EQUALS

    -   ### LESS\_THAN\_OR\_EQUALS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN\_OR\_EQUALS

    -   ### DOES\_NOT\_EQUAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DOES\_NOT\_EQUAL

    -   ### CONTAINS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") CONTAINS

    -   ### STARTS\_WITH

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STARTS\_WITH

    -   ### ENDS\_WITH

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ENDS\_WITH

-   ## Constructor Details

    -   ### Operator

        public Operator()

-   ## Method Details

    -   ### getId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getId()

        operator id - can be one of: LIKE, EQUALS, GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUALS, LESS\_THAN\_OR\_EQUALS, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH,ENDS\_WITH

        Returns:

        Integer

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        operator name

        Returns:

        String

    -   ### setId

        public void setId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") id\_)

        Sets the operator id.

        Parameters:

        `id_` - The oid to set

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Sets the operator name.

        Parameters:

        `name_` - The onm to set