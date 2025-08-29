---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/administration/AdminConsoleRoleMap.html
original_path: api/com/appiancorp/suiteapi/administration/AdminConsoleRoleMap.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.administration](package-summary.html)

# Class AdminConsoleRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.administration.AdminConsoleRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class AdminConsoleRoleMap extends [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Deprecated.

This class pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

The Role Map for the Administration Console. The possible roles are Viewer and Editor.

Viewers can enter the Administration Console, create pages, and view pages that they have permission to view. Editors can edit the security settings of the Administration Console.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.administration.AdminConsoleRoleMap)

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

    Deprecated.

    The editor role.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[VIEWER](#VIEWER)`

    Deprecated.

    The viewer role.

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP](../common/RoleMap.html#TYPE_GROUP), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER](../common/RoleMap.html#TYPE_USER), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AdminConsoleRoleMap](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addEditorGroups](#addEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Adds to the list of groups that have editor permissions.

    `void`

    `[addEditors](#addEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Adds to the list of users that have editor permissions.

    `void`

    `[addViewerGroups](#addViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Adds to the list of groups that have viewer permissions.

    `void`

    `[addViewers](#addViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Adds to the list of users that have viewer permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditorGroups](#getEditorGroups\(\))()`

    Deprecated.

    Returns the list of groups that have editor permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getEditors](#getEditors\(\))()`

    Deprecated.

    Returns the list of users that have editor permissions.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getRoleForColumn](#getRoleForColumn\(int\))(int n_)`

    Deprecated.

    Returns the role for the specified column number.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewerGroups](#getViewerGroups\(\))()`

    Deprecated.

    Returns the list of groups that have viewer permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getViewers](#getViewers\(\))()`

    Deprecated.

    Returns the list of users that have viewer permissions.

    `void`

    `[removeEditorGroups](#removeEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Removes from the list of groups with editor permissions.

    `void`

    `[removeEditors](#removeEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Removes from the list of users that have editor permissions.

    `void`

    `[removeViewerGroups](#removeViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Removes from the list of groups with viewer permissions.

    `void`

    `[removeViewers](#removeViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Removes from the list of users that have viewer permissions.

    `void`

    `[setEditorGroups](#setEditorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Sets the list of groups with editor permissions.

    `void`

    `[setEditors](#setEditors\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Sets the list of users that have editor permissions.

    `void`

    `[setViewerGroups](#setViewerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_)`

    Deprecated.

    Sets the list of groups with viewer permissions.

    `void`

    `[setViewers](#setViewers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Sets the list of users that have viewer permissions.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](../common/RoleMap.html#clear\(\)), [containsActors](../common/RoleMap.html#containsActors\(\)), [containsKey](../common/RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](../common/RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](../common/RoleMap.html#entrySet\(\)), [equals](../common/RoleMap.html#equals\(java.lang.Object\)), [get](../common/RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](../common/RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](../common/RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](../common/RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](../common/RoleMap.html#getAllUsernames\(\)), [getRole](../common/RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](../common/RoleMap.html#getRoleNames\(\)), [getRoles](../common/RoleMap.html#getRoles\(\)), [getSecurity](../common/RoleMap.html#getSecurity\(\)), [hashCode](../common/RoleMap.html#hashCode\(\)), [init](../common/RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](../common/RoleMap.html#isEmpty\(\)), [keySet](../common/RoleMap.html#keySet\(\)), [mergeWith](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](../common/RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](../common/RoleMap.html#putAll\(java.util.Map\)), [remove](../common/RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](../common/RoleMap.html#removeAllRoles\(\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](../common/RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](../common/RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](../common/RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](../common/RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](../common/RoleMap.html#setSecurity\(java.lang.Integer\)), [size](../common/RoleMap.html#size\(\)), [toString](../common/RoleMap.html#toString\(\)), [toXML](../common/RoleMap.html#toXML\(\)), [toXML](../common/RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](../common/RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### VIEWER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") VIEWER

        Deprecated.

        The viewer role.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdminConsoleRoleMap.VIEWER)

    -   ### EDITOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EDITOR

        Deprecated.

        The editor role.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdminConsoleRoleMap.EDITOR)

-   ## Constructor Details

    -   ### AdminConsoleRoleMap

        public AdminConsoleRoleMap()

        Deprecated.

-   ## Method Details

    -   ### getRoleForColumn

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getRoleForColumn(int n\_)

        Deprecated.

        Returns the role for the specified column number.

        Parameters:

        `n_` - The column index for the role. This is one of `COLUMN_VIEWER` or `COLUMN_EDITOR`

        Returns:

        The role for the specified column number, or `null` if the column does not map to a role

    -   ### addViewers

        public void addViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Adds to the list of users that have viewer permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users to be added

    -   ### getViewers

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getViewers()

        Deprecated.

        Returns the list of users that have viewer permissions.

        Returns:

        an `Array` containing the unique IDs (usernames) of the users

        See Also:

        -   [`setViewers(String[])`](#setViewers\(java.lang.String%5B%5D\))

    -   ### setViewers

        public void setViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Sets the list of users that have viewer permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users

        See Also:

        -   [`getViewers()`](#getViewers\(\))

    -   ### removeViewers

        public void removeViewers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Removes from the list of users that have viewer permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users to be removed

    -   ### addViewerGroups

        public void addViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Adds to the list of groups that have viewer permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups to be added

    -   ### getViewerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewerGroups()

        Deprecated.

        Returns the list of groups that have viewer permissions.

        Returns:

        an `Array` containing the unique IDs of the groups

        See Also:

        -   [`setViewerGroups(Long[])`](#setViewerGroups\(java.lang.Long%5B%5D\))

    -   ### setViewerGroups

        public void setViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Sets the list of groups with viewer permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups

        See Also:

        -   [`getViewerGroups()`](#getViewerGroups\(\))

    -   ### removeViewerGroups

        public void removeViewerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Removes from the list of groups with viewer permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups to be removed

    -   ### addEditors

        public void addEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Adds to the list of users that have editor permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users to be added

    -   ### getEditors

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getEditors()

        Deprecated.

        Returns the list of users that have editor permissions.

        Returns:

        an `Array` containing the unique IDs (usernames) of the users

        See Also:

        -   [`setEditors(String[])`](#setEditors\(java.lang.String%5B%5D\))

    -   ### setEditors

        public void setEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Sets the list of users that have editor permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users

        See Also:

        -   [`getEditors()`](#getEditors\(\))

    -   ### removeEditors

        public void removeEditors([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_)

        Deprecated.

        Removes from the list of users that have editor permissions.

        Parameters:

        `users_` - an `Array` containing the unique IDs (usernames) of the users to be removed

    -   ### addEditorGroups

        public void addEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Adds to the list of groups that have editor permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups to be added

    -   ### getEditorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditorGroups()

        Deprecated.

        Returns the list of groups that have editor permissions.

        Returns:

        an `Array` containing the unique IDs of the groups

        See Also:

        -   [`setEditorGroups(Long[])`](#setEditorGroups\(java.lang.Long%5B%5D\))

    -   ### setEditorGroups

        public void setEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Sets the list of groups with editor permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups

        See Also:

        -   [`getEditorGroups()`](#getEditorGroups\(\))

    -   ### removeEditorGroups

        public void removeEditorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_)

        Deprecated.

        Removes from the list of groups with editor permissions.

        Parameters:

        `groups_` - an `Array` containing the unique IDs of the groups to be removed