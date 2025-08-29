---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/Expression.html
original_path: api/com/appiancorp/suiteapi/personalization/Expression.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class Expression

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.Expression

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Expression extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Title: Expression

Description: Holds expression for a rule set, where an expression consists of an entity name, entity id, and list of conditions.

Copyright: Copyright (c) 2002

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.Expression)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[ENTITY_TYPE_ID_USER](#ENTITY_TYPE_ID_USER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ENTITY_TYPE_NAME_USER](#ENTITY_TYPE_NAME_USER)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Expression](#%3Cinit%3E\(\))()`

    Default no-arg constructor.

    `[Expression](#%3Cinit%3E\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.personalization.Condition%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") entityTypeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeName, [Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")[] conditions)`

    Constructor that receives the entity type id, name and a list of conditions.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getConditions](#getConditions\(\))()`

    Gets the list of conditions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEntityTypeId](#getEntityTypeId\(\))()`

    Gets the entityTypeId of this expression.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEntityTypeName](#getEntityTypeName\(\))()`

    Gets the entity type name of this expression.

    `void`

    `[setConditions](#setConditions\(com.appiancorp.suiteapi.personalization.Condition%5B%5D\))([Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")[] conditions)`

    Sets the list of conditions.

    `void`

    `[setEntityTypeId](#setEntityTypeId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") entityTypeId)`

    Sets the entityTypeId of this expression.

    `void`

    `[setEntityTypeName](#setEntityTypeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeName)`

    Sets the entity type name for this expression.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### ENTITY\_TYPE\_NAME\_USER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ENTITY\_TYPE\_NAME\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.Expression.ENTITY_TYPE_NAME_USER)

    -   ### ENTITY\_TYPE\_ID\_USER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") ENTITY\_TYPE\_ID\_USER

-   ## Constructor Details

    -   ### Expression

        public Expression()

        Default no-arg constructor.

    -   ### Expression

        public Expression([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") entityTypeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeName, [Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")\[\] conditions)

        Constructor that receives the entity type id, name and a list of conditions.

        Parameters:

        `entityTypeId` - Id of the entity type of this expression. @see #getEntityTypeId().

        `entityTypeName` - Name of the entity type of this expression. @see #getEntityTypeName().

        `conditions` - List of conditions that form this expression.

-   ## Method Details

    -   ### getEntityTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEntityTypeName()

        Gets the entity type name of this expression. The value of the `entityTypeName` depends on the type of expression. For user expressions the value is the string [`ENTITY_TYPE_NAME_USER`](#ENTITY_TYPE_NAME_USER), whereas for group types the value is the name of the group type.

        Returns:

        The entityTypeName of this expression.

    -   ### setEntityTypeName

        public void setEntityTypeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityTypeName)

        Sets the entity type name for this expression.

        Parameters:

        `entityTypeName` - Name of the entity type.

        See Also:

        -   [`getEntityTypeName()`](#getEntityTypeName\(\))

    -   ### setConditions

        public void setConditions([Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")\[\] conditions)

        Sets the list of conditions.

        Parameters:

        `conditions` - The list of conditions to set.

    -   ### getConditions

        public [Condition](Condition.html "class in com.appiancorp.suiteapi.personalization")\[\] getConditions()

        Gets the list of conditions.

        Returns:

        List of conditions.

    -   ### setEntityTypeId

        public void setEntityTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") entityTypeId)

        Sets the entityTypeId of this expression.

        Parameters:

        `entityTypeId` - The entityTypeId to set.

        See Also:

        -   [`getEntityTypeId()`](#getEntityTypeId\(\))

    -   ### getEntityTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEntityTypeId()

        Gets the entityTypeId of this expression. The value of the entityTypeId depends if the expression is for users or group types. For users the value is [`ENTITY_TYPE_ID_USER`](#ENTITY_TYPE_ID_USER), whereas for group types it corresponds to the group type id.

        Returns:

        The entityTypeId of this expression

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`