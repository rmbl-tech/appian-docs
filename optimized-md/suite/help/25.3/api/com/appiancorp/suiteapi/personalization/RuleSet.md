---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/RuleSet.html
original_path: api/com/appiancorp/suiteapi/personalization/RuleSet.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class RuleSet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.RuleSet

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RuleSet extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Title: RuleForm

Description: This is the form used to create a group membership ruleset.

Copyright: Copyright (c) 2002

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.RuleSet)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RuleSet](#%3Cinit%3E\(\))()`

    Default no-arg constructor.

    `[RuleSet](#%3Cinit%3E\(java.lang.Long,com.appiancorp.suiteapi.personalization.Expression%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId, [Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")[] expressions)`

    Constructor that receives a group id for this rule set and a list of expressions.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getConditions](#getConditions\(\))()`

    Returns the string representation of the conditions used in this rule set.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getEntityType](#getEntityType\(\))()`

    Gets the entity type of this rule set.

    `[Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getExpressions](#getExpressions\(\))()`

    Gets the list of expressions used in this rule set.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupId](#getGroupId\(\))()`

    Gets the Id of the group of this rule set belongs.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupTypeId](#getGroupTypeId\(\))()`

    This field is used to temporarily store the types of expressions contained in this rule set (user or group).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRuleDescription](#getRuleDescription\(\))()`

    Gets the description of this rule set.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRuleName](#getRuleName\(\))()`

    Gets the name of the rule set.

    `void`

    `[setConditions](#setConditions\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") conditions)`

    Sets a string representation of the conditions to use in the rule set.

    `void`

    `[setEntityType](#setEntityType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityType)`

    Sets the entity type of this rule set.

    `void`

    `[setExpressions](#setExpressions\(com.appiancorp.suiteapi.personalization.Expression%5B%5D\))([Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")[] expressions)`

    Sets the list of expressions for this rule set.

    `void`

    `[setGroupId](#setGroupId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid)`

    Sets the Id of the group to which this rule set will belong.

    `void`

    `[setGroupTypeId](#setGroupTypeId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeId)`

    Sets string representation of types of expressions in the rule set.

    `void`

    `[setRuleDescription](#setRuleDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rdesc)`

    Sets the description of this rule set.

    `void`

    `[setRuleName](#setRuleName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rnm)`

    Sets the name of the rule set.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Creates a string representation of the RuleSet (does not contain all fields).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RuleSet

        public RuleSet()

        Default no-arg constructor.

    -   ### RuleSet

        public RuleSet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId, [Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")\[\] expressions)

        Constructor that receives a group id for this rule set and a list of expressions.

        Parameters:

        `groupId` - The id of the group to which this rule set belongs.

        `expressions` - List of expressions to use in this rule set.

-   ## Method Details

    -   ### setRuleName

        public void setRuleName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rnm)

        Sets the name of the rule set.

        Parameters:

        `rnm` - Name of the rule set.

    -   ### getRuleName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRuleName()

        Gets the name of the rule set.

        Returns:

        Name of the rule set.

    -   ### setGroupId

        public void setGroupId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid)

        Sets the Id of the group to which this rule set will belong.

        Parameters:

        `gid` - Id of the group of this rule set.

    -   ### getGroupId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupId()

        Gets the Id of the group of this rule set belongs.

        Returns:

        Id of the group of this rule set.

    -   ### setRuleDescription

        public void setRuleDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rdesc)

        Sets the description of this rule set.

        Parameters:

        `rdesc` - Description of the rule set.

    -   ### getRuleDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRuleDescription()

        Gets the description of this rule set.

        Returns:

        Description of this rule set.

    -   ### setEntityType

        public void setEntityType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") entityType)

        Sets the entity type of this rule set.

        Parameters:

        `entityType` - Entity type for this rule set.

    -   ### getEntityType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getEntityType()

        Gets the entity type of this rule set.

        Returns:

        Entity type of this rule set.

    -   ### setGroupTypeId

        public void setGroupTypeId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeId)

        Sets string representation of types of expressions in the rule set.

        Parameters:

        `groupTypeId` -

        See Also:

        -   [`getGroupTypeId()`](#getGroupTypeId\(\))

    -   ### getGroupTypeId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupTypeId()

        This field is used to temporarily store the types of expressions contained in this rule set (user or group).

        Returns:

        String representation of types of expressions used.

    -   ### setConditions

        public void setConditions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") conditions)

        Sets a string representation of the conditions to use in the rule set.

        Parameters:

        `conditions` - Conditions to use.

        See Also:

        -   [`getConditions()`](#getConditions\(\))

    -   ### getConditions

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getConditions()

        Returns the string representation of the conditions used in this rule set. The conditions of this rule set however are stored as [`Condition`](Condition.html "class in com.appiancorp.suiteapi.personalization") objects within the list of [`Expression`](Expression.html "class in com.appiancorp.suiteapi.personalization").

        Returns:

        String representation of defined conditions.

    -   ### setExpressions

        public void setExpressions([Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")\[\] expressions)

        Sets the list of expressions for this rule set.

        Parameters:

        `expressions` - List of expressions to use.

    -   ### getExpressions

        public [Expression](Expression.html "class in com.appiancorp.suiteapi.personalization")\[\] getExpressions()

        Gets the list of expressions used in this rule set.

        Returns:

        List of expressions used.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Creates a string representation of the RuleSet (does not contain all fields).

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        String representation of the rule set.