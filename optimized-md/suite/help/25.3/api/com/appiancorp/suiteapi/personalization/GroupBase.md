---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupBase.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupBase.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class GroupBase

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.GroupBase

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Group](Group.html "class in com.appiancorp.suiteapi.personalization")`, `[GroupSearch](GroupSearch.html "class in com.appiancorp.suiteapi.personalization")`

* * *

public class GroupBase extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This represents the basic Group object.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.GroupBase)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[SECURITYMAP_PERSONAL](#SECURITYMAP_PERSONAL)`

    Specifies that the group is a personal group.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[SECURITYMAP_PUBLIC](#SECURITYMAP_PUBLIC)`

    Specifies that the group is a public group.

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[SECURITYMAP_TEAM](#SECURITYMAP_TEAM)`

    Specifies that the group is a team group.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupBase](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getCreated](#getCreated\(\))()`

    Gets the time the group was created

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Gets the creator

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupName](#getGroupName\(\))()`

    Get the group name

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupTypeName](#getGroupTypeName\(\))()`

    Gets the group type name

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLastModified](#getLastModified\(\))()`

    Retrieves the last time that the group was modified

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentName](#getParentName\(\))()`

    Gets the parent name

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSecurityMapId](#getSecurityMapId\(\))()`

    Gets the security map id

    `void`

    `[setCreated](#setCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") created_)`

    Sets the time the group was created

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Sets the creator

    `void`

    `[setGroupName](#setGroupName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName_)`

    Sets the group name

    `void`

    `[setGroupTypeName](#setGroupTypeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName_)`

    Sets the group type name

    `void`

    `[setLastModified](#setLastModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lastModified_)`

    Sets the last time the group was modified

    `void`

    `[setParentName](#setParentName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName_)`

    Sets the parent name

    `void`

    `[setSecurityMapId](#setSecurityMapId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") securityMapId_)`

    Sets the security map id

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SECURITYMAP\_PUBLIC

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") SECURITYMAP\_PUBLIC

        Specifies that the group is a public group. Public Groups have open membership and are viewable and searchable by any user

    -   ### SECURITYMAP\_PERSONAL

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") SECURITYMAP\_PERSONAL

        Specifies that the group is a personal group. Personal Groups are invite-only and are only viewable and searchable by the group administrators

    -   ### SECURITYMAP\_TEAM

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") SECURITYMAP\_TEAM

        Specifies that the group is a team group. Team Groups are invite-only and are only viewable and searchable by group members and administrators

-   ## Constructor Details

    -   ### GroupBase

        public GroupBase()

-   ## Method Details

    -   ### getGroupName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupName()

        Get the group name

        Returns:

        the group name

    -   ### setGroupName

        public void setGroupName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupName\_)

        Sets the group name

        Parameters:

        `groupName_` - the group name to set

        See Also:

        -   [`getGroupName()`](#getGroupName\(\))

    -   ### getParentName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentName()

        Gets the parent name

        Returns:

        the parent name

    -   ### setParentName

        public void setParentName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName\_)

        Sets the parent name

        Parameters:

        `parentName_` - the parent name to set

        See Also:

        -   [`getParentName()`](#getParentName\(\))

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Gets the creator

        Returns:

        the creator

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Sets the creator

        Parameters:

        `creator_` - the creator to set

        See Also:

        -   [`getCreator()`](#getCreator\(\))

    -   ### getCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getCreated()

        Gets the time the group was created

        Returns:

        the time the group was created

    -   ### setCreated

        public void setCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") created\_)

        Sets the time the group was created

        Parameters:

        `created_` - the time the group was created to set

        See Also:

        -   [`getCreated()`](#getCreated\(\))

    -   ### getLastModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLastModified()

        Retrieves the last time that the group was modified

        Returns:

        the last time that the group was modified.

    -   ### setLastModified

        public void setLastModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lastModified\_)

        Sets the last time the group was modified

        Parameters:

        `lastModified_` - the last time the group was modified

    -   ### getGroupTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupTypeName()

        Gets the group type name

        Returns:

        the group type name

    -   ### setGroupTypeName

        public void setGroupTypeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupTypeName\_)

        Sets the group type name

        Parameters:

        `groupTypeName_` - the group type name to set

        See Also:

        -   [`getGroupTypeName()`](#getGroupTypeName\(\))

    -   ### getSecurityMapId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSecurityMapId()

        Gets the security map id

        Returns:

        the security map id

    -   ### setSecurityMapId

        public void setSecurityMapId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") securityMapId\_)

        Sets the security map id

        Parameters:

        `securityMapId_` - the security map id to set

        See Also:

        -   [`getSecurityMapId()`](#getSecurityMapId\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`