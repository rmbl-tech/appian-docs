---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/Folder.html
original_path: api/com/appiancorp/suiteapi/collaboration/Folder.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class Folder

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.Folder

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Folder extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Deprecated.

Use the class [`KnowledgeFolder`](../knowledge/KnowledgeFolder.html "class in com.appiancorp.suiteapi.knowledge") instead.

This class represents a folder in the collaboration application.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.Folder)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[ACCESS_LEVEL_ADMINISTRATIVE](#ACCESS_LEVEL_ADMINISTRATIVE)`

    Deprecated.

    Access level of administrator

    `static final int`

    `[ACCESS_LEVEL_NO_ACCESS](#ACCESS_LEVEL_NO_ACCESS)`

    Deprecated.

    Access level of 'no access'

    `static final int`

    `[ACCESS_LEVEL_READ_ONLY](#ACCESS_LEVEL_READ_ONLY)`

    Deprecated.

    Access level of read-only

    `static final int`

    `[ACCESS_LEVEL_READ_WRITE](#ACCESS_LEVEL_READ_WRITE)`

    Deprecated.

    Access level of read-write

    `static final int`

    `[APPROVED](#APPROVED)`

    Deprecated.

    Field signifying that a folder has been approved (or does not require approval)

    `static final int`

    `[PENDING_APPROVAL_CREATION](#PENDING_APPROVAL_CREATION)`

    Deprecated.

    Field signifying that a folder is pending approval for creation

    `static final int`

    `[PENDING_APPROVAL_DELETION](#PENDING_APPROVAL_DELETION)`

    Deprecated.

    Field signifying that a folder is pending approval for deletion

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMIN_PERMISSION_ONLY](#SORT_BY_ADMIN_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Admin Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMINISTRATOR_GROUPS](#SORT_BY_ADMINISTRATOR_GROUPS)`

    Deprecated.

    Sort by the Administrator Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMINISTRATORS](#SORT_BY_ADMINISTRATORS)`

    Deprecated.

    Sort by the Administrators property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CHANGES_REQUIRE_APPROVAL](#SORT_BY_CHANGES_REQUIRE_APPROVAL)`

    Deprecated.

    Sort by the Changes Require Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

    Sort by the Creator property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

    Sort by the Date Created property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DISCUSSION_THREAD](#SORT_BY_DISCUSSION_THREAD)`

    Deprecated.

    Sort by the Discussion Topic property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_ADMIN_PERMISSION_ONLY](#SORT_BY_GROUP_ADMIN_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Group Admin Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_READ_PERMISSION_ONLY](#SORT_BY_GROUP_READ_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Group Read Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP_WRITE_PERMISSION_ONLY](#SORT_BY_GROUP_WRITE_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Group Write Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    Sort by the Id property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_INHERIT_SECURITY_FROM_PARENT](#SORT_BY_INHERIT_SECURITY_FROM_PARENT)`

    Deprecated.

    Sort by the Inherit Security From Parent property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_ID](#SORT_BY_KNOWLEDGE_CENTER_ID)`

    Deprecated.

    Sort by the Knowledge Center Id property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_NAME](#SORT_BY_KNOWLEDGE_CENTER_NAME)`

    Deprecated.

    Sort by the Knowledge Center Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_SEARCHABLE](#SORT_BY_KNOWLEDGE_CENTER_SEARCHABLE)`

    Deprecated.

    Sort by the Knowledge Center Searchable property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

    Sort by the Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOCUMENTS](#SORT_BY_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort by the Number Of Documents property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_FOLDER_ID](#SORT_BY_PARENT_FOLDER_ID)`

    Deprecated.

    Sort by the Parent Folder Id property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARENT_FOLDER_NAME](#SORT_BY_PARENT_FOLDER_NAME)`

    Deprecated.

    Sort by the Parent Folder Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PENDING_APPROVAL](#SORT_BY_PENDING_APPROVAL)`

    Deprecated.

    Sort by the Pending Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READ_PERMISSION_ONLY](#SORT_BY_READ_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Read Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READER_GROUPS](#SORT_BY_READER_GROUPS)`

    Deprecated.

    Sort by the Reader Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READERS](#SORT_BY_READERS)`

    Deprecated.

    Sort by the Readers property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SEARCHABLE](#SORT_BY_SEARCHABLE)`

    Deprecated.

    Sort by the Searchable property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_WRITE_PERMISSION_ONLY](#SORT_BY_WRITE_PERMISSION_ONLY)`

    Deprecated.

    Sort by the Write Permission Only property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_WRITER_GROUPS](#SORT_BY_WRITER_GROUPS)`

    Deprecated.

    Sort by the Writer Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_WRITERS](#SORT_BY_WRITERS)`

    Deprecated.

    Sort by the Writers property

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_CREATOR](#SORT_COLUMN_CREATOR)`

    Deprecated.

    Sort folders by their creator

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_LAST_MODIFIED_DATE](#SORT_COLUMN_LAST_MODIFIED_DATE)`

    Deprecated.

    Sort folders by the last date of modification of any of the subfolders and documents contained in the folders.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NAME](#SORT_COLUMN_NAME)`

    Deprecated.

    Sort folders by name

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NUMBER_OF_DOCUMENTS](#SORT_COLUMN_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort folders by the number of documents they (and their subfolders) contain

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME](#SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME)`

    Deprecated.

    Sort folders by their parent knowledge center name

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Folder](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Deprecated.

    Gets the groups which have administrative permissions on this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Deprecated.

    Returns a list of all the administrators for this folder.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdminPermissionOnly](#getAdminPermissionOnly\(\))()`

    Deprecated.

    Retrieves the list of users who ONLY have administrative permissions on this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Deprecated.

    Returns the user who created the folder

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Gets the date and time that the folder was created

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getForum](#getForum\(\))()`

    Deprecated.

    Retrieves the unique ID of the Discussion Topic associated with this folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Returns the unique ID of the folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getKnowledgeCenterId](#getKnowledgeCenterId\(\))()`

    Deprecated.

    Retrieves the unique ID of the knowledge center which contains the folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKnowledgeCenterName](#getKnowledgeCenterName\(\))()`

    Deprecated.

    Retrieves the name of the knowledge center which contains the folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Returns the name of the folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDocuments](#getNumberOfDocuments\(\))()`

    Deprecated.

    Gets the number of documents in the folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentFolderId](#getParentFolderId\(\))()`

    Deprecated.

    Gets the unique ID of the parent folder which contains this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getParentFolderName](#getParentFolderName\(\))()`

    Deprecated.

    Gets the name of the parent folder which contains this folder

    `int`

    `[getPendingApproval](#getPendingApproval\(\))()`

    Deprecated.

    Gets the 'pending approval' status of the folder.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getReaderGroups](#getReaderGroups\(\))()`

    Deprecated.

    Gets the groups which have reader permissions on this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getReaders](#getReaders\(\))()`

    Deprecated.

    Retrieves the list of users who have read permissions on this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getReadPermissionOnly](#getReadPermissionOnly\(\))()`

    Deprecated.

    Retrieves the list of users who ONLY have read permissions on this folder

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSortColumn](#getSortColumn\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWritePermissionOnly](#getWritePermissionOnly\(\))()`

    Deprecated.

    Retrieves the list of users who ONLY have write permissions on this folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getWriterGroups](#getWriterGroups\(\))()`

    Deprecated.

    Gets the groups which have write permissions on this folder

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWriters](#getWriters\(\))()`

    Deprecated.

    Retrieves the list of users who have write permissions on this folder

    `boolean`

    `[isChangesRequireApproval](#isChangesRequireApproval\(\))()`

    Deprecated.

    Checks whether changes to this folder require approval from an administrator

    `boolean`

    `[isInheritSecurityFromParent](#isInheritSecurityFromParent\(\))()`

    Deprecated.

    Checks whether the folder inherits its security settings from its parent

    `boolean`

    `[isKnowledgeCenterSearchable](#isKnowledgeCenterSearchable\(\))()`

    Deprecated.

    Checks whether the knowledge center that the folder belongs to is searchable

    `boolean`

    `[isSearchable](#isSearchable\(\))()`

    Deprecated.

    Checks whether this folder is searchable

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups which will have administrative permissions on this folder

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Retrieves the list of users who have administrative permissions on this folder

    `void`

    `[setAdminPermissionOnly](#setAdminPermissionOnly\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the list of users who ONLY have administrative permissions on this folder

    `void`

    `[setChangesRequireApproval](#setChangesRequireApproval\(boolean\))(boolean b_)`

    Deprecated.

    Checks whether changes to the folder require approval before committing

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uid_)`

    Deprecated.

    Assigns the user who created the folder

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp_)`

    Deprecated.

    Sets the date and time that the folder was created

    `void`

    `[setForum](#setForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Associates a Discussion Topic with this folder

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid_)`

    Deprecated.

    Sets the unique ID fo the folder

    `void`

    `[setInheritSecurityFromParent](#setInheritSecurityFromParent\(boolean\))(boolean inheritSecurityFromParent_)`

    Deprecated.

    Sets whether this folder inherits its security settings from its parent

    `void`

    `[setKnowledgeCenterId](#setKnowledgeCenterId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Sets the unique ID of the knowledge center which contains this folder

    `void`

    `[setKnowledgeCenterName](#setKnowledgeCenterName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname_)`

    Deprecated.

    Sets the name of the knowledge center which contains this folder

    `void`

    `[setKnowledgeCenterSearchable](#setKnowledgeCenterSearchable\(boolean\))(boolean b_)`

    Deprecated.

    Sets whether the knowledge center that the folder belongs to is searchable

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname_)`

    Deprecated.

    Sets the name of the folder

    `void`

    `[setNumberOfDocuments](#setNumberOfDocuments\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    Sets the number of documents in the folder

    `void`

    `[setParentFolderId](#setParentFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid_)`

    Deprecated.

    Sets the unique ID of of the parent folder of this folder

    `void`

    `[setParentFolderName](#setParentFolderName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname_)`

    Deprecated.

    Sets the name of the parent folder of this folder

    `void`

    `[setPendingApproval](#setPendingApproval\(int\))(int pendingApproval)`

    Deprecated.

    Sets the 'pending approval' status of the folder.

    `void`

    `[setReaderGroups](#setReaderGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups that have read permissions on this folder

    `void`

    `[setReaders](#setReaders\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users who have read-only permissions on this folder

    `void`

    `[setReadPermissionOnly](#setReadPermissionOnly\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the list of users who ONLY have read permissions on this folder

    `void`

    `[setSearchable](#setSearchable\(boolean\))(boolean b_)`

    Deprecated.

    Sets whether the folder is searchable

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Deprecated.

     

    `void`

    `[setWritePermissionOnly](#setWritePermissionOnly\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids)`

    Deprecated.

    Sets the list of users who ONLY have write permissions on this folder

    `void`

    `[setWriterGroups](#setWriterGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups that have write permissions on this folder

    `void`

    `[setWriters](#setWriters\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users who have read/write permissions on this folder

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_COLUMN\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NAME

        Deprecated.

        Sort folders by name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.SORT_COLUMN_NAME)

    -   ### SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        Deprecated.

        Sort folders by the last date of modification of any of the subfolders and documents contained in the folders. The last date of modification of a `Folder` is its creation date; the last date of modification of a `Document` is its upload date or the date of its last version.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.SORT_COLUMN_LAST_MODIFIED_DATE)

    -   ### SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort folders by the number of documents they (and their subfolders) contain

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.SORT_COLUMN_NUMBER_OF_DOCUMENTS)

    -   ### SORT\_COLUMN\_CREATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_CREATOR

        Deprecated.

        Sort folders by their creator

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.SORT_COLUMN_CREATOR)

    -   ### SORT\_COLUMN\_PARENT\_KNOWLEDGE\_CENTER\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_PARENT\_KNOWLEDGE\_CENTER\_NAME

        Deprecated.

        Sort folders by their parent knowledge center name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME)

    -   ### ACCESS\_LEVEL\_READ\_ONLY

        public static final int ACCESS\_LEVEL\_READ\_ONLY

        Deprecated.

        Access level of read-only

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.ACCESS_LEVEL_READ_ONLY)

    -   ### ACCESS\_LEVEL\_READ\_WRITE

        public static final int ACCESS\_LEVEL\_READ\_WRITE

        Deprecated.

        Access level of read-write

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.ACCESS_LEVEL_READ_WRITE)

    -   ### ACCESS\_LEVEL\_ADMINISTRATIVE

        public static final int ACCESS\_LEVEL\_ADMINISTRATIVE

        Deprecated.

        Access level of administrator

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.ACCESS_LEVEL_ADMINISTRATIVE)

    -   ### ACCESS\_LEVEL\_NO\_ACCESS

        public static final int ACCESS\_LEVEL\_NO\_ACCESS

        Deprecated.

        Access level of 'no access'

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.ACCESS_LEVEL_NO_ACCESS)

    -   ### PENDING\_APPROVAL\_CREATION

        public static final int PENDING\_APPROVAL\_CREATION

        Deprecated.

        Field signifying that a folder is pending approval for creation

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.PENDING_APPROVAL_CREATION)

    -   ### PENDING\_APPROVAL\_DELETION

        public static final int PENDING\_APPROVAL\_DELETION

        Deprecated.

        Field signifying that a folder is pending approval for deletion

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.PENDING_APPROVAL_DELETION)

    -   ### APPROVED

        public static final int APPROVED

        Deprecated.

        Field signifying that a folder has been approved (or does not require approval)

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Folder.APPROVED)

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        Sort by the Id property

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

        Sort by the Name property

    -   ### SORT\_BY\_PARENT\_FOLDER\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_FOLDER\_ID

        Deprecated.

        Sort by the Parent Folder Id property

    -   ### SORT\_BY\_PARENT\_FOLDER\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARENT\_FOLDER\_NAME

        Deprecated.

        Sort by the Parent Folder Name property

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_ID

        Deprecated.

        Sort by the Knowledge Center Id property

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        Deprecated.

        Sort by the Knowledge Center Name property

    -   ### SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        Deprecated.

        Sort by the Changes Require Approval property

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_SEARCHABLE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_SEARCHABLE

        Deprecated.

        Sort by the Knowledge Center Searchable property

    -   ### SORT\_BY\_SEARCHABLE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SEARCHABLE

        Deprecated.

        Sort by the Searchable property

    -   ### SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort by the Number Of Documents property

    -   ### SORT\_BY\_INHERIT\_SECURITY\_FROM\_PARENT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_INHERIT\_SECURITY\_FROM\_PARENT

        Deprecated.

        Sort by the Inherit Security From Parent property

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

        Sort by the Date Created property

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

        Sort by the Creator property

    -   ### SORT\_BY\_READERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READERS

        Deprecated.

        Sort by the Readers property

    -   ### SORT\_BY\_WRITERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_WRITERS

        Deprecated.

        Sort by the Writers property

    -   ### SORT\_BY\_ADMINISTRATORS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMINISTRATORS

        Deprecated.

        Sort by the Administrators property

    -   ### SORT\_BY\_READ\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READ\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Read Permission Only property

    -   ### SORT\_BY\_WRITE\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_WRITE\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Write Permission Only property

    -   ### SORT\_BY\_ADMIN\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMIN\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Admin Permission Only property

    -   ### SORT\_BY\_READER\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READER\_GROUPS

        Deprecated.

        Sort by the Reader Groups property

    -   ### SORT\_BY\_WRITER\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_WRITER\_GROUPS

        Deprecated.

        Sort by the Writer Groups property

    -   ### SORT\_BY\_ADMINISTRATOR\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMINISTRATOR\_GROUPS

        Deprecated.

        Sort by the Administrator Groups property

    -   ### SORT\_BY\_GROUP\_READ\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_READ\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Group Read Permission Only property

    -   ### SORT\_BY\_GROUP\_WRITE\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_WRITE\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Group Write Permission Only property

    -   ### SORT\_BY\_GROUP\_ADMIN\_PERMISSION\_ONLY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP\_ADMIN\_PERMISSION\_ONLY

        Deprecated.

        Sort by the Group Admin Permission Only property

    -   ### SORT\_BY\_DISCUSSION\_THREAD

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DISCUSSION\_THREAD

        Deprecated.

        Sort by the Discussion Topic property

    -   ### SORT\_BY\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PENDING\_APPROVAL

        Deprecated.

        Sort by the Pending Approval property

