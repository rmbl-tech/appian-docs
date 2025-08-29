---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/type/system/ListViewItem.Field.html
original_path: api/com/appiancorp/type/system/ListViewItem.Field.html
version: "25.3"
---

Package [com.appiancorp.type.system](package-summary.html)

# Enum Class ListViewItem.Field

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[java.lang.Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")\>

com.appiancorp.type.system.ListViewItem.Field

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")>`, `[Constable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/constant/Constable.html "class or interface in java.lang.constant")`

Enclosing class:

[ListViewItem](ListViewItem.html "class in com.appiancorp.type.system")

* * *

public static enum ListViewItem.Field extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")\>

An enumeration used as keys for the fields of a [`ListViewItem`](ListViewItem.html "class in com.appiancorp.type.system"). NOTE: THE ORDER OF THIS IS IMPORTANT. it Needs to match the order of the @XmlType(propOrder=) of ListViewItem

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[Enum.EnumDesc](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang") extends [Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")<[E](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.EnumDesc.html "class or interface in java.lang")>>`

-   ## Enum Constant Summary

    Enum Constants

    Enum Constant

    Description

    `[DETAILS](#DETAILS)`

    `[IMAGE](#IMAGE)`

    `[TITLE](#TITLE)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")`

    `[fromFieldName](#fromFieldName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toFieldName](#toFieldName\(\))()`

    `int`

    `[toPositionalValue](#toPositionalValue\(\))()`

    `static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")`

    `[valueOf](#valueOf\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Returns the enum constant of this class with the specified name.

    `static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")[]`

    `[values](#values\(\))()`

    Returns an array containing the constants of this enum class, in the order they are declared.

    ### Methods inherited from class java.lang.[Enum](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#clone\(\) "class or interface in java.lang"), [compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#compareTo\(E\) "class or interface in java.lang"), [describeConstable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#describeConstable\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#finalize\(\) "class or interface in java.lang"), [getDeclaringClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#getDeclaringClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#hashCode\(\) "class or interface in java.lang"), [name](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#name\(\) "class or interface in java.lang"), [ordinal](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#ordinal\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#toString\(\) "class or interface in java.lang"), [valueOf](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Enum.html#valueOf\(java.lang.Class,java.lang.String\) "class or interface in java.lang")`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Enum Constant Details

    -   ### IMAGE

        public static final [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system") IMAGE

    -   ### TITLE

        public static final [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system") TITLE

    -   ### DETAILS

        public static final [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system") DETAILS

-   ## Method Details

    -   ### values

        public static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system")\[\] values()

        Returns an array containing the constants of this enum class, in the order they are declared.

        Returns:

        an array containing the constants of this enum class, in the order they are declared

    -   ### valueOf

        public static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system") valueOf([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Returns the enum constant of this class with the specified name. The string must match _exactly_ an identifier used to declare an enum constant in this class. (Extraneous whitespace characters are not permitted.)

        Parameters:

        `name` - the name of the enum constant to be returned.

        Returns:

        the enum constant with the specified name

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if this enum class has no constant with the specified name

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is null

    -   ### toFieldName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toFieldName()

    -   ### toPositionalValue

        public int toPositionalValue()

    -   ### fromFieldName

        public static [ListViewItem.Field](ListViewItem.Field.html "enum class in com.appiancorp.type.system") fromFieldName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fieldName)