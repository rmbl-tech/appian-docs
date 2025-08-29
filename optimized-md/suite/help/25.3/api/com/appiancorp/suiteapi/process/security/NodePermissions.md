---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/security/NodePermissions.html
original_path: api/com/appiancorp/suiteapi/process/security/NodePermissions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.security](package-summary.html)

# Class NodePermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.security.NodePermissions

All Implemented Interfaces:

`com.appiancorp.process.security.Permissions`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class NodePermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.process.security.Permissions

Permissions for the user on a given `Task`

See Also:

-   [`TaskSummary`](../TaskSummary.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.security.NodePermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NodePermissions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isAddAttachment](#isAddAttachment\(\))()`

    `boolean`

    `[isAssignToAnyone](#isAssignToAnyone\(\))()`

    `boolean`

    `[isAssignWithinPool](#isAssignWithinPool\(\))()`

    `boolean`

    `[isChangeRole](#isChangeRole\(\))()`

    `boolean`

    `[isComplete](#isComplete\(\))()`

    `boolean`

    `[isModifyInFlight](#isModifyInFlight\(\))()`

    `boolean`

    `[isOverride](#isOverride\(\))()`

    Not currently used

    `boolean`

    `[isReject](#isReject\(\))()`

    `boolean`

    `[isRemoveAttachment](#isRemoveAttachment\(\))()`

    `boolean`

    `[isView](#isView\(\))()`

    `void`

    `[setAddAttachment](#setAddAttachment\(boolean\))(boolean addAttachment_)`

    `void`

    `[setAssignToAnyone](#setAssignToAnyone\(boolean\))(boolean assignToAnyone_)`

    `void`

    `[setAssignWithinPool](#setAssignWithinPool\(boolean\))(boolean assignWithinPool_)`

    `void`

    `[setChangeRole](#setChangeRole\(boolean\))(boolean changeRole_)`

    `void`

    `[setComplete](#setComplete\(boolean\))(boolean complete_)`

    `void`

    `[setModifyInFlight](#setModifyInFlight\(boolean\))(boolean modifyInFlight_)`

    `void`

    `[setOverride](#setOverride\(boolean\))(boolean override_)`

    Not currently used

    `void`

    `[setReject](#setReject\(boolean\))(boolean reject_)`

    `void`

    `[setRemoveAttachment](#setRemoveAttachment\(boolean\))(boolean removeAttachment_)`

    `void`

    `[setView](#setView\(boolean\))(boolean view_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### NodePermissions

        public NodePermissions()

-   ## Method Details

    -   ### isAssignToAnyone

        public boolean isAssignToAnyone()

        Returns:

        `true` if the user can assign the task to anyone, otherwise `false`

    -   ### setAssignToAnyone

        public void setAssignToAnyone(boolean assignToAnyone\_)

        See Also:

        -   [`isAssignToAnyone()`](#isAssignToAnyone\(\))

    -   ### isAssignWithinPool

        public boolean isAssignWithinPool()

        Returns:

        `true` if the user can assign the task to anyone in the assignee pool from design time, otherwise `false`

    -   ### setAssignWithinPool

        public void setAssignWithinPool(boolean assignWithinPool\_)

        See Also:

        -   [`isAssignWithinPool()`](#isAssignWithinPool\(\))

    -   ### isComplete

        public boolean isComplete()

        Returns:

        `true` if the user can complete the task, otherwise `false`

    -   ### setComplete

        public void setComplete(boolean complete\_)

        See Also:

        -   [`isComplete()`](#isComplete\(\))

    -   ### isOverride

        public boolean isOverride()

        Not currently used

    -   ### setOverride

        public void setOverride(boolean override\_)

        Not currently used

    -   ### isReject

        public boolean isReject()

        Returns:

        `true` if the user can reject the task, else `false`

    -   ### setReject

        public void setReject(boolean reject\_)

        See Also:

        -   [`isReject()`](#isReject\(\))

    -   ### isAddAttachment

        public boolean isAddAttachment()

        Returns:

        `true` if the user can add attachments or notes to task, otherwise `false`

    -   ### setAddAttachment

        public void setAddAttachment(boolean addAttachment\_)

        See Also:

        -   [`isAddAttachment()`](#isAddAttachment\(\))

    -   ### isChangeRole

        public boolean isChangeRole()

        Returns:

        `true` if the user can change the rolemap for the task, otherwise `false`

    -   ### setChangeRole

        public void setChangeRole(boolean changeRole\_)

        See Also:

        -   [`isChangeRole()`](#isChangeRole\(\))

    -   ### isRemoveAttachment

        public boolean isRemoveAttachment()

        Returns:

        `true` if the user can remove attachments or notes from the task, otherwise `false`

    -   ### setRemoveAttachment

        public void setRemoveAttachment(boolean removeAttachment\_)

        See Also:

        -   [`isRemoveAttachment()`](#isRemoveAttachment\(\))

    -   ### isView

        public boolean isView()

        Returns:

        `true` if the user can view the task, otherwise `false`

    -   ### setView

        public void setView(boolean view\_)

        See Also:

        -   [`isView()`](#isView\(\))

    -   ### isModifyInFlight

        public boolean isModifyInFlight()

        Returns:

        `true` if the user can modify the task when the process, is in-flight, otherwise `false`. This includes all in-flight modifications that are not covered by the other properties of this class.

    -   ### setModifyInFlight

        public void setModifyInFlight(boolean modifyInFlight\_)

        See Also:

        -   [`isModifyInFlight()`](#isModifyInFlight\(\))