---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupSearch.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupSearch.html
version: "25.3"
title: "Class GroupSearch"
page_id: "api/com/appiancorp/suiteapi/personalization/GroupSearch"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class GroupSearch

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.GroupSearch

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class GroupSearch extends [GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

This represents the Group search object. Default search operators (which are constants that can be accessed in this class) include:
like
equals
greater than
less than
greater than or equal to
less then or equal to
does not equal
contains
starts with
ends with
Group Search will through UnsupportedOperatorException If an invalid Operator value is passed in the GroupSearch Object.

See Also:

-   [`Operator`](Operator.html "class in com.appiancorp.suiteapi.personalization")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.GroupSearch)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `class` 

    `[GroupSearch.Operators](GroupSearch.Operators.html "class in com.appiancorp.suiteapi.personalization")`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[CONTAINS](#CONTAINS)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DOES_NOT_EQUAL](#DOES_NOT_EQUAL)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ENDS_WITH](#ENDS_WITH)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[EQUALS](#EQUALS)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN](#GREATER_THAN)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[GREATER_THAN_OR_EQUALS](#GREATER_THAN_OR_EQUALS)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN](#LESS_THAN)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LESS_THAN_OR_EQUALS](#LESS_THAN_OR_EQUALS)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LIKE](#LIKE)`

    Deprecated. 

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[STARTS_WITH](#STARTS_WITH)`

    Deprecated. 

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

    `[SECURITYMAP_PERSONAL](GroupBase.html#SECURITYMAP_PERSONAL), [SECURITYMAP_PUBLIC](GroupBase.html#SECURITYMAP_PUBLIC), [SECURITYMAP_TEAM](GroupBase.html#SECURITYMAP_TEAM)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupSearch](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getOperatorCreated](#getOperatorCreated\(\))()`

    Returns the operator value for Group Created Date Search.

    `int`

    `[getOperatorCreator](#getOperatorCreator\(\))()`

    Returns the operator value for Group Creator Search.

    `int`

    `[getOperatorGroupName](#getOperatorGroupName\(\))()`

    Returns the operator value for Group Name Search.

    `int`

    `[getOperatorGroupTypeName](#getOperatorGroupTypeName\(\))()`

    Returns the operator value for Group Type Name Search.

    `int`

    `[getOperatorLastModified](#getOperatorLastModified\(\))()`

    Returns the operator value for Group Last modified date Search.

    `int`

    `[getOperatorParentName](#getOperatorParentName\(\))()`

    Returns the operator value for Group Parent Name Search.

    `int`

    `[getOperatorSecurityMapId](#getOperatorSecurityMapId\(\))()`

    Returns the operator value for Group Security Type Search.

    `void`

    `[setOperatorCreated](#setOperatorCreated\(int\))(int operatorCreated)`

    Sets the Operator for particular type of search on the Group Created Date Field.

    `void`

    `[setOperatorCreator](#setOperatorCreator\(int\))(int operatorCreator)`

    Sets the Operator for particular type of search on the Group Creator Field.

    `void`

    `[setOperatorGroupName](#setOperatorGroupName\(int\))(int operatorGroupName)`

    Sets the Operator for particular type of search on the Group Name Field.

    `void`

    `[setOperatorGroupTypeName](#setOperatorGroupTypeName\(int\))(int operatorGroupTypeName)`

    Sets the Operator for particular type of search on the Group Type Name Field.

    `void`

    `[setOperatorLastModified](#setOperatorLastModified\(int\))(int operatorLastModified)`

    Sets the Operator for particular type of search on the Group Last modified date Field.

    `void`

    `[setOperatorParentName](#setOperatorParentName\(int\))(int operatorParentName)`

    Sets the Operator for particular type of search on the Group Parent Name Field.

    `void`

    `[setOperatorSecurityMapId](#setOperatorSecurityMapId\(int\))(int operatorSecurityMapId)`

    Sets the Operator for particular type of search on the Group Security Type Field.

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getCreated](GroupBase.html#getCreated\(\)), [getCreator](GroupBase.html#getCreator\(\)), [getGroupName](GroupBase.html#getGroupName\(\)), [getGroupTypeName](GroupBase.html#getGroupTypeName\(\)), [getLastModified](GroupBase.html#getLastModified\(\)), [getParentName](GroupBase.html#getParentName\(\)), [getSecurityMapId](GroupBase.html#getSecurityMapId\(\)), [setCreated](GroupBase.html#setCreated\(java.sql.Timestamp\)), [setCreator](GroupBase.html#setCreator\(java.lang.String\)), [setGroupName](GroupBase.html#setGroupName\(java.lang.String\)), [setGroupTypeName](GroupBase.html#setGroupTypeName\(java.lang.String\)), [setLastModified](GroupBase.html#setLastModified\(java.sql.Timestamp\)), [setParentName](GroupBase.html#setParentName\(java.lang.String\)), [setSecurityMapId](GroupBase.html#setSecurityMapId\(java.lang.Long\)), [toString](GroupBase.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LIKE

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LIKE

        Deprecated.

    -   ### EQUALS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") EQUALS

        Deprecated.

    -   ### GREATER\_THAN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN

        Deprecated.

    -   ### LESS\_THAN

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN

        Deprecated.

    -   ### GREATER\_THAN\_OR\_EQUALS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") GREATER\_THAN\_OR\_EQUALS

        Deprecated.

    -   ### LESS\_THAN\_OR\_EQUALS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LESS\_THAN\_OR\_EQUALS

        Deprecated.

    -   ### DOES\_NOT\_EQUAL

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DOES\_NOT\_EQUAL

        Deprecated.

    -   ### CONTAINS

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") CONTAINS

        Deprecated.

    -   ### STARTS\_WITH

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") STARTS\_WITH

        Deprecated.

    -   ### ENDS\_WITH

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ENDS\_WITH

        Deprecated.

-   ## Constructor Details

    -   ### GroupSearch

        public GroupSearch()

-   ## Method Details

    -   ### getOperatorGroupName

        public int getOperatorGroupName()

        Returns the operator value for Group Name Search.

        Returns:

        Value of Group Name Search Operator

    -   ### setOperatorGroupName

        public void setOperatorGroupName(int operatorGroupName)

        Sets the Operator for particular type of search on the Group Name Field.

        Parameters:

        `operatorGroupName` - Possible Values: LIKE, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH, ENDS\_WITH

    -   ### getOperatorParentName

        public int getOperatorParentName()

        Returns the operator value for Group Parent Name Search.

        Returns:

        Value of Group Parent Name Search Operator

    -   ### setOperatorParentName

        public void setOperatorParentName(int operatorParentName)

        Sets the Operator for particular type of search on the Group Parent Name Field.

        Parameters:

        `operatorParentName` - Possible Values: LIKE, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH, ENDS\_WITH

    -   ### getOperatorGroupTypeName

        public int getOperatorGroupTypeName()

        Returns the operator value for Group Type Name Search.

        Returns:

        Value of Group Type Name Search Operator

    -   ### setOperatorGroupTypeName

        public void setOperatorGroupTypeName(int operatorGroupTypeName)

        Sets the Operator for particular type of search on the Group Type Name Field.

        Parameters:

        `operatorGroupTypeName` - Possible values: LIKE, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH, ENDS\_WITH

    -   ### getOperatorCreator

        public int getOperatorCreator()

        Returns the operator value for Group Creator Search.

        Returns:

        Value of Group Creator Search Operator

    -   ### setOperatorCreator

        public void setOperatorCreator(int operatorCreator)

        Sets the Operator for particular type of search on the Group Creator Field.

        Parameters:

        `operatorCreator` - Possible values: LIKE, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH, ENDS\_WITH

    -   ### getOperatorCreated

        public int getOperatorCreated()

        Returns the operator value for Group Created Date Search.

        Returns:

        Value of Group Created Date Search Operator

    -   ### setOperatorCreated

        public void setOperatorCreated(int operatorCreated)

        Sets the Operator for particular type of search on the Group Created Date Field.

        Parameters:

        `operatorCreated` - Possible values: LIKE, GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUALS, LESS\_THAN\_OR\_EQUALS, DOES\_NOT\_EQUAL

    -   ### getOperatorLastModified

        public int getOperatorLastModified()

        Returns the operator value for Group Last modified date Search.

        Returns:

        Value of Group last modified date Search Operator

    -   ### setOperatorLastModified

        public void setOperatorLastModified(int operatorLastModified)

        Sets the Operator for particular type of search on the Group Last modified date Field.

        Parameters:

        `operatorLastModified` - Possible values: LIKE, GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUALS, LESS\_THAN\_OR\_EQUALS, DOES\_NOT\_EQUAL

    -   ### getOperatorSecurityMapId

        public int getOperatorSecurityMapId()

        Returns the operator value for Group Security Type Search.

        Returns:

        Value of Group Security Type Search Operator

    -   ### setOperatorSecurityMapId

        public void setOperatorSecurityMapId(int operatorSecurityMapId)

        Sets the Operator for particular type of search on the Group Security Type Field.

        Parameters:

        `operatorSecurityMapId` - Possible values: LIKE, DOES\_NOT\_EQUAL, CONTAINS, STARTS\_WITH, ENDS\_WITH