---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessRoleMap.html
original_path: api/com/appiancorp/suiteapi/process/ProcessRoleMap.html
version: "25.3"
title: "Class ProcessRoleMap"
page_id: "api/com/appiancorp/suiteapi/process/ProcessRoleMap"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ProcessRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

public class ProcessRoleMap extends [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Defines the roles of users and groups for a process object. The possible roles are Administrator, Editor, Viewer, Manager, Initiator, Non Member.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessRoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ADMIN_OWNER](#ADMIN_OWNER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[ALL_ROLES](#ALL_ROLES)`

    `static final int`

    `[COLUMN_ADMIN_OWNER](#COLUMN_ADMIN_OWNER)`

    `static final int`

    `[COLUMN_EDITOR](#COLUMN_EDITOR)`

    `static final int`

    `[COLUMN_EXPLICIT_NONMEMBER](#COLUMN_EXPLICIT_NONMEMBER)`

    `static final int`

    `[COLUMN_INITIATOR](#COLUMN_INITIATOR)`

    `static final int`

    `[COLUMN_MANAGER](#COLUMN_MANAGER)`

    `static final int`

    `[COLUMN_VIEWER](#COLUMN_VIEWER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EDITOR](#EDITOR)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXPLICIT_NONMEMBER](#EXPLICIT_NONMEMBER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[INITIATOR](#INITIATOR)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MANAGER](#MANAGER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[VIEWER](#VIEWER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP](../common/RoleMap.html#TYPE_GROUP), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER](../common/RoleMap.html#TYPE_USER), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessRoleMap](#%3Cinit%3E\(\))()`

    `[ProcessRoleMap](#%3Cinit%3E\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdminOwnerGroups](#addAdminOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds administrative permission for the groups

    `void`

    `[addAdminOwners](#addAdminOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds administrative permission for the users

    `void`

    `[addAnalystGroups](#addAnalystGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[addAnalysts](#addAnalysts\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[addEditorGroups](#addEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds editor permission to the groups

    `void`

    `[addEditors](#addEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds editor permission to the users

    `void`

    `[addExplicitNonViewerGroups](#addExplicitNonViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds explicitly denied permission to the groups

    `void`

    `[addExplicitNonViewers](#addExplicitNonViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds explicitly denied permission to the users

    `void`

    `[addInitiatorGroups](#addInitiatorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds analyst permission to the groups

    `void`

    `[addInitiators](#addInitiators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds analyst permission to the users

    `void`

    `[addManagerGroups](#addManagerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds power user permissions to the groups

    `void`

    `[addManagers](#addManagers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds power user permissions to the users

    `void`

    `[addPowerUserGroups](#addPowerUserGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[addPowerUsers](#addPowerUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[addViewerGroups](#addViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Adds viewer permission to the groups

    `void`

    `[addViewers](#addViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Adds viewer permission to the users

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdminOwnerGroups](#getAdminOwnerGroups\(\))()`

    Retrieves the groups who have administrative permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdminOwners](#getAdminOwners\(\))()`

    Retrieves the users who have administrative permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAnalystGroups](#getAnalystGroups\(\))()`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAnalysts](#getAnalysts\(\))()`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditorGroups](#getEditorGroups\(\))()`

    Retrieves the groups who have editor permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEditors](#getEditors\(\))()`

    Retrieves the users who have editor permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getExplicitNonViewerGroups](#getExplicitNonViewerGroups\(\))()`

    Retrieves the groups who have been explicitly denied permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getExplicitNonViewers](#getExplicitNonViewers\(\))()`

    Retrieves the users who have been explicitly denied permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInitiatorGroups](#getInitiatorGroups\(\))()`

    Retrieves the groups who have analyst permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getInitiators](#getInitiators\(\))()`

    Retrieves the users who have analyst permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getManagerGroups](#getManagerGroups\(\))()`

    Retrieves the groups who have power user permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getManagers](#getManagers\(\))()`

    Retrieves the users who have power user permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPowerUserGroups](#getPowerUserGroups\(\))()`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getPowerUsers](#getPowerUsers\(\))()`

    Deprecated. 

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRoleForColumn](#getRoleForColumn\(int\))(int n)`

    Returns the role type (string) for a role integer id

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewerGroups](#getViewerGroups\(\))()`

    Retrieves the groups who have viewer permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getViewers](#getViewers\(\))()`

    Retrieves the users who have viewer permissions

    `void`

    `[removeAdminOwnerGroups](#removeAdminOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Removes the administrative permission of the groups

    `void`

    `[removeAdminOwners](#removeAdminOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Removes the administrative permission of the users

    `void`

    `[removeAnalystGroups](#removeAnalystGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[removeAnalysts](#removeAnalysts\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[removeEditorGroups](#removeEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Removes editor permission of the groups

    `void`

    `[removeEditors](#removeEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Removes editor permission of the users

    `void`

    `[removeExplicitNonViewerGroups](#removeExplicitNonViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes explicitly denied permissions from the groups

    `void`

    `[removeExplicitNonViewers](#removeExplicitNonViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes explicitly denied permissions from the users

    `void`

    `[removeInitiatorGroups](#removeInitiatorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes analyst permissions from the groups

    `void`

    `[removeInitiators](#removeInitiators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes analyst permissions from the users

    `void`

    `[removeManagerGroups](#removeManagerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes power user permissions from the groups

    `void`

    `[removeManagers](#removeManagers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes power user permissions from the users

    `void`

    `[removePowerUserGroups](#removePowerUserGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[removePowerUsers](#removePowerUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[removeViewerGroups](#removeViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes the viewer permission of the groups

    `void`

    `[removeViewers](#removeViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes the viewer permission of the users

    `void`

    `[setAdminOwnerGroups](#setAdminOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have administrative permissions

    `void`

    `[setAdminOwners](#setAdminOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have administrative permissions

    `void`

    `[setAnalystGroups](#setAnalystGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[setAnalysts](#setAnalysts\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[setEditorGroups](#setEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have editor permissions

    `void`

    `[setEditors](#setEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have editor permissions

    `void`

    `[setExplicitNonViewerGroups](#setExplicitNonViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have been explicitly denied permissions

    `void`

    `[setExplicitNonViewers](#setExplicitNonViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have been explicitly denied permissions

    `void`

    `[setInitiatorGroups](#setInitiatorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have analyst permissions

    `void`

    `[setInitiators](#setInitiators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have analyst permissions

    `void`

    `[setManagerGroups](#setManagerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have power user permissions

    `void`

    `[setManagers](#setManagers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have power user permissions

    `void`

    `[setPowerUserGroups](#setPowerUserGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated. 

    `void`

    `[setPowerUsers](#setPowerUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deprecated. 

    `void`

    `[setViewerGroups](#setViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have viewer permissions

    `void`

    `[setViewers](#setViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have viewer permissions

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](../common/RoleMap.html#clear\(\)), [containsActors](../common/RoleMap.html#containsActors\(\)), [containsKey](../common/RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](../common/RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](../common/RoleMap.html#entrySet\(\)), [equals](../common/RoleMap.html#equals\(java.lang.Object\)), [get](../common/RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](../common/RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](../common/RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](../common/RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](../common/RoleMap.html#getAllUsernames\(\)), [getRole](../common/RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](../common/RoleMap.html#getRoleNames\(\)), [getRoles](../common/RoleMap.html#getRoles\(\)), [getSecurity](../common/RoleMap.html#getSecurity\(\)), [hashCode](../common/RoleMap.html#hashCode\(\)), [init](../common/RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](../common/RoleMap.html#isEmpty\(\)), [keySet](../common/RoleMap.html#keySet\(\)), [mergeWith](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](../common/RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](../common/RoleMap.html#putAll\(java.util.Map\)), [remove](../common/RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](../common/RoleMap.html#removeAllRoles\(\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](../common/RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](../common/RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](../common/RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](../common/RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](../common/RoleMap.html#setSecurity\(java.lang.Integer\)), [size](../common/RoleMap.html#size\(\)), [toString](../common/RoleMap.html#toString\(\)), [toXML](../common/RoleMap.html#toXML\(\)), [toXML](../common/RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](../common/RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### ADMIN\_OWNER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ADMIN\_OWNER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.ADMIN_OWNER)

    -   ### EDITOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EDITOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.EDITOR)

    -   ### VIEWER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") VIEWER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.VIEWER)

    -   ### INITIATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") INITIATOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.INITIATOR)

    -   ### MANAGER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MANAGER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.MANAGER)

    -   ### EXPLICIT\_NONMEMBER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXPLICIT\_NONMEMBER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.EXPLICIT_NONMEMBER)

    -   ### ALL\_ROLES

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ALL\_ROLES

    -   ### COLUMN\_ADMIN\_OWNER

        public static final int COLUMN\_ADMIN\_OWNER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_ADMIN_OWNER)

    -   ### COLUMN\_EDITOR

        public static final int COLUMN\_EDITOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_EDITOR)

    -   ### COLUMN\_MANAGER

        public static final int COLUMN\_MANAGER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_MANAGER)

    -   ### COLUMN\_VIEWER

        public static final int COLUMN\_VIEWER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_VIEWER)

    -   ### COLUMN\_INITIATOR

        public static final int COLUMN\_INITIATOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_INITIATOR)

    -   ### COLUMN\_EXPLICIT\_NONMEMBER

        public static final int COLUMN\_EXPLICIT\_NONMEMBER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessRoleMap.COLUMN_EXPLICIT_NONMEMBER)

-   ## Constructor Details

    -   ### ProcessRoleMap

        public ProcessRoleMap()

    -   ### ProcessRoleMap

        public ProcessRoleMap([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap)

-   ## Method Details

    -   ### getRoleForColumn

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRoleForColumn(int n)

        Returns the role type (string) for a role integer id

        Parameters:

        `n` - integer id of the role

        Returns:

        role type

    -   ### getAdminOwners

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdminOwners()

        Retrieves the users who have administrative permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getAdminOwnerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdminOwnerGroups()

        Retrieves the groups who have administrative permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setAdminOwners

        public void setAdminOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have administrative permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setAdminOwnerGroups

        public void setAdminOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have administrative permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addAdminOwners

        public void addAdminOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds administrative permission for the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addAdminOwnerGroups

        public void addAdminOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds administrative permission for the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeAdminOwners

        public void removeAdminOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Removes the administrative permission of the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeAdminOwnerGroups

        public void removeAdminOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Removes the administrative permission of the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getEditors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEditors()

        Retrieves the users who have editor permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getEditorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditorGroups()

        Retrieves the groups who have editor permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setEditors

        public void setEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have editor permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setEditorGroups

        public void setEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have editor permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addEditors

        public void addEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds editor permission to the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addEditorGroups

        public void addEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds editor permission to the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeEditors

        public void removeEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Removes editor permission of the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeEditorGroups

        public void removeEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Removes editor permission of the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getViewers()

        Retrieves the users who have viewer permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewerGroups()

        Retrieves the groups who have viewer permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setViewers

        public void setViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have viewer permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setViewerGroups

        public void setViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have viewer permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addViewers

        public void addViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds viewer permission to the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addViewerGroups

        public void addViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds viewer permission to the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeViewers

        public void removeViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes the viewer permission of the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeViewerGroups

        public void removeViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes the viewer permission of the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getAnalysts

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAnalysts()

        Deprecated.

    -   ### getInitiators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getInitiators()

        Retrieves the users who have analyst permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getAnalystGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAnalystGroups()

        Deprecated.

    -   ### getInitiatorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInitiatorGroups()

        Retrieves the groups who have analyst permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setAnalysts

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAnalysts([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### setInitiators

        public void setInitiators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have analyst permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setAnalystGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAnalystGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### setInitiatorGroups

        public void setInitiatorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have analyst permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addAnalysts

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addAnalysts([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### addInitiators

        public void addInitiators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds analyst permission to the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addAnalystGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addAnalystGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### addInitiatorGroups

        public void addInitiatorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds analyst permission to the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeAnalysts

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void removeAnalysts([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### removeInitiators

        public void removeInitiators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes analyst permissions from the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeAnalystGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void removeAnalystGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### removeInitiatorGroups

        public void removeInitiatorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes analyst permissions from the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getPowerUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getPowerUsers()

        Deprecated.

    -   ### getManagers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getManagers()

        Retrieves the users who have power user permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getPowerUserGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPowerUserGroups()

        Deprecated.

    -   ### getManagerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getManagerGroups()

        Retrieves the groups who have power user permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setPowerUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setPowerUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### setManagers

        public void setManagers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have power user permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setPowerUserGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setPowerUserGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### setManagerGroups

        public void setManagerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have power user permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addPowerUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addPowerUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### addManagers

        public void addManagers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds power user permissions to the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addPowerUserGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void addPowerUserGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### addManagerGroups

        public void addManagerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds power user permissions to the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removePowerUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void removePowerUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deprecated.

    -   ### removeManagers

        public void removeManagers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes power user permissions from the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removePowerUserGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void removePowerUserGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

    -   ### removeManagerGroups

        public void removeManagerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes power user permissions from the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getExplicitNonViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getExplicitNonViewers()

        Retrieves the users who have been explicitly denied permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getExplicitNonViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getExplicitNonViewerGroups()

        Retrieves the groups who have been explicitly denied permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setExplicitNonViewers

        public void setExplicitNonViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have been explicitly denied permissions

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### setExplicitNonViewerGroups

        public void setExplicitNonViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have been explicitly denied permissions

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addExplicitNonViewers

        public void addExplicitNonViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Adds explicitly denied permission to the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addExplicitNonViewerGroups

        public void addExplicitNonViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Adds explicitly denied permission to the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeExplicitNonViewers

        public void removeExplicitNonViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes explicitly denied permissions from the users

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeExplicitNonViewerGroups

        public void removeExplicitNonViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes explicitly denied permissions from the groups

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted