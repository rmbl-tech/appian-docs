---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentRoleMap.html
original_path: api/com/appiancorp/suiteapi/content/ContentRoleMap.html
version: "25.3"
title: "Class ContentRoleMap"
page_id: "api/com/appiancorp/suiteapi/content/ContentRoleMap"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.content.ContentRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

public class ContentRoleMap extends [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

This class represents the access permissions for an element in the collaboration center.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.content.ContentRoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[ADMINISTRATOR](#ADMINISTRATOR)`

    Role with administrative access.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[ALL_ROLES](#ALL_ROLES)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AUTHOR](#AUTHOR)`

    Role with read/write access.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DENY_ADMINISTRATOR](#DENY_ADMINISTRATOR)`

    Explicitly deny administrative access.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DENY_AUTHOR](#DENY_AUTHOR)`

    Explicitly deny read/write access.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DENY_READER](#DENY_READER)`

    Explicitly deny read-only access.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[READER](#READER)`

    Role with read-only access.

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP](../common/RoleMap.html#TYPE_GROUP), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER](../common/RoleMap.html#TYPE_USER), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentRoleMap](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdministratorGroups](#addAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have administrative permissions.

    `void`

    `[addAdministrators](#addAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have administrative permissions.

    `void`

    `[addAuthorGroups](#addAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have authoring (read/write) permissions.

    `void`

    `[addAuthors](#addAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have authoring (read/write) permissions.

    `void`

    `[addDenyAdministratorGroups](#addDenyAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have been explicitly denied administrative permissions.

    `void`

    `[addDenyAdministrators](#addDenyAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have been explicitly denied administrative permissions.

    `void`

    `[addDenyAuthorGroups](#addDenyAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[addDenyAuthors](#addDenyAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[addDenyReaderGroups](#addDenyReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have been explicitly denied read-only permissions.

    `void`

    `[addDenyReaders](#addDenyReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have been explicitly denied read-only permissions.

    `void`

    `[addReaderGroups](#addReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Appends to the groups who have read-only permissions.

    `void`

    `[addReaders](#addReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Appends to the users who have read-only permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Retrieves the groups who have administrative permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Retrieves the users who have administrative permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateAdministratorGroups](#getAggregateAdministratorGroups\(\))()`

    Retrieves the groups who have administrative permissions aggregated via the chain of parent object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateAdministrators](#getAggregateAdministrators\(\))()`

    Retrieves the users who have administrative permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateAuthorGroups](#getAggregateAuthorGroups\(\))()`

    Retrieves the groups who have authoring permissions aggregated via the chain of parent objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateAuthors](#getAggregateAuthors\(\))()`

    Retrieves the users who have authoring permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateDenyAdministratorGroups](#getAggregateDenyAdministratorGroups\(\))()`

    Retrieves the groups who have been explicitly denied administrative permissions aggregated via the chain of parent objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateDenyAdministrators](#getAggregateDenyAdministrators\(\))()`

    Retrieves the users who have been explicitly denied administrative permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateDenyAuthorGroups](#getAggregateDenyAuthorGroups\(\))()`

    Retrieves the groups who have been explicitly denied authoring permissions aggregated via the chain of parent objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateDenyAuthors](#getAggregateDenyAuthors\(\))()`

    Retrieves the users who have been explicitly denied authoring permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateDenyReaderGroups](#getAggregateDenyReaderGroups\(\))()`

    Retrieves the groups who have been explicitly denied read-only permissions aggregated via the chain of parent objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateDenyReaders](#getAggregateDenyReaders\(\))()`

    Retrieves the users who have been explicitly denied read-only permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAggregateReaderGroups](#getAggregateReaderGroups\(\))()`

    Retrieves the groups who have read-only permissions aggregated via the chain of parent objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAggregateReaders](#getAggregateReaders\(\))()`

    Retrieves the users who have read-only permissions aggregated via the chain of parent objects.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAuthorGroups](#getAuthorGroups\(\))()`

    Retrieves the groups who have authoring (read/write) permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAuthors](#getAuthors\(\))()`

    Retrieves the users who have authoring (read/write) permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDenyAdministratorGroups](#getDenyAdministratorGroups\(\))()`

    Retrieves the groups who have been explicitly denied administrative permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDenyAdministrators](#getDenyAdministrators\(\))()`

    Retrieves the users who have been explicitly denied administrative permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDenyAuthorGroups](#getDenyAuthorGroups\(\))()`

    Retrieves the groups who have authoring (read/write) permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDenyAuthors](#getDenyAuthors\(\))()`

    Retrieves the users who have authoring (read/write) permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDenyReaderGroups](#getDenyReaderGroups\(\))()`

    Retrieves the groups who have been explicitly denied read-only permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDenyReaders](#getDenyReaders\(\))()`

    Retrieves the users who have been explicitly denied read-only permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getReaderGroups](#getReaderGroups\(\))()`

    Retrieves the groups who have read-only permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getReaders](#getReaders\(\))()`

    Retrieves the users who have read-only permissions.

    `protected [ContentRole](ContentRole.html "class in com.appiancorp.suiteapi.content")`

    `[getRole](#getRole\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)`

    `[ContentRole](ContentRole.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRoles](#getRoles\(\))()`

    Returns an array of ContentRole objects for every Content role (see [`ContentConstants.ROLE_MAP_ROLES`](ContentConstants.html#ROLE_MAP_ROLES)).

    `boolean`

    `[isPublic](#isPublic\(\))()`

    Indicates that the content is public.

    `void`

    `[mergeWith](#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") newRM)`

    Merges this role map with the given new role map.

    `void`

    `[removeAdministratorGroups](#removeAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Deletes from the groups who have administrative permissions.

    `void`

    `[removeAdministrators](#removeAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Deletes from the users who have administrative permissions.

    `protected void`

    `[removeAllRoles](#removeAllRoles\(\))()`

    `void`

    `[removeAuthorGroups](#removeAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Delete from the groups who have authoring (read/write) permissions.

    `void`

    `[removeAuthors](#removeAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Delete from the users who have authoring (read/write) permissions.

    `void`

    `[removeDenyAdministratorGroups](#removeDenyAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Deletes from the groups who have been explicitly denied administrative permissions.

    `void`

    `[removeDenyAdministrators](#removeDenyAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Deletes from the users who have been explicitly denied administrative permissions.

    `void`

    `[removeDenyAuthorGroups](#removeDenyAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Delete from the groups who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[removeDenyAuthors](#removeDenyAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Delete from the users who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[removeDenyReaderGroups](#removeDenyReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Delete from the groups who have been explicitly denied read-only permissions.

    `void`

    `[removeDenyReaders](#removeDenyReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Delete from the users who have been explicitly denied read-only permissions.

    `void`

    `[removeReaderGroups](#removeReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Delete from the groups who have read-only permissions.

    `void`

    `[removeReaders](#removeReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Delete from the users who have read-only permissions.

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have administrative permissions.

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have administrative permissions.

    `void`

    `[setAuthorGroups](#setAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have authoring (read/write) permissions.

    `void`

    `[setAuthors](#setAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have authoring (read/write) permissions.

    `void`

    `[setDenyAdministratorGroups](#setDenyAdministratorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have been explicitly denied administrative permissions.

    `void`

    `[setDenyAdministrators](#setDenyAdministrators\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have been explicitly denied administrative permissions.

    `void`

    `[setDenyAuthorGroups](#setDenyAuthorGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[setDenyAuthors](#setDenyAuthors\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have been explicitly denied authoring (read/write) permissions.

    `void`

    `[setDenyReaderGroups](#setDenyReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have been explicitly denied authoring read-only permissions.

    `void`

    `[setDenyReaders](#setDenyReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have been explicitly denied read-only permissions.

    `void`

    `[setPublic](#setPublic\(boolean\))(boolean secPublic)`

    `void`

    `[setReaderGroups](#setReaderGroups\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids_)`

    Sets the groups who have authoring read-only permissions.

    `void`

    `[setReaders](#setReaders\(java.lang.String...\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames_)`

    Sets the users who have read-only permissions.

    `protected void`

    `[setRole](#setRole\(com.appiancorp.suiteapi.common.Role\))([Role](../common/Role.html "class in com.appiancorp.suiteapi.common") role)`

    `void`

    `[setRoles](#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\))([Role](../common/Role.html "class in com.appiancorp.suiteapi.common")[] roles)`

    Removes any roles that are currently set and sets the roles to the given data.

    `void`

    `[setRoles](#setRoles\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [Role](../common/Role.html "class in com.appiancorp.suiteapi.common")> roles)`

    Removes any roles that are currently set and sets the roles to the given data.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toStringSecurityVector](#toStringSecurityVector\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") contentSecurityVector)`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](../common/RoleMap.html#clear\(\)), [containsActors](../common/RoleMap.html#containsActors\(\)), [containsKey](../common/RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](../common/RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](../common/RoleMap.html#entrySet\(\)), [equals](../common/RoleMap.html#equals\(java.lang.Object\)), [get](../common/RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](../common/RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](../common/RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](../common/RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](../common/RoleMap.html#getAllUsernames\(\)), [getRoleNames](../common/RoleMap.html#getRoleNames\(\)), [getSecurity](../common/RoleMap.html#getSecurity\(\)), [hashCode](../common/RoleMap.html#hashCode\(\)), [init](../common/RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](../common/RoleMap.html#isEmpty\(\)), [keySet](../common/RoleMap.html#keySet\(\)), [put](../common/RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](../common/RoleMap.html#putAll\(java.util.Map\)), [remove](../common/RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](../common/RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setSecurity](../common/RoleMap.html#setSecurity\(java.lang.Integer\)), [size](../common/RoleMap.html#size\(\)), [toXML](../common/RoleMap.html#toXML\(\)), [toXML](../common/RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](../common/RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### READER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") READER

        Role with read-only access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.READER)

    -   ### AUTHOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AUTHOR

        Role with read/write access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.AUTHOR)

    -   ### ADMINISTRATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ADMINISTRATOR

        Role with administrative access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.ADMINISTRATOR)

    -   ### DENY\_READER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DENY\_READER

        Explicitly deny read-only access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.DENY_READER)

    -   ### DENY\_AUTHOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DENY\_AUTHOR

        Explicitly deny read/write access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.DENY_AUTHOR)

    -   ### DENY\_ADMINISTRATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DENY\_ADMINISTRATOR

        Explicitly deny administrative access.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentRoleMap.DENY_ADMINISTRATOR)

    -   ### ALL\_ROLES

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ALL\_ROLES

-   ## Constructor Details

    -   ### ContentRoleMap

        public ContentRoleMap()

-   ## Method Details

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Retrieves the users who have administrative permissions.

        Returns:

        a list containing the unique IDs of the users

        See Also:

        -   [`setAdministrators(String[])`](#setAdministrators\(java.lang.String...\))

    -   ### getAggregateAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateAdministrators()

        Retrieves the users who have administrative permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Retrieves the groups who have administrative permissions.

        Returns:

        a list containing the unique IDs of the groups

        See Also:

        -   [`setAdministratorGroups(Long[])`](#setAdministratorGroups\(java.lang.Long...\))

    -   ### getAggregateAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateAdministratorGroups()

        Retrieves the groups who have administrative permissions aggregated via the chain of parent object.

        Returns:

        a list containing the unique IDs of the groups

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getAdministrators()`](#getAdministrators\(\))

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getAdministratorGroups()`](#getAdministratorGroups\(\))

    -   ### addAdministrators

        public void addAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addAdministratorGroups

        public void addAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeAdministrators

        public void removeAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Deletes from the users who have administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeAdministratorGroups

        public void removeAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Deletes from the groups who have administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getAuthors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAuthors()

        Retrieves the users who have authoring (read/write) permissions.

        Returns:

        a list containing the unique IDs of the users who have authoring (read/write) permissions

        See Also:

        -   [`setAuthors(String[])`](#setAuthors\(java.lang.String...\))

    -   ### getAggregateAuthors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateAuthors()

        Retrieves the users who have authoring permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users

    -   ### getAuthorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAuthorGroups()

        Retrieves the groups who have authoring (read/write) permissions.

        Returns:

        a list containing the unique IDs of the groups

        See Also:

        -   [`setAuthorGroups(Long[])`](#setAuthorGroups\(java.lang.Long...\))

    -   ### getAggregateAuthorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateAuthorGroups()

        Retrieves the groups who have authoring permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the groups

    -   ### getReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getReaders()

        Retrieves the users who have read-only permissions.

        Returns:

        a list containing the unique IDs of the users who have read-only permissions

        See Also:

        -   [`setReaders(String[])`](#setReaders\(java.lang.String...\))

    -   ### getAggregateReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateReaders()

        Retrieves the users who have read-only permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users who have read-only permissions

    -   ### getReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getReaderGroups()

        Retrieves the groups who have read-only permissions.

        Returns:

        a list containing the unique IDs the groups who have read-only permissions

        See Also:

        -   [`setReaderGroups(Long[])`](#setReaderGroups\(java.lang.Long...\))

    -   ### getAggregateReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateReaderGroups()

        Retrieves the groups who have read-only permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs the groups who have read-only permissions

    -   ### setAuthors

        public void setAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getAuthors()`](#getAuthors\(\))

    -   ### setAuthorGroups

        public void setAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getAuthorGroups()`](#getAuthorGroups\(\))

    -   ### setReaders

        public void setReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getReaders()`](#getReaders\(\))

    -   ### setReaderGroups

        public void setReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have authoring read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getReaderGroups()`](#getReaderGroups\(\))

    -   ### addAuthors

        public void addAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### addAuthorGroups

        public void addAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addReaders

        public void addReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### addReaderGroups

        public void addReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### removeAuthors

        public void removeAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Delete from the users who have authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### removeAuthorGroups

        public void removeAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Delete from the groups who have authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### removeReaders

        public void removeReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Delete from the users who have read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### removeReaderGroups

        public void removeReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Delete from the groups who have read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### getDenyAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDenyAdministrators()

        Retrieves the users who have been explicitly denied administrative permissions.

        Returns:

        a list containing the unique IDs of the users

        See Also:

        -   [`setDenyAdministrators(String[])`](#setDenyAdministrators\(java.lang.String...\))

    -   ### getAggregateDenyAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateDenyAdministrators()

        Retrieves the users who have been explicitly denied administrative permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users

    -   ### getDenyAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDenyAdministratorGroups()

        Retrieves the groups who have been explicitly denied administrative permissions.

        Returns:

        a list containing the unique IDs of the groups

        See Also:

        -   [`setDenyAdministratorGroups(Long[])`](#setDenyAdministratorGroups\(java.lang.Long...\))

    -   ### getAggregateDenyAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateDenyAdministratorGroups()

        Retrieves the groups who have been explicitly denied administrative permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the groups

    -   ### setDenyAdministrators

        public void setDenyAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have been explicitly denied administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getDenyAdministrators()`](#getDenyAdministrators\(\))

    -   ### setDenyAdministratorGroups

        public void setDenyAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have been explicitly denied administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getDenyAdministratorGroups()`](#getDenyAdministratorGroups\(\))

    -   ### addDenyAdministrators

        public void addDenyAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have been explicitly denied administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be added

    -   ### addDenyAdministratorGroups

        public void addDenyAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have been explicitly denied administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be added

    -   ### removeDenyAdministrators

        public void removeDenyAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Deletes from the users who have been explicitly denied administrative permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users to be deleted

    -   ### removeDenyAdministratorGroups

        public void removeDenyAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Deletes from the groups who have been explicitly denied administrative permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups to be deleted

    -   ### getDenyAuthors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDenyAuthors()

        Retrieves the users who have authoring (read/write) permissions.

        Returns:

        a list containing the unique IDs of the users who have authoring (read/write) permissions.

        See Also:

        -   [`setDenyAuthors(String[])`](#setDenyAuthors\(java.lang.String...\))

    -   ### getAggregateDenyAuthors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateDenyAuthors()

        Retrieves the users who have been explicitly denied authoring permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users who have authoring (read/write) permissions

    -   ### getDenyAuthorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDenyAuthorGroups()

        Retrieves the groups who have authoring (read/write) permissions.

        Returns:

        a list containing the unique IDs of the groups who have authoring (read/write) permissions

        See Also:

        -   [`setDenyAuthorGroups(Long[])`](#setDenyAuthorGroups\(java.lang.Long...\))

    -   ### getAggregateDenyAuthorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateDenyAuthorGroups()

        Retrieves the groups who have been explicitly denied authoring permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the groups who have authoring (read/write) permissions

    -   ### getDenyReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDenyReaders()

        Retrieves the users who have been explicitly denied read-only permissions.

        Returns:

        a list containing the unique IDs of the users who have read-only permissions

        See Also:

        -   [`setDenyReaders(String[])`](#setDenyReaders\(java.lang.String...\))

    -   ### getAggregateDenyReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAggregateDenyReaders()

        Retrieves the users who have been explicitly denied read-only permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs of the users who have read-only permissions

    -   ### getDenyReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDenyReaderGroups()

        Retrieves the groups who have been explicitly denied read-only permissions.

        Returns:

        a list containing the unique IDs the groups who have read-only permissions

        See Also:

        -   [`setDenyReaderGroups(Long[])`](#setDenyReaderGroups\(java.lang.Long...\))

    -   ### getAggregateDenyReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAggregateDenyReaderGroups()

        Retrieves the groups who have been explicitly denied read-only permissions aggregated via the chain of parent objects.

        Returns:

        a list containing the unique IDs the groups who have read-only permissions

    -   ### setDenyAuthors

        public void setDenyAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getDenyAuthors()`](#getDenyAuthors\(\))

    -   ### setDenyAuthorGroups

        public void setDenyAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getDenyAuthorGroups()`](#getDenyAuthorGroups\(\))

    -   ### setDenyReaders

        public void setDenyReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Sets the users who have been explicitly denied read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

        See Also:

        -   [`getDenyReaders()`](#getDenyReaders\(\))

    -   ### setDenyReaderGroups

        public void setDenyReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Sets the groups who have been explicitly denied authoring read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

        See Also:

        -   [`getDenyReaderGroups()`](#getDenyReaderGroups\(\))

    -   ### addDenyAuthors

        public void addDenyAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### addDenyAuthorGroups

        public void addDenyAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### addDenyReaders

        public void addDenyReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Appends to the users who have been explicitly denied read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### addDenyReaderGroups

        public void addDenyReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Appends to the groups who have been explicitly denied read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### removeDenyAuthors

        public void removeDenyAuthors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Delete from the users who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### removeDenyAuthorGroups

        public void removeDenyAuthorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Delete from the groups who have been explicitly denied authoring (read/write) permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### removeDenyReaders

        public void removeDenyReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")... unames\_)

        Delete from the users who have been explicitly denied read-only permissions.

        Parameters:

        `unames_` - a list containing the unique IDs of the users

    -   ### removeDenyReaderGroups

        public void removeDenyReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... grids\_)

        Delete from the groups who have been explicitly denied read-only permissions.

        Parameters:

        `grids_` - a list containing the unique IDs of the groups

    -   ### isPublic

        public boolean isPublic()

        Indicates that the content is public. The difference between public and non-public content is the editor role; for non-public, someone with just editor (not edit) before they can create, delete, or update content.

    -   ### setPublic

        public void setPublic(boolean secPublic)

        See Also:

        -   [`isPublic()`](#isPublic\(\))

    -   ### getRoles

        public [ContentRole](ContentRole.html "class in com.appiancorp.suiteapi.content")\[\] getRoles()

        Returns an array of ContentRole objects for every Content role (see [`ContentConstants.ROLE_MAP_ROLES`](ContentConstants.html#ROLE_MAP_ROLES)).

        Overrides:

        `[getRoles](../common/RoleMap.html#getRoles\(\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    -   ### setRoles

        public void setRoles([Role](../common/Role.html "class in com.appiancorp.suiteapi.common")\[\] roles)

        Removes any roles that are currently set and sets the roles to the given data. If the given array is null or empty the existing roles are cleared.

        Overrides:

        `[setRoles](../common/RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `roles` - The roles data to set in the role map.

    -   ### setRoles

        public void setRoles([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [Role](../common/Role.html "class in com.appiancorp.suiteapi.common")\> roles)

        Removes any roles that are currently set and sets the roles to the given data. If the given array is null or empty the existing roles are cleared.

        Overrides:

        `[setRoles](../common/RoleMap.html#setRoles\(java.util.Collection\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `roles` - The collection of roles data to set in the role map.

    -   ### removeAllRoles

        protected void removeAllRoles()

        Overrides:

        `[removeAllRoles](../common/RoleMap.html#removeAllRoles\(\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    -   ### getRole

        protected [ContentRole](ContentRole.html "class in com.appiancorp.suiteapi.content") getRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)

        Overrides:

        `[getRole](../common/RoleMap.html#getRole\(java.lang.String\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    -   ### setRole

        protected void setRole([Role](../common/Role.html "class in com.appiancorp.suiteapi.common") role)

        Overrides:

        `[setRole](../common/RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    -   ### mergeWith

        public void mergeWith([RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") newRM)

        Description copied from class: `[RoleMap](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\))`

        Merges this role map with the given new role map. Only the fields [`RoleMap.TYPE_USER`](../common/RoleMap.html#TYPE_USER) and [`RoleMap.TYPE_GROUP`](../common/RoleMap.html#TYPE_GROUP) are merged. All other fields are left unchanged. The following rules are used to merge the users and groups:

        1.  The merged role map should be the union of the existing and new role maps.
        2.  When the same user/group is present in both the existing and new role maps, the role from the NEW role map should be used for the user/group.

        Overrides:

        `[mergeWith](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `newRM` - The new role map to merge with this (existing/old) role map.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](../common/RoleMap.html#toString\(\))` in class `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    -   ### toStringSecurityVector

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toStringSecurityVector([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") contentSecurityVector)