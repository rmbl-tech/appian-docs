---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/LocalObject.html
original_path: api/com/appiancorp/suiteapi/common/LocalObject.html
version: "25.3"
title: "Class LocalObject"
page_id: "api/com/appiancorp/suiteapi/common/LocalObject"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class LocalObject

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.LocalObject

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableLocalObject`, `[DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`, `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")>`

Direct Known Subclasses:

`[Contribution](../portal/Contribution.html "class in com.appiancorp.suiteapi.portal")`

* * *

public class LocalObject extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common"), [LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")\>, com.appiancorp.core.expr.portable.PortableLocalObject

This class represents the base class for all first-class Appian Objects. It is used to represent objects with both Long and String ID's. At all times either the Long ID or the String ID is valid. LocalObject cannot have valid Id and StringId at the same time.

See Also:

-   [`LocalId`](LocalId.html "interface in com.appiancorp.suiteapi.common")
-   [`LocalStringId`](LocalStringId.html "interface in com.appiancorp.suiteapi.common")
-   [`LocalObjectTypeMapping`](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.LocalObject)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.slf4j.Logger`

    `[LOG](#LOG)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[LocalObject](#%3Cinit%3E\(\))()`

    Constructor that constructs an empty local object.

    `[LocalObject](#%3Cinit%3E\(com.appiancorp.suiteapi.common.LocalId\))([LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common") o_)`

    Constructor that constructs from a given `LocalId` object.

    `[LocalObject](#%3Cinit%3E\(com.appiancorp.suiteapi.common.LocalStringId\))([LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common") o_)`

    Constructor that constructs from a given `LocalStringId` object.

    `[LocalObject](#%3Cinit%3E\(java.lang.Integer,java.lang.Long\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Constructor that constructs from a given type and id.

    `[LocalObject](#%3Cinit%3E\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id_)`

    Constructor that constructs from a type and String id.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[buildUserContext](#buildUserContext\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userId)`

    Builds the user context for a report.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Creates and returns a copy of this object.

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common") o)`

    Compares the specified `LocalObject` with this `LocalObject` for ordering.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o_)`

    Returns whether the `LocalObject` been passed is equal to this `LocalObject`.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the ID of this `LocalObject`.

    `static [LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common")`

    `[getObjectTypeMapping](#getObjectTypeMapping\(\))()`

    Get the mapping object used to determine a first-class object's type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringId](#getStringId\(\))()`

    Returns the String Id of this `LocalObject`.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the type of this `LocalObject`.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code value for the object.

    `boolean`

    `[isNull](#isNull\(\))()`

    A LocalObject may be null by containing a null type, or null object within the type.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_)`

    Sets the ID of this `LocalObject`.

    `static void`

    `[setObjectTypeMapping](#setObjectTypeMapping\(com.appiancorp.suiteapi.common.LocalObjectTypeMapping\))([LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common") p_)`

    Set the mapper used to determine an first-class object's type.

    `void`

    `[setStringId](#setStringId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stringId_)`

    Sets the String ID of this `LocalObject`.

    `void`

    `[setType](#setType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") p_)`

    Set the type of this `LocalObject`.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `LocalObject`.In general, the toString method returns a string that "textually represents" this object.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.slf4j.Logger LOG

-   ## Constructor Details

    -   ### LocalObject

        public LocalObject()

        Constructor that constructs an empty local object.

    -   ### LocalObject

        public LocalObject([LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common") o\_)

        Constructor that constructs from a given `LocalId` object.

        Parameters:

        `o_` - LocalId to construct the object from

    -   ### LocalObject

        public LocalObject([LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common") o\_)

        Constructor that constructs from a given `LocalStringId` object.

        Parameters:

        `o_` - LocalStringId to construct the object from

    -   ### LocalObject

        public LocalObject([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Constructor that constructs from a given type and id.

        Parameters:

        `type_` - Use a constant from an `ObjectTypeMapping`.

        `id_` - ID of type Long for object to constructor

    -   ### LocalObject

        public LocalObject([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") id\_)

        Constructor that constructs from a type and String id.

        Parameters:

        `type_` - Use a constant from an `ObjectTypeMapping`.

        `id_` - String ID of the object to construct

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the ID of this `LocalObject`.

        Specified by:

        `[getId](LocalId.html#getId\(\))` in interface `[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Specified by:

        `getId` in interface `com.appiancorp.core.expr.portable.PortableLocalObject`

        Returns:

        ID of this object

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_)

        Sets the ID of this `LocalObject`.

        Specified by:

        `[setId](LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `p_` - ID to set

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getType()

        Gets the type of this `LocalObject`. Should return a constant from `ObjectTypeMapping`.

        Specified by:

        `getType` in interface `com.appiancorp.core.expr.portable.PortableLocalObject`

        Returns:

        Type of this object

        See Also:

        -   [`setType(Integer)`](#setType\(java.lang.Integer\))

    -   ### setType

        public void setType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") p\_)

        Set the type of this `LocalObject`. Use a constant from `ObjectTypeMapping`.

        Parameters:

        `p_` - Type of this object to set

        See Also:

        -   [`getType()`](#getType\(\))

    -   ### getObjectTypeMapping

        public static [LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common") getObjectTypeMapping()

        Get the mapping object used to determine a first-class object's type.

        Returns:

        Mapping class for determining object's type

        See Also:

        -   [`setObjectTypeMapping(com.appiancorp.suiteapi.common.LocalObjectTypeMapping)`](#setObjectTypeMapping\(com.appiancorp.suiteapi.common.LocalObjectTypeMapping\))

    -   ### setObjectTypeMapping

        public static void setObjectTypeMapping([LocalObjectTypeMapping](LocalObjectTypeMapping.html "class in com.appiancorp.suiteapi.common") p\_)

        Set the mapper used to determine an first-class object's type.

        Parameters:

        `p_` - Sets the mapping class used to determine object's type

        See Also:

        -   [`getObjectTypeMapping()`](#getObjectTypeMapping\(\))

    -   ### getStringId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringId()

        Returns the String Id of this `LocalObject`.

        Specified by:

        `[getStringId](LocalStringId.html#getStringId\(\))` in interface `[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

        Specified by:

        `getStringId` in interface `com.appiancorp.core.expr.portable.PortableLocalObject`

        Returns:

        Returns the string Id.

        See Also:

        -   [`setStringId(String)`](#setStringId\(java.lang.String\))

    -   ### setStringId

        public void setStringId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") stringId\_)

        Sets the String ID of this `LocalObject`.

        Specified by:

        `[setStringId](LocalStringId.html#setStringId\(java.lang.String\))` in interface `[LocalStringId](LocalStringId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `stringId_` - The string Id to set.

        See Also:

        -   [`getStringId()`](#getStringId\(\))

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o\_)

        Returns whether the `LocalObject` been passed is equal to this `LocalObject`.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `o_` - the reference object with which to compare.

        Returns:

        `true` if both objects are equal, otherwise `false`

    -   ### hashCode

        public int hashCode()

        Returns a hash code value for the object. This method is supported for the benefit of hashtables such as those provided by [`Hashtable`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Hashtable.html "class or interface in java.util").

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        a hash code value for this object

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Returns a string representation of the `LocalObject`.In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String representation of the object

    -   ### isNull

        public boolean isNull()

        A LocalObject may be null by containing a null type, or null object within the type.

        Returns:

        true if type or id/stringId is null

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Creates and returns a copy of this object.

        Specified by:

        `[clone](DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### compareTo

        public int compareTo([LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common") o)

        Compares the specified `LocalObject` with this `LocalObject` for ordering. Compares both `types` and then both `ids` or `stringIds` according to the `types`.

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")>`

        Parameters:

        `o` - the `LocalObject` to be compared.

        Returns:

        the value `0` if the argument LocalObject is equal to this LocalObject; a value less than `0` if this LocalObject is before the LocalObject argument; and a value greater than `0` if this LocalObject is after the LocalObject argument.

    -   ### buildUserContext

        public static [LocalObject](LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] buildUserContext([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userId)

        Builds the user context for a report.

        Parameters:

        `userId` - the user ID; cannot be null

        Returns:

        the user context for a report