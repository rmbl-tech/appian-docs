---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/Group.html
original_path: api/com/appiancorp/suiteapi/personalization/Group.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class Group

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.Group

All Implemented Interfaces:

`com.appiancorp.personalization.ReadOnlyGroup`, `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@GroupDataType](GroupDataType.html "annotation interface in com.appiancorp.suiteapi.personalization") public class Group extends [GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), com.appiancorp.personalization.ReadOnlyGroup

This represents the Group object. Name of group must be unique. If the group is of a group type with attributes, you must pass the correct attribute list with the correct name and type for each attribute with the group. Note that when a group specifies a parent, it automatically becomes a member group of its parent.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.Group)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MEMBERPOLICY_AUTOMATIC](#MEMBERPOLICY_AUTOMATIC)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MEMBERPOLICY_CLOSED](#MEMBERPOLICY_CLOSED)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MEMBERPOLICY_EXCLUSIVE](#MEMBERPOLICY_EXCLUSIVE)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[NULL_PARENT_ID](#NULL_PARENT_ID)`

    This is the value returned by [`getParentId()`](#getParentId\(\)) when the group doesn't have a parent.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ATTRIBUTES](#SORT_BY_ATTRIBUTES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATED](#SORT_BY_CREATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_NAME](#SORT_BY_GROUP_NAME)`

    Sort constants for getting and searching for groups.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUPTYPE_ID](#SORT_BY_GROUPTYPE_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUPTYPE_NAME](#SORT_BY_GROUPTYPE_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MODIFIED](#SORT_BY_LAST_MODIFIED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MEMBER_POLICY_ID](#SORT_BY_MEMBER_POLICY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MEMBER_POLICY_NAME](#SORT_BY_MEMBER_POLICY_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_ID](#SORT_BY_PARENT_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_NAME](#SORT_BY_PARENT_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SECURITY_MAP_ID](#SORT_BY_SECURITY_MAP_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SECURITY_MAP_NAME](#SORT_BY_SECURITY_MAP_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VIEWING_POLICY_ID](#SORT_BY_VIEWING_POLICY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VIEWING_POLICY_NAME](#SORT_BY_VIEWING_POLICY_NAME)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[VIEWINGPOLICY_HIGH](#VIEWINGPOLICY_HIGH)`

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[VIEWINGPOLICY_LOW](#VIEWINGPOLICY_LOW)`

    ### Fields inherited from class com.appiancorp.suiteapi.personalization.[GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

    `[SECURITYMAP_PERSONAL](GroupBase.html#SECURITYMAP_PERSONAL), [SECURITYMAP_PUBLIC](GroupBase.html#SECURITYMAP_PUBLIC), [SECURITYMAP_TEAM](GroupBase.html#SECURITYMAP_TEAM)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Group](#%3Cinit%3E\(\))()`

    `[Group](#%3Cinit%3E\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Instantiate a group with the fields that must be populated to create the group in the database.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAttributes](#getAttributes\(\))()`

    `boolean`

    `[getDelegatedCreation](#getDelegatedCreation\(\))()`

    Decide whether delegated creation field be visible to the client

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    `boolean`

    `[getFavorite](#getFavorite\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroupTypeId](#getGroupTypeId\(\))()`

    Returns the id of this group's type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the id of this Group.

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIds](#getIds\(com.appiancorp.suiteapi.personalization.Group%5B%5D\))([Group](Group.html "class in com.appiancorp.suiteapi.personalization")[] groups)`

    Get the ids (as a Long array) from an array of Group objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getMemberPolicyId](#getMemberPolicyId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMemberPolicyName](#getMemberPolicyName\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getSecurityMapName](#getSecurityMapName\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Returns the UUID of this Group.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getViewingPolicyId](#getViewingPolicyId\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getViewingPolicyName](#getViewingPolicyName\(\))()`

    `int`

    `[hashCode](#hashCode\(\))()`

    `void`

    `[setAttributes](#setAttributes\(com.appiancorp.suiteapi.personalization.Attribute%5B%5D\))([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[] attributes)`

    `void`

    `[setDelegatedCreation](#setDelegatedCreation\(boolean\))(boolean delegatedCreation_)`

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    `void`

    `[setFavorite](#setFavorite\(boolean\))(boolean favorite_)`

    `void`

    `[setGroupTypeId](#setGroupTypeId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p)`

    Sets this object's local identifier.

    `void`

    `[setMemberPolicyId](#setMemberPolicyId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memberPolicyId)`

    Sets the memberPolicyId.

    `void`

    `[setMemberPolicyName](#setMemberPolicyName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") memberPolicyName)`

    The name corresponding to viewing policy id.

    `void`

    `[setParentId](#setParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId)`

    `void`

    `[setSecurityMapName](#setSecurityMapName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") securityMapName)`

    The name corresponding to security map id.

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Set the UUID of this Group.

    `void`

    `[setViewingPolicyId](#setViewingPolicyId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") viewingPolicyId)`

    Sets the viewingPolicyId.

    `void`

    `[setViewingPolicyName](#setViewingPolicyName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") viewingPolicyName)`

    The name corresponding to viewing policy id.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getCreated](GroupBase.html#getCreated\(\)), [getCreator](GroupBase.html#getCreator\(\)), [getGroupName](GroupBase.html#getGroupName\(\)), [getGroupTypeName](GroupBase.html#getGroupTypeName\(\)), [getLastModified](GroupBase.html#getLastModified\(\)), [getParentName](GroupBase.html#getParentName\(\)), [getSecurityMapId](GroupBase.html#getSecurityMapId\(\)), [setCreated](GroupBase.html#setCreated\(java.sql.Timestamp\)), [setCreator](GroupBase.html#setCreator\(java.lang.String\)), [setGroupName](GroupBase.html#setGroupName\(java.lang.String\)), [setGroupTypeName](GroupBase.html#setGroupTypeName\(java.lang.String\)), [setLastModified](GroupBase.html#setLastModified\(java.sql.Timestamp\)), [setParentName](GroupBase.html#setParentName\(java.lang.String\)), [setSecurityMapId](GroupBase.html#setSecurityMapId\(java.lang.Long\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_GROUP\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_NAME

        Sort constants for getting and searching for groups.

    -   ### SORT\_BY\_PARENT\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_NAME

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

    -   ### SORT\_BY\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATED

    -   ### SORT\_BY\_LAST\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MODIFIED

    -   ### SORT\_BY\_GROUPTYPE\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUPTYPE\_NAME

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

    -   ### SORT\_BY\_PARENT\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_ID

    -   ### SORT\_BY\_GROUPTYPE\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUPTYPE\_ID

    -   ### SORT\_BY\_SECURITY\_MAP\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SECURITY\_MAP\_ID

    -   ### SORT\_BY\_ATTRIBUTES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ATTRIBUTES

    -   ### SORT\_BY\_MEMBER\_POLICY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MEMBER\_POLICY\_ID

    -   ### SORT\_BY\_VIEWING\_POLICY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VIEWING\_POLICY\_ID

    -   ### SORT\_BY\_SECURITY\_MAP\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SECURITY\_MAP\_NAME

    -   ### SORT\_BY\_MEMBER\_POLICY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MEMBER\_POLICY\_NAME

    -   ### SORT\_BY\_VIEWING\_POLICY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VIEWING\_POLICY\_NAME

    -   ### MEMBERPOLICY\_AUTOMATIC

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MEMBERPOLICY\_AUTOMATIC

    -   ### MEMBERPOLICY\_EXCLUSIVE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MEMBERPOLICY\_EXCLUSIVE

    -   ### MEMBERPOLICY\_CLOSED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MEMBERPOLICY\_CLOSED

    -   ### VIEWINGPOLICY\_LOW

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") VIEWINGPOLICY\_LOW

    -   ### VIEWINGPOLICY\_HIGH

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") VIEWINGPOLICY\_HIGH

    -   ### NULL\_PARENT\_ID

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NULL\_PARENT\_ID

        This is the value returned by [`getParentId()`](#getParentId\(\)) when the group doesn't have a parent.

-   ## Constructor Details

    -   ### Group

        public Group()

    -   ### Group

        public Group([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Instantiate a group with the fields that must be populated to create the group in the database.

        Parameters:

        `groupTypeId` - The id of the group's type.

        `name` - The name of the group.

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the id of this Group.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Specified by:

        `getId` in interface `com.appiancorp.personalization.ReadOnlyGroup`

        Returns:

        Object's Id

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p)

        Description copied from interface: `[LocalId](../common/LocalId.html#setId\(java.lang.Long\))`

        Sets this object's local identifier.

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `p` - Id to set

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Returns the UUID of this Group. This field is not populated unless:

        -   the group is a system group (such as Portal Administrators)
        -   the group has previously been exported
        -   the group was assigned a UUID when it was created
        -   the group was assigned a UUID using the Import/Export API

        Specified by:

        `getUuid` in interface `com.appiancorp.personalization.ReadOnlyGroup`

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Set the UUID of this Group. This value is ignored, except when the Group is being created.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

    -   ### getParentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId()

    -   ### setParentId

        public void setParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentId)

    -   ### getGroupTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroupTypeId()

        Returns the id of this group's type.

    -   ### setGroupTypeId

        public void setGroupTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId)

    -   ### getAttributes

        public [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getAttributes()

    -   ### setAttributes

        public void setAttributes([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes)

    -   ### getDelegatedCreation

        public boolean getDelegatedCreation()

        Decide whether delegated creation field be visible to the client

    -   ### setDelegatedCreation

        public void setDelegatedCreation(boolean delegatedCreation\_)

    -   ### getMemberPolicyId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getMemberPolicyId()

    -   ### setMemberPolicyId

        public void setMemberPolicyId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") memberPolicyId)

        Sets the memberPolicyId. Supported types are MEMBERPOLICY\_AUTOMATIC, MEMBERPOLICY\_CLOSED.

        MEMBERPOLICY\_AUTOMATIC - Anyone can join if they can see the group

        MEMBERPOLICY\_CLOSED - Admins must select members of this group

        Parameters:

        `memberPolicyId` - The memberPolicyId to set.

    -   ### getViewingPolicyId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getViewingPolicyId()

    -   ### setViewingPolicyId

        public void setViewingPolicyId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") viewingPolicyId)

        Sets the viewingPolicyId. Supported types are [`VIEWINGPOLICY_HIGH`](#VIEWINGPOLICY_HIGH), [`VIEWINGPOLICY_LOW`](#VIEWINGPOLICY_LOW)

        VIEWINGPOLICY\_HIGH - Only Admins can see members of the group

        VIEWINGPOLICY\_LOW - Anyone who can see the group can view its members

        Parameters:

        `viewingPolicyId` - The viewingPolicyId to set

    -   ### getMemberPolicyName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMemberPolicyName()

        Returns:

        Returns the memberPolicyName.

    -   ### setMemberPolicyName

        public void setMemberPolicyName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") memberPolicyName)

        The name corresponding to viewing policy id.

        Parameters:

        `memberPolicyName` - The member policy name to set.

        See Also:

        -   [`setMemberPolicyId(java.lang.Long)`](#setMemberPolicyId\(java.lang.Long\))

    -   ### getSecurityMapName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getSecurityMapName()

        Returns:

        Returns the securityMapName.

    -   ### setSecurityMapName

        public void setSecurityMapName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") securityMapName)

        The name corresponding to security map id.

        Parameters:

        `securityMapName` - The securityMapName to set.

        See Also:

        -   [`GroupBase.setSecurityMapId(java.lang.Long)`](GroupBase.html#setSecurityMapId\(java.lang.Long\))

    -   ### getViewingPolicyName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getViewingPolicyName()

        Returns:

        Returns the viewingPolicyName.

    -   ### setViewingPolicyName

        public void setViewingPolicyName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") viewingPolicyName)

        The name corresponding to viewing policy id.

        Parameters:

        `viewingPolicyName` - The viewingPolicyName to set.

        See Also:

        -   [`setViewingPolicyId(java.lang.Long)`](#setViewingPolicyId\(java.lang.Long\))

    -   ### getFavorite

        public boolean getFavorite()

    -   ### setFavorite

        public void setFavorite(boolean favorite\_)

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](GroupBase.html#toString\(\))` in class `[GroupBase](GroupBase.html "class in com.appiancorp.suiteapi.personalization")`

    -   ### getIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIds([Group](Group.html "class in com.appiancorp.suiteapi.personalization")\[\] groups)

        Get the ids (as a Long array) from an array of Group objects.

        Parameters:

        `groups` - an array of Groups

        Returns:

        an array of the same size as the given array, containing the ids of the given Groups; if given array is null, returns null