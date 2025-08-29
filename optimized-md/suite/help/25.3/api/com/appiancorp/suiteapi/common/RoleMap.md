---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/RoleMap.html
original_path: api/com/appiancorp/suiteapi/common/RoleMap.html
version: "25.3"
title: "Class RoleMap"
page_id: "api/com/appiancorp/suiteapi/common/RoleMap"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class RoleMap

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.RoleMap

All Implemented Interfaces:

`[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

Direct Known Subclasses:

`[AdminConsoleRoleMap](../administration/AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")`, `[CollaborationRoleMap](../collaboration/CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")`, `[ContentRoleMap](../content/ContentRoleMap.html "class in com.appiancorp.suiteapi.content")`, `[ProcessApplicationRoleMap](../process/ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")`, `[ProcessRoleMap](../process/ProcessRoleMap.html "class in com.appiancorp.suiteapi.process")`, `[PublicRoleMap](PublicRoleMap.html "class in com.appiancorp.suiteapi.common")`, `[ThreadRoleMap](../forums/ThreadRoleMap.html "class in com.appiancorp.suiteapi.forums")`

* * *

public class RoleMap extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util"), [XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

A mapping of roles and the users and groups that fill those roles.

N.B. The `ComplexForeignKey.requiredByIxSpec()` for groups is set true in `RoleBinder.getRefMd(Role, ReferenceContext, boolean)` in order to prevent the import of objects referencing missing security groups.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.common.RoleMap)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[Map.Entry](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util")<[K](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang"),[V](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.Entry.html "class or interface in java.util") extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AGGREGATE_SECURITY_KEY](#AGGREGATE_SECURITY_KEY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SECURITY_KEY](#SECURITY_KEY)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_AGGREGATE_GROUP](#TYPE_AGGREGATE_GROUP)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_AGGREGATE_USER](#TYPE_AGGREGATE_USER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_GROUP](#TYPE_GROUP)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_GROUP_UUIDS](#TYPE_GROUP_UUIDS)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_USER](#TYPE_USER)`

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[TYPE_USER_UUIDS](#TYPE_USER_UUIDS)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RoleMap](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addActorsToRole](#addActorsToRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Adds groups to the specified role.

    `void`

    `[addActorsToRole](#addActorsToRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Adds users to the specified role.

    `void`

    `[clear](#clear\(\))()`

    Removes all roles and actors.

    `boolean`

    `[containsActors](#containsActors\(\))()`

    Returns true if there are actors in any role of the role map.

    `boolean`

    `[containsKey](#containsKey\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key_)`

    Returns whether this role map contains the role specified.

    `boolean`

    `[containsValue](#containsValue\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Not implemented.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")`

    `[entrySet](#entrySet\(\))()`

    Returns all of the entries in the role map.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Compares this role map with another, and returns whether this role map contains exactly the same data as the other.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[get](#get\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key_)`

    Returns the actors at the particular role.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")[]`

    `[getActorsInRole](#getActorsInRole\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_)`

    Returns all of the actors at the given role and of the given type.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAggregateSecurity](#getAggregateSecurity\(\))()`

    Gets the aggregate security bitmap for the object.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getAllGroupIds](#getAllGroupIds\(\))()`

    Returns all the group ids in this role map.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getAllUsernames](#getAllUsernames\(\))()`

    Returns all the usernames in this role map.

    `protected [Role](Role.html "class in com.appiancorp.suiteapi.common")`

    `[getRole](#getRole\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getRoleNames](#getRoleNames\(\))()`

    `[Role](Role.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRoles](#getRoles\(\))()`

    Returns an array of Role objects for all the roles stored in this role map.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSecurity](#getSecurity\(\))()`

    Gets the security bitmap for the object.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns a hash code for the role map.

    `protected void`

    `[init](#init\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") rm)`

    `boolean`

    `[isEmpty](#isEmpty\(\))()`

    Returns whether this role map contains no roles.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")`

    `[keySet](#keySet\(\))()`

    Returns all of the roles in the role map.

    `void`

    `[mergeWith](#mergeWith\(com.appiancorp.suiteapi.common.RoleMap\))([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") newRM)`

    Merges this role map with the given new role map.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[put](#put\(java.lang.Object,java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Returns the users and groups in the given role.

    `void`

    `[putAll](#putAll\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") t_)`

    Not supported.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[remove](#remove\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key_)`

    Remove all users and groups at the role.

    `void`

    `[removeActorsFromRole](#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Removes groups from the specified role.

    `void`

    `[removeActorsFromRole](#removeActorsFromRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Removes users from the specified role.

    `protected void`

    `[removeAllRoles](#removeAllRoles\(\))()`

    `void`

    `[setActorsInRole](#setActorsInRole\(java.lang.String,java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Sets the actors in the given role at the given type.

    `void`

    `[setActorsInRole](#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] id_)`

    Sets the actors in the specified role.

    `void`

    `[setAggregateSecurity](#setAggregateSecurity\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") aggregateSecurity_)`

    Sets the aggregate security bitmap for the object.

    `protected void`

    `[setRole](#setRole\(com.appiancorp.suiteapi.common.Role\))([Role](Role.html "class in com.appiancorp.suiteapi.common") role)`

    `void`

    `[setRoles](#setRoles\(com.appiancorp.suiteapi.common.Role%5B%5D\))([Role](Role.html "class in com.appiancorp.suiteapi.common")[] roles)`

    Removes any roles that are currently set and sets the roles to the given data.

    `void`

    `[setRoles](#setRoles\(java.util.Collection\))([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [Role](Role.html "class in com.appiancorp.suiteapi.common")> rolesSet)`

    Removes any roles that are currently set and sets the roles to the given data.

    `void`

    `[setSecurity](#setSecurity\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security_)`

    Sets the security bitmap for the object.

    `int`

    `[size](#size\(\))()`

    Returns the number of roles in the role map.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts this role map to xml and returns it as a string.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts this role map node to XML and stores it in a `StringBuilder`.

    `[Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")`

    `[values](#values\(\))()`

    Returns all of the users and groups at any roles.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface java.util.[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")

    `[compute](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#compute\(K,java.util.function.BiFunction\) "class or interface in java.util"), [computeIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfAbsent\(K,java.util.function.Function\) "class or interface in java.util"), [computeIfPresent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#computeIfPresent\(K,java.util.function.BiFunction\) "class or interface in java.util"), [forEach](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#forEach\(java.util.function.BiConsumer\) "class or interface in java.util"), [getOrDefault](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#getOrDefault\(java.lang.Object,V\) "class or interface in java.util"), [merge](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#merge\(K,V,java.util.function.BiFunction\) "class or interface in java.util"), [putIfAbsent](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putIfAbsent\(K,V\) "class or interface in java.util"), [remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object,java.lang.Object\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V\) "class or interface in java.util"), [replace](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replace\(K,V,V\) "class or interface in java.util"), [replaceAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#replaceAll\(java.util.function.BiFunction\) "class or interface in java.util")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Field Details

    -   ### TYPE\_USER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_USER)

    -   ### TYPE\_USER\_UUIDS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_USER\_UUIDS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_USER_UUIDS)

    -   ### TYPE\_AGGREGATE\_USER

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_AGGREGATE\_USER

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_AGGREGATE_USER)

    -   ### TYPE\_GROUP

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_GROUP)

    -   ### TYPE\_GROUP\_UUIDS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_GROUP\_UUIDS

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_GROUP_UUIDS)

    -   ### TYPE\_AGGREGATE\_GROUP

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") TYPE\_AGGREGATE\_GROUP

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.TYPE_AGGREGATE_GROUP)

    -   ### SECURITY\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SECURITY\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.SECURITY_KEY)

    -   ### AGGREGATE\_SECURITY\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AGGREGATE\_SECURITY\_KEY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.common.RoleMap.AGGREGATE_SECURITY_KEY)

-   ## Constructor Details

    -   ### RoleMap

        public RoleMap()

-   ## Method Details

    -   ### init

        protected void init([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") rm)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts this role map to xml and returns it as a string.

        Specified by:

        `[toXML](XMLable.html#toXML\(\))` in interface `[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        a `String` containing the XML serialization of this palette item

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts this role map node to XML and stores it in a `StringBuilder`.

        Specified by:

        `[toXML](XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the `StringBuilder` to append the XML to

    -   ### size

        public int size()

        Returns the number of roles in the role map.

        Specified by:

        `[size](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#size\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Returns:

        the number of roles in the role map

    -   ### isEmpty

        public boolean isEmpty()

        Returns whether this role map contains no roles.

        Specified by:

        `[isEmpty](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#isEmpty\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Returns:

        `true` if the map contains no roles; `false` otherwise

    -   ### containsKey

        public boolean containsKey([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key\_)

        Returns whether this role map contains the role specified.

        Specified by:

        `[containsKey](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#containsKey\(java.lang.Object\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `key_` - the role to check for

        Returns:

        `true` if the map contains the specified role; `false` otherwise

    -   ### containsValue

        public boolean containsValue([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Not implemented.

        Specified by:

        `[containsValue](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#containsValue\(java.lang.Object\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `value_` - The object to look for.

        Returns:

        `false`

    -   ### get

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") get([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key\_)

        Returns the actors at the particular role.

        Specified by:

        `[get](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#get\(java.lang.Object\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `key_` - the role to get the actors at

        Returns:

        a `Map` containing the users and groups, where the keys are the types `TYPE_USER` or `TYPE_GROUP` and the values are `Array` objects of usernames (`String`s) and group IDs (`Long`s) respectively.

    -   ### put

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") put([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Returns the users and groups in the given role.

        Specified by:

        `[put](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#put\(K,V\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `key_` - the role

        `value_` - a `Map` containing the users and groups, where the keys are the types `TYPE_USER` or `TYPE_GROUP` and the values are `Array` objects of usernames (`String`s) and group IDs (`Long`s) respectively.

        Returns:

        the previous value

    -   ### remove

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") remove([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") key\_)

        Remove all users and groups at the role.

        Specified by:

        `[remove](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#remove\(java.lang.Object\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `key_` - The key of the object to remove from the role map.

        Returns:

        a `Map` with the previous users and groups in the role, where the keys are the types (`TYPE_USER` or `TYPE_GROUP`) and the values are `Array` objects of usernames (`String`s) and group IDs (`Long`s) respectively.

    -   ### putAll

        public void putAll([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") t\_)

        Not supported.

        Specified by:

        `[putAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#putAll\(java.util.Map\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Parameters:

        `t_` - value does not matter

        Throws:

        `[UnsupportedOperatorException](exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - always

    -   ### clear

        public void clear()

        Removes all roles and actors.

        Specified by:

        `[clear](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#clear\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    -   ### keySet

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util") keySet()

        Returns all of the roles in the role map.

        Specified by:

        `[keySet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#keySet\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Returns:

        a `Set` containing the roles

    -   ### values

        public [Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util") values()

        Returns all of the users and groups at any roles.

        Specified by:

        `[values](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#values\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Returns:

        a `Collection` containing all of the user and group `Map` objects, where for each `Map`, the keys are the types `TYPE_USER` or `TYPE_GROUP` and the values are `Array` objects of usernames (`String`s) and group IDs (`Long`s) respectively.

    -   ### entrySet

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util") entrySet()

        Returns all of the entries in the role map.

        Specified by:

        `[entrySet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#entrySet\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Returns:

        a `Set` containing `Map.Entry` objects, where the keys in the entries are the roles, and the values are the `Map` objects

        See Also:

        -   [`values()`](#values\(\))

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Compares this role map with another, and returns whether this role map contains exactly the same data as the other.

        Specified by:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#equals\(java.lang.Object\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Parameters:

        `obj` - the other role map

        Returns:

        `true`, if this rolemap equals `o_`; else `false`

    -   ### hashCode

        public int hashCode()

        Returns a hash code for the role map.

        Specified by:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html#hashCode\(\) "class or interface in java.util")` in interface `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        the hash code

    -   ### getActorsInRole

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\[\] getActorsInRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_)

        Returns all of the actors at the given role and of the given type.

        Parameters:

        `role_` - the role to get users for

        `type_` - `TYPE_USER` or `TYPE_GROUP`

        Returns:

        an `Array` of the actor IDs (`String` for users, `Long` for groups)

        See Also:

        -   [`setActorsInRole(String, String, String[])`](#setActorsInRole\(java.lang.String,java.lang.String,java.lang.String%5B%5D\))

    -   ### containsActors

        public boolean containsActors()

        Returns true if there are actors in any role of the role map.

        Returns:

        true if there are actors in any role of the role map

    -   ### setActorsInRole

        public void setActorsInRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Sets the actors in the given role at the given type.

        Parameters:

        `role_` - the role. This parameter is required.

        `type_` - should always be `TYPE_GROUP`

        `id_` - the group ids

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the role is not specified.

        See Also:

        -   [`getActorsInRole(String, String)`](#getActorsInRole\(java.lang.String,java.lang.String\))

    -   ### setActorsInRole

        public void setActorsInRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Sets the actors in the specified role.

        Parameters:

        `role_` - the role. This parameter is required.

        `type_` - should always be `TYPE_USER`

        `id_` - the usernames of the users

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the role is not specified.

        See Also:

        -   [`getActorsInRole(String, String)`](#getActorsInRole\(java.lang.String,java.lang.String\))

    -   ### addActorsToRole

        public void addActorsToRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Adds groups to the specified role.

        Parameters:

        `role_` - the role. This parameter is required. Example: ContentRoleMap.AUTHOR, ContentRoleMap.VIEWER...

        `type_` - should always be `RoleMap.TYPE_GROUP`

        `id_` - the group ids

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the role is not specified.

    -   ### addActorsToRole

        public void addActorsToRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Adds users to the specified role.

        Parameters:

        `role_` - the role. This parameter is required. Example: ContentRoleMap.AUTHOR, ContentRoleMap.VIEWER...

        `type_` - should always be `RoleMap.TYPE_USER`

        `id_` - the usernames of the users to add

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the role is not specified.

    -   ### removeActorsFromRole

        public void removeActorsFromRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Removes groups from the specified role.

        Parameters:

        `role_` - the role

        `type_` - should always be `TYPE_GROUP`

        `id_` - the group ids to remove

    -   ### removeActorsFromRole

        public void removeActorsFromRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] id\_)

        Removes users from the specified role.

        Parameters:

        `role_` - the role

        `type_` - should always be `TYPE_USER`

        `id_` - the usernames to remove

    -   ### setSecurity

        public void setSecurity([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") security\_)

        Sets the security bitmap for the object. Only currently exists for Content. For possible values for Content, see ContentConstants.SEC\_XXX. May be `null`

        Parameters:

        `security_` - the security map

        See Also:

        -   [`getSecurity()`](#getSecurity\(\))

    -   ### getSecurity

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSecurity()

        Gets the security bitmap for the object. Only currently exists for Content. For possible values for Content, see ContentConstants.SEC\_XXX. May be `null`

        Returns:

        the security map

        See Also:

        -   [`setSecurity(Integer)`](#setSecurity\(java.lang.Integer\))

    -   ### setAggregateSecurity

        public void setAggregateSecurity([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") aggregateSecurity\_)

        Sets the aggregate security bitmap for the object. Only currently exists for Content. For possible values for Content, see ContentConstants.SEC\_XXX. May be `null`

        Parameters:

        `aggregateSecurity_` - the aggregate security map

        See Also:

        -   [`getAggregateSecurity()`](#getAggregateSecurity\(\))

    -   ### getAggregateSecurity

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAggregateSecurity()

        Gets the aggregate security bitmap for the object. Only currently exists for Content. For possible values for Content, see ContentConstants.SEC\_XXX. May be `null`

        Returns:

        the aggregate security map

        See Also:

        -   [`setAggregateSecurity(Integer)`](#setAggregateSecurity\(java.lang.Integer\))

    -   ### mergeWith

        public void mergeWith([RoleMap](RoleMap.html "class in com.appiancorp.suiteapi.common") newRM)

        Merges this role map with the given new role map. Only the fields [`TYPE_USER`](#TYPE_USER) and [`TYPE_GROUP`](#TYPE_GROUP) are merged. All other fields are left unchanged. The following rules are used to merge the users and groups:

        1.  The merged role map should be the union of the existing and new role maps.
        2.  When the same user/group is present in both the existing and new role maps, the role from the NEW role map should be used for the user/group.

        Parameters:

        `newRM` - The new role map to merge with this (existing/old) role map.

    -   ### getAllGroupIds

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getAllGroupIds()

        Returns all the group ids in this role map.

    -   ### getAllUsernames

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getAllUsernames()

        Returns all the usernames in this role map.

    -   ### getRoles

        public [Role](Role.html "class in com.appiancorp.suiteapi.common")\[\] getRoles()

        Returns an array of Role objects for all the roles stored in this role map.

    -   ### setRoles

        public void setRoles([Role](Role.html "class in com.appiancorp.suiteapi.common")\[\] roles)

        Removes any roles that are currently set and sets the roles to the given data. If the given array is null or empty the existing roles are cleared. The security vector ([`SECURITY_KEY`](#SECURITY_KEY)) is not affected by this call.

        Parameters:

        `roles` - The roles data to set in the role map.

    -   ### setRoles

        public void setRoles([Collection](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Collection.html "class or interface in java.util")<? extends [Role](Role.html "class in com.appiancorp.suiteapi.common")\> rolesSet)

        Removes any roles that are currently set and sets the roles to the given data. If the given array is null or empty the existing roles are cleared. mimic the call with input as an array of Roles The security vector ([`SECURITY_KEY`](#SECURITY_KEY)) is not affected by this call.

        Parameters:

        `rolesSet` - The set of roles data to set in the role map.

    -   ### getRoleNames

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getRoleNames()

    -   ### removeAllRoles

        protected void removeAllRoles()

    -   ### getRole

        protected [Role](Role.html "class in com.appiancorp.suiteapi.common") getRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)

    -   ### setRole

        protected void setRole([Role](Role.html "class in com.appiancorp.suiteapi.common") role)