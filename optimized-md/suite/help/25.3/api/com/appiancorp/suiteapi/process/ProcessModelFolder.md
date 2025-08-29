---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ProcessModelFolder.html
original_path: api/com/appiancorp/suiteapi/process/ProcessModelFolder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ProcessModelFolder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.ProcessModelFolder

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class ProcessModelFolder extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Bean that represents a folder into which [`ProcessModel`](ProcessModel.html "class in com.appiancorp.suiteapi.process")s can be stored. Folders are organized hierarchically, and can contain either process models or other process model folders.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ProcessModelFolder)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[MY_MODELS_FOLDER_ID](#MY_MODELS_FOLDER_ID)`

    The id of the My Models folder.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Sort by the Creator (username of the creator) field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Sort by the Date Created field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_MODIFIED](#SORT_BY_DATE_MODIFIED)`

    Sort by the Date Modified

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Sort by the Description field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Sort by the ID field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Sort by the Name field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUM_CHILD_FOLDERS](#SORT_BY_NUM_CHILD_FOLDERS)`

    Sort by number of child folders

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_PROCESS_MODELS](#SORT_BY_NUMBER_PROCESS_MODELS)`

    Sort by the Number Process Models (number of process models that the folder contains) field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_FOLDER_ID](#SORT_BY_PARENT_FOLDER_ID)`

    Sort by the Parent Folder ID field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_FOLDER_NAME](#SORT_BY_PARENT_FOLDER_NAME)`

    Sort by the Parent Folder Name field

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Sort by the Type field

    `static final int`

    `[TYPE_COMMUNITY](#TYPE_COMMUNITY)`

    Constant indicating that a folder is of type community.

    `static final int`

    `[TYPE_PRIVATE](#TYPE_PRIVATE)`

    Constant indicating that a folder is of type private.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ProcessModelFolder](#%3Cinit%3E\(\))()`

    `[ProcessModelFolder](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAncestorFolderIds](#getAncestorFolderIds\(\))()`

    Gets the folder's ancestor folder ids

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAncestorFolderNames](#getAncestorFolderNames\(\))()`

    Gets the folder's ancestor folder names

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Gets the user who created this folder.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Gets the date on which this folder was created.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateModified](#getDateModified\(\))()`

    Gets the date on which this folder was modified.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Gets a description of this folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getNameEscapeJavascript](#getNameEscapeJavascript\(\))()`

    Retrieve the folder name, escaped into its JavaScript String form (e.g.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfChildFolders](#getNumberOfChildFolders\(\))()`

    Gets the number of child folders that this folder has.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfProcessModels](#getNumberOfProcessModels\(\))()`

    Gets the number of process models that are in this folder.

    `int`

    `[getObjectType](#getObjectType\(\))()`

    Gets the type of this object, which should always be `TypedVariable.PROCESSMODEL_FOLDER`.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentFolderId](#getParentFolderId\(\))()`

    Gets the parent of this folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentFolderName](#getParentFolderName\(\))()`

    Gets the name of the parent of this folder.

    `[ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security")`

    `[getPermissions](#getPermissions\(\))()`

    Gets the permissions that the currently logged-in user has on this folder.

    `static int`

    `[getSortProperty](#getSortProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Gets the (zero-based) index of the sort property referred to by the given attribute.

    `int`

    `[getType](#getType\(\))()`

    Gets the type of this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Get the uuid of this process model folder.

    `boolean`

    `[isSpecial](#isSpecial\(\))()`

    Returns whether this is the special "My Models" folder.

    `void`

    `[setAncestorFolderIds](#setAncestorFolderIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ancestorFolderIds_)`

    Sets the ancestor folder ids for this folder

    `void`

    `[setAncestorFolderNames](#setAncestorFolderNames\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] ancestorFolderNames_)`

    Sets the ancestor folder names for this folder

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator_)`

    Sets the user who created this folder.

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateCreated_)`

    Sets the date on which this folder was created.

    `void`

    `[setDateModified](#setDateModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateModified_)`

    Sets the date on which this folder was modified.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Sets a description of this folder.

    `void`

    `[setNumberOfChildFolders](#setNumberOfChildFolders\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfChildFolders_)`

    Sets the number of child folders that this folder has.

    `void`

    `[setNumberOfProcessModels](#setNumberOfProcessModels\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfProcessModels_)`

    Sets the number of process models that are in this folder.

    `void`

    `[setObjectType](#setObjectType\(int\))(int objectType_)`

    Sets the type of this object, which should always be `TypedVariable.PROCESSMODEL_FOLDER`.

    `void`

    `[setParentFolderId](#setParentFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId_)`

    Sets the parent of this folder.

    `void`

    `[setParentFolderName](#setParentFolderName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentFolderName_)`

    Sets the name of the parent of this folder.

    `void`

    `[setPermissions](#setPermissions\(com.appiancorp.suiteapi.process.security.ProcessModelFolderPermissions\))([ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions_)`

    Sets the permissions that the currently logged-in user has on this folder.

    `void`

    `[setSpecial](#setSpecial\(boolean\))(boolean special_)`

    Sets whether this is the special "My Models" folder or not.

    `void`

    `[setType](#setType\(int\))(int type_)`

    Sets the type of this folder

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Set the uuid of this process model folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Sort by the ID field

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Sort by the Name field

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Sort by the Description field

    -   ### SORT\_BY\_PARENT\_FOLDER\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_FOLDER\_ID

        Sort by the Parent Folder ID field

    -   ### SORT\_BY\_PARENT\_FOLDER\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_FOLDER\_NAME

        Sort by the Parent Folder Name field

    -   ### SORT\_BY\_NUMBER\_PROCESS\_MODELS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_PROCESS\_MODELS

        Sort by the Number Process Models (number of process models that the folder contains) field

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Sort by the Date Created field

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Sort by the Creator (username of the creator) field

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Sort by the Type field

    -   ### SORT\_BY\_DATE\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_MODIFIED

        Sort by the Date Modified

    -   ### SORT\_BY\_NUM\_CHILD\_FOLDERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUM\_CHILD\_FOLDERS

        Sort by number of child folders

    -   ### TYPE\_COMMUNITY

        public static final int TYPE\_COMMUNITY

        Constant indicating that a folder is of type community. This includes all folders other than the "My Models" folder and sub-folders of "My Models".

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessModelFolder.TYPE_COMMUNITY)

    -   ### TYPE\_PRIVATE

        public static final int TYPE\_PRIVATE

        Constant indicating that a folder is of type private. The "My Models" folder and sub-folders of "My Models" are of type private.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.ProcessModelFolder.TYPE_PRIVATE)

    -   ### MY\_MODELS\_FOLDER\_ID

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") MY\_MODELS\_FOLDER\_ID

        The id of the My Models folder. This id can be used to retrieve the My Models folder for any user using the API [`ProcessDesignService.getFolder(Long)`](ProcessDesignService.html#getFolder\(java.lang.Long\)). The id is the same for all users, because the service context used when invoking the API determines the actual folder that is returned.

-   ## Constructor Details

    -   ### ProcessModelFolder

        public ProcessModelFolder()

    -   ### ProcessModelFolder

        public ProcessModelFolder([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

-   ## Method Details

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Get the uuid of this process model folder.

        Overrides:

        `[getUuid](../common/Identity.html#getUuid\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        The uuid.

        See Also:

        -   [`Identity.setUuid(String)`](../common/Identity.html#setUuid\(java.lang.String\))

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Set the uuid of this process model folder.

        Overrides:

        `[setUuid](../common/Identity.html#setUuid\(java.lang.String\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Parameters:

        `uuid_` - The uuid.

        See Also:

        -   [`Identity.getUuid()`](../common/Identity.html#getUuid\(\))

    -   ### getAncestorFolderNames

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAncestorFolderNames()

        Gets the folder's ancestor folder names

        Returns:

        the names of the ancestor folders for this folder

    -   ### setAncestorFolderNames

        public void setAncestorFolderNames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] ancestorFolderNames\_)

        Sets the ancestor folder names for this folder

        Parameters:

        `ancestorFolderNames_` - the names to be set

        See Also:

        -   [`getAncestorFolderNames()`](#getAncestorFolderNames\(\))

    -   ### getAncestorFolderIds

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAncestorFolderIds()

        Gets the folder's ancestor folder ids

        Returns:

        the ids of the folder's ancestor folders

    -   ### setAncestorFolderIds

        public void setAncestorFolderIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ancestorFolderIds\_)

        Sets the ancestor folder ids for this folder

        Parameters:

        `ancestorFolderIds_` - the ids to set

        See Also:

        -   [`getAncestorFolderIds()`](#getAncestorFolderIds\(\))

    -   ### getNumberOfChildFolders

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfChildFolders()

        Gets the number of child folders that this folder has.

        Returns:

        the number of child folders that this folder has.

    -   ### setNumberOfChildFolders

        public void setNumberOfChildFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfChildFolders\_)

        Sets the number of child folders that this folder has.

        Parameters:

        `numberOfChildFolders_` - the number of child folders that this folder has.

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Gets a description of this folder.

        Returns:

        a description of this folder.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Sets a description of this folder.

        Parameters:

        `description_` - a description of this folder.

    -   ### getParentFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentFolderId()

        Gets the parent of this folder.

        Returns:

        the id of the folder that contains this folder.

    -   ### setParentFolderId

        public void setParentFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId\_)

        Sets the parent of this folder.

        Parameters:

        `parentFolderId_` - the id of the folder that contains this folder.

    -   ### getParentFolderName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentFolderName()

        Gets the name of the parent of this folder.

        Returns:

        the name of the folder that contains this folder.

    -   ### setParentFolderName

        public void setParentFolderName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") parentFolderName\_)

        Sets the name of the parent of this folder.

        Parameters:

        `parentFolderName_` - the id of the folder that contains this folder.

    -   ### getNumberOfProcessModels

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfProcessModels()

        Gets the number of process models that are in this folder.

        Returns:

        the number of process models that are in this folder.

    -   ### setNumberOfProcessModels

        public void setNumberOfProcessModels([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfProcessModels\_)

        Sets the number of process models that are in this folder.

        Parameters:

        `numberOfProcessModels_` - the number of process models that are in this folder.

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Gets the date on which this folder was created.

        Returns:

        the date on which this folder was created.

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateCreated\_)

        Sets the date on which this folder was created.

        Parameters:

        `dateCreated_` - the date on which this folder was created.

    -   ### getDateModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateModified()

        Gets the date on which this folder was modified.

        Returns:

        the date on which this folder was modified.

    -   ### setDateModified

        public void setDateModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dateModified\_)

        Sets the date on which this folder was modified.

        Parameters:

        `dateModified_` - the date on which this folder was modified.

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Gets the user who created this folder.

        Returns:

        the username of the user who created this folder.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") creator\_)

        Sets the user who created this folder.

        Parameters:

        `creator_` - the username of the user who created this folder.

    -   ### getPermissions

        public [ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") getPermissions()

        Gets the permissions that the currently logged-in user has on this folder.

        Returns:

        the permissions that the currently logged-in user has on this folder.

    -   ### setPermissions

        public void setPermissions([ProcessModelFolderPermissions](security/ProcessModelFolderPermissions.html "class in com.appiancorp.suiteapi.process.security") permissions\_)

        Sets the permissions that the currently logged-in user has on this folder.

        Parameters:

        `permissions_` - the permissions that the currently logged-in user has on this folder.

    -   ### getType

        public int getType()

        Gets the type of this folder

        Returns:

        the type of this folder, as one of the `TYPE_XXX` constants.

    -   ### setType

        public void setType(int type\_)

        Sets the type of this folder

        Parameters:

        `type_` - the type of this folder, which should be one of the `TYPE_XXX` constants.

    -   ### isSpecial

        public boolean isSpecial()

        Returns whether this is the special "My Models" folder.

    -   ### setSpecial

        public void setSpecial(boolean special\_)

        Sets whether this is the special "My Models" folder or not.

        Parameters:

        `special_` - `true`, if this is the special "My Models" folder, and `false` otherwise.

    -   ### getSortProperty

        public static int getSortProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Gets the (zero-based) index of the sort property referred to by the given attribute.

        Parameters:

        `attribute_` - the name of a property of this bean

        Returns:

        the index on which to sort, or 1 if the attribute is not recognized.

    -   ### getObjectType

        public int getObjectType()

        Gets the type of this object, which should always be `TypedVariable.PROCESSMODEL_FOLDER`.

        Returns:

        the type of this object

    -   ### setObjectType

        public void setObjectType(int objectType\_)

        Sets the type of this object, which should always be `TypedVariable.PROCESSMODEL_FOLDER`.

        Parameters:

        `objectType_` - the type of this object

    -   ### getNameEscapeJavascript

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getNameEscapeJavascript()

        Retrieve the folder name, escaped into its JavaScript String form (e.g. a tab becomes the characters '\\\\' and 't')

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[Identity](../common/Identity.html#toString\(\))`

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object