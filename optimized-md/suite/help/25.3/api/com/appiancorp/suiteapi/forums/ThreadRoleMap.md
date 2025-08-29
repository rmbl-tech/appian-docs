---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/ThreadRoleMap.html
original_path: api/com/appiancorp/suiteapi/forums/ThreadRoleMap.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Class ThreadRoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.forums.ThreadRoleMap

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class ThreadRoleMap extends [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Do not use. All security in Discussion Forums is controlled at the Forum level, and threads inherit the security from forums.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.forums.ThreadRoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[OWNERS](#OWNERS)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PARTICIPANTS](#PARTICIPANTS)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[THREAD_ADMINS](#THREAD_ADMINS)`

    Deprecated.

     

    ### Fields inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[AGGREGATE_SECURITY_KEY](../common/RoleMap.html#AGGREGATE_SECURITY_KEY), [SECURITY_KEY](../common/RoleMap.html#SECURITY_KEY), [TYPE_AGGREGATE_GROUP](../common/RoleMap.html#TYPE_AGGREGATE_GROUP), [TYPE_AGGREGATE_USER](../common/RoleMap.html#TYPE_AGGREGATE_USER), [TYPE_GROUP](../common/RoleMap.html#TYPE_GROUP), [TYPE_GROUP_UUIDS](../common/RoleMap.html#TYPE_GROUP_UUIDS), [TYPE_USER](../common/RoleMap.html#TYPE_USER), [TYPE_USER_UUIDS](../common/RoleMap.html#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ThreadRoleMap](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addForumAdministratorGroups](#addForumAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Appends to the groups who have forum administrative permissions

    `void`

    `[addForumAdministrators](#addForumAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Appends to the users who have administrative permissions

    `void`

    `[addOwnerGroups](#addOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

     

    `void`

    `[addOwners](#addOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

     

    `void`

    `[addParticipantGroups](#addParticipantGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Appends to the groups who have Participating (read/write) permissions

    `void`

    `[addParticipants](#addParticipants\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Appends to the users who have participating (read/write) permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getForumAdministratorGroups](#getForumAdministratorGroups\(\))()`

    Deprecated.

    Retrieves the groups who have forum administrative permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getForumAdministrators](#getForumAdministrators\(\))()`

    Deprecated.

    Retrieves the users who have forum administrative permissions

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getOwnerGroups](#getOwnerGroups\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getOwners](#getOwners\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getParticipantGroups](#getParticipantGroups\(\))()`

    Deprecated.

    Retrieves the groups who have read/write permissions

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getParticipants](#getParticipants\(\))()`

    Deprecated.

    Retrieves the users who have read/write permissions

    `void`

    `[removeAdministrators](#removeAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Deletes from the users who have administrative permissions

    `void`

    `[removeForumAdministratorGroups](#removeForumAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Deletes from the groups who have forum administrative permissions

    `void`

    `[removeOwnerGroups](#removeOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

     

    `void`

    `[removeOwners](#removeOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

     

    `void`

    `[removeParticipantGroups](#removeParticipantGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Delete from the groups who have read/write permissions

    `void`

    `[removeParticipants](#removeParticipants\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Delete from the users who have read/write permissions

    `void`

    `[setForumAdministratorGroups](#setForumAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Sets the groups who have forum administrative permissions

    `void`

    `[setForumAdministrators](#setForumAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Sets the users who have forum administrative permissions

    `void`

    `[setOwnerGroups](#setOwnerGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

     

    `void`

    `[setOwners](#setOwners\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

     

    `void`

    `[setParticipantGroups](#setParticipantGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Sets the groups who have PARTICIPANTSing (read/write) permissions

    `void`

    `[setParticipants](#setParticipants\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Sets the users who have read/write permissions

    ### Methods inherited from class com.appiancorp.suiteapi.common.[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")

    `[addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [addActorsToRole](../common/RoleMap.html#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [clear](../common/RoleMap.html#clear\(\)), [containsActors](../common/RoleMap.html#containsActors\(\)), [containsKey](../common/RoleMap.html#containsKey\(java.lang.Object\)), [containsValue](../common/RoleMap.html#containsValue\(java.lang.Object\)), [entrySet](../common/RoleMap.html#entrySet\(\)), [equals](../common/RoleMap.html#equals\(java.lang.Object\)), [get](../common/RoleMap.html#get\(java.lang.Object\)), [getActorsInRole](../common/RoleMap.html#getActorsInRole\(java.lang.String,java.lang.String\)), [getAggregateSecurity](../common/RoleMap.html#getAggregateSecurity\(\)), [getAllGroupIds](../common/RoleMap.html#getAllGroupIds\(\)), [getAllUsernames](../common/RoleMap.html#getAllUsernames\(\)), [getRole](../common/RoleMap.html#getRole\(java.lang.String\)), [getRoleNames](../common/RoleMap.html#getRoleNames\(\)), [getRoles](../common/RoleMap.html#getRoles\(\)), [getSecurity](../common/RoleMap.html#getSecurity\(\)), [hashCode](../common/RoleMap.html#hashCode\(\)), [init](../common/RoleMap.html#init\(com.appiancorp.suiteapi.common.RoleMap\)), [isEmpty](../common/RoleMap.html#isEmpty\(\)), [keySet](../common/RoleMap.html#keySet\(\)), [mergeWith](../common/RoleMap.html#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\)), [put](../common/RoleMap.html#put\(java.lang.Object,java.lang.Object\)), [putAll](../common/RoleMap.html#putAll\(java.util.Map\)), [remove](../common/RoleMap.html#remove\(java.lang.Object\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [removeActorsFromRole](../common/RoleMap.html#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [removeAllRoles](../common/RoleMap.html#removeAllRoles\(\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\)), [setActorsInRole](../common/RoleMap.html#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\)), [setAggregateSecurity](../common/RoleMap.html#setAggregateSecurity\(java.lang.Integer\)), [setRole](../common/RoleMap.html#setRole\(com.appiancorp.suiteapi.common.Role\)), [setRoles](../common/RoleMap.html#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\)), [setRoles](../common/RoleMap.html#setRoles\(java.util.Collection\)), [setSecurity](../common/RoleMap.html#setSecurity\(java.lang.Integer\)), [size](../common/RoleMap.html#size\(\)), [toString](../common/RoleMap.html#toString\(\)), [toXML](../common/RoleMap.html#toXML\(\)), [toXML](../common/RoleMap.html#toXML\(java.lang.StringBuilder\)), [values](../common/RoleMap.html#values\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### PARTICIPANTS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PARTICIPANTS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ThreadRoleMap.PARTICIPANTS)

    -   ### THREAD\_ADMINS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") THREAD\_ADMINS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ThreadRoleMap.THREAD_ADMINS)

    -   ### OWNERS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") OWNERS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ThreadRoleMap.OWNERS)

-   ## Constructor Details

    -   ### ThreadRoleMap

        public ThreadRoleMap()

        Deprecated.

-   ## Method Details

    -   ### getForumAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getForumAdministrators()

        Deprecated.

        Retrieves the users who have forum administrative permissions

        Returns:

        a list containing the unique IDs of the users

    -   ### getForumAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getForumAdministratorGroups()

        Deprecated.

        Retrieves the groups who have forum administrative permissions

        Returns:

        a list containing the unique IDs of the groups

    -   ### setForumAdministrators

        public void setForumAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Sets the users who have forum administrative permissions

        Parameters:

        `usernames_` - the user names to set

    -   ### setForumAdministratorGroups

        public void setForumAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Sets the groups who have forum administrative permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups

    -   ### addForumAdministrators

        public void addForumAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Appends to the users who have administrative permissions

        Parameters:

        `usernames_` -

    -   ### addForumAdministratorGroups

        public void addForumAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Appends to the groups who have forum administrative permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups to be added

    -   ### removeAdministrators

        public void removeAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Deletes from the users who have administrative permissions

        Parameters:

        `usernames_` - the user names to remove

    -   ### removeForumAdministratorGroups

        public void removeForumAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Deletes from the groups who have forum administrative permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups to be deleted

    -   ### getParticipants

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getParticipants()

        Deprecated.

        Retrieves the users who have read/write permissions

        Returns:

        a list containing the unique IDs of the users who have read/write permissions

    -   ### getParticipantGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getParticipantGroups()

        Deprecated.

        Retrieves the groups who have read/write permissions

        Returns:

        a list containing the unique IDs of the groups who have read/write permissions

    -   ### setParticipants

        public void setParticipants([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Sets the users who have read/write permissions

        Parameters:

        `usernames_` - a list containing the unique IDs of the users

    -   ### setParticipantGroups

        public void setParticipantGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Sets the groups who have PARTICIPANTSing (read/write) permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups

    -   ### addParticipants

        public void addParticipants([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Appends to the users who have participating (read/write) permissions

        Parameters:

        `usernames_` - a list containing the unique IDs of the users

    -   ### addParticipantGroups

        public void addParticipantGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Appends to the groups who have Participating (read/write) permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups

    -   ### removeParticipants

        public void removeParticipants([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

        Delete from the users who have read/write permissions

        Parameters:

        `usernames_` - a list containing the unique IDs of the users

    -   ### removeParticipantGroups

        public void removeParticipantGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Delete from the groups who have read/write permissions

        Parameters:

        `groupIds_` - a list containing the unique IDs of the groups

    -   ### getOwners

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getOwners()

        Deprecated.

    -   ### getOwnerGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getOwnerGroups()

        Deprecated.

    -   ### setOwners

        public void setOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

    -   ### setOwnerGroups

        public void setOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

    -   ### addOwners

        public void addOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

    -   ### addOwnerGroups

        public void addOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

    -   ### removeOwners

        public void removeOwners([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_)

        Deprecated.

    -   ### removeOwnerGroups

        public void removeOwnerGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.