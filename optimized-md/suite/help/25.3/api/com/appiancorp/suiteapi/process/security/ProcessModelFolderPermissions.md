---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions.html
original_path: api/com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions.html
version: "25.3"
title: "Class ProcessModelFolderPermissions"
page_id: "api/com/appiancorp/suiteapi/process/security/ProcessModelFolderPermissions"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.security](package-summary.html)

# Class ProcessModelFolderPermissions

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.security.ProcessModelFolderPermissions

All Implemented Interfaces:

`com.appiancorp.process.security.Permissions`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ProcessModelFolderPermissions extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.process.security.Permissions

Permissions for the user to folders where process models are stored

See Also:

-   [`ProcessModelFolder`](../ProcessModelFolder.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.security.ProcessModelFolderPermissions)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelFolderPermissions](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[isArchive](#isArchive\(\))()`

    Determines whether the current user can archive the folder

    `boolean`

    `[isChangeRole](#isChangeRole\(\))()`

    Determines whether the current user can change the security settings of the folder

    `boolean`

    `[isCreateSubFolder](#isCreateSubFolder\(\))()`

    Determines whether the current user can create sub-folders of the folder

    `boolean`

    `[isDelete](#isDelete\(\))()`

    Determines whether the current user can delete the folder

    `boolean`

    `[isUpdate](#isUpdate\(\))()`

    Determines whether the current user can update the folder

    `boolean`

    `[isView](#isView\(\))()`

    Determines whether the current user can view the folder

    `void`

    `[setArchive](#setArchive\(boolean\))(boolean archive_)`

    `void`

    `[setChangeRole](#setChangeRole\(boolean\))(boolean changeRole_)`

    `void`

    `[setCreateSubFolder](#setCreateSubFolder\(boolean\))(boolean createSubFolder_)`

    `void`

    `[setDelete](#setDelete\(boolean\))(boolean delete_)`

    `void`

    `[setUpdate](#setUpdate\(boolean\))(boolean update_)`

    `void`

    `[setView](#setView\(boolean\))(boolean view_)`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### ProcessModelFolderPermissions

        public ProcessModelFolderPermissions()

-   ## Method Details

    -   ### isCreateSubFolder

        public boolean isCreateSubFolder()

        Determines whether the current user can create sub-folders of the folder

        Returns:

        `true` if the user can create sub-folders, else `false`

        See Also:

        -   [`ProcessDesignService.createFolder(com.appiancorp.suiteapi.process.ProcessModelFolder)`](../ProcessDesignService.html#createFolder\(com.appiancorp.suiteapi.process.ProcessModelFolder\))

    -   ### setCreateSubFolder

        public void setCreateSubFolder(boolean createSubFolder\_)

        See Also:

        -   [`isCreateSubFolder()`](#isCreateSubFolder\(\))

    -   ### isView

        public boolean isView()

        Determines whether the current user can view the folder

        Returns:

        `true` if the user can see the folder, else `false`

    -   ### setView

        public void setView(boolean view\_)

        See Also:

        -   [`isView()`](#isView\(\))

    -   ### isDelete

        public boolean isDelete()

        Determines whether the current user can delete the folder

        Returns:

        `true` if the user can delete the folder, else `false`

        See Also:

        -   [`ProcessDesignService.deleteFolder(Long)`](../ProcessDesignService.html#deleteFolder\(java.lang.Long\))

    -   ### setDelete

        public void setDelete(boolean delete\_)

        See Also:

        -   [`isDelete()`](#isDelete\(\))

    -   ### isUpdate

        public boolean isUpdate()

        Determines whether the current user can update the folder

        Returns:

        `true` if the user can update the folder, else `false`

        See Also:

        -   [`ProcessDesignService.updateFolder(com.appiancorp.suiteapi.process.ProcessModelFolder)`](../ProcessDesignService.html#updateFolder\(com.appiancorp.suiteapi.process.ProcessModelFolder\))

    -   ### setUpdate

        public void setUpdate(boolean update\_)

        See Also:

        -   [`isUpdate()`](#isUpdate\(\))

    -   ### isChangeRole

        public boolean isChangeRole()

        Determines whether the current user can change the security settings of the folder

        Returns:

        `true` if the user can change the security of the folder, else `false`

        See Also:

        -   [`ProcessDesignService.setActorsInRolesForFolder(Long, String[], String[][], Long[], String[][])`](../ProcessDesignService.html#setActorsInRolesForFolder\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))

    -   ### setChangeRole

        public void setChangeRole(boolean changeRole\_)

        See Also:

        -   [`isChangeRole()`](#isChangeRole\(\))

    -   ### isArchive

        public boolean isArchive()

        Determines whether the current user can archive the folder

        Returns:

        `true` if the user can archive the folder, else `false`

    -   ### setArchive

        public void setArchive(boolean archive\_)

        See Also:

        -   [`isArchive()`](#isArchive\(\))