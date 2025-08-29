---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/Document.html
original_path: api/com/appiancorp/suiteapi/collaboration/Document.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class Document

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.Document

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[DocumentStatistics](DocumentStatistics.html "class in com.appiancorp.suiteapi.collaboration")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Document extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

Use the class [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") instead.

This class represents a versioned document in the collaboration application.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.Document)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[APPROVED](#APPROVED)`

    Deprecated.

    Field signifying that a document has been approved (or does not require approval)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[CURRENT_VERSION](#CURRENT_VERSION)`

    Deprecated.

    Version field for the current version of a document

    `static final int`

    `[PENDING_APPROVAL_CREATION](#PENDING_APPROVAL_CREATION)`

    Deprecated.

    Field signifying that a document is pending approval for creation

    `static final int`

    `[PENDING_APPROVAL_DELETION](#PENDING_APPROVAL_DELETION)`

    Deprecated.

    Field signifying that a document is pending approval for deletion

    `static final boolean`

    `[sizeInKB$TRANSIENT](#sizeInKB$TRANSIENT)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_APPROVED](#SORT_BY_APPROVED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CHANGES_REQUIRE_APPROVAL](#SORT_BY_CHANGES_REQUIRE_APPROVAL)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DISCUSSION_THREAD](#SORT_BY_DISCUSSION_THREAD)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_EXPIRATION_DATE](#SORT_BY_EXPIRATION_DATE)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_EXTENSION](#SORT_BY_EXTENSION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FILE_SYSTEM_ID](#SORT_BY_FILE_SYSTEM_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FOLDER_ID](#SORT_BY_FOLDER_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FOLDER_NAME](#SORT_BY_FOLDER_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_ID](#SORT_BY_KNOWLEDGE_CENTER_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_KNOWLEDGE_CENTER_NAME](#SORT_BY_KNOWLEDGE_CENTER_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LAST_USER_TO_MODIFY](#SORT_BY_LAST_USER_TO_MODIFY)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_LOCKED_BY](#SORT_BY_LOCKED_BY)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_VERSIONS](#SORT_BY_NUMBER_OF_VERSIONS)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARTITION](#SORT_BY_PARTITION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PENDING_APPROVAL](#SORT_BY_PENDING_APPROVAL)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SIZE](#SORT_BY_SIZE)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STATUS](#SORT_BY_STATUS)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VERSION_ID](#SORT_BY_VERSION_ID)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_EXPIRATION_DATE](#SORT_COLUMN_EXPIRATION_DATE)`

    Deprecated.

    Sort documents by their date of expiration

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_EXTENSION](#SORT_COLUMN_EXTENSION)`

    Deprecated.

    Sort documents by their extension

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_LAST_MODIFIED_BY](#SORT_COLUMN_LAST_MODIFIED_BY)`

    Deprecated.

    Sort document by the user who last modified the documents.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_LAST_MODIFIED_DATE](#SORT_COLUMN_LAST_MODIFIED_DATE)`

    Deprecated.

    Sort documents by their last date of modification.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NAME](#SORT_COLUMN_NAME)`

    Deprecated.

    Sort documents by name

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NUMBER_OF_VERSIONS](#SORT_COLUMN_NUMBER_OF_VERSIONS)`

    Deprecated.

    Sort documents by the number of versions that they have

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME](#SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME)`

    Deprecated.

    Sort documents by their parent knowledge center name

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_SIZE](#SORT_COLUMN_SIZE)`

    Deprecated.

    Sort documents by their size in bytes

    `static final int`

    `[STATUS_PUBLISHED](#STATUS_PUBLISHED)`

    Deprecated.

    Status field for a published document

    `static final int`

    `[STATUS_UNPUBLISHED](#STATUS_UNPUBLISHED)`

    Deprecated.

    Status field for an unpublished document (This is not currently used.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Document](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io")`

    `[accessAsReadOnlyFile](#accessAsReadOnlyFile\(\))()`

    Deprecated.

    A function that returns a [`File`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") object that represents the document.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

     

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Gets the date and time that this document was created/first uploaded

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    Gets the description (if any) of the document

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getExpirationDate](#getExpirationDate\(\))()`

    Deprecated.

    Gets the date and time that this document will expire

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExtension](#getExtension\(\))()`

    Deprecated.

    Retrieves the file extension (eg, exe, txt, doc) for this document

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFileSystemId](#getFileSystemId\(\))()`

    Deprecated.

    Retrieves the system ID that the collaboration application uses to identify the document physically on the drive

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFolderId](#getFolderId\(\))()`

    Deprecated.

    Gets the unique ID of the folder which contains the document

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFolderName](#getFolderName\(\))()`

    Deprecated.

    Gets the name of the folder which contains the document

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getForum](#getForum\(\))()`

    Deprecated.

    Retrieves the discussion forum associated with this document

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Gets the unique ID of the document.

    `[DocumentInputStream](../content/DocumentInputStream.html "class in com.appiancorp.suiteapi.content")`

    `[getInputStream](#getInputStream\(\))()`

    Deprecated.

    Opens a stream to a Document allowing for the caller to read its contents if the document was retrieved using the [`DocumentService.downloadDocument(Long, Integer, int)`](DocumentService.html#downloadDocument\(java.lang.Long,java.lang.Integer,int\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInternalFilename](#getInternalFilename\(\))()`

    Deprecated.

    Gets the location of the file on disk if the document was retrieved using the downloadDocument() method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getKnowledgeCenterId](#getKnowledgeCenterId\(\))()`

    Deprecated.

    Gets the unique ID of the knowledge center which contains the document

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKnowledgeCenterName](#getKnowledgeCenterName\(\))()`

    Deprecated.

    Gets the name of the knowledge center which contains the document

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLastUserToModify](#getLastUserToModify\(\))()`

    Deprecated.

    Retrieves the unique ID of the last user to modify the file

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getLockedAt](#getLockedAt\(\))()`

    Deprecated.

    Gets the date and time that the document was locked, or `null` if the document is not locked.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedBy](#getLockedBy\(\))()`

    Deprecated.

    use [`getLockedByUsername()`](#getLockedByUsername\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLockedByUsername](#getLockedByUsername\(\))()`

    Deprecated.

    Gets the username of the user that has locked the content, or `blank` if the content is not locked.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Gets the name of the document

    `int`

    `[getNumberOfVersions](#getNumberOfVersions\(\))()`

    Deprecated.

    Gets the number of versions of this document

    `[DocumentOutputStream](../content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content")`

    `[getOutputStream](#getOutputStream\(\))()`

    Deprecated.

    Opens a stream to a Document allowing for the caller to write its contents if the document was generated via the [`DocumentService.createDocument(Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPartition](#getPartition\(\))()`

    Deprecated.

    Retrieves the path where the collaboration application stores the physical document on the drive

    `int`

    `[getPendingApproval](#getPendingApproval\(\))()`

    Deprecated.

    Gets the 'pending approval' status of the document.

    `long`

    `[getSize](#getSize\(\))()`

    Deprecated.

    Get the size of the document

    `double`

    `[getSizeInKB](#getSizeInKB\(\))()`

    Deprecated.

    Gets the number of KBytes in the file rounded to 2 decimals.

    `int`

    `[getStatus](#getStatus\(\))()`

    Deprecated.

    Gets the status of the document (either STATUS\_PUBLISHED or STATUS\_UNPUBLISHED (latter not currently used))

    `int`

    `[getTotalNumberOfVersions](#getTotalNumberOfVersions\(\))()`

    Deprecated.

    Returns `getNumberOfVersions()` + 1.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(\))()`

    Deprecated.

    Gets the version number of the document

    `boolean`

    `[isApproved](#isApproved\(\))()`

    Deprecated.

    Checks whether the document (or its changes) have been approved

    `boolean`

    `[isChangesRequireApproval](#isChangesRequireApproval\(\))()`

    Deprecated.

    Checks whether changes to this document require approval before being available in the application

    `void`

    `[setApproved](#setApproved\(boolean\))(boolean approved_)`

    Deprecated.

    Sets whether the document (or its changes) have been approved

    `void`

    `[setChangesRequireApproval](#setChangesRequireApproval\(boolean\))(boolean b_)`

    Deprecated.

    Sets whether changes to this document require approval

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated_)`

    Deprecated.

    Sets the date and time at which the document was created.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc_)`

    Deprecated.

    Sets the document description

    `void`

    `[setExpirationDate](#setExpirationDate\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtexpire_)`

    Deprecated.

    Sets the expiration date of the document

    `void`

    `[setExtension](#setExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext_)`

    Deprecated.

    Sets the file extension of the document

    `void`

    `[setFileSystemId](#setFileSystemId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fsid_)`

    Deprecated.

    Sets the system ID that the collaboration application uses to identify the document physically on the drive

    `void`

    `[setFolderId](#setFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid_)`

    Deprecated.

    Sets the parent folder of the document to be that of the folder with unique ID `fid`

    `void`

    `[setFolderName](#setFolderName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname_)`

    Deprecated.

    Sets the parent folder of the document to be that of the folder with the name `fname`

    `void`

    `[setForum](#setForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Relates the discussion forum with unique ID `dtid` with this document

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets the unique ID of this document

    `void`

    `[setInternalFilename](#setInternalFilename\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalFilename_)`

    Deprecated.

    Sets file's physical location on disk

    `void`

    `[setKnowledgeCenterId](#setKnowledgeCenterId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Sets the parent knowledge center for this document to be the one where the unique ID is `kcid`

    `void`

    `[setKnowledgeCenterName](#setKnowledgeCenterName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname_)`

    Deprecated.

    Sets the parent knowledge center for this document to be the one where the name is `kcname`

    `void`

    `[setLastUserToModify](#setLastUserToModify\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") luid_)`

    Deprecated.

    Sets the last user to modify the document to the user with the unique ID `luid`

    `void`

    `[setLockedAt](#setLockedAt\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedAt_)`

    Deprecated.

    This field cannot be updated in the database.

    `void`

    `[setLockedBy](#setLockedBy\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy_)`

    Deprecated.

    use [`getLockedByUsername()`](#getLockedByUsername\(\))

    `void`

    `[setLockedByUsername](#setLockedByUsername\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername)`

    Deprecated.

    Sets the username of the user that has locked the content.

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dname_)`

    Deprecated.

    Set the name of the document

    `void`

    `[setNumberOfVersions](#setNumberOfVersions\(int\))(int numberOfVersions_)`

    Deprecated.

    Updates the number of versions of this document

    `void`

    `[setPartition](#setPartition\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") part_)`

    Deprecated.

    Sets the path where the collaboration application stores the physical document on the drive

    `void`

    `[setPendingApproval](#setPendingApproval\(int\))(int pendingApproval_)`

    Deprecated.

    Sets the 'pending approval' status of the document.

    `void`

    `[setSize](#setSize\(long\))(long size_)`

    Deprecated.

    Sets the size of the document

    `void`

    `[setStatus](#setStatus\(int\))(int status_)`

    Deprecated.

    Sets the status of the document (either STATUS\_PUBLISHED or STATUS\_UNPUBLISHED (latter not currently used))

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Deprecated.

     

    `void`

    `[setVersionId](#setVersionId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") vid_)`

    Deprecated.

    Sets the version number of the document

    `void`

    `[write](#write\(java.io.InputStream\))([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") inputStream)`

    Deprecated.

    Write the contents of the inputStream to the Document if the document was generated via the [`DocumentService.createDocument(Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_COLUMN\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NAME

        Deprecated.

        Sort documents by name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_NAME)

    -   ### SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        Deprecated.

        Sort documents by their last date of modification. The last date of modification of a `Document` is its upload date or the date of its last version.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_LAST_MODIFIED_DATE)

    -   ### SORT\_COLUMN\_SIZE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_SIZE

        Deprecated.

        Sort documents by their size in bytes

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_SIZE)

    -   ### SORT\_COLUMN\_LAST\_MODIFIED\_BY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_LAST\_MODIFIED\_BY

        Deprecated.

        Sort document by the user who last modified the documents. The last date of modification of a `Document` is its upload date or the date of its last version.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_LAST_MODIFIED_BY)

    -   ### SORT\_COLUMN\_PARENT\_KNOWLEDGE\_CENTER\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_PARENT\_KNOWLEDGE\_CENTER\_NAME

        Deprecated.

        Sort documents by their parent knowledge center name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME)

    -   ### SORT\_COLUMN\_EXTENSION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_EXTENSION

        Deprecated.

        Sort documents by their extension

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_EXTENSION)

    -   ### SORT\_COLUMN\_EXPIRATION\_DATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_EXPIRATION\_DATE

        Deprecated.

        Sort documents by their date of expiration

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_EXPIRATION_DATE)

    -   ### SORT\_COLUMN\_NUMBER\_OF\_VERSIONS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NUMBER\_OF\_VERSIONS

        Deprecated.

        Sort documents by the number of versions that they have

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.SORT_COLUMN_NUMBER_OF_VERSIONS)

    -   ### STATUS\_PUBLISHED

        public static final int STATUS\_PUBLISHED

        Deprecated.

        Status field for a published document

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.STATUS_PUBLISHED)

    -   ### STATUS\_UNPUBLISHED

        public static final int STATUS\_UNPUBLISHED

        Deprecated.

        Status field for an unpublished document (This is not currently used. All created documents will have a status of STATUS\_PUBLISHED)

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.STATUS_UNPUBLISHED)

    -   ### CURRENT\_VERSION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") CURRENT\_VERSION

        Deprecated.

        Version field for the current version of a document

    -   ### PENDING\_APPROVAL\_CREATION

        public static final int PENDING\_APPROVAL\_CREATION

        Deprecated.

        Field signifying that a document is pending approval for creation

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.PENDING_APPROVAL_CREATION)

    -   ### PENDING\_APPROVAL\_DELETION

        public static final int PENDING\_APPROVAL\_DELETION

        Deprecated.

        Field signifying that a document is pending approval for deletion

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.PENDING_APPROVAL_DELETION)

    -   ### APPROVED

        public static final int APPROVED

        Deprecated.

        Field signifying that a document has been approved (or does not require approval)

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.APPROVED)

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_FILE\_SYSTEM\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FILE\_SYSTEM\_ID

        Deprecated.

    -   ### SORT\_BY\_PARTITION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARTITION

        Deprecated.

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

    -   ### SORT\_BY\_EXTENSION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_EXTENSION

        Deprecated.

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

    -   ### SORT\_BY\_EXPIRATION\_DATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_EXPIRATION\_DATE

        Deprecated.

    -   ### SORT\_BY\_FOLDER\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FOLDER\_NAME

        Deprecated.

    -   ### SORT\_BY\_FOLDER\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FOLDER\_ID

        Deprecated.

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_NAME

        Deprecated.

    -   ### SORT\_BY\_KNOWLEDGE\_CENTER\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_KNOWLEDGE\_CENTER\_ID

        Deprecated.

    -   ### SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        Deprecated.

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

    -   ### SORT\_BY\_STATUS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STATUS

        Deprecated.

    -   ### SORT\_BY\_APPROVED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_APPROVED

        Deprecated.

    -   ### SORT\_BY\_SIZE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SIZE

        Deprecated.

    -   ### SORT\_BY\_LAST\_USER\_TO\_MODIFY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LAST\_USER\_TO\_MODIFY

        Deprecated.

    -   ### SORT\_BY\_NUMBER\_OF\_VERSIONS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_VERSIONS

        Deprecated.

    -   ### SORT\_BY\_VERSION\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VERSION\_ID

        Deprecated.

    -   ### SORT\_BY\_LOCKED\_BY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_LOCKED\_BY

        Deprecated.

    -   ### SORT\_BY\_DISCUSSION\_THREAD

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DISCUSSION\_THREAD

        Deprecated.

    -   ### SORT\_BY\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PENDING\_APPROVAL

        Deprecated.

    -   ### sizeInKB$TRANSIENT

        public static final boolean sizeInKB$TRANSIENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.Document.sizeInKB$TRANSIENT)

-   ## Constructor Details

    -   ### Document

        public Document()

        Deprecated.

-   ## Method Details

    -   ### isChangesRequireApproval

        public boolean isChangesRequireApproval()

        Deprecated.

        Checks whether changes to this document require approval before being available in the application

        Returns:

        `true` if changes to this cocument require approval; `false` otherwise

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Gets the date and time that this document was created/first uploaded

        Returns:

        the date and time (combined as a `Timestamp`) that the document was created

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        Gets the description (if any) of the document

        Returns:

        the description of the document

    -   ### getExpirationDate

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getExpirationDate()

        Deprecated.

        Gets the date and time that this document will expire

        Returns:

        the date and time (combined as a `Timestamp`) that the document will expire

    -   ### getExtension

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExtension()

        Deprecated.

        Retrieves the file extension (eg, exe, txt, doc) for this document

        Returns:

        the file extension of the document

    -   ### getFileSystemId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFileSystemId()

        Deprecated.

        Retrieves the system ID that the collaboration application uses to identify the document physically on the drive

        Returns:

        the file system ID of this document

    -   ### getFolderId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFolderId()

        Deprecated.

        Gets the unique ID of the folder which contains the document

        Returns:

        the unique ID of the folder which contains the document

    -   ### getFolderName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFolderName()

        Deprecated.

        Gets the name of the folder which contains the document

        Returns:

        the name of the folder which contains the document

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Gets the unique ID of the document.

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the unique ID of the document.

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### getKnowledgeCenterId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getKnowledgeCenterId()

        Deprecated.

        Gets the unique ID of the knowledge center which contains the document

        Returns:

        the unique ID of the knowledge center which contains the document

    -   ### getKnowledgeCenterName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKnowledgeCenterName()

        Deprecated.

        Gets the name of the knowledge center which contains the document

        Returns:

        the name of the knowledge center which contains the document

    -   ### getLastUserToModify

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLastUserToModify()

        Deprecated.

        Retrieves the unique ID of the last user to modify the file

        Returns:

        the unique ID of the last user to modify the file

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Gets the name of the document

        Returns:

        the name of the ducument

    -   ### getPartition

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPartition()

        Deprecated.

        Retrieves the path where the collaboration application stores the physical document on the drive

        Returns:

        the physical path where the document is stored

    -   ### getSize

        public long getSize()

        Deprecated.

        Get the size of the document

        Returns:

        the size (in bytes) of the document

    -   ### getSizeInKB

        public double getSizeInKB()

        Deprecated.

        Gets the number of KBytes in the file rounded to 2 decimals.

        Returns:

        the size of the document in KBytes rounded to 2 decimals

    -   ### getVersionId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getVersionId()

        Deprecated.

        Gets the version number of the document

        Returns:

        the version number of the document

    -   ### setChangesRequireApproval

        public void setChangesRequireApproval(boolean b\_)

        Deprecated.

        Sets whether changes to this document require approval

        Parameters:

        `b_` - a boolean that determines if changes to this document require approval

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated\_)

        Deprecated.

        Sets the date and time at which the document was created.

        Parameters:

        `dtcreated_` - the date and time (combined as a `Timestamp`) at which the document was created

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc\_)

        Deprecated.

        Sets the document description

        Parameters:

        `desc_` - the description of the document

    -   ### setExpirationDate

        public void setExpirationDate([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtexpire\_)

        Deprecated.

        Sets the expiration date of the document

        Parameters:

        `dtexpire_` - the expiration date of the document

    -   ### setExtension

        public void setExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") ext\_)

        Deprecated.

        Sets the file extension of the document

        Parameters:

        `ext_` - the file extenstion of the document

    -   ### setFileSystemId

        public void setFileSystemId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fsid\_)

        Deprecated.

        Sets the system ID that the collaboration application uses to identify the document physically on the drive

        Parameters:

        `fsid_` - the file system ID of this document

    -   ### setFolderId

        public void setFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") fid\_)

        Deprecated.

        Sets the parent folder of the document to be that of the folder with unique ID `fid`

        Parameters:

        `fid_` - the unique ID of the folder

    -   ### setFolderName

        public void setFolderName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") fname\_)

        Deprecated.

        Sets the parent folder of the document to be that of the folder with the name `fname`

        Parameters:

        `fname_` - the name of the folder

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Sets the unique ID of this document

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - the unique ID of the document

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### setKnowledgeCenterId

        public void setKnowledgeCenterId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_)

        Deprecated.

        Sets the parent knowledge center for this document to be the one where the unique ID is `kcid`

        Parameters:

        `kcid_` - the unique ID of the knowledge center

    -   ### setKnowledgeCenterName

        public void setKnowledgeCenterName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") kcname\_)

        Deprecated.

        Sets the parent knowledge center for this document to be the one where the name is `kcname`

        Parameters:

        `kcname_` - the name of the knowledge center

    -   ### setLastUserToModify

        public void setLastUserToModify([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") luid\_)

        Deprecated.

        Sets the last user to modify the document to the user with the unique ID `luid`

        Parameters:

        `luid_` - the unique ID of the user who last modified the document

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dname\_)

        Deprecated.

        Set the name of the document

        Parameters:

        `dname_` - the name of the document

    -   ### setPartition

        public void setPartition([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") part\_)

        Deprecated.

        Sets the path where the collaboration application stores the physical document on the drive

        Parameters:

        `part_` - the path of the physical document on the drive

    -   ### setSize

        public void setSize(long size\_)

        Deprecated.

        Sets the size of the document

        Parameters:

        `size_` - the size (in bytes) of the document

    -   ### setVersionId

        public void setVersionId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") vid\_)

        Deprecated.

        Sets the version number of the document

        Parameters:

        `vid_` - the version number of the document

    -   ### isApproved

        public boolean isApproved()

        Deprecated.

        Checks whether the document (or its changes) have been approved

        Returns:

        true if the document (or its changes) have been approved; false otherwise

    -   ### getForum

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getForum()

        Deprecated.

        Retrieves the discussion forum associated with this document

        Returns:

        the unique ID of the discussion forum associated with this document

    -   ### getLockedBy

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedBy()

        Deprecated.

        use [`getLockedByUsername()`](#getLockedByUsername\(\))

        Gets the unique ID of the user who locked the document

        Returns:

        the unique ID of the user who locked the document

    -   ### getLockedAt

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getLockedAt()

        Deprecated.

        Gets the date and time that the document was locked, or `null` if the document is not locked.

        Returns:

        the date and time that the document was locked

    -   ### getNumberOfVersions

        public int getNumberOfVersions()

        Deprecated.

        Gets the number of versions of this document

        Returns:

        the number of versions of this document that exist on the application

    -   ### getTotalNumberOfVersions

        public int getTotalNumberOfVersions()

        Deprecated.

        Returns `getNumberOfVersions()` + 1.

    -   ### setApproved

        public void setApproved(boolean approved\_)

        Deprecated.

        Sets whether the document (or its changes) have been approved

        Parameters:

        `approved_` - `true` if the changes to this document have been approved, `false` otherwise

    -   ### setForum

        public void setForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_)

        Deprecated.

        Relates the discussion forum with unique ID `dtid` with this document

        Parameters:

        `forumId_` - the unique ID of the discussion forum associated with this document

    -   ### setLockedBy

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setLockedBy([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedBy\_)

        Deprecated.

        use [`getLockedByUsername()`](#getLockedByUsername\(\))

        Tags the document as being locked by the user with the unique ID `lockedBy`

        Parameters:

        `lockedBy_` - the unique id of the user who locked the file

    -   ### setLockedAt

        public void setLockedAt([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") lockedAt\_)

        Deprecated.

        This field cannot be updated in the database.

        Parameters:

        `lockedAt_` - the date and time that the document was locked.

        See Also:

        -   [`setLockedBy(String)`](#setLockedBy\(java.lang.String\))

    -   ### setNumberOfVersions

        public void setNumberOfVersions(int numberOfVersions\_)

        Deprecated.

        Updates the number of versions of this document

        Parameters:

        `numberOfVersions_` - the new number of versions of this document that exist in the application

    -   ### getStatus

        public int getStatus()

        Deprecated.

        Gets the status of the document (either STATUS\_PUBLISHED or STATUS\_UNPUBLISHED (latter not currently used))

        Returns:

        the status of the document

    -   ### setStatus

        public void setStatus(int status\_)

        Deprecated.

        Sets the status of the document (either STATUS\_PUBLISHED or STATUS\_UNPUBLISHED (latter not currently used))

        Parameters:

        `status_` - the status of the document

    -   ### getPendingApproval

        public int getPendingApproval()

        Deprecated.

        Gets the 'pending approval' status of the document.

        Returns:

        Returns the 'pending approval': PENDING\_APPROVAL\_CREATION, PENDING\_APPROVAL\_DELETION or APPROVED

    -   ### setPendingApproval

        public void setPendingApproval(int pendingApproval\_)

        Deprecated.

        Sets the 'pending approval' status of the document.

        Parameters:

        `pendingApproval_` - The 'pending approval' status to set. Can be one of: PENDING\_APPROVAL\_CREATION, PENDING\_APPROVAL\_DELETION or APPROVED

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Deprecated.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`

    -   ### getInternalFilename

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInternalFilename()

        Deprecated.

        Gets the location of the file on disk if the document was retrieved using the downloadDocument() method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration"). If the document was retrieved using getDocument(), this property will be empty.

        This should only be used for read only access.

        Returns:

        physical location on disk

    -   ### setInternalFilename

        public void setInternalFilename([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") internalFilename\_)

        Deprecated.

        Sets file's physical location on disk

        Parameters:

        `internalFilename_` - physical location on disk

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Deprecated.

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Deprecated.

    -   ### getLockedByUsername

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLockedByUsername()

        Deprecated.

        Gets the username of the user that has locked the content, or `blank` if the content is not locked.

        Returns:

        the username

    -   ### setLockedByUsername

        public void setLockedByUsername([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") lockedByUsername)

        Deprecated.

        Sets the username of the user that has locked the content.

        Parameters:

        `lockedByUsername` - the username

    -   ### getInputStream

        @Transient public [DocumentInputStream](../content/DocumentInputStream.html "class in com.appiancorp.suiteapi.content") getInputStream() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Opens a stream to a Document allowing for the caller to read its contents if the document was retrieved using the [`DocumentService.downloadDocument(Long, Integer, int)`](DocumentService.html#downloadDocument\(java.lang.Long,java.lang.Integer,int\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Returns:

        DocumentInputStream containing the contents of the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening the input stream for the file

        See Also:

        -   [`DocumentService.downloadDocument(java.lang.Long, java.lang.Integer, int)`](DocumentService.html#downloadDocument\(java.lang.Long,java.lang.Integer,int\))

    -   ### getOutputStream

        @Transient public [DocumentOutputStream](../content/DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") getOutputStream() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Opens a stream to a Document allowing for the caller to write its contents if the document was generated via the [`DocumentService.createDocument(Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Returns:

        DocumentOutputStream containing the contents of the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening the output stream for the file

        See Also:

        -   [`DocumentService.createDocument(com.appiancorp.suiteapi.collaboration.Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\))

    -   ### write

        public void write([InputStream](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/InputStream.html "class or interface in java.io") inputStream) throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Write the contents of the inputStream to the Document if the document was generated via the [`DocumentService.createDocument(Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Parameters:

        `inputStream` - the input stream to copy to the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while writing the input stream contents to the file

        See Also:

        -   [`DocumentService.createDocument(com.appiancorp.suiteapi.collaboration.Document)`](DocumentService.html#createDocument\(com.appiancorp.suiteapi.collaboration.Document\))

    -   ### accessAsReadOnlyFile

        public [File](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") accessAsReadOnlyFile() throws [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        A function that returns a [`File`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html "class or interface in java.io") object that represents the document. Use ONLY if you need to access the file using a file on disk and if the document was retrieved using the [`DocumentService.downloadDocument(Long, Integer, int)`](DocumentService.html#downloadDocument\(java.lang.Long,java.lang.Integer,int\)) method in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration").

        Ensures the file is available on disk for the given application server. Updates to file are not supported; please create a new version/Document using [`ContentService.uploadDocument(com.appiancorp.suiteapi.knowledge.Document, java.lang.Integer)`](../content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)), or override existing contents with [`getOutputStream()`](#getOutputStream\(\)) or [`write(java.io.InputStream)`](#write\(java.io.InputStream\)).

        Returns:

        File containing the contents of the Document

        Throws:

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while accessing the file

        See Also:

        -   [`ContentService.uploadDocument(com.appiancorp.suiteapi.knowledge.Document, java.lang.Integer)`](../content/ContentService.html#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\))
        -   [`DocumentService.downloadDocument(java.lang.Long, java.lang.Integer, int)`](DocumentService.html#downloadDocument\(java.lang.Long,java.lang.Integer,int\))
        -   [`getOutputStream()`](#getOutputStream\(\))
        -   [`write(InputStream)`](#write\(java.io.InputStream\))