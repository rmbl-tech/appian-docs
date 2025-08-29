---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/common/Role.html
original_path: api/com/appiancorp/suiteapi/common/Role.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.common](package-summary.html)

# Class Role

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.common.Role

All Implemented Interfaces:

`[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Role](Role.html "class in com.appiancorp.suiteapi.common")>`

Direct Known Subclasses:

`[ContentRole](../content/ContentRole.html "class in com.appiancorp.suiteapi.content")`

* * *

public class Role extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\>

Holds the data for an individual role within a role map.

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static interface` 

    `[Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")`

    Takes a set of existing permissions and a set of new permissions and decides how to combine them into a result set.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")`

    `[ADDING_STRATEGY](#ADDING_STRATEGY)`

    Returns the result of adding `newPermissions` to `existingPermissions`.

    `static final com.google.common.base.Function<[Role](Role.html "class in com.appiancorp.suiteapi.common"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[asRoleName](#asRoleName)`

    `static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")`

    `[REMOVING_STRATEGY](#REMOVING_STRATEGY)`

    Returns the result of removing `newPermissions` from `existingPermissions`.

    `static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")`

    `[REPLACING_STRATEGY](#REPLACING_STRATEGY)`

    Returns `newPermissions`.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Role](#%3Cinit%3E\(\))()`

    `[Role](#%3Cinit%3E\(com.appiancorp.suiteapi.common.Role\))([Role](Role.html "class in com.appiancorp.suiteapi.common") r)`

    Copy constructor.

    `[Role](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Creates a role with the given name and empty id/uuid sets.

    `[Role](#%3Cinit%3E\(java.lang.String,java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds)`

    Creates a role with the given name and the given ids/uuids.

    `[Role](#%3Cinit%3E\(java.lang.String,java.lang.String%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userUuids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupUuids)`

    Creates a role with the given name and the given ids/uuids.

    `[Role](#%3Cinit%3E\(java.lang.String,java.util.Set,java.util.Set,java.util.Set,java.util.Set\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> usernames, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> groupIds, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> userUuids, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> groupUuids)`

    Creates a role with the given name and the given ids/uuids.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")>`

    `[addPermissions](#addPermissions\(java.util.Set,java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> permissionsToAdd)`

    Returns a new `Set<Role>` with permissions (groups and users) from `permissionsToAdd` added to `existingPermissions`.

    `static [Role](Role.html "class in com.appiancorp.suiteapi.common")`

    `[applyRole](#applyRole\(com.appiancorp.suiteapi.common.Role,com.appiancorp.suiteapi.common.Role,com.appiancorp.suiteapi.common.Role.PermissionMergeStrategy\))([Role](Role.html "class in com.appiancorp.suiteapi.common") existingRole, [Role](Role.html "class in com.appiancorp.suiteapi.common") newRole, [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") strategy)`

    Returns a new `Role` that is the result of applying the `strategy` to `existingRole` and `newRole`.

    `static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")>`

    `[applyRoleMap](#applyRoleMap\(java.util.Set,java.util.Set,com.appiancorp.suiteapi.common.Role.PermissionMergeStrategy\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> existingRoleMap, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> newRoleMap, [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") strategy)`

    Returns a new `Set<Role>` that is the result of applying the permission `strategy` to matching pairs of `Role`s from `existingRoleMap` and `newRoleMap`.

    `int`

    `[compareTo](#compareTo\(com.appiancorp.suiteapi.common.Role\))([Role](Role.html "class in com.appiancorp.suiteapi.common") otherRole)`

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Returns true if the given object is a non-null Role object that has the same name as this Role.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")>`

    `[getGroupIds](#getGroupIds\(\))()`

    Returns the ids of the groups that have this role.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getGroupUuids](#getGroupUuids\(\))()`

    Returns the UUIDs of the groups that have this role.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Returns the name of this role.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getUsernames](#getUsernames\(\))()`

    Returns the usernames of the users that have this role.

    `[Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")>`

    `[getUserUuids](#getUserUuids\(\))()`

    Returns the UUIDs of the users that have this role.

    `int`

    `[hashCode](#hashCode\(\))()`

    Returns the hash code for this Role, calculated as the hash code of this Role's name.

    `static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")>`

    `[removePermissions](#removePermissions\(java.util.Set,java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")> permissionsToRemove)`

    Returns a new `Set<Role>` with permissions (groups and users) from `permissionsToRemove` removed from `existingPermissions`.

    `void`

    `[setGroupIds](#setGroupIds\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> groupIds)`

    `void`

    `[setGroupUuids](#setGroupUuids\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> groupUuids)`

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    `void`

    `[setUsernames](#setUsernames\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> userIds)`

    `void`

    `[setUserUuids](#setUserUuids\(java.util.Set\))([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> userUuids)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### asRoleName

        public static final com.google.common.base.Function<[Role](Role.html "class in com.appiancorp.suiteapi.common"),[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> asRoleName

    -   ### ADDING\_STRATEGY

        public static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") ADDING\_STRATEGY

        Returns the result of adding `newPermissions` to `existingPermissions`. If any new permissions already exist, they are ignored.

    -   ### REMOVING\_STRATEGY

        public static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") REMOVING\_STRATEGY

        Returns the result of removing `newPermissions` from `existingPermissions`.

    -   ### REPLACING\_STRATEGY

        public static final [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") REPLACING\_STRATEGY

        Returns `newPermissions`.

-   ## Constructor Details

    -   ### Role

        public Role()

    -   ### Role

        public Role([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Creates a role with the given name and empty id/uuid sets.

    -   ### Role

        public Role([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> usernames, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> groupIds, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> userUuids, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> groupUuids)

        Creates a role with the given name and the given ids/uuids. Adding/removing to/from the given sets will affect the created role. If `null` is passed in for one of the sets, the role will use a new empty set instead.

    -   ### Role

        public Role([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds)

        Creates a role with the given name and the given ids/uuids.

    -   ### Role

        public Role([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userUuids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupUuids)

        Creates a role with the given name and the given ids/uuids.

    -   ### Role

        public Role([Role](Role.html "class in com.appiancorp.suiteapi.common") r)

        Copy constructor. Creates a role with the same data as the given role (the new role will have its own sets, so changes to the original role will not affect the new role).

-   ## Method Details

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Returns true if the given object is a non-null Role object that has the same name as this Role. Returns false otherwise.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Returns the hash code for this Role, calculated as the hash code of this Role's name.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Returns the name of this role.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

    -   ### getUsernames

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getUsernames()

        Returns the usernames of the users that have this role.

    -   ### setUsernames

        public void setUsernames([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> userIds)

    -   ### getUserUuids

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getUserUuids()

        Returns the UUIDs of the users that have this role. This field is not populated except when using the IX API.

    -   ### setUserUuids

        public void setUserUuids([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> userUuids)

    -   ### getGroupIds

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> getGroupIds()

        Returns the ids of the groups that have this role.

    -   ### setGroupIds

        public void setGroupIds([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> groupIds)

    -   ### getGroupUuids

        public [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> getGroupUuids()

        Returns the UUIDs of the groups that have this role. This field is not populated except when using the IX API.

    -   ### setGroupUuids

        public void setGroupUuids([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> groupUuids)

    -   ### compareTo

        public int compareTo([Role](Role.html "class in com.appiancorp.suiteapi.common") otherRole)

        Specified by:

        `[compareTo](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html#compareTo\(T\) "class or interface in java.lang")` in interface `[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Role](Role.html "class in com.appiancorp.suiteapi.common")>`

    -   ### addPermissions

        public static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> addPermissions([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> permissionsToAdd)

        Returns a new `Set<Role>` with permissions (groups and users) from `permissionsToAdd` added to `existingPermissions`.

    -   ### removePermissions

        public static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> removePermissions([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> existingPermissions, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> permissionsToRemove)

        Returns a new `Set<Role>` with permissions (groups and users) from `permissionsToRemove` removed from `existingPermissions`.

    -   ### applyRoleMap

        public static [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> applyRoleMap([Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> existingRoleMap, [Set](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Set.html "class or interface in java.util")<[Role](Role.html "class in com.appiancorp.suiteapi.common")\> newRoleMap, [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") strategy)

        Returns a new `Set<Role>` that is the result of applying the permission `strategy` to matching pairs of `Role`s from `existingRoleMap` and `newRoleMap`. `Role`s are matched up by role name.

    -   ### applyRole

        public static [Role](Role.html "class in com.appiancorp.suiteapi.common") applyRole([Role](Role.html "class in com.appiancorp.suiteapi.common") existingRole, [Role](Role.html "class in com.appiancorp.suiteapi.common") newRole, [Role.PermissionMergeStrategy](Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common") strategy)

        Returns a new `Role` that is the result of applying the `strategy` to `existingRole` and `newRole`. For example, if the strategy was `ADDING_STRATEGY`, this would return a new `Role` with the groups and users of both `newRole` and `existingRole`.