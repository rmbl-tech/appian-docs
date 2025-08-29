---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/DocumentStatistics.html
original_path: api/com/appiancorp/suiteapi/collaboration/DocumentStatistics.html
version: "25.3"
title: "Class DocumentStatistics"
page_id: "api/com/appiancorp/suiteapi/collaboration/DocumentStatistics"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Class DocumentStatistics

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.collaboration.Document](Document.html "class in com.appiancorp.suiteapi.collaboration")

com.appiancorp.suiteapi.collaboration.DocumentStatistics

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

* * *

public class DocumentStatistics extends [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

This class represents a versioned document in the collaboration application. It has an additional property related to the download statistics of the document

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.collaboration.DocumentStatistics)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.collaboration.[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")

    `[APPROVED](Document.html#APPROVED), [CURRENT_VERSION](Document.html#CURRENT_VERSION), [PENDING_APPROVAL_CREATION](Document.html#PENDING_APPROVAL_CREATION), [PENDING_APPROVAL_DELETION](Document.html#PENDING_APPROVAL_DELETION), [sizeInKB$TRANSIENT](Document.html#sizeInKB$TRANSIENT), [SORT_BY_APPROVED](Document.html#SORT_BY_APPROVED), [SORT_BY_CHANGES_REQUIRE_APPROVAL](Document.html#SORT_BY_CHANGES_REQUIRE_APPROVAL), [SORT_BY_DATE_CREATED](Document.html#SORT_BY_DATE_CREATED), [SORT_BY_DESCRIPTION](Document.html#SORT_BY_DESCRIPTION), [SORT_BY_DISCUSSION_THREAD](Document.html#SORT_BY_DISCUSSION_THREAD), [SORT_BY_EXPIRATION_DATE](Document.html#SORT_BY_EXPIRATION_DATE), [SORT_BY_EXTENSION](Document.html#SORT_BY_EXTENSION), [SORT_BY_FILE_SYSTEM_ID](Document.html#SORT_BY_FILE_SYSTEM_ID), [SORT_BY_FOLDER_ID](Document.html#SORT_BY_FOLDER_ID), [SORT_BY_FOLDER_NAME](Document.html#SORT_BY_FOLDER_NAME), [SORT_BY_ID](Document.html#SORT_BY_ID), [SORT_BY_KNOWLEDGE_CENTER_ID](Document.html#SORT_BY_KNOWLEDGE_CENTER_ID), [SORT_BY_KNOWLEDGE_CENTER_NAME](Document.html#SORT_BY_KNOWLEDGE_CENTER_NAME), [SORT_BY_LAST_USER_TO_MODIFY](Document.html#SORT_BY_LAST_USER_TO_MODIFY), [SORT_BY_LOCKED_BY](Document.html#SORT_BY_LOCKED_BY), [SORT_BY_NAME](Document.html#SORT_BY_NAME), [SORT_BY_NUMBER_OF_VERSIONS](Document.html#SORT_BY_NUMBER_OF_VERSIONS), [SORT_BY_PARTITION](Document.html#SORT_BY_PARTITION), [SORT_BY_PENDING_APPROVAL](Document.html#SORT_BY_PENDING_APPROVAL), [SORT_BY_SIZE](Document.html#SORT_BY_SIZE), [SORT_BY_STATUS](Document.html#SORT_BY_STATUS), [SORT_BY_VERSION_ID](Document.html#SORT_BY_VERSION_ID), [SORT_COLUMN_EXPIRATION_DATE](Document.html#SORT_COLUMN_EXPIRATION_DATE), [SORT_COLUMN_EXTENSION](Document.html#SORT_COLUMN_EXTENSION), [SORT_COLUMN_LAST_MODIFIED_BY](Document.html#SORT_COLUMN_LAST_MODIFIED_BY), [SORT_COLUMN_LAST_MODIFIED_DATE](Document.html#SORT_COLUMN_LAST_MODIFIED_DATE), [SORT_COLUMN_NAME](Document.html#SORT_COLUMN_NAME), [SORT_COLUMN_NUMBER_OF_VERSIONS](Document.html#SORT_COLUMN_NUMBER_OF_VERSIONS), [SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME](Document.html#SORT_COLUMN_PARENT_KNOWLEDGE_CENTER_NAME), [SORT_COLUMN_SIZE](Document.html#SORT_COLUMN_SIZE), [STATUS_PUBLISHED](Document.html#STATUS_PUBLISHED), [STATUS_UNPUBLISHED](Document.html#STATUS_UNPUBLISHED)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[DocumentStatistics](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getNumberOfDownloads](#getNumberOfDownloads\(\))()`

    Gets the number of times document was downloaded

    `void`

    `[setNumberOfDownloads](#setNumberOfDownloads\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfDownloads_)`

    Sets the number of times document was downloaded

    ### Methods inherited from class com.appiancorp.suiteapi.collaboration.[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")

    `[accessAsReadOnlyFile](Document.html#accessAsReadOnlyFile\(\)), [clone](Document.html#clone\(\)), [getDateCreated](Document.html#getDateCreated\(\)), [getDescription](Document.html#getDescription\(\)), [getExpirationDate](Document.html#getExpirationDate\(\)), [getExtension](Document.html#getExtension\(\)), [getFileSystemId](Document.html#getFileSystemId\(\)), [getFolderId](Document.html#getFolderId\(\)), [getFolderName](Document.html#getFolderName\(\)), [getForum](Document.html#getForum\(\)), [getId](Document.html#getId\(\)), [getInputStream](Document.html#getInputStream\(\)), [getInternalFilename](Document.html#getInternalFilename\(\)), [getKnowledgeCenterId](Document.html#getKnowledgeCenterId\(\)), [getKnowledgeCenterName](Document.html#getKnowledgeCenterName\(\)), [getLastUserToModify](Document.html#getLastUserToModify\(\)), [getLockedAt](Document.html#getLockedAt\(\)), [getLockedBy](Document.html#getLockedBy\(\)), [getLockedByUsername](Document.html#getLockedByUsername\(\)), [getName](Document.html#getName\(\)), [getNumberOfVersions](Document.html#getNumberOfVersions\(\)), [getOutputStream](Document.html#getOutputStream\(\)), [getPartition](Document.html#getPartition\(\)), [getPendingApproval](Document.html#getPendingApproval\(\)), [getSize](Document.html#getSize\(\)), [getSizeInKB](Document.html#getSizeInKB\(\)), [getStatus](Document.html#getStatus\(\)), [getTotalNumberOfVersions](Document.html#getTotalNumberOfVersions\(\)), [getUuid](Document.html#getUuid\(\)), [getVersionId](Document.html#getVersionId\(\)), [isApproved](Document.html#isApproved\(\)), [isChangesRequireApproval](Document.html#isChangesRequireApproval\(\)), [setApproved](Document.html#setApproved\(boolean\)), [setChangesRequireApproval](Document.html#setChangesRequireApproval\(boolean\)), [setDateCreated](Document.html#setDateCreated\(java.sql.Timestamp\)), [setDescription](Document.html#setDescription\(java.lang.String\)), [setExpirationDate](Document.html#setExpirationDate\(java.sql.Timestamp\)), [setExtension](Document.html#setExtension\(java.lang.String\)), [setFileSystemId](Document.html#setFileSystemId\(java.lang.Long\)), [setFolderId](Document.html#setFolderId\(java.lang.Long\)), [setFolderName](Document.html#setFolderName\(java.lang.String\)), [setForum](Document.html#setForum\(java.lang.Long\)), [setId](Document.html#setId\(java.lang.Long\)), [setInternalFilename](Document.html#setInternalFilename\(java.lang.String\)), [setKnowledgeCenterId](Document.html#setKnowledgeCenterId\(java.lang.Long\)), [setKnowledgeCenterName](Document.html#setKnowledgeCenterName\(java.lang.String\)), [setLastUserToModify](Document.html#setLastUserToModify\(java.lang.String\)), [setLockedAt](Document.html#setLockedAt\(java.sql.Timestamp\)), [setLockedBy](Document.html#setLockedBy\(java.lang.String\)), [setLockedByUsername](Document.html#setLockedByUsername\(java.lang.String\)), [setName](Document.html#setName\(java.lang.String\)), [setNumberOfVersions](Document.html#setNumberOfVersions\(int\)), [setPartition](Document.html#setPartition\(java.lang.String\)), [setPendingApproval](Document.html#setPendingApproval\(int\)), [setSize](Document.html#setSize\(long\)), [setStatus](Document.html#setStatus\(int\)), [setUuid](Document.html#setUuid\(java.lang.String\)), [setVersionId](Document.html#setVersionId\(java.lang.Long\)), [write](Document.html#write\(java.io.InputStream\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### DocumentStatistics

        public DocumentStatistics()

-   ## Method Details

    -   ### getNumberOfDownloads

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getNumberOfDownloads()

        Gets the number of times document was downloaded

        Returns:

        the number of times document was downloaded

    -   ### setNumberOfDownloads

        public void setNumberOfDownloads([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") numberOfDownloads\_)

        Sets the number of times document was downloaded