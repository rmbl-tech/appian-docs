---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/Condition.html
original_path: api/com/appiancorp/suiteapi/personalization/Condition.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class Condition

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.Condition

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Condition extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.Condition)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ATTRIBUTE_NAME_USERNAME](#ATTRIBUTE_NAME_USERNAME)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[DATA_TYPE_ID_TYPESTRING](#DATA_TYPE_ID_TYPESTRING)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Condition](#%3Cinit%3E\(\))()`

    Default no-arg constructor.

    `[Condition](#%3Cinit%3E\(java.lang.String,java.lang.Integer,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)`

    Constructor that receives the attribute name, operator id and the value for this condition.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttributeDisplayName](#getAttributeDisplayName\(\))()`

    Gets the attribute's display name.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAttributeName](#getAttributeName\(\))()`

    Gets the attribute's name.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDataTypeId](#getDataTypeId\(\))()`

    Gets the id of the type of data used in this condition.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDataTypeName](#getDataTypeName\(\))()`

    Gets the name of the data type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getOperatorId](#getOperatorId\(\))()`

    Gets the operator's id.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOperatorName](#getOperatorName\(\))()`

    Gets the name of the operator.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getValue](#getValue\(\))()`

    Gets the value that is being used in the comparison of this condition.

    `void`

    `[setAttributeDisplayName](#setAttributeDisplayName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeDisplayName)`

    Sets the attribute's display name.

    `void`

    `[setAttributeName](#setAttributeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName)`

    Sets the attribute's name.

    `void`

    `[setDataTypeId](#setDataTypeId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataTypeId)`

    Sets the id of the type of data to use in this condition.

    `void`

    `[setDataTypeName](#setDataTypeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dataTypeName)`

    Sets the name of the data type.

    `void`

    `[setOperatorId](#setOperatorId\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorId)`

    Sets the operator's id.

    `void`

    `[setOperatorName](#setOperatorName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operatorName)`

    Sets the name of the operator.

    `void`

    `[setValue](#setValue\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)`

    Sets the value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### ATTRIBUTE\_NAME\_USERNAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ATTRIBUTE\_NAME\_USERNAME

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Condition.ATTRIBUTE_NAME_USERNAME)

    -   ### DATA\_TYPE\_ID\_TYPESTRING

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DATA\_TYPE\_ID\_TYPESTRING

-   ## Constructor Details

    -   ### Condition

        public Condition()

        Default no-arg constructor.

    -   ### Condition

        public Condition([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)

        Constructor that receives the attribute name, operator id and the value for this condition.

        Parameters:

        `attributeName` - Name of the attribute used in this condition.

        `operatorId` - Id of the relational operator; see fields in [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization")

        `value` - Value to use for this condition.

-   ## Method Details

    -   ### getAttributeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttributeName()

        Gets the attribute's name. This value corresponds to a key defined in the map retrieved from {@link com.appiancorp.ag.group.action.AddRuleSet.getAttributeAliasMap()}

        Returns:

        Name of the attribute.

    -   ### setAttributeName

        public void setAttributeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeName)

        Sets the attribute's name.

        Parameters:

        `attributeName` - Name of the attribute.

        See Also:

        -   [`getAttributeName()`](#getAttributeName\(\))

    -   ### setAttributeDisplayName

        public void setAttributeDisplayName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attributeDisplayName)

        Sets the attribute's display name.

        Parameters:

        `attributeDisplayName` - Display name of the attribute.

        See Also:

        -   [`getAttributeDisplayName()`](#getAttributeDisplayName\(\))

    -   ### getAttributeDisplayName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAttributeDisplayName()

        Gets the attribute's display name. This is the value that is shown in the user interface.

        Returns:

        Display name of the attribute.

        See Also:

        -   `AddRuleSet`

    -   ### setOperatorId

        public void setOperatorId([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") operatorId)

        Sets the operator's id.

        Parameters:

        `operatorId` - Id of the operator.

        See Also:

        -   [`getOperatorId()`](#getOperatorId\(\))

    -   ### getOperatorId

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getOperatorId()

        Gets the operator's id. This field corresponds to the id of the relational operator to use in the comparison of this condition. For instance, the equals operator is [`Operator.EQUALS`](Operator.html#EQUALS).

        Returns:

        Id of the operator.

        See Also:

        -   [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization")

    -   ### setValue

        public void setValue([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value)

        Sets the value.

        Parameters:

        `value` - Value to use.

    -   ### getValue

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getValue()

        Gets the value that is being used in the comparison of this condition.

        Returns:

        The value used in the condition.

    -   ### setOperatorName

        public void setOperatorName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") operatorName)

        Sets the name of the operator.

        Parameters:

        `operatorName` - Name of the operator.

        See Also:

        -   [`getOperatorName()`](#getOperatorName\(\))

    -   ### getOperatorName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOperatorName()

        Gets the name of the operator.

        Returns:

        The name of the operator.

        See Also:

        -   [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization")

    -   ### setDataTypeId

        public void setDataTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataTypeId)

        Sets the id of the type of data to use in this condition.

        Parameters:

        `dataTypeId` - The id of the data type.

        See Also:

        -   [`getDataTypeId()`](#getDataTypeId\(\))

    -   ### getDataTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDataTypeId()

        Gets the id of the type of data used in this condition.

        Returns:

        The id of the data type.

        See Also:

        -   `DataMap`

    -   ### getDataTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDataTypeName()

        Gets the name of the data type.

        Returns:

        The name of the data type.

        See Also:

        -   `DataMap`

    -   ### setDataTypeName

        public void setDataTypeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dataTypeName)

        Sets the name of the data type.

        Parameters:

        `dataTypeName` - The name of the data type.

        See Also:

        -   [`getDataTypeName()`](#getDataTypeName\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`