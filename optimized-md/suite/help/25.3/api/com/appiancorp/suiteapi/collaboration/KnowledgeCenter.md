---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html
original_path: api/com/appiancorp/suiteapi/collaboration/KnowledgeCenter.html
version: "25.3"
title: "Class KnowledgeCenter"
page_id: "api/com/appiancorp/suiteapi/collaboration/KnowledgeCenter"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class KnowledgeCenter

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.collaboration.KnowledgeCenter

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class KnowledgeCenter extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common"), [Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")

Deprecated.

Use the class [`CommunityKnowledgeCenter`](../knowledge/CommunityKnowledgeCenter.html "class in com.appiancorp.suiteapi.knowledge") instead.

This class represents a knowledge center in the collaboration application.

Copyright: Copyright (c) 2002, 2003

Company: Appian Corporation

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter)

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

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMINISTRATOR_GROUPS](#SORT_BY_ADMINISTRATOR_GROUPS)`

    Deprecated.

    Sort by the KnowledgeCenter Administrator Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ADMINISTRATORS](#SORT_BY_ADMINISTRATORS)`

    Deprecated.

    Sort by the KnowledgeCenter Administrators property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_AUTO_APPROVE_FOR_READ_ONLY_ACCESS](#SORT_BY_AUTO_APPROVE_FOR_READ_ONLY_ACCESS)`

    Deprecated.

    Sort by the KnowledgeCenter Auto Approve for Read Access property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CHANGES_REQUIRE_APPROVAL](#SORT_BY_CHANGES_REQUIRE_APPROVAL)`

    Deprecated.

    Sort by the KnowledgeCenter Changes Requires Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COMMUNITY_ID](#SORT_BY_COMMUNITY_ID)`

    Deprecated.

    Sort by the Community ID property to which KnowledgeCenter belongs.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_COMMUNITY_NAME](#SORT_BY_COMMUNITY_NAME)`

    Deprecated.

    Sort by the Community Name property to which the KnowledgeCenter belongs

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

    Sort by the KnowledgeCenter Creator property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

    Sort by the KnowledgeCenter Date Created property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

    Sort by the KnowledgeCenter Description property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DISCUSSION_THREAD](#SORT_BY_DISCUSSION_THREAD)`

    Deprecated.

    Sort by the KnowledgeCenter Discussion Topic/Topic property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DOCUMENTS_PENDING_APPROVAL](#SORT_BY_DOCUMENTS_PENDING_APPROVAL)`

    Deprecated.

    Sort by the KnowledgeCenter Document pending Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_EXPIRATION_DAYS](#SORT_BY_EXPIRATION_DAYS)`

    Deprecated.

    Sort by the KnowledgeCenter Expiration Days property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FOLDERS](#SORT_BY_FOLDERS)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FOLDERS_PENDING_APPROVAL](#SORT_BY_FOLDERS_PENDING_APPROVAL)`

    Deprecated.

    Sort by the KnowledgeCenter Folders pending Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    Sort by the KnowledgeCenter ID property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_IS_SEARCHABLE](#SORT_BY_IS_SEARCHABLE)`

    Deprecated.

    Sort by the KnowledgeCenter Is Searchable property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

    Sort by the KnowledgeCenter Name property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NUMBER_OF_DOCUMENTS](#SORT_BY_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort by the KnowledgeCenter Number of Documents property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PARTITION](#SORT_BY_PARTITION)`

    Deprecated.

    Sort by the KnowledgeCenter Partition property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READER_GROUPS](#SORT_BY_READER_GROUPS)`

    Deprecated.

    Sort by the KnowledgeCenter Reader Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_READERS](#SORT_BY_READERS)`

    Deprecated.

    Sort by the KnowledgeCenter Readers property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SIZE](#SORT_BY_SIZE)`

    Deprecated.

    Sort by the KnowledgeCenter Size property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Deprecated.

    Sort by the type of KnowledgeCenter property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_USERS_PENDING_APPROVAL](#SORT_BY_USERS_PENDING_APPROVAL)`

    Deprecated.

    Sort by the KnowledgeCenter Users Pending Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_VERSIONS_PENDING_APPROVAL](#SORT_BY_VERSIONS_PENDING_APPROVAL)`

    Deprecated.

    Sort by the KnowledgeCenter Versions pending Approval property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_WRITER_GROUPS](#SORT_BY_WRITER_GROUPS)`

    Deprecated.

    Sort by the KnowledgeCenter Writer Groups property

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_WRITERS](#SORT_BY_WRITERS)`

    Deprecated.

    Sort by the KnowledgeCenter Writers property

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_CREATOR](#SORT_COLUMN_CREATOR)`

    Deprecated.

    Sort knowledge centers by their creator

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_DESCRIPTION](#SORT_COLUMN_DESCRIPTION)`

    Deprecated.

    Sort knowledge centers by description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_LAST_MODIFIED_DATE](#SORT_COLUMN_LAST_MODIFIED_DATE)`

    Deprecated.

    Sort knowledge centers by the last date of modification of any of the folders and documents contained in the knowledge centers.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NAME](#SORT_COLUMN_NAME)`

    Deprecated.

    Sort knowledge centers by name

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[SORT_COLUMN_NUMBER_OF_DOCUMENTS](#SORT_COLUMN_NUMBER_OF_DOCUMENTS)`

    Deprecated.

    Sort knowledge centers by the number of documents they contain

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[TYPE_COMMUNITY](#TYPE_COMMUNITY)`

    Deprecated.

    Type field for a community knowledge center

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[TYPE_PERSONAL](#TYPE_PERSONAL)`

    Deprecated.

    Type field for a personal knowledge center

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_PENDING](#USER_STATUS_PENDING)`

    Deprecated.

    User status of pending

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_SUBSCRIBED](#USER_STATUS_SUBSCRIBED)`

    Deprecated.

    User status of subscribed

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[USER_STATUS_UNSUBSCRIBED](#USER_STATUS_UNSUBSCRIBED)`

    Deprecated.

    User status of unsubscribed

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[KnowledgeCenter](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

     

    `int`

    `[getAccessLevel](#getAccessLevel\(\))()`

    Deprecated.

    Gets the access level of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratorGroups](#getAdministratorGroups\(\))()`

    Deprecated.

    Gets the groups which have administrative permissions on this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getAdministrators](#getAdministrators\(\))()`

    Deprecated.

    Gets the users who have administrative permissions on this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCommunityId](#getCommunityId\(\))()`

    Deprecated.

    Gets the unique ID of the community that contains this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCommunityName](#getCommunityName\(\))()`

    Deprecated.

    Gets the name of the community that this knowledge center belongs to

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Deprecated.

    Gets the user who created this knowledge center

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    Gets the date and time that this knowledge center was created

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    Gets the description of this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDocumentsPendingApproval](#getDocumentsPendingApproval\(\))()`

    Deprecated.

    Gets all the documents in the knowledge center which are pending administrative approval

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getExpirationDays](#getExpirationDays\(\))()`

    Deprecated.

    Gets the number of days after upload to this knowledge center that a document will expire

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFolders](#getFolders\(\))()`

    Deprecated.

    Gets the folders contained in this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFoldersPendingApproval](#getFoldersPendingApproval\(\))()`

    Deprecated.

    Gets all the folders in the knowledge center which are pending administrative approval

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getForum](#getForum\(\))()`

    Deprecated.

    Gets the Discussion Topic which is associated with this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Gets the unique ID of this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Gets the name of this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDocuments](#getNumberOfDocuments\(\))()`

    Deprecated.

    Retrieves the total number of documents in this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPartition](#getPartition\(\))()`

    Deprecated.

    Retrieves the path where the collaboration application stores the physical knowledge center on the drive

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getReaderGroups](#getReaderGroups\(\))()`

    Deprecated.

    Gets the groups which have reader permissions on this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getReaders](#getReaders\(\))()`

    Deprecated.

    Gets the users who have read permissions on this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSize](#getSize\(\))()`

    Deprecated.

    Gets the amount of physical space the documents contained within this knowledge center occupy

    `static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getSortColumn](#getSortColumn\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute_)`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Deprecated.

    Gets the type of this knowledge center (either TYPE\_COMMUNITY or TYPE\_PERSONAL)

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getUsersPendingApproval](#getUsersPendingApproval\(\))()`

    Deprecated.

    Gets the users who are awaiting approval for access on this knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserStatus](#getUserStatus\(\))()`

    Deprecated.

    Gets the user status of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getVersionsPendingApproval](#getVersionsPendingApproval\(\))()`

    Deprecated.

    Gets the documents in this knowledge center which are awaiting administrative approval

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getWriterGroups](#getWriterGroups\(\))()`

    Deprecated.

    Gets the groups which have write permissions on this knowledge center

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWriters](#getWriters\(\))()`

    Deprecated.

    Gets the users who have write permissions on this knowledge center

    `boolean`

    `[isAutoApproveForReadOnlyAccess](#isAutoApproveForReadOnlyAccess\(\))()`

    Deprecated.

    Checks whether approval is automatically given for any request for read-only access to this knowledge center

    `boolean`

    `[isChangesRequireApproval](#isChangesRequireApproval\(\))()`

    Deprecated.

    Checks whether changes to this knowledge center requires administrator approval before being committed

    `boolean`

    `[isIsSearchable](#isIsSearchable\(\))()`

    Deprecated.

    Checks whether the knowledge center is searchable

    `void`

    `[setAccessLevel](#setAccessLevel\(int\))(int access_)`

    Deprecated.

    Sets the access level of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

    `void`

    `[setAdministratorGroups](#setAdministratorGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups which will have administrative permissions on this knowledge center

    `void`

    `[setAdministrators](#setAdministrators\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users which will have administrative permissions on this knowledge center

    `void`

    `[setAutoApproveForReadOnlyAccess](#setAutoApproveForReadOnlyAccess\(boolean\))(boolean autoApproveForReadOnlyAccess_)`

    Deprecated.

    Sets whether approval is automatically given for any request for read-only access to this knowledge center

    `void`

    `[setChangesRequireApproval](#setChangesRequireApproval\(boolean\))(boolean b_)`

    Deprecated.

    Sets whether changes to this folder require administrative approval before committing.

    `void`

    `[setCommunityId](#setCommunityId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_)`

    Deprecated.

    Sets the community which contains this knowledge center

    `void`

    `[setCommunityName](#setCommunityName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname_)`

    Deprecated.

    Sets the name of the community that contains this knowledge center

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uid_)`

    Deprecated.

    Sets the user who created thiei knowledge center

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated_)`

    Deprecated.

    Sets the date and time that this knowledge center was created

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc_)`

    Deprecated.

    Sets the description of this knowledge center

    `void`

    `[setDocumentsPendingApproval](#setDocumentsPendingApproval\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Sets the documents in this knowledge center which are awaiting administrative approval

    `void`

    `[setExpirationDays](#setExpirationDays\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expirationDays_)`

    Deprecated.

    Sets the number of days after upload to this knowledge center that a document will expire

    `void`

    `[setFolders](#setFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Sets the folders contained in this knowledge center

    `void`

    `[setFoldersPendingApproval](#setFoldersPendingApproval\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Sets the folders in this knowledge center that are awaiting administrative approval.

    `void`

    `[setForum](#setForum\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId_)`

    Deprecated.

    Sets the Discussion Topic which is associated wit this knowledge center

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Sets the unique ID of this knowledge center

    `void`

    `[setIsSearchable](#setIsSearchable\(boolean\))(boolean isSearchable_)`

    Deprecated.

    Sets whether this knowledge center is searchable

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Sets the name of the knowledge center

    `void`

    `[setNumberOfDocuments](#setNumberOfDocuments\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num_)`

    Deprecated.

    Sets the total number of documents stored in the knowledge center

    `void`

    `[setPartition](#setPartition\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") partition_)`

    Deprecated.

    Sets the path where the collaboration application stores the physical knowledge on the drive

    `void`

    `[setReaderGroups](#setReaderGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups that have read permissions on this knowledge center

    `void`

    `[setReaders](#setReaders\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users that have read permissions on this knowledge center

    `void`

    `[setSize](#setSize\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") size_)`

    Deprecated.

    Sets the amount of physical space the documents contained within this knowledge center occupy

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kctype_)`

    Deprecated.

    Sets the type of the knowledge center (either TYPE\_COMMUNITY or TYPE\_PERSONAL)

    `void`

    `[setUsersPendingApproval](#setUsersPendingApproval\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users who are awaiting approval for access to this knowledge center

    `void`

    `[setUserStatus](#setUserStatus\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus_)`

    Deprecated.

    Sets the user status of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

    `void`

    `[setVersionsPendingApproval](#setVersionsPendingApproval\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] versionsPendingApproval_)`

    Deprecated.

    Registers the documents which are awaiting administrative approval

    `void`

    `[setWriterGroups](#setWriterGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] grids_)`

    Deprecated.

    Sets the groups that have write permissions on this knowledge center

    `void`

    `[setWriters](#setWriters\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uids_)`

    Deprecated.

    Sets the users that have write permissions on this knowledge center

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_COLUMN\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NAME

        Deprecated.

        Sort knowledge centers by name

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.SORT_COLUMN_NAME)

    -   ### SORT\_COLUMN\_DESCRIPTION

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_DESCRIPTION

        Deprecated.

        Sort knowledge centers by description

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.SORT_COLUMN_DESCRIPTION)

    -   ### SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_LAST\_MODIFIED\_DATE

        Deprecated.

        Sort knowledge centers by the last date of modification of any of the folders and documents contained in the knowledge centers. The last date of modification of a `Folder` is its creation date; the last date of modification of a `Document` is its upload date or the date of its last version.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.SORT_COLUMN_LAST_MODIFIED_DATE)

    -   ### SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort knowledge centers by the number of documents they contain

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.SORT_COLUMN_NUMBER_OF_DOCUMENTS)

    -   ### SORT\_COLUMN\_CREATOR

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") SORT\_COLUMN\_CREATOR

        Deprecated.

        Sort knowledge centers by their creator

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.SORT_COLUMN_CREATOR)

    -   ### TYPE\_COMMUNITY

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") TYPE\_COMMUNITY

        Deprecated.

        Type field for a community knowledge center

    -   ### TYPE\_PERSONAL

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") TYPE\_PERSONAL

        Deprecated.

        Type field for a personal knowledge center

    -   ### ACCESS\_LEVEL\_READ\_ONLY

        public static final int ACCESS\_LEVEL\_READ\_ONLY

        Deprecated.

        Access level of read-only

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.ACCESS_LEVEL_READ_ONLY)

    -   ### ACCESS\_LEVEL\_READ\_WRITE

        public static final int ACCESS\_LEVEL\_READ\_WRITE

        Deprecated.

        Access level of read-write

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.ACCESS_LEVEL_READ_WRITE)

    -   ### ACCESS\_LEVEL\_ADMINISTRATIVE

        public static final int ACCESS\_LEVEL\_ADMINISTRATIVE

        Deprecated.

        Access level of administrator

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.ACCESS_LEVEL_ADMINISTRATIVE)

    -   ### ACCESS\_LEVEL\_NO\_ACCESS

        public static final int ACCESS\_LEVEL\_NO\_ACCESS

        Deprecated.

        Access level of 'no access'

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenter.ACCESS_LEVEL_NO_ACCESS)

    -   ### USER\_STATUS\_UNSUBSCRIBED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_UNSUBSCRIBED

        Deprecated.

        User status of unsubscribed

    -   ### USER\_STATUS\_SUBSCRIBED

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_SUBSCRIBED

        Deprecated.

        User status of subscribed

    -   ### USER\_STATUS\_PENDING

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") USER\_STATUS\_PENDING

        Deprecated.

        User status of pending

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        Sort by the KnowledgeCenter ID property

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

        Sort by the KnowledgeCenter Name property

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

        Sort by the KnowledgeCenter Description property

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Deprecated.

        Sort by the type of KnowledgeCenter property

    -   ### SORT\_BY\_COMMUNITY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COMMUNITY\_ID

        Deprecated.

        Sort by the Community ID property to which KnowledgeCenter belongs.

    -   ### SORT\_BY\_COMMUNITY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_COMMUNITY\_NAME

        Deprecated.

        Sort by the Community Name property to which the KnowledgeCenter belongs

    -   ### SORT\_BY\_FOLDERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FOLDERS

        Deprecated.

    -   ### SORT\_BY\_IS\_SEARCHABLE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_IS\_SEARCHABLE

        Deprecated.

        Sort by the KnowledgeCenter Is Searchable property

    -   ### SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CHANGES\_REQUIRE\_APPROVAL

        Deprecated.

        Sort by the KnowledgeCenter Changes Requires Approval property

    -   ### SORT\_BY\_AUTO\_APPROVE\_FOR\_READ\_ONLY\_ACCESS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_AUTO\_APPROVE\_FOR\_READ\_ONLY\_ACCESS

        Deprecated.

        Sort by the KnowledgeCenter Auto Approve for Read Access property

    -   ### SORT\_BY\_PARTITION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PARTITION

        Deprecated.

        Sort by the KnowledgeCenter Partition property

    -   ### SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NUMBER\_OF\_DOCUMENTS

        Deprecated.

        Sort by the KnowledgeCenter Number of Documents property

    -   ### SORT\_BY\_SIZE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SIZE

        Deprecated.

        Sort by the KnowledgeCenter Size property

    -   ### SORT\_BY\_DISCUSSION\_THREAD

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DISCUSSION\_THREAD

        Deprecated.

        Sort by the KnowledgeCenter Discussion Topic/Topic property

    -   ### SORT\_BY\_EXPIRATION\_DAYS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_EXPIRATION\_DAYS

        Deprecated.

        Sort by the KnowledgeCenter Expiration Days property

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

        Sort by the KnowledgeCenter Date Created property

    -   ### SORT\_BY\_USERS\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_USERS\_PENDING\_APPROVAL

        Deprecated.

        Sort by the KnowledgeCenter Users Pending Approval property

    -   ### SORT\_BY\_DOCUMENTS\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DOCUMENTS\_PENDING\_APPROVAL

        Deprecated.

        Sort by the KnowledgeCenter Document pending Approval property

    -   ### SORT\_BY\_FOLDERS\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FOLDERS\_PENDING\_APPROVAL

        Deprecated.

        Sort by the KnowledgeCenter Folders pending Approval property

    -   ### SORT\_BY\_VERSIONS\_PENDING\_APPROVAL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_VERSIONS\_PENDING\_APPROVAL

        Deprecated.

        Sort by the KnowledgeCenter Versions pending Approval property

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

        Sort by the KnowledgeCenter Creator property

    -   ### SORT\_BY\_READERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READERS

        Deprecated.

        Sort by the KnowledgeCenter Readers property

    -   ### SORT\_BY\_WRITERS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_WRITERS

        Deprecated.

        Sort by the KnowledgeCenter Writers property

    -   ### SORT\_BY\_ADMINISTRATORS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMINISTRATORS

        Deprecated.

        Sort by the KnowledgeCenter Administrators property

    -   ### SORT\_BY\_READER\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_READER\_GROUPS

        Deprecated.

        Sort by the KnowledgeCenter Reader Groups property

    -   ### SORT\_BY\_WRITER\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_WRITER\_GROUPS

        Deprecated.

        Sort by the KnowledgeCenter Writer Groups property

    -   ### SORT\_BY\_ADMINISTRATOR\_GROUPS

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ADMINISTRATOR\_GROUPS

        Deprecated.

        Sort by the KnowledgeCenter Administrator Groups property

