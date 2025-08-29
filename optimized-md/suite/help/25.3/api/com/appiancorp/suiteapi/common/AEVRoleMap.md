---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/AEVRoleMap.html
original_path: api/com/appiancorp/suiteapi/common/AEVRoleMap.html
version: "25.3"
title: "Class AEVRoleMap"
page_id: "api/com/appiancorp/suiteapi/common/AEVRoleMap"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class AEVRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

[com.appiancorp.suiteapi.common.PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.AEVRoleMap

All Implemented Interfaces:

`[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

Direct Known Subclasses:

`[PortalRoleMap](../portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")`

* * *

public class AEVRoleMap extends [PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

This class can be used as base class for any object acting as RoleMap where `User` and `Group` can be added to view or edit a particular object.

See Also:

-   [`PortalRoleMap`](../portal/PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")
-   [`User`](../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
-   [`Group`](../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.AEVRoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EDITOR](#EDITOR)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[VIEWER](#VIEWER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[ADMINISTRATOR](PublicRoleMap.html#ADMINISTRATOR), [TYPE_GROUP](PublicRoleMap.html#TYPE_GROUP), [TYPE_USER](PublicRoleMap.html#TYPE_USER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP_UUIDS](RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER_UUIDS](RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AEVRoleMap](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addEditorGroups](#addEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Adds the `Group`s identified by given ID's as editors to existing array of Group Editors.

    `void`

    `[addEditors](#addEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Adds the `User`s identified by given usernames as editors to existing array of Editors.

    `void`

    `[addViewerGroups](#addViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Adds the `Group`s identified by given ID's as viewers to existing array of Group Viewers.

    `void`

    `[addViewers](#addViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Adds the `User`s identified by given usernames as viewers to existing array of Viewers.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditorGroups](#getEditorGroups\(\))()`

    Returns the ID's of `Group`s whose role is Editor of object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEditors](#getEditors\(\))()`

    Returns the usernames of `User`s whose role is Editor of object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewerGroups](#getViewerGroups\(\))()`

    Returns the ID's of `Group`s whose role is Viewer of object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getViewers](#getViewers\(\))()`

    Returns the usernames of `User`s whose role is Viewer of object.

    `void`

    `[removeEditorGroups](#removeEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Removes the `Group`s identified by given ID's as editors.

    `void`

    `[removeEditors](#removeEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Removes the `User`s identified by given usernames as editors.

    `void`

    `[removeViewerGroups](#removeViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Removes the `Group`s identified by given ID's as viewers.

    `void`

    `[removeViewers](#removeViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Removes the `User`s identified by given usernames as viewers.

    `void`

    `[setEditorGroups](#setEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Sets the `Group`s identified by given ID's as editors.

    `void`

    `[setEditors](#setEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Sets the `User`s identified by given usernames as editors.

    `void`

    `[setViewerGroups](#setViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Sets the `Group`s identified by given ID's as viewers.

    `void`

    `[setViewers](#setViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Sets the `User`s identified by given usernames as viewers.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addAdministratorGroups](PublicRoleMap.html#addAdministratorGroups\(java.lang.Long%5B%5D\)), [addAdministrators](PublicRoleMap.html#addAdministrators\(java.lang.String%5B%5D\)), [getAdministratorGroups](PublicRoleMap.html#getAdministratorGroups\(\)), [getAdministrators](PublicRoleMap.html#getAdministrators\(\)), [removeAdministratorGroups](PublicRoleMap.html#removeAdministratorGroups\(java.lang.Long%5B%5D\)), [removeAdministrators](PublicRoleMap.html#removeAdministrators\(java.lang.String%5B%5D\)), [setAdministratorGroups](PublicRoleMap.html#setAdministratorGroups\(java.lang.Long%5B%5D\)), [setAdministrators](PublicRoleMap.html#setAdministrators\(java.lang.String%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](RoleMap.html#clear\(\)), [containsActors](RoleMap.html#containsActors\(\)), [containsKey](RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](RoleMap.html#entrySet\(\)), [equals](RoleMap.html#equals\(java.lang.Object\)), [get](RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](RoleMap.html#getAllUsernames\(\)), [getRole](RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](RoleMap.html#getRoleNames\(\)), [getRoles](RoleMap.html#getRoles\(\)), [getSecurity](RoleMap.html#getSecurity\(\)), [hashCode](RoleMap.html#hashCode\(\)), [init](RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](RoleMap.html#isEmpty\(\)), [keySet](RoleMap.html#keySet\(\)), [mergeWith](RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](RoleMap.html#putAll\(java.util.Map\)), [remove](RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](RoleMap.html#removeAllRoles\(\)), [setActorsInRole](RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](RoleMap.html#setSecurity\(java.lang.Integer\)), [size](RoleMap.html#size\(\)), [toString](RoleMap.html#toString\(\)), [toXML](RoleMap.html#toXML\(\)), [toXML](RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### EDITOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EDITOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.AEVRoleMap.EDITOR)

    -   ### VIEWER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") VIEWER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.AEVRoleMap.VIEWER)

-   ## Constructor Details

    -   ### AEVRoleMap

        public AEVRoleMap()

-   ## Method Details

    -   ### getEditors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEditors()

        Returns the usernames of `User`s whose role is Editor of object.

        Returns:

        string array of usernames

        See Also:

        -   [`setEditors(String[])`](#setEditors\(java.lang.String%5B%5D\))

    -   ### getEditorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditorGroups()

        Returns the ID's of `Group`s whose role is Editor of object.

        Returns:

        Long array of group ID's

        See Also:

        -   [`setEditorGroups(Long[])`](#setEditorGroups\(java.lang.Long%5B%5D\))

    -   ### getViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getViewers()

        Returns the usernames of `User`s whose role is Viewer of object.

        Returns:

        string array of usernames

        See Also:

        -   [`setViewers(String[])`](#setViewers\(java.lang.String%5B%5D\))

    -   ### getViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewerGroups()

        Returns the ID's of `Group`s whose role is Viewer of object.

        Returns:

        Long array of group ID's

        See Also:

        -   [`setViewerGroups(Long[])`](#setViewerGroups\(java.lang.Long%5B%5D\))

    -   ### setEditors

        public void setEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Sets the `User`s identified by given usernames as editors.

        Parameters:

        `id_` - array of usernames to set as editors

        See Also:

        -   [`getEditors()`](#getEditors\(\))

    -   ### setEditorGroups

        public void setEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Sets the `Group`s identified by given ID's as editors.

        Parameters:

        `id_` - array of `Group` ID's to set as editors

        See Also:

        -   [`getEditorGroups()`](#getEditorGroups\(\))

    -   ### setViewers

        public void setViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Sets the `User`s identified by given usernames as viewers.

        Parameters:

        `id_` - array of usernames to set as viewers

        See Also:

        -   [`getViewers()`](#getViewers\(\))

    -   ### setViewerGroups

        public void setViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Sets the `Group`s identified by given ID's as viewers.

        Parameters:

        `id_` - array of `Group` ID's to set as viewers

        See Also:

        -   [`getViewerGroups()`](#getViewerGroups\(\))

    -   ### addEditors

        public void addEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Adds the `User`s identified by given usernames as editors to existing array of Editors.

        Parameters:

        `id_` - array of usernames to add as editors

    -   ### addEditorGroups

        public void addEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Adds the `Group`s identified by given ID's as editors to existing array of Group Editors.

        Parameters:

        `id_` - array of ID's to add as editors

    -   ### addViewers

        public void addViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Adds the `User`s identified by given usernames as viewers to existing array of Viewers.

        Parameters:

        `id_` - array of usernames to add as viewers

    -   ### addViewerGroups

        public void addViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Adds the `Group`s identified by given ID's as viewers to existing array of Group Viewers.

        Parameters:

        `id_` - array of ID's to add as viewers

    -   ### removeEditors

        public void removeEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Removes the `User`s identified by given usernames as editors.

        Parameters:

        `id_` - array of usernames to remove as editors

    -   ### removeEditorGroups

        public void removeEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Removes the `Group`s identified by given ID's as editors.

        Parameters:

        `id_` - array of ID's to remove as editors

    -   ### removeViewers

        public void removeViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Removes the `User`s identified by given usernames as viewers.

        Parameters:

        `id_` - array of usernames to remove as viewers

    -   ### removeViewerGroups

        public void removeViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Removes the `Group`s identified by given ID's as viewers.

        Parameters:

        `id_` - array of ID's to remove as viewers