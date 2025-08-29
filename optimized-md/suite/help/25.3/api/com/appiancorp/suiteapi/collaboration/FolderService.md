---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/FolderService.html
original_path: api/com/appiancorp/suiteapi/collaboration/FolderService.html
version: "25.3"
title: "Interface FolderService"
page_id: "api/com/appiancorp/suiteapi/collaboration/FolderService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface FolderService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface FolderService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

This interface provides services for other applications using methods related to collaboration folders

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CollaborationSearchService`](CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CommunityService`](CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`KnowledgeCenterService`](KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`ReportingService`](ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`StatisticsService`](StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addFoldersToFavorites$UPDATES](#addFoldersToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addFolderToFavorites$UPDATES](#addFolderToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForFolder$UPDATES](#approveChangesForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForFolders$UPDATES](#approveChangesForFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createFolder$UPDATES](#createFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createFolders$UPDATES](#createFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteFolder$UPDATES](#deleteFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteFolders$UPDATES](#deleteFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findAdministratableFoldersPaging$UPDATES](#findAdministratableFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findReadableFoldersPaging$UPDATES](#findReadableFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findWritableFoldersPaging$UPDATES](#findWritableFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForFolder$UPDATES](#getAccessLevelForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForFolders$UPDATES](#getAccessLevelForFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildDocuments$UPDATES](#getChildDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildDocumentsPaging$UPDATES](#getChildDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildFolders$UPDATES](#getChildFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildFoldersPaging$UPDATES](#getChildFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdForFolderId$UPDATES](#getContentIdForFolderId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdsForFolderIds$UPDATES](#getContentIdsForFolderIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDescendantDocumentsOfFolderPaging$UPDATES](#getDescendantDocumentsOfFolderPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDescendantDocumentsOfFoldersPaging$UPDATES](#getDescendantDocumentsOfFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentsByName$UPDATES](#getDocumentsByName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteFolders$UPDATES](#getFavoriteFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteFoldersPaging$UPDATES](#getFavoriteFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolder$UPDATES](#getFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolderIdForContentId$UPDATES](#getFolderIdForContentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolderIdsForContentIds$UPDATES](#getFolderIdsForContentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolders$UPDATES](#getFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFoldersList$UPDATES](#getFoldersList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFoldersPaging$UPDATES](#getFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFullPathStringToFolder$UPDATES](#getFullPathStringToFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFullPathStringToFolders$UPDATES](#getFullPathStringToFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMyProcessViewFolder$UPDATES](#getMyProcessViewFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMyReportsFolder$UPDATES](#getMyReportsFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMyTaskViewFolder$UPDATES](#getMyTaskViewFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getParentFolders$UPDATES](#getParentFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getParentFoldersPaging$UPDATES](#getParentFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPersonalizedTaskViewsFolder$UPDATES](#getPersonalizedTaskViewsFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForFolder$UPDATES](#getRoleMapForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemFolderId$UPDATES](#getSystemFolderId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTreeViewForFolder$UPDATES](#getTreeViewForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTreeViewForFolders$UPDATES](#getTreeViewForFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWritableFoldersForFolderPaging$UPDATES](#getWritableFoldersForFolderPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isFolderEmpty$UPDATES](#isFolderEmpty$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForFolder$UPDATES](#rejectChangesForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForFolders$UPDATES](#rejectChangesForFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeFolderFromFavorites$UPDATES](#removeFolderFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeFoldersFromFavorites$UPDATES](#removeFoldersFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRoleMapForFolder$UPDATES](#setRoleMapForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSystemFolderId$UPDATES](#setSystemFolderId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateFolder$UPDATES](#updateFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateFolders$UPDATES](#updateFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForFolder$UPDATES](#updateForumForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForFolders$UPDATES](#updateForumForFolders$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addFoldersToFavorites](#addFoldersToFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Adds multiple folders to the current user's "Favorites" list.

    `void`

    `[addFolderToFavorites](#addFolderToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Adds a folder to the current user's "Favorites" list.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[approveChangesForFolder](#approveChangesForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Approves the creation or deletion of a folder (within a knowledge center for which changes require approval).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[approveChangesForFolders](#approveChangesForFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Approves the creation or deletion of multiple folders (within a knowledge center for which changes require approval).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createFolder](#createFolder\(com.appiancorp.suiteapi.collaboration.Folder\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder_)`

    Deprecated.

    Creates a new folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createFolders](#createFolders\(com.appiancorp.suiteapi.collaboration.Folder%5B%5D\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[] folders_)`

    Deprecated.

    Creates multiple folders

    `void`

    `[deleteFolder](#deleteFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Deletes a folder

    `void`

    `[deleteFolders](#deleteFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Deletes multiple folders

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findAdministratableFoldersPaging](#findAdministratableFoldersPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Finds folder for which the current user is an administrator (ie has an access level of [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findReadableFoldersPaging](#findReadableFoldersPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Finds folder for which the current user has read privileges or greater (ie an access level of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY) or [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findWritableFoldersPaging](#findWritableFoldersPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Finds folder for which the current user has author privileges or greater (ie an access level of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

    `int`

    `[getAccessLevelForFolder](#getAccessLevelForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Retrieves the current user's access level for a folder

    `int[]`

    `[getAccessLevelForFolders](#getAccessLevelForFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Retrieves the current user's access levels for multiple folders

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getChildDocuments](#getChildDocuments\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_, int startIndex_, int scrollLength_)`

    Deprecated.

    use [`getChildDocumentsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildDocumentsPaging](#getChildDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the direct child documents of a folder

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getChildFolders](#getChildFolders\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_, int startIndex_, int scrollLength_)`

    Deprecated.

    use [`getChildFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildFoldersPaging](#getChildFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the direct child folders of a folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentIdForFolderId](#getContentIdForFolderId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getContentIdsForFolderIds](#getContentIdsForFolderIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id)`

    Deprecated.

     

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDescendantDocumentsOfFolderPaging](#getDescendantDocumentsOfFolderPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a flat list of all documents in a given folder and its subfolders

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDescendantDocumentsOfFoldersPaging](#getDescendantDocumentsOfFoldersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a flat list of all documents in a list of folders and their subfolders

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDocumentsByName](#getDocumentsByName\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

    This call will retrieve all documents of a given folder that have a given name.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFavoriteFolders](#getFavoriteFolders\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use [`getFavoriteFoldersPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteFoldersPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteFoldersPaging](#getFavoriteFoldersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieve all the folders that are in the current user's "Favorites" list.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getFolder](#getFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Gets information about a folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getFolderIdForContentId](#getFolderIdForContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFolderIdsForContentIds](#getFolderIdsForContentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id)`

    Deprecated.

     

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFolders](#getFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    use [`getFoldersPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getFoldersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getFoldersList](#getFoldersList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_)`

    Deprecated.

    Returns a ResultList containing error codes for each value supplied in the parameter and `Folder` objects for each value which corresponds to a valid folder

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFoldersPaging](#getFoldersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets Information about multiple folders

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFullPathStringToFolder](#getFullPathStringToFolder\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pathSeparator_)`

    Deprecated.

    Gets the path to a folder through the Collaboration navigation tree.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getFullPathStringToFolders](#getFullPathStringToFolders\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pathSeparator_)`

    Deprecated.

    Gets the path to a list of folders through the Collaboration navigation tree.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getMyProcessViewFolder](#getMyProcessViewFolder\(\))()`

    Deprecated.

    This call will retrieve the folder named ###my\_process\_views under the current users private knowledge center.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getMyReportsFolder](#getMyReportsFolder\(\))()`

    Deprecated.

    This call will retrieve the folder named ###my\_reports under the current users private knowledge center.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getMyTaskViewFolder](#getMyTaskViewFolder\(\))()`

    Deprecated.

    This call will retrieve the folder named ###my\_task\_views under the current users private knowledge center.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getParentFolders](#getParentFolders\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    use [`getParentFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getParentFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getParentFoldersPaging](#getParentFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the breadcrumbs to a folder (that is, the parent folders of a given folder, and also the folder itself).

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getPersonalizedTaskViewsFolder](#getPersonalizedTaskViewsFolder\(\))()`

    Deprecated.

    This call will retrieve the folder named ###personalized\_task\_views under the current users private knowledge center.

    `[CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getRoleMapForFolder](#getRoleMapForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Retrieves the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") for a given folder

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemFolderId](#getSystemFolderId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

    use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getFolderIdForContentId(Long)`](#getFolderIdForContentId\(java.lang.Long\))

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getTreeViewForFolder](#getTreeViewForFolder\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int descendantDepth_)`

    Deprecated.

    Get the tree pivoted at a particular folder.

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")[]`

    `[getTreeViewForFolders](#getTreeViewForFolders\(java.lang.Long%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_, int descendantDepth_)`

    Deprecated.

    Get the trees pivoted at particular folders.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWritableFoldersForFolderPaging](#getWritableFoldersForFolderPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a list of sub-folders of a folder, for which the current user has an access level of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

    `boolean`

    `[isFolderEmpty](#isFolderEmpty\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Checks whether a folder contains any children (documents or sub-folders)

    `void`

    `[rejectChangesForFolder](#rejectChangesForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Rejects the creation or deletion of a folder (within a knowledge center for which changes require approval).

    `void`

    `[rejectChangesForFolders](#rejectChangesForFolders\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Rejects the creation or deletion of multiple folders (within a knowledge center for which changes require approval).

    `void`

    `[removeFolderFromFavorites](#removeFolderFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Removes a folder from the current user's "Favorites" list

    `void`

    `[removeFoldersFromFavorites](#removeFoldersFromFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Removes multiple folders from the current user's "Favorites" list

    `void`

    `[setRoleMapForFolder](#setRoleMapForFolder\(java.lang.Long,com.appiancorp.suiteapi.collaboration.CollaborationRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm_)`

    Deprecated.

    Set the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") for a given folder If the role map is not set for a folder, by default it inherits the permissions specified in the role map from its parent knowledge center

    `void`

    `[setSystemFolderId](#setSystemFolderId\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deprecated.

    use [`createFolder(Folder)`](#createFolder\(com.appiancorp.suiteapi.collaboration.Folder\)) with a pre-populated UUID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Deprecated.

     

    `void`

    `[updateFolder](#updateFolder\(com.appiancorp.suiteapi.collaboration.Folder\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder_)`

    Deprecated.

    Updates a folder

    `void`

    `[updateFolders](#updateFolders\(com.appiancorp.suiteapi.collaboration.Folder%5B%5D\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[] folders_)`

    Deprecated.

    Updates the information stored about multiple folders

    `void`

    `[updateForumForFolder](#updateForumForFolder\(com.appiancorp.suiteapi.collaboration.Folder\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder_)`

    Deprecated.

    Updates the forum ID associated with a folder

    `void`

    `[updateForumForFolders](#updateForumForFolders\(com.appiancorp.suiteapi.collaboration.Folder%5B%5D\))([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[] folders_)`

    Deprecated.

    Updates the forums associated with an array of folders

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getFolder$UPDATES

        static final boolean getFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFolder$UPDATES)

    -   ### getFolders$UPDATES

        static final boolean getFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFolders$UPDATES)

    -   ### getFoldersPaging$UPDATES

        static final boolean getFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFoldersPaging$UPDATES)

    -   ### createFolder$UPDATES

        static final boolean createFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.createFolder$UPDATES)

    -   ### createFolders$UPDATES

        static final boolean createFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.createFolders$UPDATES)

    -   ### updateFolder$UPDATES

        static final boolean updateFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.updateFolder$UPDATES)

    -   ### updateFolders$UPDATES

        static final boolean updateFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.updateFolders$UPDATES)

    -   ### updateForumForFolder$UPDATES

        static final boolean updateForumForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.updateForumForFolder$UPDATES)

    -   ### updateForumForFolders$UPDATES

        static final boolean updateForumForFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.updateForumForFolders$UPDATES)

    -   ### deleteFolder$UPDATES

        static final boolean deleteFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.deleteFolder$UPDATES)

    -   ### deleteFolders$UPDATES

        static final boolean deleteFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.deleteFolders$UPDATES)

    -   ### approveChangesForFolder$UPDATES

        static final boolean approveChangesForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.approveChangesForFolder$UPDATES)

    -   ### approveChangesForFolders$UPDATES

        static final boolean approveChangesForFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.approveChangesForFolders$UPDATES)

    -   ### rejectChangesForFolder$UPDATES

        static final boolean rejectChangesForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.rejectChangesForFolder$UPDATES)

    -   ### rejectChangesForFolders$UPDATES

        static final boolean rejectChangesForFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.rejectChangesForFolders$UPDATES)

    -   ### isFolderEmpty$UPDATES

        static final boolean isFolderEmpty$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.isFolderEmpty$UPDATES)

    -   ### getParentFolders$UPDATES

        static final boolean getParentFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getParentFolders$UPDATES)

    -   ### getParentFoldersPaging$UPDATES

        static final boolean getParentFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getParentFoldersPaging$UPDATES)

    -   ### getChildFolders$UPDATES

        static final boolean getChildFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getChildFolders$UPDATES)

    -   ### getChildFoldersPaging$UPDATES

        static final boolean getChildFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getChildFoldersPaging$UPDATES)

    -   ### getWritableFoldersForFolderPaging$UPDATES

        static final boolean getWritableFoldersForFolderPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getWritableFoldersForFolderPaging$UPDATES)

    -   ### getChildDocuments$UPDATES

        static final boolean getChildDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getChildDocuments$UPDATES)

    -   ### getChildDocumentsPaging$UPDATES

        static final boolean getChildDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getChildDocumentsPaging$UPDATES)

    -   ### getFavoriteFolders$UPDATES

        static final boolean getFavoriteFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFavoriteFolders$UPDATES)

    -   ### getFavoriteFoldersPaging$UPDATES

        static final boolean getFavoriteFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFavoriteFoldersPaging$UPDATES)

    -   ### addFolderToFavorites$UPDATES

        static final boolean addFolderToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.addFolderToFavorites$UPDATES)

    -   ### addFoldersToFavorites$UPDATES

        static final boolean addFoldersToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.addFoldersToFavorites$UPDATES)

    -   ### removeFolderFromFavorites$UPDATES

        static final boolean removeFolderFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.removeFolderFromFavorites$UPDATES)

    -   ### removeFoldersFromFavorites$UPDATES

        static final boolean removeFoldersFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.removeFoldersFromFavorites$UPDATES)

    -   ### getAccessLevelForFolder$UPDATES

        static final boolean getAccessLevelForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getAccessLevelForFolder$UPDATES)

    -   ### getAccessLevelForFolders$UPDATES

        static final boolean getAccessLevelForFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getAccessLevelForFolders$UPDATES)

    -   ### setRoleMapForFolder$UPDATES

        static final boolean setRoleMapForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.setRoleMapForFolder$UPDATES)

    -   ### getRoleMapForFolder$UPDATES

        static final boolean getRoleMapForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getRoleMapForFolder$UPDATES)

    -   ### getTreeViewForFolder$UPDATES

        static final boolean getTreeViewForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getTreeViewForFolder$UPDATES)

    -   ### getTreeViewForFolders$UPDATES

        static final boolean getTreeViewForFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getTreeViewForFolders$UPDATES)

    -   ### getDescendantDocumentsOfFolderPaging$UPDATES

        static final boolean getDescendantDocumentsOfFolderPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getDescendantDocumentsOfFolderPaging$UPDATES)

    -   ### getDescendantDocumentsOfFoldersPaging$UPDATES

        static final boolean getDescendantDocumentsOfFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getDescendantDocumentsOfFoldersPaging$UPDATES)

    -   ### findAdministratableFoldersPaging$UPDATES

        static final boolean findAdministratableFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.findAdministratableFoldersPaging$UPDATES)

    -   ### findWritableFoldersPaging$UPDATES

        static final boolean findWritableFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.findWritableFoldersPaging$UPDATES)

    -   ### findReadableFoldersPaging$UPDATES

        static final boolean findReadableFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.findReadableFoldersPaging$UPDATES)

    -   ### getFullPathStringToFolder$UPDATES

        static final boolean getFullPathStringToFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFullPathStringToFolder$UPDATES)

    -   ### getFullPathStringToFolders$UPDATES

        static final boolean getFullPathStringToFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFullPathStringToFolders$UPDATES)

    -   ### getFoldersList$UPDATES

        static final boolean getFoldersList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFoldersList$UPDATES)

    -   ### getSystemFolderId$UPDATES

        static final boolean getSystemFolderId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getSystemFolderId$UPDATES)

    -   ### setSystemFolderId$UPDATES

        static final boolean setSystemFolderId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.setSystemFolderId$UPDATES)

    -   ### getMyTaskViewFolder$UPDATES

        static final boolean getMyTaskViewFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getMyTaskViewFolder$UPDATES)

    -   ### getMyProcessViewFolder$UPDATES

        static final boolean getMyProcessViewFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getMyProcessViewFolder$UPDATES)

    -   ### getMyReportsFolder$UPDATES

        static final boolean getMyReportsFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getMyReportsFolder$UPDATES)

    -   ### getPersonalizedTaskViewsFolder$UPDATES

        static final boolean getPersonalizedTaskViewsFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getPersonalizedTaskViewsFolder$UPDATES)

    -   ### getDocumentsByName$UPDATES

        static final boolean getDocumentsByName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getDocumentsByName$UPDATES)

    -   ### getContentIdForFolderId$UPDATES

        static final boolean getContentIdForFolderId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getContentIdForFolderId$UPDATES)

    -   ### getContentIdsForFolderIds$UPDATES

        static final boolean getContentIdsForFolderIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getContentIdsForFolderIds$UPDATES)

    -   ### getFolderIdForContentId$UPDATES

        static final boolean getFolderIdForContentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFolderIdForContentId$UPDATES)

    -   ### getFolderIdsForContentIds$UPDATES

        static final boolean getFolderIdsForContentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.getFolderIdsForContentIds$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.FolderService.suggest$UPDATES)

