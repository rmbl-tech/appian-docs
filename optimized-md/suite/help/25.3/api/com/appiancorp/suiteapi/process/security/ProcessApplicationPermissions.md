---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/security/ProcessApplicationPermissions.html
original_path: api/com/appiancorp/suiteapi/process/security/ProcessApplicationPermissions.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.security](package-summary.html)

# Class ProcessApplicationPermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.security.ProcessApplicationPermissions

All Implemented Interfaces:

`com.appiancorp.process.security.Permissions`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessApplicationPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.process.security.Permissions

Permissions for the user on the Process Application

See Also:

-   [`ProcessApplicationRoleMap`](../ProcessApplicationRoleMap.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.security.ProcessApplicationPermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessApplicationPermissions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isAccessProcessDesigner](#isAccessProcessDesigner\(\))()`

    `boolean`

    `[isChangeRole](#isChangeRole\(\))()`

    `boolean`

    `[isCreateProcessModel](#isCreateProcessModel\(\))()`

    `boolean`

    `[isEditSecurityMap](#isEditSecurityMap\(\))()`

    `boolean`

    `[isRegisterActivityClass](#isRegisterActivityClass\(\))()`

    `boolean`

    `[isRegisterExceptionType](#isRegisterExceptionType\(\))()`

    `boolean`

    `[isRegisterPalette](#isRegisterPalette\(\))()`

    `boolean`

    `[isRegisterPriority](#isRegisterPriority\(\))()`

    `boolean`

    `[isSetPaths](#isSetPaths\(\))()`

    `boolean`

    `[isUnarchiveProcess](#isUnarchiveProcess\(\))()`

    `boolean`

    `[isUpdateUsernames](#isUpdateUsernames\(\))()`

    `boolean`

    `[isViewAnalytics](#isViewAnalytics\(\))()`

    `boolean`

    `[isViewProcesses](#isViewProcesses\(\))()`

    `boolean`

    `[isViewProcessModels](#isViewProcessModels\(\))()`

    `void`

    `[setAccessProcessDesigner](#setAccessProcessDesigner\(boolean\))(boolean accessProcessDesigner_)`

    `void`

    `[setChangeRole](#setChangeRole\(boolean\))(boolean changeRole_)`

    `void`

    `[setCreateProcessModel](#setCreateProcessModel\(boolean\))(boolean createProcessModel_)`

    `void`

    `[setEditSecurityMap](#setEditSecurityMap\(boolean\))(boolean editSecurityMap_)`

    `void`

    `[setRegisterActivityClass](#setRegisterActivityClass\(boolean\))(boolean registerActivityClass_)`

    `void`

    `[setRegisterExceptionType](#setRegisterExceptionType\(boolean\))(boolean registerExceptionType)`

    `void`

    `[setRegisterPalette](#setRegisterPalette\(boolean\))(boolean registerPalette_)`

    `void`

    `[setRegisterPriority](#setRegisterPriority\(boolean\))(boolean registerPriority_)`

    `void`

    `[setSetPaths](#setSetPaths\(boolean\))(boolean setPaths_)`

    `void`

    `[setUnarchiveProcess](#setUnarchiveProcess\(boolean\))(boolean unarchiveProcess_)`

    `void`

    `[setUpdateUsernames](#setUpdateUsernames\(boolean\))(boolean updateUsernames_)`

    `void`

    `[setViewAnalytics](#setViewAnalytics\(boolean\))(boolean viewAnalytics_)`

    `void`

    `[setViewProcesses](#setViewProcesses\(boolean\))(boolean viewProcesses_)`

    `void`

    `[setViewProcessModels](#setViewProcessModels\(boolean\))(boolean viewProcessModels_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessApplicationPermissions

        public ProcessApplicationPermissions()

-   ## Method Details

    -   ### isRegisterExceptionType

        public boolean isRegisterExceptionType()

        Returns:

        `true` if the user can register process application exceptions, else `false`

    -   ### setRegisterExceptionType

        public void setRegisterExceptionType(boolean registerExceptionType)

        See Also:

        -   [`isRegisterExceptionType()`](#isRegisterExceptionType\(\))

    -   ### isAccessProcessDesigner

        public boolean isAccessProcessDesigner()

        Returns:

        `true` if the user can see the modeler, else `false`

    -   ### setAccessProcessDesigner

        public void setAccessProcessDesigner(boolean accessProcessDesigner\_)

        See Also:

        -   [`isAccessProcessDesigner()`](#isAccessProcessDesigner\(\))

    -   ### isCreateProcessModel

        public boolean isCreateProcessModel()

        Returns:

        `true` if the user can create and save a process model, else `false`

    -   ### setCreateProcessModel

        public void setCreateProcessModel(boolean createProcessModel\_)

        See Also:

        -   [`isCreateProcessModel()`](#isCreateProcessModel\(\))

    -   ### isEditSecurityMap

        public boolean isEditSecurityMap()

        Returns:

        `true` if the user can change security settings for process models and processes, else `false`. By default application security is not active, but can be turned on by setting NO\_APP\_SEC=0 in server/process/common/pc.properties

    -   ### setEditSecurityMap

        public void setEditSecurityMap(boolean editSecurityMap\_)

        See Also:

        -   [`isEditSecurityMap()`](#isEditSecurityMap\(\))

    -   ### isRegisterActivityClass

        public boolean isRegisterActivityClass()

        Returns:

        `true` if the user can add custom activity classes, else `false`

        See Also:

        -   [`ProcessAdministrationService.registerActivityClassSchema(com.appiancorp.suiteapi.process.ActivityClassSchema)`](../ProcessAdministrationService.html#registerActivityClassSchema\(com.appiancorp.suiteapi.process.ActivityClassSchema\))

    -   ### setRegisterActivityClass

        public void setRegisterActivityClass(boolean registerActivityClass\_)

        See Also:

        -   [`isRegisterActivityClass()`](#isRegisterActivityClass\(\))

    -   ### isRegisterPalette

        public boolean isRegisterPalette()

        Returns:

        `true` if the user can register custom palettes, else `false`

    -   ### setRegisterPalette

        public void setRegisterPalette(boolean registerPalette\_)

        See Also:

        -   [`isRegisterPalette()`](#isRegisterPalette\(\))

    -   ### isViewAnalytics

        public boolean isViewAnalytics()

        Returns:

        `true` if the user can see the analytics for processes, else `false`

    -   ### setViewAnalytics

        public void setViewAnalytics(boolean viewAnalytics\_)

        See Also:

        -   [`isViewAnalytics()`](#isViewAnalytics\(\))

    -   ### isViewProcesses

        public boolean isViewProcesses()

        Returns:

        `true` if the user can see processes, else `false`

    -   ### setViewProcesses

        public void setViewProcesses(boolean viewProcesses\_)

        See Also:

        -   [`isViewProcesses()`](#isViewProcesses\(\))

    -   ### isViewProcessModels

        public boolean isViewProcessModels()

        Returns:

        `true` if the user can view process models in the modeler, else `false`

    -   ### setViewProcessModels

        public void setViewProcessModels(boolean viewProcessModels\_)

        See Also:

        -   [`isViewProcessModels()`](#isViewProcessModels\(\))

    -   ### isUnarchiveProcess

        public boolean isUnarchiveProcess()

        Returns:

        `true` if the user can reinstate an archived process, else `false`

        See Also:

        -   [`ProcessExecutionService.unarchiveProcess(Long)`](../ProcessExecutionService.html#unarchiveProcess\(java.lang.Long\))

    -   ### setUnarchiveProcess

        public void setUnarchiveProcess(boolean unarchiveProcess\_)

        See Also:

        -   [`isUnarchiveProcess()`](#isUnarchiveProcess\(\))

    -   ### isChangeRole

        public boolean isChangeRole()

        Returns:

        `true` if the user can change the process application role map, else `false`

    -   ### setChangeRole

        public void setChangeRole(boolean changeRole\_)

        See Also:

        -   [`isChangeRole()`](#isChangeRole\(\))

    -   ### isRegisterPriority

        public boolean isRegisterPriority()

        Returns:

        `true` if the user can register priorities of process application, else `false`

    -   ### setRegisterPriority

        public void setRegisterPriority(boolean registerPriority\_)

        See Also:

        -   [`isRegisterPriority()`](#isRegisterPriority\(\))

    -   ### isSetPaths

        public boolean isSetPaths()

        Returns:

        `true` if the user can set the currentNode paths or archive paths, else `false`

    -   ### setSetPaths

        public void setSetPaths(boolean setPaths\_)

        See Also:

        -   [`isSetPaths()`](#isSetPaths\(\))

    -   ### isUpdateUsernames

        public boolean isUpdateUsernames()

        Returns:

        `true` if the user can update the usernames, else `false`

    -   ### setUpdateUsernames

        public void setUpdateUsernames(boolean updateUsernames\_)

        See Also:

        -   [`isUpdateUsernames()`](#isUpdateUsernames\(\))