---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/Community.html
original_path: api/com/appiancorp/suiteapi/collaboration/Community.html
version: "25.3"
title: "Class Community"
page_id: "api/com/appiancorp/suiteapi/collaboration/Community"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class Community

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.Community

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Community extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

Use the class [`Community`](../knowledge/Community.html "class in com.appiancorp.suiteapi.knowledge") instead.

This class represents a community in the collaboration application.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.Community)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ACCESS_LEVEL_ADMINISTRATIVE](#ACCESS_LEVEL_ADMINISTRATIVE)`

    Deprecated.

    Access level of administrator

    `static final int`

    `[ACCESS_LEVEL_NO_ACCESS](#ACCESS_LEVEL_NO_ACCESS)`

    Deprecated.

    Access level of 'no access'

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMINISTRATORS](#SORT_BY_ADMINISTRATORS)`

    Deprecated.

    Sort by the Administrators property (array of Administrator user names)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

    Sort by the Date Created property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

    Sort by the Description property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    Sort by the ID property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_IS_ACTIVE](#SORT_BY_IS_ACTIVE)`

    Deprecated.

    Sort by the Is Active property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

    Sort by the Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOCUMENTS](#SORT_BY_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort by the Number of Documents property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_ID](#SORT_BY_PARENT_ID)`

    Deprecated.

    Sort by the Parent ID property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_NAME](#SORT_BY_PARENT_NAME)`

    Deprecated.

    Sort by the Parent Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PORTAL_ID](#SORT_BY_PORTAL_ID)`

    Deprecated.

    Sort by the Portal ID property

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_DESCRIPTION](#SORT_COLUMN_DESCRIPTION)`

    Deprecated.

    Sort communities by description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_LAST_MODIFIED_DATE](#SORT_COLUMN_LAST_MODIFIED_DATE)`

    Deprecated.

    Sort communities by the last date of modification of any of the knowledge centers, folders and documents contained in the communities.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NAME](#SORT_COLUMN_NAME)`

    Deprecated.

    Sort communities by name

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NUMBER_OF_DOCUMENTS](#SORT_COLUMN_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort communities by the number of documents they (and their subcommunities) contain

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_ORDER_ASCENDING](#SORT_ORDER_ASCENDING)`

    Deprecated.

    Sort communities in ascending order

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_ORDER_DESCENDING](#SORT_ORDER_DESCENDING)`

    Deprecated.

    Sort communities in descending order

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_PENDING](#USER_STATUS_PENDING)`

    Deprecated.

    User status of pending (The user is pending subscription to at least one knowledge center within the community and its subcommunities, and unsubscribed to all other knowledge centers within the community and its subcommunities)

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_SUBSCRIBED](#USER_STATUS_SUBSCRIBED)`

    Deprecated.

    User status of subscribed (The user is subscribed to at least one knowledge center within the community and its subcommunities)

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_UNSUBSCRIBED](#USER_STATUS_UNSUBSCRIBED)`

    Deprecated.

    User status of unsubscribed (The user is unsubscribed to all child knowledge centers within the community and its subcommunities)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Community](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Deprecated.

    Returns a list of all the administrator groups for this community.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Deprecated.

    Returns a list of all the administrators for this community.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCommName](#getCommName\(\))()`

    Deprecated.

    Returns the name of the community

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Returns the date and time that this community was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    Provides a short description (if it exists) of this community

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns the unique ID of this community

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Returns the name of this community

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDocuments](#getNumberOfDocuments\(\))()`

    Deprecated.

    Returns the total number of documents in the sub-communities, knowledge centers, and folders of this community

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(\))()`

    Deprecated.

    Retrieves the unique ID of the parent community of this community, if such a parent exists.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentName](#getParentName\(\))()`

    Deprecated.

    Returns the name of the parent community

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPortalId](#getPortalId\(\))()`

    Deprecated.

    Not currently used.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserStatus](#getUserStatus\(\))()`

    Deprecated.

    Gets the user status of the current user for this Community.

    `boolean`

    `[isActive](#isActive\(\))()`

    Deprecated.

    Checks whether or not this community is active

    `void`

    `[setActive](#setActive\(boolean\))(boolean b)`

    Deprecated.

    Sets whether this community is active or not

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admins)`

    Deprecated.

    Overwrites and updates the list of administrator groupss for this community.

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] admins)`

    Deprecated.

    Overwrites and updates the list of administrators for this community.

    `void`

    `[setCommName](#setCommName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commName)`

    Deprecated.

    Sets the name of the community

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated)`

    Deprecated.

    Sets the date and time that this community was created.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc)`

    Deprecated.

    Sets the description of this community

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid)`

    Deprecated.

    Sets the unique ID of this community

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

    Sets the name of the community

    `void`

    `[setNumberOfDocuments](#setNumberOfDocuments\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)`

    Deprecated.

    Sets the total number of documents in the sub-communities, knowledge centers, and folders of this community

    `void`

    `[setParentId](#setParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Long)`

    Deprecated.

    Sets the unique ID of the parent community of this community, if such a parent exists.

    `void`

    `[setParentName](#setParentName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName)`

    Deprecated.

    Sets the name of the parent community

    `void`

    `[setPortalId](#setPortalId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portalId)`

    Deprecated.

    Not currently used.

    `void`

    `[setUserStatus](#setUserStatus\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus_)`

    Deprecated.

    Sets the user status of the current user for this community (NB This property is currently only set by a call to CommunityService.getRootCommunities() or CommunityService.getChildCommunities())

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### USER\_STATUS\_UNSUBSCRIBED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_UNSUBSCRIBED

        Deprecated.

        User status of unsubscribed (The user is unsubscribed to all child knowledge centers within the community and its subcommunities)

    -   ### USER\_STATUS\_SUBSCRIBED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_SUBSCRIBED

        Deprecated.

        User status of subscribed (The user is subscribed to at least one knowledge center within the community and its subcommunities)

    -   ### USER\_STATUS\_PENDING

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_PENDING

        Deprecated.

        User status of pending (The user is pending subscription to at least one knowledge center within the community and its subcommunities, and unsubscribed to all other knowledge centers within the community and its subcommunities)

    -   ### ACCESS\_LEVEL\_ADMINISTRATIVE

        public static final int ACCESS\_LEVEL\_ADMINISTRATIVE

        Deprecated.

        Access level of administrator

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.ACCESS_LEVEL_ADMINISTRATIVE)

    -   ### ACCESS\_LEVEL\_NO\_ACCESS

        public static final int ACCESS\_LEVEL\_NO\_ACCESS

        Deprecated.

        Access level of 'no access'

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.ACCESS_LEVEL_NO_ACCESS)

    -   ### SORT\_ORDER\_ASCENDING

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_ORDER\_ASCENDING

        Deprecated.

        Sort communities in ascending order

    -   ### SORT\_ORDER\_DESCENDING

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_ORDER\_DESCENDING

        Deprecated.

        Sort communities in descending order

    -   ### SORT\_COLUMN\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NAME

        Deprecated.

        Sort communities by name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.SORT_COLUMN_NAME)

    -   ### SORT\_COLUMN\_DESCRIPTION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_DESCRIPTION

        Deprecated.

        Sort communities by description

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.SORT_COLUMN_DESCRIPTION)

    -   ### SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        Deprecated.

        Sort communities by the last date of modification of any of the knowledge centers, folders and documents contained in the communities. The last date of modification of a `KnowledgeCenter` or a `Folder` is its creation date; the last date of modification of a `Document` is its upload date or the date of its last version

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.SORT_COLUMN_LAST_MODIFIED_DATE)

    -   ### SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort communities by the number of documents they (and their subcommunities) contain

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Community.SORT_COLUMN_NUMBER_OF_DOCUMENTS)

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        Sort by the ID property

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

        Sort by the Name property

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

        Sort by the Description property

    -   ### SORT\_BY\_ADMINISTRATORS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMINISTRATORS

        Deprecated.

        Sort by the Administrators property (array of Administrator user names)

    -   ### SORT\_BY\_PARENT\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_ID

        Deprecated.

        Sort by the Parent ID property

    -   ### SORT\_BY\_PORTAL\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PORTAL\_ID

        Deprecated.

        Sort by the Portal ID property

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

        Sort by the Date Created property

    -   ### SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort by the Number of Documents property

    -   ### SORT\_BY\_IS\_ACTIVE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_IS\_ACTIVE

        Deprecated.

        Sort by the Is Active property

    -   ### SORT\_BY\_PARENT\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_NAME

        Deprecated.

        Sort by the Parent Name property

