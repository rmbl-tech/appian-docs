---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessApplicationRoleMap.html
original_path: api/com/appiancorp/suiteapi/process/ProcessApplicationRoleMap.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessApplicationRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ProcessApplicationRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

public class ProcessApplicationRoleMap extends [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Defines the roles of users and groups for a process object. The prossible roles are Editor, Viewer.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessApplicationRoleMap)

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

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP](../common/RoleMap.html#TYPE_GROUP), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER](../common/RoleMap.html#TYPE_USER), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessApplicationRoleMap](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addEditorGroups](#addEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Appends to the groups who have editor permissions

    `void`

    `[addEditors](#addEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Appends to the users who have editor permissions

    `void`

    `[addViewerGroups](#addViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Appends to the groups who have viewer permissions

    `void`

    `[addViewers](#addViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Appends to the users who have viewer permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditorGroups](#getEditorGroups\(\))()`

    Retrieves the groups who have editor permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEditors](#getEditors\(\))()`

    Retrieves the users who have editor permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewerGroups](#getViewerGroups\(\))()`

    Retrieves the groups who have viewer permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getViewers](#getViewers\(\))()`

    Retrieves the users who have viewer permissions

    `void`

    `[removeEditorGroups](#removeEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes from the groups who have editor permissions

    `void`

    `[removeEditors](#removeEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes from the users who have editor permissions

    `void`

    `[removeViewerGroups](#removeViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes from the groups who have viewer permissions

    `void`

    `[removeViewers](#removeViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes from the users who have viewer permissions

    `void`

    `[setEditorGroups](#setEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have editor permissions

    `void`

    `[setEditors](#setEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have editor permissions

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

    -   ### EDITOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EDITOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessApplicationRoleMap.EDITOR)

    -   ### VIEWER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") VIEWER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessApplicationRoleMap.VIEWER)

-   ## Constructor Details

    -   ### ProcessApplicationRoleMap

        public ProcessApplicationRoleMap()

-   ## Method Details

    -   ### getEditors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEditors()

        Retrieves the users who have editor permissions

        Returns:

        an `Array` containing the unique IDs (usernames) of the users

    -   ### getEditorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditorGroups()

        Retrieves the groups who have editor permissions

        Returns:

        `Array` containing the unique IDs of the groups

    -   ### setEditors

        public void setEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have editor permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users

    -   ### setEditorGroups

        public void setEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have editor permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups

    -   ### addEditors

        public void addEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Appends to the users who have editor permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users to be added

    -   ### addEditorGroups

        public void addEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Appends to the groups who have editor permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups to be added

    -   ### removeEditors

        public void removeEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes from the users who have editor permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users to be deleted

    -   ### removeEditorGroups

        public void removeEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes from the groups who have editor permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups to be deleted

    -   ### getViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getViewers()

        Retrieves the users who have viewer permissions

        Returns:

        `Array` containing the unique IDs (usernames) of the users

    -   ### getViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewerGroups()

        Retrieves the groups who have viewer permissions

        Returns:

        `Array` containing the unique IDs of the groups

    -   ### setViewers

        public void setViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have viewer permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users

    -   ### setViewerGroups

        public void setViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have viewer permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups

    -   ### addViewers

        public void addViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Appends to the users who have viewer permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users to be added

    -   ### addViewerGroups

        public void addViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Appends to the groups who have viewer permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups to be added

    -   ### removeViewers

        public void removeViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes from the users who have viewer permissions

        Parameters:

        `unames_` - `Array` containing the unique IDs (usernames) of the users to be deleted

    -   ### removeViewerGroups

        public void removeViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes from the groups who have viewer permissions

        Parameters:

        `grids_` - `Array` containing the unique IDs of the groups to be deleted