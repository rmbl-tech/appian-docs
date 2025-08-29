---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/Attribute.html
original_path: api/com/appiancorp/suiteapi/personalization/Attribute.html
version: "25.3"
title: "Class Attribute"
page_id: "api/com/appiancorp/suiteapi/personalization/Attribute"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class Attribute

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.Attribute

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Attribute extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This represents the Attribute object. ALL FIELDS are required.
The default attribute types supported are: TYPE\_BOOLEAN, TYPE\_STRING, TYPE\_INTEGER, TYPE\_FLOAT, TYPE\_DATE, TYPE\_USER, TYPE\_GROUP

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.Attribute)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[TYPE_BOOLEAN](#TYPE_BOOLEAN)`

    `static final int`

    `[TYPE_DATE](#TYPE_DATE)`

    `static final int`

    `[TYPE_FLOAT](#TYPE_FLOAT)`

    `static final int`

    `[TYPE_GROUP](#TYPE_GROUP)`

    `static final int`

    `[TYPE_INTEGER](#TYPE_INTEGER)`

    `static final int`

    `[TYPE_STRING](#TYPE_STRING)`

    `static final int`

    `[TYPE_USER](#TYPE_USER)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Attribute](#%3Cinit%3E\(\))()`

    `[Attribute](#%3Cinit%3E\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type)`

    `[Attribute](#%3Cinit%3E\(java.lang.String,java.lang.Integer,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `static [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")`

    `[findAttributeByName](#findAttributeByName\(com.appiancorp.suiteapi.personalization.Attribute%5B%5D,java.lang.String\))([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[] attributes, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Finds an attribute in a list of attributes, searching by name

    `static int`

    `[findAttributeIndexByName](#findAttributeIndexByName\(com.appiancorp.suiteapi.personalization.Attribute%5B%5D,java.lang.String\))([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[] attributes, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Finds the index of an attribute in a list of attributes, searching by name

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAppianTypeFromAttributeType](#getAppianTypeFromAttributeType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") attributeType)`

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAttributeTypeFromAppianType](#getAttributeTypeFromAppianType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianType)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    The attribute name (unique per group type, serves as the attribute handle).

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Can be any one of the TYPE\_XXX constants on this class.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTypeName](#getTypeName\(\))()`

    Returns the name of this Attribute's type.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Returns the attribute value.

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the name.

    `void`

    `[setType](#setType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type)`

    Sets the type.

    `void`

    `[setValue](#setValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Sets the value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TYPE\_BOOLEAN

        public static final int TYPE\_BOOLEAN

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_BOOLEAN)

    -   ### TYPE\_STRING

        public static final int TYPE\_STRING

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_STRING)

    -   ### TYPE\_INTEGER

        public static final int TYPE\_INTEGER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_INTEGER)

    -   ### TYPE\_FLOAT

        public static final int TYPE\_FLOAT

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_FLOAT)

    -   ### TYPE\_DATE

        public static final int TYPE\_DATE

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_DATE)

    -   ### TYPE\_USER

        public static final int TYPE\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_USER)

    -   ### TYPE\_GROUP

        public static final int TYPE\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Attribute.TYPE_GROUP)

-   ## Constructor Details

    -   ### Attribute

        public Attribute()

    -   ### Attribute

        public Attribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type)

    -   ### Attribute

        public Attribute([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

-   ## Method Details

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        The attribute name (unique per group type, serves as the attribute handle).

        Returns:

        String

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the name.

        Parameters:

        `name` - The name to set

    -   ### getType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getType()

        Can be any one of the TYPE\_XXX constants on this class.

        Returns:

        Integer

    -   ### setType

        public void setType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") type)

        Sets the type.

        Parameters:

        `type` - The type to set

    -   ### getValue

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getValue()

        Returns the attribute value.

    -   ### setValue

        public void setValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Sets the value.

        Parameters:

        `value` - The value to set

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getAppianTypeFromAttributeType

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAppianTypeFromAttributeType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") attributeType)

    -   ### getAttributeTypeFromAppianType

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAttributeTypeFromAppianType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianType)

    -   ### getTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTypeName()

        Returns the name of this Attribute's type. The name is just a String that can be displayed to the end-user instead of a raw integer; the name has no special meaning (it's not a key) and can change in the future.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### findAttributeIndexByName

        public static int findAttributeIndexByName([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Finds the index of an attribute in a list of attributes, searching by name

        Parameters:

        `attributes` - the list of attributes to search in

        `name` - the name of the attribute to search for

        Returns:

        the index of the attribute if found, -1 if not found

    -   ### findAttributeByName

        public static [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization") findAttributeByName([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Finds an attribute in a list of attributes, searching by name

        Parameters:

        `attributes` - the list of attributes to search in

        `name` - the name of the attribute to search for

        Returns:

        the attribute if found, null if not found