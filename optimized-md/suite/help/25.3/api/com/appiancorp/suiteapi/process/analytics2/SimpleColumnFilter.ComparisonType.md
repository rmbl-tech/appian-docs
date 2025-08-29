---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.ComparisonType.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/SimpleColumnFilter.ComparisonType.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.analytics2](package-summary.html)

# Enum Class SimpleColumnFilter.ComparisonType

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")\>

com.appiancorp.suiteapi.process.analytics2.SimpleColumnFilter.ComparisonType

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

Enclosing class:

[SimpleColumnFilter](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

* * *

public static enum SimpleColumnFilter.ComparisonType extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")\>

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[BETWEEN](#BETWEEN)`

    `[EQUAL](#EQUAL)`

    `[GREATER_THAN](#GREATER_THAN)`

    `[GREATER_THAN_OR_EQUAL](#GREATER_THAN_OR_EQUAL)`

    `[IN](#IN)`

    `[LESS_THAN](#LESS_THAN)`

    `[LESS_THAN_OR_EQUAL](#LESS_THAN_OR_EQUAL)`

    `[LIKE](#LIKE)`

    `[NOT_EQUAL](#NOT_EQUAL)`

    `[NOT_IN](#NOT_IN)`

    `[NOT_LIKE](#NOT_LIKE)`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected int`

    `[intValue](#intValue)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[label](#label)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getIntValue](#getIntValue\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabelFromIntValue](#getLabelFromIntValue\(int\))(int intValue)`

    If \`intValue\` is not a valid choice, returns its text value

    `static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[getValues](#getValues\(\))()`

    `static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### GREATER\_THAN

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") GREATER\_THAN

    -   ### LESS\_THAN

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") LESS\_THAN

    -   ### GREATER\_THAN\_OR\_EQUAL

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") GREATER\_THAN\_OR\_EQUAL

    -   ### LESS\_THAN\_OR\_EQUAL

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") LESS\_THAN\_OR\_EQUAL

    -   ### EQUAL

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") EQUAL

    -   ### NOT\_EQUAL

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") NOT\_EQUAL

    -   ### IN

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") IN

    -   ### NOT\_IN

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") NOT\_IN

    -   ### BETWEEN

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") BETWEEN

    -   ### LIKE

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") LIKE

    -   ### NOT\_LIKE

        public static final [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") NOT\_LIKE

-   ## Field Details

    -   ### intValue

        protected int intValue

    -   ### label

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label

-   ## Method Details

    -   ### values

        public static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### getIntValue

        public int getIntValue()

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

    -   ### getValues

        public static [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")\[\] getValues()

    -   ### getLabelFromIntValue

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabelFromIntValue(int intValue)

        If \`intValue\` is not a valid choice, returns its text value