-   ## Method Details

    -   ### getFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") getFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets information about a folder

        Parameters:

        `foid_` - the unique ID of the folder

        Returns:

        a `Folder` object representing the folder with unique ID

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no folder with the given ID exists

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to the folder is not one of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY), [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFoldersPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getFoldersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

        Gets information about multiple folders

        Parameters:

        `foids_` - a list of unique IDs of the folders

        Returns:

        an array of `Folder` objects representing the folders with unique IDs

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if at least one of the IDs does not refer to an existing folder

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to one of the folders is not one of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY), [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets Information about multiple folders

        Parameters:

        `foids_` - a list of unique IDs of the folders

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing the list of `Folder` objects representing the folders with the unique IDs

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if at least one of the IDs does not correspond to a valid folder

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to one of the folders is not one of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY), [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createFolder

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a new folder

        NOTE: The only fields that are actually used in the create are `name`, `searchable`, `knowledgeCenterId` and `parentFolderId`. All other fields are ignored.

        Parameters:

        `folder_` - a `Folder` object which should contain all of the information required to create a valid folder. Minimum required fields: `name`, `searchable`, `knowledgeCenterId`

        Returns:

        the ID of the created folder

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to the knowledge center in which this folder is to be created is not one of [`KnowledgeCenter.ACCESS_LEVEL_READ_WRITE`](KnowledgeCenter.html#ACCESS_LEVEL_READ_WRITE) or [`KnowledgeCenter.ACCESS_LEVEL_ADMINISTRATIVE`](KnowledgeCenter.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `knowledgeCenterId` field of the folder does not refer to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createFolders

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createFolders([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] folders\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates multiple folders

        NOTE: The only fields that are actually used in the create are `name`, `searchable`, `knowledgeCenterId` and `parentFolderId`. All other fields are ignored.

        Parameters:

        `folders_` - an array of `Folder` objects which should contain all of the information required to create valid folders. Minimum required fields: `name`, `searchable`, `knowledgeCenterId`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to the knowledge center in which one of the folders is to be created is not one of [`KnowledgeCenter.ACCESS_LEVEL_READ_WRITE`](KnowledgeCenter.html#ACCESS_LEVEL_READ_WRITE) or [`KnowledgeCenter.ACCESS_LEVEL_ADMINISTRATIVE`](KnowledgeCenter.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `knowledgeCenterId` field of one of the folders does not refer to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateFolder

        void updateFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates a folder

        Parameters:

        `folder_` - a `Folder` object which should contain all of the information required to update a folder Minimum required fields: `name` and `id`. The fields that can be updated using this call are `name`, `id` and `forum`. All other fields will be ignored.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to the folder is not one of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateFolders

        void updateFolders([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] folders\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the information stored about multiple folders

        Parameters:

        `folders_` - an array of `Folder` objects, each of which should contain all of the information required to update the folder. Minimum required fields: `name` and `id`. The fields that can be updated using this call are `name`, `id` and `forum`. All other fields will be ignored.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one of the folders does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user's access level to one of the folders is not one of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForumForFolder

        void updateForumForFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") folder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the forum ID associated with a folder

        Parameters:

        `folder_` - a `Folder` object which should contain the updated forum ID and the minimum required fields to update a folder. Minimum required fields: `id`. The fields that can be updated using this call are `id` and `forum`. All other fields will be ignored. If `forum` is set to `null`, this call will remove any forum associations.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if 1) the current user does not have access to the folder (his access leve is not one of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY), [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) or 2) the current user is not an administrator of the folder and a forum currently exists for the folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForumForFolders

        void updateForumForFolders([Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] folders\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the forums associated with an array of folders

        Parameters:

        `folders_` - an array of `Folder` objects which should contain the updated forum information and the minimum required fields for updating a folder. Minimum required fields: `id`. The fields that can be updated using this call are `id` and `forum`. All other fields will be ignored. If `forum` is set to `null`, this call will remove any forum associations.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if 1) the current user does not have access to one of the folders (his access leve is not one of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY), [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) or 2) the current user is not an administrator of one of the folders and a forum currently exists for the folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteFolder

        void deleteFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes a folder

        Parameters:

        `foid_` - the unique ID of the folder to be deleted

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folders contains documents or sub-folders

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator or the creator of the folder.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteFolders

        void deleteFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes multiple folders

        Parameters:

        `foids_` - a list containing the unique IDs of the `Folder` objects to be deleted

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders specified by `foids_` do not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders contain documents or sub-folders

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator or creator of all of the folders

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForFolder

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] approveChangesForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves the creation or deletion of a folder (within a knowledge center for which changes require approval). To approve creation of a folder, pass the ID of the folder. To approve deletion of a folder, pass (-1 \* (folder ID)).

        Parameters:

        `foid_` - the unique ID of the folder, or the negation of the ID of the folder, depending on whether approval is being done for creation or deletion

        Returns:

        the IDs of the folders (the current folder or any of its sub-folders) that could not be deleted because they are not empty (they contain documents or subfolders).

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator of the `KnowledgeCenter` to which this folder belongs

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` does not exist

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder id provided is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForFolders

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] approveChangesForFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves the creation or deletion of multiple folders (within a knowledge center for which changes require approval). To approve creation of a folder, pass the ID of the folder. To approve deletion of a folder, pass (-1 \* (folder ID)).

        Parameters:

        `foids_` - a list containing the unique IDs of the folders, or the negation of the IDs of the folders, depending on whether approval is being done for creation or deletion

        Returns:

        the IDs of the folders (any of the folders in `foids_` or any of their subfolders) which could not be deleted because they are not empty (they contain documents or subfolders)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator of the `KnowledgeCenter` objects to which these folders belong

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Folder` objects specified by `foids_` do not exist

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more folder ids provided are `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForFolder

        void rejectChangesForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects the creation or deletion of a folder (within a knowledge center for which changes require approval). To reject creation of a folder, pass the ID of the folder. To reject deletion of a folder, pass (-1 \* (folder ID)).

        Parameters:

        `foid_` - the unique ID of the folder, or the negation of the ID of the folder, depending on whether rejection is being done for creation or deletion

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator of the `KnowledgeCenter` to which this folder belongs

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` is not empty, and the change is a creation (meaning the rollback would delete the folder)

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder id provided is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForFolders

        void rejectChangesForFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects the creation or deletion of multiple folders (within a knowledge center for which changes require approval). To reject creation of a folder, pass the ID of the folder. To reject deletion of a folder, pass (-1 \* (folder ID)).

        Parameters:

        `foids_` - a list containing the unique IDs of the folders, or the negation of the IDs of the folders, depending on whether rejection is being done for creation or deletion

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` is not an administrator of the `KnowledgeCenter` objects to which these folders belong

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders specified by `foids_` does not exist

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders is not empty, and the change is a creation (meaning the rollback would delete the folder)

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more folder ids provided are `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isFolderEmpty

        boolean isFolderEmpty([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Checks whether a folder contains any children (documents or sub-folders)

        Parameters:

        `foid_` - the unique ID of the folder

        Returns:

        true if the `Folder` is empty, false otherwise

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getParentFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getParentFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getParentFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getParentFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Retrieves the breadcrumbs to a folder (that is, the parent folders of a given folder, and also the folder itself). The top level parent will be returned in the first index of the array; the folder corresponding to `foid_` will be returned in the last index of the array. If the folder has no parents, an array of length 1, containing the folder corresponding to `foid_` will be returned.

        Parameters:

        `foid_` - the unique ID of the folder whose parents are to be retrieved

        Returns:

        the parent folders of the folder with the given ID, and also the folder referenced by `foid_`

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getParentFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getParentFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the breadcrumbs to a folder (that is, the parent folders of a given folder, and also the folder itself). If the folder has no parents, an array of length 1, containing the folder corresponding to `foid_` will be returned.

        Parameters:

        `foid_` - the unique ID of the folder whose parents are to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects representing the parents of the specified folder,and also the folder referenced by `foid_`

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getChildFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_, int startIndex\_, int scrollLength\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getChildFoldersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Retrieves the direct child folders of a folder

        Parameters:

        `foid_` - the unique ID of the parent folder

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the column by which the results will be sorted. This is one of the `SORT_COLUMN_XXX` properties in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration")

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `scrollLength_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        the direct child folders of the folder specified by `foid_`

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have at least read access to the folder and its children.

    -   ### getChildFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the direct child folders of a folder

        Parameters:

        `foid_` - the unique ID of the parent folder

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects representing the child folders of the folder

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if current `User` does not have at least read access to the folder and its children.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWritableFoldersForFolderPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWritableFoldersForFolderPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a list of sub-folders of a folder, for which the current user has an access level of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)

        Parameters:

        `folderId_` - the unique ID of the folder whose sub-folders are to be retrieved

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects which represent the writable folders for a user

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if current `User` does not have at least read access to the folder and its children.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getChildDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_, int startIndex\_, int scrollLength\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getChildDocumentsPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Retrieves the direct child documents of a folder

        Parameters:

        `foid_` - the unique ID of the folder whose child documents are to be retrieved

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the column by which the results will be sorted. This is one of the `SORT_COLUMN_XXX` properties in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `scrollLength_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if current `User` does not have at least read access to the folder.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildDocumentsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the direct child documents of a folder

        Parameters:

        `foid_` - the unique ID of the folder whose child documents are to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Document` objects representing the child documents of the folder

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if current `User` does not have at least read access to the folder.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getFavoriteFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFavoriteFolders([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFavoriteFoldersPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteFoldersPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Retrieve all the folders that are in the current user's "Favorites" list.

        Parameters:

        `sortOrder_` - the order in which to sort the returned list of folders. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the field of the `Folder` by which to sort the returned list of folders. This is one of `SORT_COLUMN_XXX` in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration")

        Returns:

        the current user's favorite folders

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteFoldersPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieve all the folders that are in the current user's "Favorites" list.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of folders in the current user's "Favorites" list

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addFolderToFavorites

        void addFolderToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds a folder to the current user's "Favorites" list.

        Parameters:

        `foid_` - the unique ID of the folder to be added

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addFoldersToFavorites

        void addFoldersToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds multiple folders to the current user's "Favorites" list.

        Parameters:

        `foids_` - a list of unique IDs representing the folders to be added

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one of the folder IDs does not correspond to a valid folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeFolderFromFavorites

        void removeFolderFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes a folder from the current user's "Favorites" list

        Parameters:

        `foid_` - the unique ID of the folder to be removed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeFoldersFromFavorites

        void removeFoldersFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes multiple folders from the current user's "Favorites" list

        Parameters:

        `foids_` - a list of unique IDs for the folders to be removed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getAccessLevelForFolder

        int getAccessLevelForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the current user's access level for a folder

        Parameters:

        `foid_` - the unique ID of the folder

        Returns:

        The current user's access level for the folder. This will be one of:

        -   [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY)
        -   [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE)
        -   [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)
        -   [`Folder.ACCESS_LEVEL_NO_ACCESS`](Folder.html#ACCESS_LEVEL_NO_ACCESS)

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAccessLevelForFolders

        int\[\] getAccessLevelForFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the current user's access levels for multiple folders

        Parameters:

        `foids_` - a list of unique IDs of the folders

        Returns:

        The current user's access levels for the folders. Each access level will be one of:

        -   [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY)
        -   [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE)
        -   [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)
        -   [`Folder.ACCESS_LEVEL_NO_ACCESS`](Folder.html#ACCESS_LEVEL_NO_ACCESS)

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setRoleMapForFolder

        void setRoleMapForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") for a given folder If the role map is not set for a folder, by default it inherits the permissions specified in the role map from its parent knowledge center

        Parameters:

        `foid_` - the unique ID for a folder

        `crm_` - the `CollaborationRoleMap` object containing the new roles to set

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any group in the role map is invalid

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user in the role map is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the given folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRoleMapForFolder

        [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") getRoleMapForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") for a given folder

        Parameters:

        `foid_` - the unique ID for a folder

        Returns:

        the `CollaborationRoleMap` object containing the roles for the folder

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have enough privileges to view the role map

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTreeViewForFolder

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getTreeViewForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int descendantDepth\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the tree pivoted at a particular folder. Each node in the tree will have its `data` property populated with the local object type value of the local object that it represents (eg, for [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") nodes, the `data` property of the node will be populated with [`LocalObjectTypeMapping.TYPE_DOCUMENT`](../common/LocalObjectTypeMapping.html#TYPE_DOCUMENT))

        Parameters:

        `folderId_` - the unique ID for a `Folder`

        `descendantDepth_` - the number of levels below the root that should be returned. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all levels below the root.

        Returns:

        the `TreePivot` object which represents a tree whose root is the `Folder` specified by `folderId_`. The data in the `TreePivot` tree are `Document` and `Folder` objects. The breadcrumbs contained in the `TreePivot` go all the way up to the community

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have at least read access to all the returned folders.

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTreeViewForFolders

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")\[\] getTreeViewForFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_, int descendantDepth\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the trees pivoted at particular folders. Each node in a tree will have its `data` property populated with the local object type value of the local object that it represents (eg, for [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") nodes, the `data` property of the node will be populated with [`LocalObjectTypeMapping.TYPE_DOCUMENT`](../common/LocalObjectTypeMapping.html#TYPE_DOCUMENT))

        Parameters:

        `folderIds_` - an array of unique IDs which each represent a `Folder`

        `descendantDepth_` - the number of levels below the root that should be returned for each tree. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return all levels below the root.

        Returns:

        an array of `TreePivot` objects, each of which represents a tree whose root is the `Folder` specified by a folder ID

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have at least read access to all root folders and all other returned folders.

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDescendantDocumentsOfFolderPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDescendantDocumentsOfFolderPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a flat list of all documents in a given folder and its subfolders

        Parameters:

        `folderId_` - the unique ID of the `Folder`

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing an array of `Document` objects representing the document descendants of the folder with ID `folderId_`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Folder` specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDescendantDocumentsOfFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDescendantDocumentsOfFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a flat list of all documents in a list of folders and their subfolders

        Parameters:

        `folderIds_` - a list of the unique IDs of the folders

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing an array of `Document` objects representing the document descendants of the folders

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `foid_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findAdministratableFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findAdministratableFoldersPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Finds folder for which the current user is an administrator (ie has an access level of [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

        Parameters:

        `folderName_` - the folder name to be matched. A folder will match if its name _contains_ the value of `folderName_`

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects which match the given criteria

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findWritableFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findWritableFoldersPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Finds folder for which the current user has author privileges or greater (ie an access level of [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

        Parameters:

        `folderName_` - the folder name to be matched. A `Folder` will match if its name _contains_ the value of `folderName_`

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects which match the given criteria

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findReadableFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findReadableFoldersPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") folderName\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Finds folder for which the current user has read privileges or greater (ie an access level of [`Folder.ACCESS_LEVEL_READ_ONLY`](Folder.html#ACCESS_LEVEL_READ_ONLY) or [`Folder.ACCESS_LEVEL_READ_WRITE`](Folder.html#ACCESS_LEVEL_READ_WRITE) or [`Folder.ACCESS_LEVEL_ADMINISTRATIVE`](Folder.html#ACCESS_LEVEL_ADMINISTRATIVE)) and which match the given folder name.

        Parameters:

        `folderName_` - the folder name to be matched. A `Folder` will match if its name _contains_ the value of `folderName_`

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `Folder` objects which match the given criteria

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFullPathStringToFolder

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFullPathStringToFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pathSeparator\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the path to a folder through the Collaboration navigation tree. For example, if folder 'mySubfolder' exists within folder 'myFolder', within knowledge center 'myKC', within community 'myCommunity', the return value will be "myCommunity/myKC/myFolder/mySubfolder", assuming a `pathSeparator_` of "/". If the `Folder` existed within a private `KnowledgeCenter`, the return value would be "/myKC/myFolder/mySubfolder".

        Parameters:

        `folderId_` - the unique ID of the folder

        `pathSeparator_` - the string which will be used to separate entries in the path

        Returns:

        the full path to the folder

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have at least read access to the folder

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by `folderId_` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFullPathStringToFolders

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getFullPathStringToFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pathSeparator\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the path to a list of folders through the Collaboration navigation tree. For example, if folder 'mySubfolder' exists within folder 'myFolder', within knowledge center 'myKC', within community 'myCommunity', the return value for that folder will be "/myCommunity/myKC/myFolder/mySubfolder", assuming a `pathSeparator_` of "/". If the folder existed within a private knowledge center, the return value would be "/myKC/myFolder/mySubfolder".

        Parameters:

        `folderIds_` - the unique IDs of the folders

        `pathSeparator_` - the string which will be used to separate entries in the paths

        Returns:

        the full paths to the folders

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current `User` does not have at least read access to all the folders passed to this method

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of `folderIds` does not refer to a valid folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFoldersList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getFoldersList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_) throws [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns a ResultList containing error codes for each value supplied in the parameter and `Folder` objects for each value which corresponds to a valid folder

        Parameters:

        `folderIds_` - unique Ids of folders to retrieve

        Returns:

        an `Integer` array of result codes and an array of `Folder` objects for all valid folders. The possible result codes are any of the `CODE_XXX` or `COLLAB_CODE_XXX` constants in [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common")

        Throws:

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if null is passed in

    -   ### getSystemFolderId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemFolderId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getFolderIdForContentId(Long)`](#getFolderIdForContentId\(java.lang.Long\))

        This is a small wrapper on Content's getSystemId, but returns the content id as a folder id.

        Parameters:

        `name` - A case-insensitive system name, currently one of: image\_folder\_id leader\_message\_channel\_image\_folder\_id priority\_image\_folder\_id indicator\_image\_folder\_id

        Returns:

        the id of the folder.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized.

    -   ### setSystemFolderId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemFolderId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`createFolder(Folder)`](#createFolder\(com.appiancorp.suiteapi.collaboration.Folder\)) with a pre-populated UUID

        Stores and associates the specified `id` value with the specified `name` key.

        Parameters:

        `name` - A case-insensitive system name.

        `id` - The folder id.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized.

    -   ### getMyTaskViewFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") getMyTaskViewFolder()

        Deprecated.

        This call will retrieve the folder named ###my\_task\_views under the current users private knowledge center. Note that the key ###my\_task\_views is used as this folder name to support internationalization. (See private kc for details). If the current user doesnt have either a private kc or a my task view folder, one or both of these enitities will be created in k and the new folder returned. Therefore this method has the potential for updates.

        Returns:

        The `Folder`.

    -   ### getMyProcessViewFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") getMyProcessViewFolder()

        Deprecated.

        This call will retrieve the folder named ###my\_process\_views under the current users private knowledge center. Note that the key ###my\_process\_views is used as this folder name to support internationalization. (See private kc for details). If the current user doesnt have either a private kc or a my process view folder, one or both of these enitities will be created in k and the new folder returned. Therefore this method has the potential for updates.

        Returns:

        The `Folder`.

    -   ### getMyReportsFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") getMyReportsFolder()

        Deprecated.

        This call will retrieve the folder named ###my\_reports under the current users private knowledge center. Note that the key ###my\_reports is used as this folder name to support internationalization. (See private kc for details). If the current user doesnt have either a private kc or a my reports folder, one or both of these enitities will be created in k and the new folder returned. Therefore this method has the potential for updates.

        Returns:

        The `Folder`.

    -   ### getPersonalizedTaskViewsFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration") getPersonalizedTaskViewsFolder()

        Deprecated.

        This call will retrieve the folder named ###personalized\_task\_views under the current users private knowledge center. Note that the key ###personalized\_task\_views is used as this folder name to support internationalization. (See private kc for details). If the current user doesnt have either a private kc or a personalized.task.views folder, one or both of these enitities will be created in k and the new folder returned. Therefore this method has the potential for updates.

        Returns:

        The `Folder`.

    -   ### getDocumentsByName

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDocumentsByName([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Deprecated.

        This call will retrieve all documents of a given folder that have a given name.

        Parameters:

        `folderId` - The unique ID of the folder

        `name` - The name of the documents that are to be retrieved

        Returns:

        An array of `Document`s

    -   ### getContentIdForFolderId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentIdForFolderId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Deprecated.

    -   ### getContentIdsForFolderIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getContentIdsForFolderIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id)

        Deprecated.

    -   ### getFolderIdForContentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getFolderIdForContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Deprecated.

    -   ### getFolderIdsForContentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFolderIdsForContentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id)

        Deprecated.

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are folder, document.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are folder, document.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string