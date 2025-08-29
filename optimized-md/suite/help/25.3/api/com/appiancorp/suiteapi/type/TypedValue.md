---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/type/TypedValue.html
original_path: api/com/appiancorp/suiteapi/type/TypedValue.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.type](package-summary.html)

# Class TypedValue

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.type.TypedValue

All Implemented Interfaces:

`com.appiancorp.core.expr.portable.PortableTypedValue`, `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `com.appiancorp.type.HasTypeRef`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[NamedTypedValue](NamedTypedValue.html "class in com.appiancorp.suiteapi.type")`

* * *

@GwtCompatible public class TypedValue extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.type.HasTypeRef, [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), com.appiancorp.core.expr.portable.PortableTypedValue

This is a simple bean that represents a type and a value.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.type.TypedValue)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ALWAYS](#ALWAYS)`

    `static final int`

    `[AT_DESIGNER_DISCRETION](#AT_DESIGNER_DISCRETION)`

    `protected boolean`

    `[clearPasswordOnTransport](#clearPasswordOnTransport)`

    `static final int`

    `[NEVER](#NEVER)`

    `protected static final org.apache.commons.lang.builder.ToStringStyle`

    `[TO_STRING_STYLE](#TO_STRING_STYLE)`

    ### Fields inherited from interface com.appiancorp.type.HasTypeRef

    `selectTypeId`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TypedValue](#%3Cinit%3E\(\))()`

    `[TypedValue](#%3Cinit%3E\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv_)`

    Copy constructor.

    `[TypedValue](#%3Cinit%3E\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)`

    Creates an instance with the given type.

    `[TypedValue](#%3Cinit%3E\(java.lang.Long,java.lang.Object\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Creates an instance with the given type and value.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[clearPasswordOnTransport](#clearPasswordOnTransport\(\))()`

    Deprecated.

    This is an internal method that will be removed from the public API.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Clone this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    Compares the specified object with this typedValue for equality.

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getInstanceType](#getInstanceType\(\))()`

    Retrieves the type id, which corresponds to a `Datatype`.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInstanceTypeIds](#getInstanceTypeIds\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")[] tvs_)`

    Get the instance type ids (as a Long array) from an array of typed values.

    `final com.appiancorp.type.TypeRef`

    `[getTypeRef](#getTypeRef\(\))()`

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Retrieves the value of this variable.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setInstanceType](#setInstanceType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)`

    Sets the instance type of the typed value.

    `final void`

    `[setTypeRef](#setTypeRef\(com.appiancorp.type.TypeRef\))(com.appiancorp.type.TypeRef typeRef)`

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Sets the value of the typed variable.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### NEVER

        public static final int NEVER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypedValue.NEVER)

    -   ### ALWAYS

        public static final int ALWAYS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypedValue.ALWAYS)

    -   ### AT\_DESIGNER\_DISCRETION

        public static final int AT\_DESIGNER\_DISCRETION

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.type.TypedValue.AT_DESIGNER_DISCRETION)

    -   ### clearPasswordOnTransport

        protected transient boolean clearPasswordOnTransport

    -   ### TO\_STRING\_STYLE

        protected static final org.apache.commons.lang.builder.ToStringStyle TO\_STRING\_STYLE

-   ## Constructor Details

    -   ### TypedValue

        public TypedValue()

    -   ### TypedValue

        public TypedValue([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type") tv\_)

        Copy constructor. Creates a new TypedValue with the data of the given TypedValue. A deep copy of the value is performed.

    -   ### TypedValue

        public TypedValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)

        Creates an instance with the given type.

        Parameters:

        `instanceType` - the type id

    -   ### TypedValue

        public TypedValue([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Creates an instance with the given type and value.

        Parameters:

        `instanceType` - the type id

        `value_` - the value

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Clone this object.

        Specified by:

        `[clone](../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Compares the specified object with this typedValue for equality. Returns true if and only if the specified object is also a typedValue, both typedValues have the same type, and the same value.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `o` - the object to be compared for equality with this typeValue

        Returns:

        true if the specified object is equal to this typeValue

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getInstanceType

        public final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getInstanceType()

        Retrieves the type id, which corresponds to a `Datatype`. Built-in datatype ids are defined in `AppianType`

        Specified by:

        `getInstanceType` in interface `com.appiancorp.core.expr.portable.PortableTypedValue`

        Returns:

        the type id

    -   ### setInstanceType

        public void setInstanceType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") instanceType)

        Sets the instance type of the typed value.

        Parameters:

        `instanceType` - The instance type id, which corresponds to a `Datatype`. Built-in datatype ids are defined in `AppianType`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getValue

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Retrieves the value of this variable.

        Specified by:

        `getValue` in interface `com.appiancorp.core.expr.portable.PortableTypedValue`

        Returns:

        The value of the typed variable.

    -   ### setValue

        public void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Sets the value of the typed variable.

        Parameters:

        `value` - The value to set the typed variable to.

    -   ### getInstanceTypeIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInstanceTypeIds([TypedValue](TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] tvs\_)

        Get the instance type ids (as a Long array) from an array of typed values.

        Parameters:

        `tvs_` - an array of typed values

        Returns:

        an array of the same size as the given array, containing the instance type ids of the given typed values

    -   ### clearPasswordOnTransport

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean clearPasswordOnTransport()

        Deprecated.

        This is an internal method that will be removed from the public API.

        Should this clear passswords on transport? Transient property. Works as a flag to avoid including passwords in transport.

        Returns:

    -   ### getTypeRef

        @Transient public final com.appiancorp.type.TypeRef getTypeRef()

        Specified by:

        `getTypeRef` in interface `com.appiancorp.type.HasTypeRef`

    -   ### setTypeRef

        public final void setTypeRef(com.appiancorp.type.TypeRef typeRef)

        Specified by:

        `setTypeRef` in interface `com.appiancorp.type.HasTypeRef`