-   ## Constructor Details

    -   ### KnowledgeCenter

        public KnowledgeCenter()

        Deprecated.

-   ## Method Details

    -   ### getSortColumn

        public static [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getSortColumn([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") attribute\_)

        Deprecated.

    -   ### getAdministratorGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratorGroups()

        Deprecated.

        Gets the groups which have administrative permissions on this knowledge center

        Returns:

        a list of unique IDs of groups which have administrative permissions

    -   ### getAdministrators

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getAdministrators()

        Deprecated.

        Gets the users who have administrative permissions on this knowledge center

        Returns:

        a list of unique IDs of users who have administrative permissions

    -   ### isChangesRequireApproval

        public boolean isChangesRequireApproval()

        Deprecated.

        Checks whether changes to this knowledge center requires administrator approval before being committed

        Returns:

        `true` if changes to this knowledge center must be approved; `false` otherwise

    -   ### getCommunityName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCommunityName()

        Deprecated.

        Gets the name of the community that this knowledge center belongs to

        Returns:

        the name of the community

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        Gets the user who created this knowledge center

        Returns:

        the unique ID of the user

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        Gets the date and time that this knowledge center was created

        Returns:

        the date and time (combined as a `Timestamp` object) that this knowledge center was created

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        Gets the description of this knowledge center

        Returns:

        the description of this knowledge center

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Gets the unique ID of this knowledge center

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the unique ID of this knowledge center

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Gets the name of this knowledge center

        Returns:

        the name of this knowledge center

    -   ### getNumberOfDocuments

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDocuments()

        Deprecated.

        Retrieves the total number of documents in this knowledge center

        Returns:

        the total number of documents in this knowledge center

    -   ### getReaderGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getReaderGroups()

        Deprecated.

        Gets the groups which have reader permissions on this knowledge center

        Returns:

        a list of unique IDs of groups which have reader permissions

    -   ### getReaders

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getReaders()

        Deprecated.

        Gets the users who have read permissions on this knowledge center

        Returns:

        a list of unique IDs of users who have read permissions

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Deprecated.

        Gets the type of this knowledge center (either TYPE\_COMMUNITY or TYPE\_PERSONAL)

        Returns:

        the type of this knowledge center

    -   ### getWriterGroups

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getWriterGroups()

        Deprecated.

        Gets the groups which have write permissions on this knowledge center

        Returns:

        a list of unique IDs of groups which have write permissions

    -   ### getWriters

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWriters()

        Deprecated.

        Gets the users who have write permissions on this knowledge center

        Returns:

        a list of unique IDs of users who have write permissions

    -   ### setAdministratorGroups

        public void setAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups which will have administrative permissions on this knowledge center

        Parameters:

        `grids_` - a list of unique IDs of groups to be given administrative permissions

    -   ### setAdministrators

        public void setAdministrators([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users which will have administrative permissions on this knowledge center

        Parameters:

        `uids_` - a list of unique IDs of users to be given administrative permissions

    -   ### setChangesRequireApproval

        public void setChangesRequireApproval(boolean b\_)

        Deprecated.

        Sets whether changes to this folder require administrative approval before committing.

        Parameters:

        `b_` - `true` if changes to this folder require approval; `false` if otherwise

    -   ### setCommunityName

        public void setCommunityName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") commname\_)

        Deprecated.

        Sets the name of the community that contains this knowledge center

        Parameters:

        `commname_` - the name of the community

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uid\_)

        Deprecated.

        Sets the user who created thiei knowledge center

        Parameters:

        `uid_` - the unique ID of the user

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") dtcreated\_)

        Deprecated.

        Sets the date and time that this knowledge center was created

        Parameters:

        `dtcreated_` - the date and time (combined as a `Timestamp` object) when this knowledge center was created

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") desc\_)

        Deprecated.

        Sets the description of this knowledge center

        Parameters:

        `desc_` - the description of this knowledge center

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_)

        Deprecated.

        Sets the unique ID of this knowledge center

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `kcid_` - the unique ID of this knowledge center

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Sets the name of the knowledge center

        Parameters:

        `name_` - the name if this knowledge center

    -   ### setNumberOfDocuments

        public void setNumberOfDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") num\_)

        Deprecated.

        Sets the total number of documents stored in the knowledge center

        Parameters:

        `num_` - the total number of documents stored in the knowledge center

    -   ### setReaderGroups

        public void setReaderGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups that have read permissions on this knowledge center

        Parameters:

        `grids_` - the groups that have read permissions

    -   ### setReaders

        public void setReaders([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users that have read permissions on this knowledge center

        Parameters:

        `uids_` - the users that have read permissions

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kctype\_)

        Deprecated.

        Sets the type of the knowledge center (either TYPE\_COMMUNITY or TYPE\_PERSONAL)

        Parameters:

        `kctype_` - the type of the knowledge center

    -   ### setWriterGroups

        public void setWriterGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] grids\_)

        Deprecated.

        Sets the groups that have write permissions on this knowledge center

        Parameters:

        `grids_` - the groups that have write permissions

    -   ### setWriters

        public void setWriters([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users that have write permissions on this knowledge center

        Parameters:

        `uids_` - the users that have write permissions

    -   ### isAutoApproveForReadOnlyAccess

        public boolean isAutoApproveForReadOnlyAccess()

        Deprecated.

        Checks whether approval is automatically given for any request for read-only access to this knowledge center

        Returns:

        `true` if changes to this knowledge center must be approved; `false` otherwise

    -   ### getCommunityId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCommunityId()

        Deprecated.

        Gets the unique ID of the community that contains this knowledge center

        Returns:

        the unique ID of the community

    -   ### getForum

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getForum()

        Deprecated.

        Gets the Discussion Topic which is associated with this knowledge center

        Returns:

        the unique ID of the Discussion Topic

    -   ### getDocumentsPendingApproval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDocumentsPendingApproval()

        Deprecated.

        Gets all the documents in the knowledge center which are pending administrative approval

        Returns:

        a list of unique IDs of the documents

    -   ### getExpirationDays

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getExpirationDays()

        Deprecated.

        Gets the number of days after upload to this knowledge center that a document will expire

        Returns:

        the number of days after upload that the docoment will expire

    -   ### getFoldersPendingApproval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFoldersPendingApproval()

        Deprecated.

        Gets all the folders in the knowledge center which are pending administrative approval

        Returns:

        a list of unique IDs of the folders

    -   ### isIsSearchable

        public boolean isIsSearchable()

        Deprecated.

        Checks whether the knowledge center is searchable

        Returns:

        `true` if changes to this knowledge center is searchable; `false` otherwise

    -   ### getPartition

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPartition()

        Deprecated.

        Retrieves the path where the collaboration application stores the physical knowledge center on the drive

        Returns:

        the physical path where the knowledge center is stored

    -   ### getSize

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSize()

        Deprecated.

        Gets the amount of physical space the documents contained within this knowledge center occupy

        Returns:

        the amount of physical space in MBytes

    -   ### getUsersPendingApproval

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getUsersPendingApproval()

        Deprecated.

        Gets the users who are awaiting approval for access on this knowledge center

        Returns:

        a list of unique IDs of users who are awaiting approval

    -   ### setAutoApproveForReadOnlyAccess

        public void setAutoApproveForReadOnlyAccess(boolean autoApproveForReadOnlyAccess\_)

        Deprecated.

        Sets whether approval is automatically given for any request for read-only access to this knowledge center

        Parameters:

        `autoApproveForReadOnlyAccess_` - whether it will auto-approve for read-only access or not

    -   ### setCommunityId

        public void setCommunityId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_)

        Deprecated.

        Sets the community which contains this knowledge center

        Parameters:

        `coid_` - the unique ID of the community

    -   ### setForum

        public void setForum([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") forumId\_)

        Deprecated.

        Sets the Discussion Topic which is associated wit this knowledge center

        Parameters:

        `forumId_` - the unique ID of the forum

    -   ### setDocumentsPendingApproval

        public void setDocumentsPendingApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_)

        Deprecated.

        Sets the documents in this knowledge center which are awaiting administrative approval

        Parameters:

        `doids_` - a list of unique IDs of the documents

    -   ### setExpirationDays

        public void setExpirationDays([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") expirationDays\_)

        Deprecated.

        Sets the number of days after upload to this knowledge center that a document will expire

        Parameters:

        `expirationDays_` - the number of days after upload that a document will expire

    -   ### setFoldersPendingApproval

        public void setFoldersPendingApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_)

        Deprecated.

        Sets the folders in this knowledge center that are awaiting administrative approval.

        Parameters:

        `foids_` - a list of the unique IDs of the folders

    -   ### setIsSearchable

        public void setIsSearchable(boolean isSearchable\_)

        Deprecated.

        Sets whether this knowledge center is searchable

        Parameters:

        `isSearchable_` - `true` if this knowledge center is searchable; `false` if otherwise

    -   ### setPartition

        public void setPartition([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") partition\_)

        Deprecated.

        Sets the path where the collaboration application stores the physical knowledge on the drive

        Parameters:

        `partition_` - the physical path where the knowledge center is stored

    -   ### setSize

        public void setSize([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") size\_)

        Deprecated.

        Sets the amount of physical space the documents contained within this knowledge center occupy

        Parameters:

        `size_` - the amount of physical space in MBytes

    -   ### setUsersPendingApproval

        public void setUsersPendingApproval([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uids\_)

        Deprecated.

        Sets the users who are awaiting approval for access to this knowledge center

        Parameters:

        `uids_` - a list of the unique IDs of the users

    -   ### getFolders

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFolders()

        Deprecated.

        Gets the folders contained in this knowledge center

        Returns:

        a list of the unique IDs of the folders

    -   ### getVersionsPendingApproval

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getVersionsPendingApproval()

        Deprecated.

        Gets the documents in this knowledge center which are awaiting administrative approval

        Returns:

        a list of the unique IDs of the documents pending approval

    -   ### setFolders

        public void setFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_)

        Deprecated.

        Sets the folders contained in this knowledge center

        Parameters:

        `foids_` - a list of the unique IDs of the folders

    -   ### setVersionsPendingApproval

        public void setVersionsPendingApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] versionsPendingApproval\_)

        Deprecated.

        Registers the documents which are awaiting administrative approval

        Parameters:

        `versionsPendingApproval_` - a list of the unique IDs of the documents pending administrative approval

    -   ### getAccessLevel

        public int getAccessLevel()

        Deprecated.

        Gets the access level of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

        Returns:

        the access level of the current user for this knowledge center.

    -   ### setAccessLevel

        public void setAccessLevel(int access\_)

        Deprecated.

        Sets the access level of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

        Parameters:

        `access_` - the access level of the current user for this knowledge center.

    -   ### getUserStatus

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserStatus()

        Deprecated.

        Gets the user status of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

        Returns:

        the user status of the current user for this knowledge center.

    -   ### setUserStatus

        public void setUserStatus([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") userStatus\_)

        Deprecated.

        Sets the user status of the current user for this knowledge center (NOTE: This property is only populated by KnowledgeCenterService.getAccessLevelForKnowledgeCenter and KnowledgeCenterService.getAccessLevelForKnowledgeCenters())

        Parameters:

        `userStatus_` - the user status of the current user for this knowledge center.

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone() throws [CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")

        Deprecated.

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Throws:

        `[CloneNotSupportedException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/CloneNotSupportedException.html "class or interface in java.lang")`