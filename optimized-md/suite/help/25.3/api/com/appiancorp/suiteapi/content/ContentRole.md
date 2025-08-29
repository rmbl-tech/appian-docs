---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentRole.html
original_path: api/com/appiancorp/suiteapi/content/ContentRole.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Class ContentRole

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Role](../common/Role.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.content.ContentRole

All Implemented Interfaces:

`[Comparable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Comparable.html "class or interface in java.lang")<[Role](../common/Role.html "class in com.appiancorp.suiteapi.common")>`

* * *

public class ContentRole extends [Role](../common/Role.html "class in com.appiancorp.suiteapi.common")

Holds the data for an individual role within a Content object's role map.

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.suiteapi.common.[Role](../common/Role.html "class in com.appiancorp.suiteapi.common")

    `[Role.PermissionMergeStrategy](../common/Role.PermissionMergeStrategy.html "interface in com.appiancorp.suiteapi.common")`

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.common.[Role](../common/Role.html "class in com.appiancorp.suiteapi.common")

    `[ADDING_STRATEGY](../common/Role.html#ADDING_STRATEGY), [asRoleName](../common/Role.html#asRoleName), [REMOVING_STRATEGY](../common/Role.html#REMOVING_STRATEGY), [REPLACING_STRATEGY](../common/Role.html#REPLACING_STRATEGY)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ContentRole](#%3Cinit%3E\(\))()`

    `[ContentRole](#%3Cinit%3E\(com.appiancorp.suiteapi.common.Role\))([Role](../common/Role.html "class in com.appiancorp.suiteapi.common") role)`

    `[ContentRole](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isAllowForAll](#isAllowForAll\(\))()`

    Returns whether all users have this role automatically.

    `boolean`

    `[isInherit](#isInherit\(\))()`

    Returns whether the users/groups that have this role are inherited from the parent object.

    `void`

    `[setAllowForAll](#setAllowForAll\(boolean\))(boolean allowForAll)`

    `void`

    `[setInherit](#setInherit\(boolean\))(boolean inherit)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Role](../common/Role.html "class in com.appiancorp.suiteapi.common")

    `[addPermissions](../common/Role.html#addPermissions\(java.util.Set,java.util.Set\)), [applyRole](../common/Role.html#applyRole\(com.appiancorp.suiteapi.common.Role,com.appiancorp.suiteapi.common.Role,com.appiancorp.suiteapi.common.Role.PermissionMergeStrategy\)), [applyRoleMap](../common/Role.html#applyRoleMap\(java.util.Set,java.util.Set,com.appiancorp.suiteapi.common.Role.PermissionMergeStrategy\)), [compareTo](../common/Role.html#compareTo\(com.appiancorp.suiteapi.common.Role\)), [equals](../common/Role.html#equals\(java.lang.Object\)), [getGroupIds](../common/Role.html#getGroupIds\(\)), [getGroupUuids](../common/Role.html#getGroupUuids\(\)), [getName](../common/Role.html#getName\(\)), [getUsernames](../common/Role.html#getUsernames\(\)), [getUserUuids](../common/Role.html#getUserUuids\(\)), [hashCode](../common/Role.html#hashCode\(\)), [removePermissions](../common/Role.html#removePermissions\(java.util.Set,java.util.Set\)), [setGroupIds](../common/Role.html#setGroupIds\(java.util.Set\)), [setGroupUuids](../common/Role.html#setGroupUuids\(java.util.Set\)), [setName](../common/Role.html#setName\(java.lang.String\)), [setUsernames](../common/Role.html#setUsernames\(java.util.Set\)), [setUserUuids](../common/Role.html#setUserUuids\(java.util.Set\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ContentRole

        public ContentRole()

    -   ### ContentRole

        public ContentRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") roleName)

    -   ### ContentRole

        public ContentRole([Role](../common/Role.html "class in com.appiancorp.suiteapi.common") role)

-   ## Method Details

    -   ### isInherit

        public boolean isInherit()

        Returns whether the users/groups that have this role are inherited from the parent object.

    -   ### setInherit

        public void setInherit(boolean inherit)

    -   ### isAllowForAll

        public boolean isAllowForAll()

        Returns whether all users have this role automatically.

    -   ### setAllowForAll

        public void setAllowForAll(boolean allowForAll)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](../common/Role.html#toString\(\))` in class `[Role](../common/Role.html "class in com.appiancorp.suiteapi.common")`