---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html
original_path: api/com/appiancorp/suiteapi/process/security/ProcessModelPermissions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.security](package-summary.html)

# Class ProcessModelPermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.security.ProcessModelPermissions

All Implemented Interfaces:

`com.appiancorp.process.security.Permissions`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessModelPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.process.security.Permissions

Permissions for the user on the Process Model

See Also:

-   [`ProcessModel`](../ProcessModel.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.security.ProcessModelPermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelPermissions](#%3Cinit%3E\(\))()`

    Construct a new `ProcessModelPermissions` object.

    `[ProcessModelPermissions](#%3Cinit%3E\(boolean\))(boolean default_)`

    Construct a new `ProcessModelPermissions` object with all properties set to `default_`

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isAddAttachment](#isAddAttachment\(\))()`

    Determines whether the current user can add attachments or notes to the process model

    `boolean`

    `[isArchive](#isArchive\(\))()`

    Determines whether the current user can archive process models

    `boolean`

    `[isChangeRole](#isChangeRole\(\))()`

    Determines whether the current user can change security settings on the process model

    `boolean`

    `[isDelete](#isDelete\(\))()`

    Determines whether the current user can delete the process model

    `boolean`

    `[isEditAndSave](#isEditAndSave\(\))()`

    Determines whether the current user can edit and save the process model

    `boolean`

    `[isInitiateProcess](#isInitiateProcess\(\))()`

    Determines whether the current user can start processes from the process model

    `boolean`

    `[isOverrideLock](#isOverrideLock\(\))()`

    Determines whether the current user can override the lock on the process model, if any exists

    `boolean`

    `[isPublish](#isPublish\(\))()`

    Determines whether the current user can start publish the process model

    `boolean`

    `[isRemoveAttachment](#isRemoveAttachment\(\))()`

    Determines whether the current user can remove attachments or notes from the process model

    `boolean`

    `[isSimulate](#isSimulate\(\))()`

    Deprecated.

    `boolean`

    `[isView](#isView\(\))()`

    Determines whether the current user can view the process model

    `boolean`

    `[isViewReport](#isViewReport\(\))()`

    Determines whether the current user can view reports about the process model

    `void`

    `[setAddAttachment](#setAddAttachment\(boolean\))(boolean addAttachment_)`

    `void`

    `[setArchive](#setArchive\(boolean\))(boolean archive_)`

    `void`

    `[setChangeRole](#setChangeRole\(boolean\))(boolean changeRole_)`

    `void`

    `[setDelete](#setDelete\(boolean\))(boolean delete_)`

    `void`

    `[setEditAndSave](#setEditAndSave\(boolean\))(boolean editAndSave_)`

    `void`

    `[setInitiateProcess](#setInitiateProcess\(boolean\))(boolean initiateProcess_)`

    `void`

    `[setOverrideLock](#setOverrideLock\(boolean\))(boolean overrideLock_)`

    `void`

    `[setPublish](#setPublish\(boolean\))(boolean publish_)`

    `void`

    `[setRemoveAttachment](#setRemoveAttachment\(boolean\))(boolean removeAttachment_)`

    `void`

    `[setSimulate](#setSimulate\(boolean\))(boolean simulate_)`

    Deprecated.

    `void`

    `[setView](#setView\(boolean\))(boolean view_)`

    `void`

    `[setViewReport](#setViewReport\(boolean\))(boolean viewReport_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelPermissions

        public ProcessModelPermissions()

        Construct a new `ProcessModelPermissions` object. All properties will be `false`

    -   ### ProcessModelPermissions

        public ProcessModelPermissions(boolean default\_)

        Construct a new `ProcessModelPermissions` object with all properties set to `default_`

        Parameters:

        `default_` -

-   ## Method Details

    -   ### isAddAttachment

        public boolean isAddAttachment()

        Determines whether the current user can add attachments or notes to the process model

        Returns:

        `true` if the user can add attachments or notes to the process model, else `false`

    -   ### setAddAttachment

        public void setAddAttachment(boolean addAttachment\_)

        See Also:

        -   [`isAddAttachment()`](#isAddAttachment\(\))

    -   ### isArchive

        public boolean isArchive()

        Determines whether the current user can archive process models

        Returns:

        `true` if the user can archive process models, else `false`

    -   ### setArchive

        public void setArchive(boolean archive\_)

        See Also:

        -   [`isArchive()`](#isArchive\(\))

    -   ### isChangeRole

        public boolean isChangeRole()

        Determines whether the current user can change security settings on the process model

        Returns:

        `true` if the user can change security settings on the process model, else `false`

        See Also:

        -   [`ProcessDesignService.setActorsInRolesForProcessModel(Long, String[], String[][], Long[], String[][])`](../ProcessDesignService.html#setActorsInRolesForProcessModel\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))

    -   ### setChangeRole

        public void setChangeRole(boolean changeRole\_)

        See Also:

        -   [`isChangeRole()`](#isChangeRole\(\))

    -   ### isDelete

        public boolean isDelete()

        Determines whether the current user can delete the process model

        Returns:

        `true` if the user can delete the process model, else `false`

        See Also:

        -   [`ProcessDesignService.deleteProcessModel(java.lang.Long)`](../ProcessDesignService.html#deleteProcessModel\(java.lang.Long\))

    -   ### setDelete

        public void setDelete(boolean delete\_)

        See Also:

        -   [`isDelete()`](#isDelete\(\))

    -   ### isEditAndSave

        public boolean isEditAndSave()

        Determines whether the current user can edit and save the process model

        Returns:

        `true` if the user can edit and save the process model, else `false`

    -   ### setEditAndSave

        public void setEditAndSave(boolean editAndSave\_)

        See Also:

        -   [`isEditAndSave()`](#isEditAndSave\(\))

    -   ### isInitiateProcess

        public boolean isInitiateProcess()

        Determines whether the current user can start processes from the process model

        Returns:

        `true` if the user can start a process from the process model, else `false`

    -   ### setInitiateProcess

        public void setInitiateProcess(boolean initiateProcess\_)

        See Also:

        -   [`isInitiateProcess()`](#isInitiateProcess\(\))

    -   ### isPublish

        public boolean isPublish()

        Determines whether the current user can start publish the process model

        Returns:

        `true` if the user can publish the process model, else `false`

        See Also:

        -   [`ProcessDesignService.publishProcessModel(com.appiancorp.suiteapi.process.ProcessModel)`](../ProcessDesignService.html#publishProcessModel\(com.appiancorp.suiteapi.process.ProcessModel\))

    -   ### setPublish

        public void setPublish(boolean publish\_)

        See Also:

        -   [`isPublish()`](#isPublish\(\))

    -   ### isRemoveAttachment

        public boolean isRemoveAttachment()

        Determines whether the current user can remove attachments or notes from the process model

        Returns:

        `true` if the user can remove attachments or notes from the process model, else `false`

    -   ### setRemoveAttachment

        public void setRemoveAttachment(boolean removeAttachment\_)

        See Also:

        -   [`isRemoveAttachment()`](#isRemoveAttachment\(\))

    -   ### isSimulate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public boolean isSimulate()

        Deprecated.

        Determines whether the current user can run simulations on the process model

        Returns:

        `true` if the user can run simulations on the process model, else `false`

    -   ### setSimulate

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setSimulate(boolean simulate\_)

        Deprecated.

        See Also:

        -   [`isSimulate()`](#isSimulate\(\))

    -   ### isView

        public boolean isView()

        Determines whether the current user can view the process model

        Returns:

        `true` if the user can view the process model, else `false`

    -   ### setView

        public void setView(boolean view\_)

        See Also:

        -   [`isView()`](#isView\(\))

    -   ### isViewReport

        public boolean isViewReport()

        Determines whether the current user can view reports about the process model

        Returns:

        `true` if the user can see reports about the process model, else `false`

    -   ### setViewReport

        public void setViewReport(boolean viewReport\_)

        See Also:

        -   [`isView()`](#isView\(\))

    -   ### isOverrideLock

        public boolean isOverrideLock()

        Determines whether the current user can override the lock on the process model, if any exists

        Returns:

        `true` if the user can override the lock on the process model, else `false`

        See Also:

        -   [`ProcessDesignService.unlockProcessModel(Long, boolean)`](../ProcessDesignService.html#unlockProcessModel\(java.lang.Long,boolean\))

    -   ### setOverrideLock

        public void setOverrideLock(boolean overrideLock\_)

        See Also:

        -   [`isOverrideLock()`](#isOverrideLock\(\))