-   ## Constructor Details

    -   ### Folder

        public Folder()

        Deprecated.

-   ## Method Details

    -   ### getSortColumn

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSortColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Deprecated.

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Deprecated.

        Returns a list of all the administrators for this folder.

        Returns:

        a list of the unique IDs of the users who are administrators for this folder.

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Deprecated.

        Gets the groups which have administrative permissions on this folder

        Returns:

        a list of unique IDs of groups which have administrative permissions

    -   ### isChangesRequireApproval

        public boolean isChangesRequireApproval()

        Deprecated.

        Checks whether changes to this folder require approval from an administrator

        Returns:

        `true` if changes to the page require approval; `false` if otherwise

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        Returns the user who created the folder

        Returns:

        the unique ID of the user who create the folder

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Gets the date and time that the folder was created

        Returns:

        the date and time (combined as a `Timestamp`) that the folder was created

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Returns the unique ID of the folder

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the unique ID of the folder

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### isKnowledgeCenterSearchable

        public boolean isKnowledgeCenterSearchable()

        Deprecated.

        Checks whether the knowledge center that the folder belongs to is searchable

        Returns:

        `true` if the knowledge center is searchable; `false` if otherwise

    -   ### getKnowledgeCenterId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getKnowledgeCenterId()

        Deprecated.

        Retrieves the unique ID of the knowledge center which contains the folder

        Returns:

        the unique ID of the knowledge center

    -   ### getKnowledgeCenterName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKnowledgeCenterName()

        Deprecated.

        Retrieves the name of the knowledge center which contains the folder

        Returns:

        the name of the knowledge center

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Returns the name of the folder

        Returns:

        the name of the folder

    -   ### getNumberOfDocuments

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDocuments()

        Deprecated.

        Gets the number of documents in the folder

        Returns:

        the number of documents in the folder

    -   ### getParentFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentFolderId()

        Deprecated.

        Gets the unique ID of the parent folder which contains this folder

        Returns:

        the unique ID of the parent folder

    -   ### getParentFolderName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getParentFolderName()

        Deprecated.

        Gets the name of the parent folder which contains this folder

        Returns:

        the name of the parent folder

    -   ### getReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getReaders()

        Deprecated.

        Retrieves the list of users who have read permissions on this folder

        Returns:

        an array of unique IDs of the read users

    -   ### getReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getReaderGroups()

        Deprecated.

        Gets the groups which have reader permissions on this folder

        Returns:

        a list of unique IDs of groups which have reader permissions

    -   ### getWriters

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWriters()

        Deprecated.

        Retrieves the list of users who have write permissions on this folder

        Returns:

        an array of unique IDs of the write users

    -   ### getWriterGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getWriterGroups()

        Deprecated.

        Gets the groups which have write permissions on this folder

        Returns:

        a list of unique IDs of groups which have write permissions

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Retrieves the list of users who have administrative permissions on this folder

        Parameters:

        `uids_` - a list of unique IDs of the administrator users

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups which will have administrative permissions on this folder

        Parameters:

        `grids_` - a list of unique IDs of groups to be given administrative permissions

    -   ### setChangesRequireApproval

        public void setChangesRequireApproval(boolean b\_)

        Deprecated.

        Checks whether changes to the folder require approval before committing

        Parameters:

        `b_` - `true` if the changes to the folder require approval; `false` if otherwise

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uid\_)

        Deprecated.

        Assigns the user who created the folder

        Parameters:

        `uid_` - the unique ID of the user who created the folder

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp\_)

        Deprecated.

        Sets the date and time that the folder was created

        Parameters:

        `timestamp_` - the date and time (combined as a `Timestamp`) when the folder was created

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid\_)

        Deprecated.

        Sets the unique ID fo the folder

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `fid_` - the unique ID of the folder

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### setKnowledgeCenterSearchable

        public void setKnowledgeCenterSearchable(boolean b\_)

        Deprecated.

        Sets whether the knowledge center that the folder belongs to is searchable

        Parameters:

        `b_` - `true` if the knowledge center is searchable; `false` if otherwise

    -   ### setSearchable

        public void setSearchable(boolean b\_)

        Deprecated.

        Sets whether the folder is searchable

        Parameters:

        `b_` - `true` if the folder is searchable; `false` if otherwise

    -   ### setKnowledgeCenterId

        public void setKnowledgeCenterId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_)

        Deprecated.

        Sets the unique ID of the knowledge center which contains this folder

        Parameters:

        `kcid_` - the unique ID of the knowledge center which contains this folder

    -   ### setKnowledgeCenterName

        public void setKnowledgeCenterName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname\_)

        Deprecated.

        Sets the name of the knowledge center which contains this folder

        Parameters:

        `kcname_` - the name of the knowledge center which contains this folder

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname\_)

        Deprecated.

        Sets the name of the folder

        Parameters:

        `fname_` - the name of the folder

    -   ### setNumberOfDocuments

        public void setNumberOfDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        Sets the number of documents in the folder

        Parameters:

        `num_` - the number of documents in the folder

    -   ### setParentFolderId

        public void setParentFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid\_)

        Deprecated.

        Sets the unique ID of of the parent folder of this folder

        Parameters:

        `fid_` - the unique ID of of the parent folder of this folder

    -   ### setParentFolderName

        public void setParentFolderName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname\_)

        Deprecated.

        Sets the name of the parent folder of this folder

        Parameters:

        `fname_` - the name of the parent folder of this folder

    -   ### setReaders

        public void setReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users who have read-only permissions on this folder

        Parameters:

        `uids_` - an array of unique IDs of the users who have read-only permissions on this folder

    -   ### setReaderGroups

        public void setReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups that have read permissions on this folder

        Parameters:

        `grids_` - the groups that have read permissions

    -   ### setWriters

        public void setWriters([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users who have read/write permissions on this folder

        Parameters:

        `uids_` - an array of unique IDs of the users who have read/write permissions on this folder

    -   ### setWriterGroups

        public void setWriterGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups that have write permissions on this folder

        Parameters:

        `grids_` - the groups that have write permissions

    -   ### isInheritSecurityFromParent

        public boolean isInheritSecurityFromParent()

        Deprecated.

        Checks whether the folder inherits its security settings from its parent

        Returns:

        true if the folder inherits its security settings from its parent; false otherwise

    -   ### isSearchable

        public boolean isSearchable()

        Deprecated.

        Checks whether this folder is searchable

        Returns:

        `true` if the folder is searchable; `false` if otherwise

    -   ### setInheritSecurityFromParent

        public void setInheritSecurityFromParent(boolean inheritSecurityFromParent\_)

        Deprecated.

        Sets whether this folder inherits its security settings from its parent

        Parameters:

        `inheritSecurityFromParent_` - true if this folder inherits its security settings from its parent; false otherwise

    -   ### getAdminPermissionOnly

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdminPermissionOnly()

        Deprecated.

        Retrieves the list of users who ONLY have administrative permissions on this folder

        Returns:

        a list of unique IDs of users

    -   ### getForum

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getForum()

        Deprecated.

        Retrieves the unique ID of the Discussion Topic associated with this folder

        Returns:

        the unique ID of the Discussion Topic associated with this folder

    -   ### getReadPermissionOnly

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getReadPermissionOnly()

        Deprecated.

        Retrieves the list of users who ONLY have read permissions on this folder

        Returns:

        a list of unique IDs of users

    -   ### getWritePermissionOnly

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWritePermissionOnly()

        Deprecated.

        Retrieves the list of users who ONLY have write permissions on this folder

        Returns:

        a list of unique IDs of users

    -   ### setAdminPermissionOnly

        public void setAdminPermissionOnly([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the list of users who ONLY have administrative permissions on this folder

        Parameters:

        `uids_` - an array of unique IDs of users

    -   ### setForum

        public void setForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_)

        Deprecated.

        Associates a Discussion Topic with this folder

        Parameters:

        `forumId_` - the unique ID of the Discussion Topic

    -   ### setReadPermissionOnly

        public void setReadPermissionOnly([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the list of users who ONLY have read permissions on this folder

        Parameters:

        `uids_` - an array of unique IDs of users

    -   ### setWritePermissionOnly

        public void setWritePermissionOnly([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids)

        Deprecated.

        Sets the list of users who ONLY have write permissions on this folder

        Parameters:

        `uids` - an array of unique IDs of users

    -   ### getPendingApproval

        public int getPendingApproval()

        Deprecated.

        Gets the 'pending approval' status of the folder.

        Returns:

        Returns the 'pending approval': PENDING\_APPROVAL\_CREATION, PENDING\_APPROVAL\_DELETION or APPROVED

    -   ### setPendingApproval

        public void setPendingApproval(int pendingApproval)

        Deprecated.

        Sets the 'pending approval' status of the folder.

        Parameters:

        `pendingApproval` - The 'pending approval' status to set. Can be one of: PENDING\_APPROVAL\_CREATION, PENDING\_APPROVAL\_DELETION or APPROVED

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Deprecated.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Deprecated.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Deprecated.