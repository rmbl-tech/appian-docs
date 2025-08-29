---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupSummary.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupSummary.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class GroupSummary

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.personalization.GroupSummary

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class GroupSummary extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")

Title: GroupSummary

Description: Holds a user's Group Summary data

Copyright: Copyright (c) 2002

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.GroupSummary)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_NAME](#SORT_BY_GROUP_NAME)`

    Constant indicating results should be sorted by the Group Name property.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_SECURITY_TYPE_NAME](#SORT_BY_GROUP_SECURITY_TYPE_NAME)`

    Constant indicating results should be sorted by the Group Security Type Name property.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Constant indicating results should be sorted by the ID property.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_USER_STATUS](#SORT_BY_USER_STATUS)`

    Constant indicating results should be sorted by the User Status property.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[USER_STATUS_ADMIN](#USER_STATUS_ADMIN)`

    Constant indicating that the user is an admin of this group.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[USER_STATUS_MEMBER](#USER_STATUS_MEMBER)`

    Constant indicating that the user is a member of this group.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupSummary](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupDescription](#getGroupDescription\(\))()`

    Returns the group description.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupName](#getGroupName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getGroupSecurityTypeName](#getGroupSecurityTypeName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfAdministrators](#getNumberOfAdministrators\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfMembers](#getNumberOfMembers\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfViewers](#getNumberOfViewers\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUserStatus](#getUserStatus\(\))()`

    Gets the logged-in user's status relative to this group.

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setGroupDescription](#setGroupDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupDescription_)`

    See [`getGroupDescription()`](#getGroupDescription\(\)).

    `void`

    `[setGroupName](#setGroupName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") gn_)`

    `void`

    `[setGroupSecurityTypeName](#setGroupSecurityTypeName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") gstnm_)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_)`

    Sets this object's local identifier.

    `void`

    `[setNumberOfAdministrators](#setNumberOfAdministrators\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") tota_)`

    `void`

    `[setNumberOfMembers](#setNumberOfMembers\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") totm_)`

    `void`

    `[setNumberOfViewers](#setNumberOfViewers\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") totv_)`

    `void`

    `[setUserStatus](#setUserStatus\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] status_)`

    Sets the logged-in user's status relative to this group.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Constant indicating results should be sorted by the ID property.

    -   ### SORT\_BY\_GROUP\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_NAME

        Constant indicating results should be sorted by the Group Name property.

    -   ### SORT\_BY\_GROUP\_SECURITY\_TYPE\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_SECURITY\_TYPE\_NAME

        Constant indicating results should be sorted by the Group Security Type Name property.

    -   ### SORT\_BY\_USER\_STATUS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_USER\_STATUS

        Constant indicating results should be sorted by the User Status property.

    -   ### USER\_STATUS\_MEMBER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") USER\_STATUS\_MEMBER

        Constant indicating that the user is a member of this group. Used with getUserStatus and setUserStatus.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupSummary.USER_STATUS_MEMBER)

    -   ### USER\_STATUS\_ADMIN

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") USER\_STATUS\_ADMIN

        Constant indicating that the user is an admin of this group. Used with getUserStatus and setUserStatus.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.GroupSummary.USER_STATUS_ADMIN)

-   ## Constructor Details

    -   ### GroupSummary

        public GroupSummary()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Description copied from interface: `[LocalId](../common/LocalId.html#getId\(\))`

        Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Object's Id

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_)

        Description copied from interface: `[LocalId](../common/LocalId.html#setId\(java.lang.Long\))`

        Sets this object's local identifier.

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `p_` - Id to set

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### getFavorite

        public boolean getFavorite()

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)

    -   ### setGroupName

        public void setGroupName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") gn\_)

    -   ### getGroupName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupName()

    -   ### setGroupSecurityTypeName

        public void setGroupSecurityTypeName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") gstnm\_)

    -   ### getGroupSecurityTypeName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupSecurityTypeName()

    -   ### setNumberOfMembers

        public void setNumberOfMembers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") totm\_)

    -   ### getNumberOfMembers

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfMembers()

    -   ### setNumberOfAdministrators

        public void setNumberOfAdministrators([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") tota\_)

    -   ### getNumberOfAdministrators

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfAdministrators()

    -   ### setNumberOfViewers

        public void setNumberOfViewers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") totv\_)

    -   ### getNumberOfViewers

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfViewers()

    -   ### setUserStatus

        public void setUserStatus([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] status\_)

        Sets the logged-in user's status relative to this group.

        Parameters:

        `status_` - an array of the USER\_STATUS\_XXX constants, indicating whether the user is a member or admin of this group (or both).

    -   ### getUserStatus

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUserStatus()

        Gets the logged-in user's status relative to this group.

        Returns:

        an array of the USER\_STATUS\_XXX constants, indicating whether the user is a member or admin of this group (or both).

    -   ### getGroupDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getGroupDescription()

        Returns the group description.

    -   ### setGroupDescription

        public void setGroupDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") groupDescription\_)

        See [`getGroupDescription()`](#getGroupDescription\(\)).