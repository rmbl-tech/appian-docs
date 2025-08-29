---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/GroupType.html
original_path: api/com/appiancorp/suiteapi/personalization/GroupType.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Class GroupType

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.personalization.GroupTypeBase](GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization")

com.appiancorp.suiteapi.personalization.GroupType

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class GroupType extends [GroupTypeBase](GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")

This represents the common GroupType object. Name of group type must be unique. You must pass the correct attribute list with the correct name and type for each attribute with the GroupType when updating.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.personalization.GroupType)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ATTRIBUTES](#SORT_BY_ATTRIBUTES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATED](#SORT_BY_CREATED)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_TYPE_NAME](#SORT_BY_GROUP_TYPE_NAME)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_MODIFIED](#SORT_BY_LAST_MODIFIED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[GroupType](#%3Cinit%3E\(\))()`

    `[GroupType](#%3Cinit%3E\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername)`

    Instantiate a group type with the fields that must be populated to create the group type in the database.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAttributes](#getAttributes\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns this object's local identifier, `null` if the object was not identified locally using a `Long` Id.

    `int`

    `[getSpecial](#getSpecial\(\))()`

    Returns 1 if the Group Type name is `Constants.DEPARTMENTS_GROUP_TYPE_NAME`, 2 if the Group Type name is `Constants.TEAMS_GROUP_TYPE_NAME`, 4 if the Group Type name is `Constants.CUSTOM_GROUP_TYPE_NAME`, 8 if the Group Type name is `Constants.GROUP_TYPE_DATABASE_SCHEMA_VIEWER_NAME`, and 16 if the Group Type name is `Constants.GROUP_TYPE_DATABASE_SCHEMA_EDITOR_NAME`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Returns the UUID of this Group Type.

    `void`

    `[setAttributes](#setAttributes\(com.appiancorp.suiteapi.personalization.Attribute%5B%5D\))([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[] attributes)`

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)`

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p)`

    Sets this object's local identifier.

    `void`

    `[setSpecial](#setSpecial\(int\))(int special_)`

    See [`getSpecial()`](#getSpecial\(\)).

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Set the UUID of this Group Type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.personalization.[GroupTypeBase](GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization")

    `[getCreated](GroupTypeBase.html#getCreated\(\)), [getCreator](GroupTypeBase.html#getCreator\(\)), [getGroupTypeName](GroupTypeBase.html#getGroupTypeName\(\)), [getLastModified](GroupTypeBase.html#getLastModified\(\)), [setCreated](GroupTypeBase.html#setCreated\(java.sql.Timestamp\)), [setCreator](GroupTypeBase.html#setCreator\(java.lang.String\)), [setGroupTypeName](GroupTypeBase.html#setGroupTypeName\(java.lang.String\)), [setLastModified](GroupTypeBase.html#setLastModified\(java.sql.Timestamp\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_GROUP\_TYPE\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_TYPE\_NAME

    -   ### SORT\_BY\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATED

    -   ### SORT\_BY\_LAST\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_MODIFIED

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_ATTRIBUTES

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ATTRIBUTES

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

-   ## Constructor Details

    -   ### GroupType

        public GroupType()

    -   ### GroupType

        public GroupType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creatorUsername)

        Instantiate a group type with the fields that must be populated to create the group type in the database.

        Parameters:

        `name` - The group type name.

        `creatorUsername` - The username of the group type creator.

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

        Returns the UUID of this Group Type. This field is not populated unless:

        -   the group type is a system group type (such as Departments)
        -   the group type has previously been exported
        -   the group type was assigned a UUID when it was created
        -   the group type was assigned a UUID using the Import/Export API

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Set the UUID of this Group Type. This value is ignored, except when the Group Type is being created.

    -   ### getSpecial

        public int getSpecial()

        Returns 1 if the Group Type name is `Constants.DEPARTMENTS_GROUP_TYPE_NAME`, 2 if the Group Type name is `Constants.TEAMS_GROUP_TYPE_NAME`, 4 if the Group Type name is `Constants.CUSTOM_GROUP_TYPE_NAME`, 8 if the Group Type name is `Constants.GROUP_TYPE_DATABASE_SCHEMA_VIEWER_NAME`, and 16 if the Group Type name is `Constants.GROUP_TYPE_DATABASE_SCHEMA_EDITOR_NAME`

    -   ### setSpecial

        public void setSpecial(int special\_)

        See [`getSpecial()`](#getSpecial\(\)). This field cannot be updated in the database.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description)

    -   ### getAttributes

        public [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getAttributes()

    -   ### setAttributes

        public void setAttributes([Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] attributes)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](GroupTypeBase.html#toString\(\))` in class `[GroupTypeBase](GroupTypeBase.html "class in com.appiancorp.suiteapi.personalization")`