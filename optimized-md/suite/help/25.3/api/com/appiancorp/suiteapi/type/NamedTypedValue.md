---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/NamedTypedValue.html
original_path: api/com/appiancorp/suiteapi/type/NamedTypedValue.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type](package-summary.html)

# Class NamedTypedValue

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.type.TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")

com.appiancorp.suiteapi.type.NamedTypedValue

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableNamedTypedValue`, `com.appiancorp.core.expr.portable.PortableTypedValue`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `com.appiancorp.type.HasTypeRef`, `com.appiancorp.type.NamedType`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

* * *

@GwtCompatible public class NamedTypedValue extends [TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") implements com.appiancorp.type.NamedType, com.appiancorp.core.expr.portable.PortableNamedTypedValue

This is a simple bean that represents a name, type and value.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.type.NamedTypedValue)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace")`

    `[QNAME](#QNAME)`

    ### Fields inherited from class com.appiancorp.suiteapi.type.[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[ALWAYS](TypedValue.html#ALWAYS), [AT_DESIGNER_DISCRETION](TypedValue.html#AT_DESIGNER_DISCRETION), [clearPasswordOnTransport](TypedValue.html#clearPasswordOnTransport), [NEVER](TypedValue.html#NEVER), [TO_STRING_STYLE](TypedValue.html#TO_STRING_STYLE)`

    ### Fields inherited from interface com.appiancorp.type.HasTypeRef

    `selectTypeId`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

    ### Fields inherited from interface com.appiancorp.type.NamedType

    `selectName`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NamedTypedValue](#%3Cinit%3E\(\))()`

    `[NamedTypedValue](#%3Cinit%3E\(com.appiancorp.suiteapi.type.NamedTypedValue\))([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv)`

    `[NamedTypedValue](#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv)`

    `[NamedTypedValue](#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue,java.lang.String\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `[NamedTypedValue](#%3Cinit%3E\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)`

    `[NamedTypedValue](#%3Cinit%3E\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)`

    `[NamedTypedValue](#%3Cinit%3E\(java.lang.String,java.lang.Long,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Creates an instance with the given name, type and value.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Compares the specified object with this typedValue for equality.

    `static <T extends [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")>   T`

    `[findNtvByName](#findNtvByName\(T%5B%5D,java.lang.String\))(T[] ntvs, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Finds the NamedTypedValue object in the given array that has the given name.

    `static int`

    `[findNtvIndexByName](#findNtvIndexByName\(com.appiancorp.suiteapi.type.NamedTypedValue%5B%5D,java.lang.String\))([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")[] ntvs, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Finds the index of the NamedTypedValue in the given array that has the given name.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the name.

    `static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getNtvNames](#getNtvNames\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")> ntvs)`

    Returns the names of the given [`NamedTypedValue`](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")s.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.type.[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")

    `[clearPasswordOnTransport](TypedValue.html#clearPasswordOnTransport\(\)), [clone](TypedValue.html#clone\(\)), [getHiddenAttributes](TypedValue.html#getHiddenAttributes\(\)), [getInstanceType](TypedValue.html#getInstanceType\(\)), [getInstanceTypeIds](TypedValue.html#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\)), [getTypeRef](TypedValue.html#getTypeRef\(\)), [getValue](TypedValue.html#getValue\(\)), [setInstanceType](TypedValue.html#setInstanceType\(java.lang.Long\)), [setTypeRef](TypedValue.html#setTypeRef\(com.appiancorp.type.TypeRef\)), [setValue](TypedValue.html#setValue\(java.lang.Object\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.type.HasTypeRef

    `getTypeRef, setTypeRef`

    ### Methods inherited from interface com.appiancorp.core.expr.portable.PortableTypedValue

    `getInstanceType, getValue`

-   ## Field Details

    -   ### QNAME

        public static final [QName](https://docs.oracle.com/en/java/javase/17/docs/api/java.xml/javax/xml/namespace/QName.html "class or interface in javax.xml.namespace") QNAME

-   ## Constructor Details

    -   ### NamedTypedValue

        public NamedTypedValue()

    -   ### NamedTypedValue

        public NamedTypedValue([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv)

    -   ### NamedTypedValue

        public NamedTypedValue([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type") ntv)

    -   ### NamedTypedValue

        public NamedTypedValue([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### NamedTypedValue

        public NamedTypedValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)

    -   ### NamedTypedValue

        public NamedTypedValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)

    -   ### NamedTypedValue

        public NamedTypedValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Creates an instance with the given name, type and value.

        Parameters:

        `name` - the name

        `instanceType` - the type id

        `value` - the value

-   ## Method Details

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Description copied from class: `[TypedValue](TypedValue.html#equals\(java.lang.Object\))`

        Compares the specified object with this typedValue for equality. Returns true if and only if the specified object is also a typedValue, both typedValues have the same type, and the same value.

        Overrides:

        `[equals](TypedValue.html#equals\(java.lang.Object\))` in class `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

        Parameters:

        `obj` - the object to be compared for equality with this typeValue

        Returns:

        true if the specified object is equal to this typeValue

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](TypedValue.html#hashCode\(\))` in class `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the name.

        Specified by:

        `getName` in interface `com.appiancorp.type.NamedType`

        Specified by:

        `getName` in interface `com.appiancorp.core.expr.portable.PortableNamedTypedValue`

        Returns:

        the name

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name.

        Specified by:

        `setName` in interface `com.appiancorp.type.NamedType`

        Parameters:

        `name` - the name

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](TypedValue.html#toString\(\))` in class `[TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")`

    -   ### findNtvByName

        public static <T extends [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\> T findNtvByName(T\[\] ntvs, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Finds the NamedTypedValue object in the given array that has the given name. If no such named value can be found, returns `null`.

        Parameters:

        `ntvs` - the NamedTypedValue array in which to look for the name

        `name` - the name to look for

        Returns:

        the NamedTypedValue object that has that name. Null if not found.

    -   ### findNtvIndexByName

        public static int findNtvIndexByName([NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\[\] ntvs, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Finds the index of the NamedTypedValue in the given array that has the given name. If no such named value can be found, returns `-1`.

        Parameters:

        `ntvs` - the NamedTypedValue array in which to look for the name

        `name` - the name to look for

        Returns:

        the index of the NamedTypedValue object in the array, -1 if not found.

    -   ### getNtvNames

        public static [List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getNtvNames([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")\> ntvs)

        Returns the names of the given [`NamedTypedValue`](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")s. If the given collection has a consistent iteration order, the returned names will be in the same order as the collection items.