---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/PublicRoleMap.html
original_path: api/com/appiancorp/suiteapi/common/PublicRoleMap.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class PublicRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.common.PublicRoleMap

All Implemented Interfaces:

`[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

Direct Known Subclasses:

`[AEVRoleMap](AEVRoleMap.html "class in com.appiancorp.suiteapi.common")`, `[ForumsRoleMap](../forums/ForumsRoleMap.html "class in com.appiancorp.suiteapi.forums")`

* * *

public class PublicRoleMap extends [RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

Defines the roles of users and groups for an object.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.PublicRoleMap)

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

    `protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_GROUP](#TYPE_GROUP)`

    `protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_USER](#TYPE_USER)`

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP_UUIDS](RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER_UUIDS](RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PublicRoleMap](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdministratorGroups](#addAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Appends to the groups who have administrative permissions.

    `void`

    `[addAdministrators](#addAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Appends to the users who have administrative permissions.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Retrieves the groups who have administrative permissions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Retrieves the users who have administrative permissions.

    `void`

    `[removeAdministratorGroups](#removeAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deletes from the groups who have administrative permissions.

    `void`

    `[removeAdministrators](#removeAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Deletes from the users who have administrative permissions.

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Sets the groups who have administrative permissions.

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] unames_)`

    Sets the users who have administrative permissions.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](RoleMap.html#clear\(\)), [containsActors](RoleMap.html#containsActors\(\)), [containsKey](RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](RoleMap.html#entrySet\(\)), [equals](RoleMap.html#equals\(java.lang.Object\)), [get](RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](RoleMap.html#getAllUsernames\(\)), [getRole](RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](RoleMap.html#getRoleNames\(\)), [getRoles](RoleMap.html#getRoles\(\)), [getSecurity](RoleMap.html#getSecurity\(\)), [hashCode](RoleMap.html#hashCode\(\)), [init](RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](RoleMap.html#isEmpty\(\)), [keySet](RoleMap.html#keySet\(\)), [mergeWith](RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](RoleMap.html#putAll\(java.util.Map\)), [remove](RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](RoleMap.html#removeAllRoles\(\)), [setActorsInRole](RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](RoleMap.html#setSecurity\(java.lang.Integer\)), [size](RoleMap.html#size\(\)), [toString](RoleMap.html#toString\(\)), [toXML](RoleMap.html#toXML\(\)), [toXML](RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### ADMINISTRATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ADMINISTRATOR

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.PublicRoleMap.ADMINISTRATOR)

    -   ### TYPE\_USER

        protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.PublicRoleMap.TYPE_USER)

    -   ### TYPE\_GROUP

        protected final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.PublicRoleMap.TYPE_GROUP)

-   ## Constructor Details

    -   ### PublicRoleMap

        public PublicRoleMap()

-   ## Method Details

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Retrieves the users who have administrative permissions.

        Returns:

        an `Array` containing the unique IDs (usernames) of the users.

        See Also:

        -   [`setAdministrators(String[])`](#setAdministrators\(java.lang.String%5B%5D\))

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Retrieves the groups who have administrative permissions.

        Returns:

        an `Array` containing the unique IDs of the groups.

        See Also:

        -   [`setAdministratorGroups(Long[])`](#setAdministratorGroups\(java.lang.Long%5B%5D\))

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Sets the users who have administrative permissions.

        Parameters:

        `unames_` - an `Array` containing the unique IDs (usernames) of the users.

        See Also:

        -   [`getAdministrators()`](#getAdministrators\(\))

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Sets the groups who have administrative permissions.

        Parameters:

        `grids_` - an `Array` containing the unique IDs of the groups

        See Also:

        -   [`getAdministratorGroups()`](#getAdministratorGroups\(\))

    -   ### addAdministrators

        public void addAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Appends to the users who have administrative permissions.

        Parameters:

        `unames_` - an `Array` containing the unique IDs (usernames) of the users to be added

    -   ### addAdministratorGroups

        public void addAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Appends to the groups who have administrative permissions.

        Parameters:

        `grids_` - an `Array` containing the unique IDs of the groups to be added

    -   ### removeAdministrators

        public void removeAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] unames\_)

        Deletes from the users who have administrative permissions.

        Parameters:

        `unames_` - an `Array` containing the unique IDs (usernames) of the users to be deleted

    -   ### removeAdministratorGroups

        public void removeAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deletes from the groups who have administrative permissions.

        Parameters:

        `grids_` - an `Array` containing the unique IDs of the groups to be deleted