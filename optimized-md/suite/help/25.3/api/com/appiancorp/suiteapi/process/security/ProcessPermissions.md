---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/security/ProcessPermissions.html
original_path: api/com/appiancorp/suiteapi/process/security/ProcessPermissions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.security](package-summary.html)

# Class ProcessPermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.security.ProcessPermissions

All Implemented Interfaces:

`com.appiancorp.process.security.Permissions`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.process.security.Permissions

This class encapsulates the permissions of a user for a particular process

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.security.ProcessPermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessPermissions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isAddAttachment](#isAddAttachment\(\))()`

    Determines whether the user can add attachments or notes to the process

    `boolean`

    `[isArchive](#isArchive\(\))()`

    Determines whether the user can archive the process

    `boolean`

    `[isChangeRole](#isChangeRole\(\))()`

    Determines whether the user can change security settings on the process

    `boolean`

    `[isDelete](#isDelete\(\))()`

    Determines whether the user can delete the process

    `boolean`

    `[isModifyInFlight](#isModifyInFlight\(\))()`

    Determines whether the user can modify the process in-flight.

    `boolean`

    `[isRemoveAttachment](#isRemoveAttachment\(\))()`

    Determines whether the user can remove attachments or notes from the process

    `boolean`

    `[isStopAndPause](#isStopAndPause\(\))()`

    Determines whether the user can stop and pause the process

    `boolean`

    `[isUpdateVariables](#isUpdateVariables\(\))()`

    Determines whether the user can update process variables.

    `boolean`

    `[isViewNodeReport](#isViewNodeReport\(\))()`

    Determines whether the user can view reports on nodes of the process

    `boolean`

    `[isViewReport](#isViewReport\(\))()`

    Determines whether the user can view reports on the process

    `boolean`

    `[isViewStatus](#isViewStatus\(\))()`

    Determines whether the user can view the status the process

    `void`

    `[setAddAttachment](#setAddAttachment\(boolean\))(boolean addAttachment_)`

    `void`

    `[setArchive](#setArchive\(boolean\))(boolean archive_)`

    `void`

    `[setChangeRole](#setChangeRole\(boolean\))(boolean changeRole_)`

    `void`

    `[setDelete](#setDelete\(boolean\))(boolean delete_)`

    `void`

    `[setModifyInFlight](#setModifyInFlight\(boolean\))(boolean modifyInFlight_)`

    `void`

    `[setRemoveAttachment](#setRemoveAttachment\(boolean\))(boolean removeAttachment_)`

    `void`

    `[setStopAndPause](#setStopAndPause\(boolean\))(boolean stopAndPause_)`

    `void`

    `[setUpdateVariables](#setUpdateVariables\(boolean\))(boolean updateVariables_)`

    `void`

    `[setViewNodeReport](#setViewNodeReport\(boolean\))(boolean viewNodeReport_)`

    `void`

    `[setViewReport](#setViewReport\(boolean\))(boolean viewReport_)`

    `void`

    `[setViewStatus](#setViewStatus\(boolean\))(boolean viewStatus_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessPermissions

        public ProcessPermissions()

-   ## Method Details

    -   ### isAddAttachment

        public boolean isAddAttachment()

        Determines whether the user can add attachments or notes to the process

        Returns:

        `true` if the user can add attachments or notes to the process; `false` otherwise

    -   ### setAddAttachment

        public void setAddAttachment(boolean addAttachment\_)

        See Also:

        -   [`isAddAttachment()`](#isAddAttachment\(\))

    -   ### isChangeRole

        public boolean isChangeRole()

        Determines whether the user can change security settings on the process

        Returns:

        `true` if the user can change security settings on the process; `false` otherwise

    -   ### setChangeRole

        public void setChangeRole(boolean changeRole\_)

        See Also:

        -   [`isChangeRole()`](#isChangeRole\(\))

    -   ### isDelete

        public boolean isDelete()

        Determines whether the user can delete the process

        Returns:

        `true` if the user can delete the process; `false` otherwise

    -   ### setDelete

        public void setDelete(boolean delete\_)

        See Also:

        -   [`isDelete()`](#isDelete\(\))

    -   ### isRemoveAttachment

        public boolean isRemoveAttachment()

        Determines whether the user can remove attachments or notes from the process

        Returns:

        `true` if the user can remove attachments or notes from the process; `false` otherwise

    -   ### setRemoveAttachment

        public void setRemoveAttachment(boolean removeAttachment\_)

        See Also:

        -   [`isRemoveAttachment()`](#isRemoveAttachment\(\))

    -   ### isViewReport

        public boolean isViewReport()

        Determines whether the user can view reports on the process

        Returns:

        `true` if the user can view reports on the process; `false` otherwise

    -   ### setViewReport

        public void setViewReport(boolean viewReport\_)

        See Also:

        -   [`isViewReport()`](#isViewReport\(\))

    -   ### isModifyInFlight

        public boolean isModifyInFlight()

        Determines whether the user can modify the process in-flight. This includes all modifications that are not already specified by other properties of this class

        Returns:

        `true` if the user can modify the process in-flight; `false` otherwise

    -   ### setModifyInFlight

        public void setModifyInFlight(boolean modifyInFlight\_)

        See Also:

        -   [`isModifyInFlight()`](#isModifyInFlight\(\))

    -   ### isStopAndPause

        public boolean isStopAndPause()

        Determines whether the user can stop and pause the process

        Returns:

        `true` if the user can stop and pause the process; `false` otherwise

    -   ### setStopAndPause

        public void setStopAndPause(boolean stopAndPause\_)

        See Also:

        -   [`isStopAndPause()`](#isStopAndPause\(\))

    -   ### isViewNodeReport

        public boolean isViewNodeReport()

        Determines whether the user can view reports on nodes of the process

        Returns:

        `true` if the user can view reports on nodes of the process; `false` otherwise

    -   ### setViewNodeReport

        public void setViewNodeReport(boolean viewNodeReport\_)

        See Also:

        -   [`isViewNodeReport()`](#isViewNodeReport\(\))

    -   ### isViewStatus

        public boolean isViewStatus()

        Determines whether the user can view the status the process

        Returns:

        `true` if the user can view the status of the process; `false` otherwise

    -   ### setViewStatus

        public void setViewStatus(boolean viewStatus\_)

        See Also:

        -   [`isViewStatus()`](#isViewStatus\(\))

    -   ### isArchive

        public boolean isArchive()

        Determines whether the user can archive the process

        Returns:

        `true` if the user can archive the process; `false` otherwise

    -   ### setArchive

        public void setArchive(boolean archive\_)

        See Also:

        -   [`isArchive()`](#isArchive\(\))

    -   ### isUpdateVariables

        public boolean isUpdateVariables()

        Determines whether the user can update process variables.

        Returns:

        `true` if the user can archive the process; `false` otherwise

    -   ### setUpdateVariables

        public void setUpdateVariables(boolean updateVariables\_)

        See Also:

        -   [`isUpdateVariables()`](#isUpdateVariables\(\))