-   ## Constructor Details

    -   ### Community

        public Community()

        Deprecated.

-   ## Method Details

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Deprecated.

        Returns a list of all the administrators for this community.

        Returns:

        a list of the unique IDs of the users who are administrators for this community.

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Deprecated.

        Returns a list of all the administrator groups for this community.

        Returns:

        a list of the unique IDs of the groups who are administrators for this community.

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Returns the date and time that this community was created.

        Returns:

        the date and time (combined as a Timestamp) that this community was created.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        Provides a short description (if it exists) of this community

        Returns:

        a description of this community

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns the unique ID of this community

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the unique ID of this community

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### isActive

        public boolean isActive()

        Deprecated.

        Checks whether or not this community is active

        Returns:

        `true` if the community is active; `false` otherwise.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Returns the name of this community

        Returns:

        the name of this community

    -   ### getNumberOfDocuments

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDocuments()

        Deprecated.

        Returns the total number of documents in the sub-communities, knowledge centers, and folders of this community

        Returns:

        the total number of documents stored in the community

    -   ### getParentId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId()

        Deprecated.

        Retrieves the unique ID of the parent community of this community, if such a parent exists.

        Returns:

        the unique ID of the parent community

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] admins)

        Deprecated.

        Overwrites and updates the list of administrators for this community.

        Parameters:

        `admins` - a list of unique IDs of those users who are administrators for this community

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admins)

        Deprecated.

        Overwrites and updates the list of administrator groupss for this community.

        Parameters:

        `admins` - a list of unique IDs of those groups who are administrators for this community

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated)

        Deprecated.

        Sets the date and time that this community was created.

        Parameters:

        `dtcreated` - the date and time (combined as a Timestamp) that this community was created.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc)

        Deprecated.

        Sets the description of this community

        Parameters:

        `desc` - the description of this community

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid)

        Deprecated.

        Sets the unique ID of this community

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `coid` - the unique ID of this community

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### setActive

        public void setActive(boolean b)

        Deprecated.

        Sets whether this community is active or not

        Parameters:

        `b` - `true` if the community is active; `false` otherwise.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Deprecated.

        Sets the name of the community

        Parameters:

        `name` - the name of the community

    -   ### setNumberOfDocuments

        public void setNumberOfDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num)

        Deprecated.

        Sets the total number of documents in the sub-communities, knowledge centers, and folders of this community

        Parameters:

        `num` - the total number of documents in the community

    -   ### setParentId

        public void setParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") Long)

        Deprecated.

        Sets the unique ID of the parent community of this community, if such a parent exists.

        Parameters:

        `Long` - the unique ID of the parent community

    -   ### getCommName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCommName()

        Deprecated.

        Returns the name of the community

        Returns:

        the name of the community

    -   ### getPortalId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPortalId()

        Deprecated.

        Not currently used.

    -   ### setCommName

        public void setCommName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commName)

        Deprecated.

        Sets the name of the community

        Parameters:

        `commName` - the name of the community

    -   ### setPortalId

        public void setPortalId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portalId)

        Deprecated.

        Not currently used.

    -   ### getParentName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentName()

        Deprecated.

        Returns the name of the parent community

        Returns:

        Returns the name of the parent community

    -   ### setParentName

        public void setParentName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentName)

        Deprecated.

        Sets the name of the parent community

        Parameters:

        `parentName` - The parent community name to set.

    -   ### getUserStatus

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserStatus()

        Deprecated.

        Gets the user status of the current user for this Community. (NB This property is currently only set by a call to CommunityService.getRootCommunities() or CommunityService.getChildCommunities())

        Returns:

        the user status of the current user for this community.

    -   ### setUserStatus

        public void setUserStatus([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus\_)

        Deprecated.

        Sets the user status of the current user for this community (NB This property is currently only set by a call to CommunityService.getRootCommunities() or CommunityService.getChildCommunities())

        Parameters:

        `userStatus_` - the user status of the current user for this community

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Deprecated.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`