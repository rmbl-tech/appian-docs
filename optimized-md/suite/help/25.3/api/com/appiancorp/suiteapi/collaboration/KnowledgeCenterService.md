---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html
original_path: api/com/appiancorp/suiteapi/collaboration/KnowledgeCenterService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface KnowledgeCenterService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface KnowledgeCenterService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

This interface provides services for other applications using methods related to collaboration knowledge centers

Knowledge centers may be private or public (see [`KnowledgeCenter.getType()`](KnowledgeCenter.html#getType\(\))). Public knowledge centers are those that are housed within collaboration [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")s; unless they are not searchable, they will be visible to any user who views their parent community. Private knowledge centers are not housed within communities, and so are not generally available to anyone who access the collaboration application.

Knowledge centers also have security settings attached to them. A knowledge center's searchability (see [`KnowledgeCenter.isIsSearchable()`](KnowledgeCenter.html#isIsSearchable\(\))) determines whether the knowledge center will show up in user searches, and, similarly, whether a user who does not have access to the knowledge center will be able to see the knowledge center if he views the contents of the community that contains the knowledge center. Another knowledge center security setting determines whether changes to the knowledge center (creation or deletion of folders, documents and document versions) require the approval of one of the knowledge center administrators, or whether these changes can be posted without approval (see [`KnowledgeCenter.isChangesRequireApproval()`](KnowledgeCenter.html#isChangesRequireApproval\(\))). The final security setting determines whether users who apply for access to a knowledge center are automatically approved for read-only access, or whether their access request must be viewed and approved by one of the knowledge center administrators (see [`KnowledgeCenter.isAutoApproveForReadOnlyAccess()`](KnowledgeCenter.html#isAutoApproveForReadOnlyAccess\(\))).

The role map of a knowledge center determines which users and groups have access to the knowledge center, and the level of access (permissions) that these users and groups possess. The access levels are administrator, editor and read-only. Readers may only view material but may not add new content; editors may view material and also add content; administrators have full control over the knowledge center, which enables them to, among other things, delete the knowledge center, change security settings and approve access requests (see [`KnowledgeCenter.getAccessLevel()`](KnowledgeCenter.html#getAccessLevel\(\))).

Users may choose to "subscribe" to a knowledge center. In so doing, documents added to folders within the knowledge center will appear in the user's "New In Subscriptions" list. Note that a user may have access to a knowledge center without being subscribed to the knowledge center.

Knowledge centers house collaboration [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration")s. Folders may inherit permissions from their parent knowledge center, or may define permissions of their own.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details. The result code array is a parallel array of the passed in argument array.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CollaborationSearchService`](CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CommunityService`](CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`FolderService`](FolderService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`ReportingService`](ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`StatisticsService`](StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addAdminToKnowledgeCenter$UPDATES](#addAdminToKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addKnowledgeCentersToFavorites$UPDATES](#addKnowledgeCentersToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addKnowledgeCenterToFavorites$UPDATES](#addKnowledgeCenterToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[browseKnowledgeCenters$UPDATES](#browseKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[browseKnowledgeCentersPaging$UPDATES](#browseKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createKnowledgeCenter$UPDATES](#createKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createKnowledgeCenters$UPDATES](#createKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createPrivateKnowledgeCenter$UPDATES](#createPrivateKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteKnowledgeCenter$UPDATES](#deleteKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteKnowledgeCenters$UPDATES](#deleteKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteStatisticsKnowledgeCenter$UPDATES](#deleteStatisticsKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[doesPrivateKnowledgeCenterExist$UPDATES](#doesPrivateKnowledgeCenterExist$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForKnowledgeCenter$UPDATES](#getAccessLevelForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForKnowledgeCenters$UPDATES](#getAccessLevelForKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAdministratableKnowledgeCentersPaging$UPDATES](#getAdministratableKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllFolders$UPDATES](#getAllFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllFoldersPaging$UPDATES](#getAllFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdForKnowledgeCenterId$UPDATES](#getContentIdForKnowledgeCenterId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdsForKnowledgeCenterIds$UPDATES](#getContentIdsForKnowledgeCenterIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDescendantDocumentsOfKnowledgeCenterPaging$UPDATES](#getDescendantDocumentsOfKnowledgeCenterPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDescendantDocumentsOfKnowledgeCentersPaging$UPDATES](#getDescendantDocumentsOfKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentsRequiringApproval$UPDATES](#getDocumentsRequiringApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentsRequiringApprovalPaging$UPDATES](#getDocumentsRequiringApprovalPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getExpiredDocuments$UPDATES](#getExpiredDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getExpiredDocumentsPaging$UPDATES](#getExpiredDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteKnowledgeCenters$UPDATES](#getFavoriteKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteKnowledgeCentersPaging$UPDATES](#getFavoriteKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFoldersRequiringApproval$UPDATES](#getFoldersRequiringApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFoldersRequiringApprovalPaging$UPDATES](#getFoldersRequiringApprovalPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolderTreeViewForKnowledgeCenter$UPDATES](#getFolderTreeViewForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolderTreeViewForKnowledgeCenters$UPDATES](#getFolderTreeViewForKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCenter$UPDATES](#getKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCenterIdForContentId$UPDATES](#getKnowledgeCenterIdForContentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCenterIdsForContentIds$UPDATES](#getKnowledgeCenterIdsForContentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCenters$UPDATES](#getKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForCommunities$UPDATES](#getKnowledgeCentersForCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForCommunitiesPaging$UPDATES](#getKnowledgeCentersForCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForCommunity$UPDATES](#getKnowledgeCentersForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForCommunityPaging$UPDATES](#getKnowledgeCentersForCommunityPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForGroup$UPDATES](#getKnowledgeCentersForGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForGroupPaging$UPDATES](#getKnowledgeCentersForGroupPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForGroups$UPDATES](#getKnowledgeCentersForGroups$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersForGroupsPaging$UPDATES](#getKnowledgeCentersForGroupsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersList$UPDATES](#getKnowledgeCentersList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getKnowledgeCentersPaging$UPDATES](#getKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getParentCommunities$UPDATES](#getParentCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getParentCommunitiesPaging$UPDATES](#getParentCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPersonalKnowledgeCenters$UPDATES](#getPersonalKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPersonalKnowledgeCentersPaging$UPDATES](#getPersonalKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForKnowledgeCenter$UPDATES](#getRoleMapForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootFolders$UPDATES](#getRootFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootFoldersPaging$UPDATES](#getRootFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedKnowledgeCenters$UPDATES](#getSubscribedKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscribedKnowledgeCentersPaging$UPDATES](#getSubscribedKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSubscriptionRequests$UPDATES](#getSubscriptionRequests$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemKnowledgeCenterId$UPDATES](#getSystemKnowledgeCenterId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUserStatusForKnowledgeCenter$UPDATES](#getUserStatusForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUserStatusForKnowledgeCenters$UPDATES](#getUserStatusForKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVersionsRequiringApproval$UPDATES](#getVersionsRequiringApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVersionsRequiringApprovalPaging$UPDATES](#getVersionsRequiringApprovalPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWritableFoldersForKnowledgeCenterPaging$UPDATES](#getWritableFoldersForKnowledgeCenterPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWritableKnowledgeCenters$UPDATES](#getWritableKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWritableKnowledgeCentersPaging$UPDATES](#getWritableKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isKnowledgeCenterEmpty$UPDATES](#isKnowledgeCenterEmpty$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveKnowledgeCenter$UPDATES](#moveKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveKnowledgeCenters$UPDATES](#moveKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyExpiredDocuments$UPDATES](#notifyExpiredDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyExpiredDocumentsForKnowledgeCenter$UPDATES](#notifyExpiredDocumentsForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectSubscriptions$UPDATES](#rejectSubscriptions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeKnowledgeCenterFromFavorites$UPDATES](#removeKnowledgeCenterFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeKnowledgeCentersFromFavorites$UPDATES](#removeKnowledgeCentersFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[searchKnowledgeCenters$UPDATES](#searchKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[searchKnowledgeCentersPaging$UPDATES](#searchKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRoleMapForKnowledgeCenter$UPDATES](#setRoleMapForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSystemKnowledgeCenterId$UPDATES](#setSystemKnowledgeCenterId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeKnowledgeCenter$UPDATES](#subscribeKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeKnowledgeCenters$UPDATES](#subscribeKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeKnowledgeCentersWithNote$UPDATES](#subscribeKnowledgeCentersWithNote$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[subscribeKnowledgeCenterWithNote$UPDATES](#subscribeKnowledgeCenterWithNote$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsubscribeKnowledgeCenter$UPDATES](#unsubscribeKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsubscribeKnowledgeCenters$UPDATES](#unsubscribeKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateExpirationDaysForKnowledgeCenter$UPDATES](#updateExpirationDaysForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateExpirationDaysForKnowledgeCenters$UPDATES](#updateExpirationDaysForKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForKnowledgeCenter$UPDATES](#updateForumForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForKnowledgeCenters$UPDATES](#updateForumForKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateIsSearchableForKnowledgeCenter$UPDATES](#updateIsSearchableForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateKnowledgeCenter$UPDATES](#updateKnowledgeCenter$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateKnowledgeCenterCreator$UPDATES](#updateKnowledgeCenterCreator$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateKnowledgeCenters$UPDATES](#updateKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateRolesForKnowledgeCenter$UPDATES](#updateRolesForKnowledgeCenter$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addAdminToKnowledgeCenter](#addAdminToKnowledgeCenter\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Make a user an administrator of a knowledge center

    `void`

    `[addKnowledgeCentersToFavorites](#addKnowledgeCentersToFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Adds multiple knowledge centers to the current user's "Favorites" list

    `void`

    `[addKnowledgeCenterToFavorites](#addKnowledgeCenterToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Adds a knowledge center to the current user's "Favorites" list

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[browseKnowledgeCenters](#browseKnowledgeCenters\(int,int\))(int startIndex_, int scrollLength_)`

    Deprecated.

    use [`browseKnowledgeCentersPaging(int, int, Integer, Integer)`](#browseKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[browseKnowledgeCentersPaging](#browseKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing knowledge centers, each of which meets the following criteria: The knowledge center is private The knowledge center name is not "My Private Knowledge Center" The current user is not subscribed to the knowledge center The current user has access to the knowledge center via group only (that is, the current user is a member of a group that has access to the knowledge center, but the current user does not have explicit access to the knowledge center)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createKnowledgeCenter](#createKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter_)`

    Deprecated.

    Creates a new knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createKnowledgeCenters](#createKnowledgeCenters\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter%5B%5D\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[] knowledgeCenters_)`

    Deprecated.

    Creates multiple knowledge centers

    `void`

    `[createPrivateKnowledgeCenter](#createPrivateKnowledgeCenter\(\))()`

    Deprecated.

    Create a private knowledge center for the current user.

    `void`

    `[deleteKnowledgeCenter](#deleteKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Deletes a given knowledge center.

    `void`

    `[deleteKnowledgeCenters](#deleteKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Deletes knowledge centers.

    `void`

    `[deleteStatisticsKnowledgeCenter](#deleteStatisticsKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Deletes the individual download statistics related to a given knowledge center.

    `void`

    `[deleteStatisticsKnowledgeCenter](#deleteStatisticsKnowledgeCenter\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcid_)`

    Deprecated.

    Deletes the individual download statistics related to a given knowledge center.

    `boolean`

    `[doesPrivateKnowledgeCenterExist](#doesPrivateKnowledgeCenterExist\(\))()`

    Deprecated.

    Determine whether the current user has an existing private knowledge center.

    `int`

    `[getAccessLevelForKnowledgeCenter](#getAccessLevelForKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Retrieves the access level of the current user to the specified knowledge center

    `int[]`

    `[getAccessLevelForKnowledgeCenters](#getAccessLevelForKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Retrieves the access level of the current user to the specified knowledge center

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdministratableKnowledgeCentersPaging](#getAdministratableKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of the knowledge centers to which the current user has administrator privileges, and to which the current user is subscribed

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getAllFolders](#getAllFolders\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getAllFoldersPaging(Long, int, int, Integer, Integer)`](#getAllFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllFoldersPaging](#getAllFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing all of the folders in a knowledge center (including the sub-folders of the direct child folders of the knowledge center)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentIdForKnowledgeCenterId](#getContentIdForKnowledgeCenterId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getContentIdsForKnowledgeCenterIds](#getContentIdsForKnowledgeCenterIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Deprecated.

     

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDescendantDocumentsOfKnowledgeCenterPaging](#getDescendantDocumentsOfKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a `ResultPage` containing a list of all documents in a given knowledge center

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDescendantDocumentsOfKnowledgeCentersPaging](#getDescendantDocumentsOfKnowledgeCentersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] knowledgeCenterIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a `ResultPage` containing a list of all documents in a given list of knowledge centers

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDocumentsRequiringApproval](#getDocumentsRequiringApproval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getDocumentsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getDocumentsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDocumentsRequiringApprovalPaging](#getDocumentsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a `ResultPage` containing the list of documents requiring approval (both for creation and deletion) for a knowledge center

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getExpiredDocuments](#getExpiredDocuments\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getExpiredDocumentsPaging(Long, int, int, Integer, Integer)`](#getExpiredDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getExpiredDocumentsPaging](#getExpiredDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of all expired documents in the specified knowledge center

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFavoriteKnowledgeCenters](#getFavoriteKnowledgeCenters\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use [`getFavoriteKnowledgeCentersPaging(int, int, Integer, Integer)`](#getFavoriteKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteKnowledgeCentersPaging](#getFavoriteKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing the knowledge centers which the current user has added to their "Favorites" list

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFoldersRequiringApproval](#getFoldersRequiringApproval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getFoldersRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getFoldersRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFoldersRequiringApprovalPaging](#getFoldersRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of requiring approval (for creation or deletion) for the given knowledge center

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getFolderTreeViewForKnowledgeCenter](#getFolderTreeViewForKnowledgeCenter\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId_, int accessLevel_)`

    Deprecated.

    Get a tree pivoted at a particular knowledge center.

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")[]`

    `[getFolderTreeViewForKnowledgeCenters](#getFolderTreeViewForKnowledgeCenters\(java.lang.Long%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] knowledgeCenterIds_, int accessLevel_)`

    Deprecated.

    Get trees pivoted at particular knowledge centers.

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getKnowledgeCenter](#getKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Retrieves the knowledge center with the given ID

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getKnowledgeCenterIdForContentId](#getKnowledgeCenterIdForContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getKnowledgeCenterIdsForContentIds](#getKnowledgeCenterIdsForContentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Deprecated.

     

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCenters](#getKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    use [`getKnowledgeCentersPaging(Long[], int, int, Integer, Integer)`](#getKnowledgeCentersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersForCommunities](#getKnowledgeCentersForCommunities\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] coids_)`

    Deprecated.

    use [`getKnowledgeCentersForCommunitiesPaging(Long[], int, int, Integer, Integer)`](#getKnowledgeCentersForCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersForCommunitiesPaging](#getKnowledgeCentersForCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] coids_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of `KnowledgeCenter` objects for given `Community` IDs

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersForCommunity](#getKnowledgeCentersForCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_)`

    Deprecated.

    use [`getKnowledgeCentersForCommunityPaging(Long, int, int, Integer, Integer)`](#getKnowledgeCentersForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersForCommunityPaging](#getKnowledgeCentersForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing the list of knowledge centers contained within a given community

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersForGroup](#getKnowledgeCentersForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid_)`

    Deprecated.

    use [`getKnowledgeCentersForGroupPaging(Long, int, int, Integer, Integer)`](#getKnowledgeCentersForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersForGroupPaging](#getKnowledgeCentersForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of knowledge centers to which a given group has access

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getKnowledgeCentersForGroups](#getKnowledgeCentersForGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] gids_)`

    Deprecated.

    Retrieves the knowledge centers to which the specified groups have acccess NOTE: This method is expensive, and so its use should be limited; `getKnowledgeCentersForGroupsPaging` should be used instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersForGroupsPaging](#getKnowledgeCentersForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] gids_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` contaning a list of knowledge centers to which the specified groups have access

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersList](#getKnowledgeCentersList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Returns a `ResultList` containing result codes for all given IDs and `KnowledgeCenter` objects for valid IDs

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getKnowledgeCentersPaging](#getKnowledgeCentersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` contaning a list of the knowledge centers with the unique IDs specified

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getParentCommunities](#getParentCommunities\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getParentCommunitiesPaging(Long, int, int, Integer, Integer)`](#getParentCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getParentCommunitiesPaging](#getParentCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of the communities which are the parents of a specified knowledge center.

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getPersonalKnowledgeCenters](#getPersonalKnowledgeCenters\(\))()`

    Deprecated.

    use [`getPersonalKnowledgeCentersPaging(int, int, Integer, Integer)`](#getPersonalKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPersonalKnowledgeCentersPaging](#getPersonalKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing the current user's private knowledge centers

    `[CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getRoleMapForKnowledgeCenter](#getRoleMapForKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Retrieves the role map for a given knowledge center

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getRootFolders](#getRootFolders\(java.lang.Long,java.lang.Integer,java.lang.String,int,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_, int startIndex_, int scrollLength_)`

    Deprecated.

    use [`getRootFoldersPaging(Long, int, int, Integer, Integer)`](#getRootFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getRootFoldersPaging](#getRootFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing all of the folders that are the direct children of the given knowledge center

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getSubscribedKnowledgeCenters](#getSubscribedKnowledgeCenters\(\))()`

    Deprecated.

    use [`getSubscribedKnowledgeCentersPaging(int, int, Integer, Integer)`](#getSubscribedKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getSubscribedKnowledgeCentersPaging](#getSubscribedKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing the list of knowledge centers to which the current user is subscribed

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSubscriptionRequests](#getSubscriptionRequests\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Retrieves all the requests for subscription to a specified knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemKnowledgeCenterId](#getSystemKnowledgeCenterId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getKnowledgeCenterIdForContentId(Long)`](#getKnowledgeCenterIdForContentId\(java.lang.Long\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserStatusForKnowledgeCenter](#getUserStatusForKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Retrieves the current user's subscription status (pending, subscribed or unsubscribed) for the specified knowledge center

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getUserStatusForKnowledgeCenters](#getUserStatusForKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Retrieves the current user's subscription status (pending, subscribed or unsubscribed) for the specified knowledge centers

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getVersionsRequiringApproval](#getVersionsRequiringApproval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    use [`getVersionsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getVersionsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsRequiringApprovalPaging](#getVersionsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a `ResultPage` contaning a list of document versions requiring approval (both for creation and deletion) for a specified knowledge center

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWritableFoldersForKnowledgeCenterPaging](#getWritableFoldersForKnowledgeCenterPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcId_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of the `Folder` objects in the knowledge center with the given ID to which the current user has editor privileges or greater

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getWritableKnowledgeCenters](#getWritableKnowledgeCenters\(\))()`

    Deprecated.

    use [`getWritableKnowledgeCentersPaging(int, int, Integer, Integer)`](#getWritableKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWritableKnowledgeCentersPaging](#getWritableKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a `ResultPage` containing a list of the knowledge centers to which the current user has editor privileges or greater.

    `boolean`

    `[isKnowledgeCenterEmpty](#isKnowledgeCenterEmpty\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Checks whether the specified knowledge center is empty (that is, whether it contains any folders)

    `void`

    `[moveKnowledgeCenter](#moveKnowledgeCenter\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_)`

    Deprecated.

    Moves the given knowledge center to the given community.

    `void`

    `[moveKnowledgeCenters](#moveKnowledgeCenters\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid_)`

    Deprecated.

    Moves multiple knowledge centers to the given community.

    `void`

    `[notifyExpiredDocuments](#notifyExpiredDocuments\(java.lang.Double%5B%5D,java.lang.Boolean,java.lang.Boolean,java.lang.Boolean\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")[] days_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups_)`

    Deprecated.

    Send EXPIRING\_FILES notifications for documents expiring within the next given number of days.

    `void`

    `[notifyExpiredDocuments](#notifyExpiredDocuments\(java.lang.Double,java.lang.Boolean,java.lang.Boolean,java.lang.Boolean\))([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") days_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups_)`

    Deprecated.

    Send EXPIRING\_FILES notifications for documents expiring within the next given number of days.

    `void`

    `[notifyExpiredDocumentsForKnowledgeCenter](#notifyExpiredDocumentsForKnowledgeCenter\(java.lang.Long,java.lang.Double%5B%5D,java.lang.Boolean,java.lang.Boolean,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")[] days_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups_)`

    Deprecated.

    Send EXPIRING\_FILES notifications for documents expiring within the next given number of days.

    `void`

    `[notifyExpiredDocumentsForKnowledgeCenter](#notifyExpiredDocumentsForKnowledgeCenter\(java.lang.Long,java.lang.Double,java.lang.Boolean,java.lang.Boolean,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") days_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups_)`

    Deprecated.

    Send EXPIRING\_FILES notifications for documents expiring within the next given number of days.

    `void`

    `[rejectSubscriptions](#rejectSubscriptions\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Deprecated.

    Rejects subscriptions to a knowledge center

    `void`

    `[removeKnowledgeCenterFromFavorites](#removeKnowledgeCenterFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Removes a knowledge center from the current user's "Favorites" list

    `void`

    `[removeKnowledgeCentersFromFavorites](#removeKnowledgeCentersFromFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Removes multiple knowledge centers from the current user's "Favorites" list

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[searchKnowledgeCenters](#searchKnowledgeCenters\(java.lang.String,int,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm_, int startIndex_, int scrollLength_)`

    Deprecated.

    use searchKnowledgeCentersPaging instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchKnowledgeCentersPaging](#searchKnowledgeCentersPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchterm_, int startPosition_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Returns a `ResultPage` of knowledge centers which have names matching given search term.

    `void`

    `[setRoleMapForKnowledgeCenter](#setRoleMapForKnowledgeCenter\(java.lang.Long,com.appiancorp.suiteapi.collaboration.CollaborationRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm_)`

    Deprecated.

    Sets the role map for a given knowledge center.

    `void`

    `[setSystemKnowledgeCenterId](#setSystemKnowledgeCenterId\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`createKnowledgeCenter(KnowledgeCenter)`](#createKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\)) with a pre-populated UUID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[subscribeKnowledgeCenter](#subscribeKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Subscribes the current user to a specified knowledge center.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[subscribeKnowledgeCenters](#subscribeKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Subscribes the current user to multiple knowledge centers.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[subscribeKnowledgeCentersWithNote](#subscribeKnowledgeCentersWithNote\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userNote_)`

    Deprecated.

    Subscribes the current user to the specified knowledge centers.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][]`

    `[subscribeKnowledgeCenterWithNote](#subscribeKnowledgeCenterWithNote\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userNote_)`

    Deprecated.

    Subscribes the current user to a specified knowledge center.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Deprecated.

     

    `void`

    `[unsubscribeKnowledgeCenter](#unsubscribeKnowledgeCenter\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Unsubscribes the current user from the specified knowledge center

    `void`

    `[unsubscribeKnowledgeCenters](#unsubscribeKnowledgeCenters\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_)`

    Deprecated.

    Unsubscribes the current user from multiple knowledge centers

    `void`

    `[updateExpirationDaysForKnowledgeCenter](#updateExpirationDaysForKnowledgeCenter\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_)`

    Deprecated.

    Updates the information about the number of days after which documents in the given knowledge center will expire

    `void`

    `[updateExpirationDaysForKnowledgeCenters](#updateExpirationDaysForKnowledgeCenters\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcids_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days_)`

    Deprecated.

    Updates the information about the number of days after which documents in the given knowledge centers will expire

    `void`

    `[updateForumForKnowledgeCenter](#updateForumForKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter_)`

    Deprecated.

    Updates the forum associated with a knowledge center

    `void`

    `[updateForumForKnowledgeCenters](#updateForumForKnowledgeCenters\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter%5B%5D\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[] knowledgeCenters_)`

    Deprecated.

    Updates the forums associated with knowledge centers

    `void`

    `[updateIsSearchableForKnowledgeCenter](#updateIsSearchableForKnowledgeCenter\(java.lang.Long,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isHierachySearchable_)`

    Deprecated.

    Updates the searchability of a KC as well as recursively updates the searchability of the KC's contents down to the document level.

    `void`

    `[updateKnowledgeCenter](#updateKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter_)`

    Deprecated.

    Updates a knowledge center

    `void`

    `[updateKnowledgeCenterCreator](#updateKnowledgeCenterCreator\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_)`

    Deprecated.

    Changes the creator of the knowledge center to be the user with the specified username

    `void`

    `[updateKnowledgeCenters](#updateKnowledgeCenters\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter%5B%5D\))([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[] knowledgeCenters_)`

    Deprecated.

    Updates multiple knowledge centers

    `void`

    `[updateRolesForKnowledgeCenter](#updateRolesForKnowledgeCenter\(java.lang.Long,java.lang.String%5B%5D,int%5B%5D,java.lang.String%5B%5D,java.lang.Long%5B%5D,int%5B%5D,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, int[] roles_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] notes_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, int[] groupRoles_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] groupNotes_)`

    Deprecated.

    Updates the role of the pending access users.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createKnowledgeCenter$UPDATES

        static final boolean createKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.createKnowledgeCenter$UPDATES)

    -   ### createKnowledgeCenters$UPDATES

        static final boolean createKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.createKnowledgeCenters$UPDATES)

    -   ### updateKnowledgeCenter$UPDATES

        static final boolean updateKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateKnowledgeCenter$UPDATES)

    -   ### updateKnowledgeCenters$UPDATES

        static final boolean updateKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateKnowledgeCenters$UPDATES)

    -   ### updateExpirationDaysForKnowledgeCenter$UPDATES

        static final boolean updateExpirationDaysForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateExpirationDaysForKnowledgeCenter$UPDATES)

    -   ### updateExpirationDaysForKnowledgeCenters$UPDATES

        static final boolean updateExpirationDaysForKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateExpirationDaysForKnowledgeCenters$UPDATES)

    -   ### updateForumForKnowledgeCenter$UPDATES

        static final boolean updateForumForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateForumForKnowledgeCenter$UPDATES)

    -   ### updateForumForKnowledgeCenters$UPDATES

        static final boolean updateForumForKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateForumForKnowledgeCenters$UPDATES)

    -   ### deleteKnowledgeCenter$UPDATES

        static final boolean deleteKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.deleteKnowledgeCenter$UPDATES)

    -   ### deleteKnowledgeCenters$UPDATES

        static final boolean deleteKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.deleteKnowledgeCenters$UPDATES)

    -   ### moveKnowledgeCenter$UPDATES

        static final boolean moveKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.moveKnowledgeCenter$UPDATES)

    -   ### moveKnowledgeCenters$UPDATES

        static final boolean moveKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.moveKnowledgeCenters$UPDATES)

    -   ### getKnowledgeCenter$UPDATES

        static final boolean getKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCenter$UPDATES)

    -   ### getKnowledgeCenters$UPDATES

        static final boolean getKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCenters$UPDATES)

    -   ### getKnowledgeCentersPaging$UPDATES

        static final boolean getKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersPaging$UPDATES)

    -   ### getWritableKnowledgeCenters$UPDATES

        static final boolean getWritableKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getWritableKnowledgeCenters$UPDATES)

    -   ### getWritableKnowledgeCentersPaging$UPDATES

        static final boolean getWritableKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getWritableKnowledgeCentersPaging$UPDATES)

    -   ### getWritableFoldersForKnowledgeCenterPaging$UPDATES

        static final boolean getWritableFoldersForKnowledgeCenterPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getWritableFoldersForKnowledgeCenterPaging$UPDATES)

    -   ### getAdministratableKnowledgeCentersPaging$UPDATES

        static final boolean getAdministratableKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAdministratableKnowledgeCentersPaging$UPDATES)

    -   ### getKnowledgeCentersForGroup$UPDATES

        static final boolean getKnowledgeCentersForGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForGroup$UPDATES)

    -   ### getKnowledgeCentersForGroupPaging$UPDATES

        static final boolean getKnowledgeCentersForGroupPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForGroupPaging$UPDATES)

    -   ### getKnowledgeCentersForGroups$UPDATES

        static final boolean getKnowledgeCentersForGroups$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForGroups$UPDATES)

    -   ### getKnowledgeCentersForGroupsPaging$UPDATES

        static final boolean getKnowledgeCentersForGroupsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForGroupsPaging$UPDATES)

    -   ### getKnowledgeCentersForCommunity$UPDATES

        static final boolean getKnowledgeCentersForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunity$UPDATES)

    -   ### getKnowledgeCentersForCommunityPaging$UPDATES

        static final boolean getKnowledgeCentersForCommunityPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunityPaging$UPDATES)

    -   ### getKnowledgeCentersForCommunities$UPDATES

        static final boolean getKnowledgeCentersForCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunities$UPDATES)

    -   ### getKnowledgeCentersForCommunitiesPaging$UPDATES

        static final boolean getKnowledgeCentersForCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersForCommunitiesPaging$UPDATES)

    -   ### getPersonalKnowledgeCenters$UPDATES

        static final boolean getPersonalKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getPersonalKnowledgeCenters$UPDATES)

    -   ### getPersonalKnowledgeCentersPaging$UPDATES

        static final boolean getPersonalKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getPersonalKnowledgeCentersPaging$UPDATES)

    -   ### getSubscribedKnowledgeCenters$UPDATES

        static final boolean getSubscribedKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSubscribedKnowledgeCenters$UPDATES)

    -   ### getSubscribedKnowledgeCentersPaging$UPDATES

        static final boolean getSubscribedKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSubscribedKnowledgeCentersPaging$UPDATES)

    -   ### subscribeKnowledgeCenter$UPDATES

        static final boolean subscribeKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.subscribeKnowledgeCenter$UPDATES)

    -   ### subscribeKnowledgeCenterWithNote$UPDATES

        static final boolean subscribeKnowledgeCenterWithNote$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.subscribeKnowledgeCenterWithNote$UPDATES)

    -   ### subscribeKnowledgeCentersWithNote$UPDATES

        static final boolean subscribeKnowledgeCentersWithNote$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.subscribeKnowledgeCentersWithNote$UPDATES)

    -   ### subscribeKnowledgeCenters$UPDATES

        static final boolean subscribeKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.subscribeKnowledgeCenters$UPDATES)

    -   ### unsubscribeKnowledgeCenter$UPDATES

        static final boolean unsubscribeKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.unsubscribeKnowledgeCenter$UPDATES)

    -   ### unsubscribeKnowledgeCenters$UPDATES

        static final boolean unsubscribeKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.unsubscribeKnowledgeCenters$UPDATES)

    -   ### getSubscriptionRequests$UPDATES

        static final boolean getSubscriptionRequests$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSubscriptionRequests$UPDATES)

    -   ### rejectSubscriptions$UPDATES

        static final boolean rejectSubscriptions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.rejectSubscriptions$UPDATES)

    -   ### getAllFoldersPaging$UPDATES

        static final boolean getAllFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAllFoldersPaging$UPDATES)

    -   ### getAllFolders$UPDATES

        static final boolean getAllFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAllFolders$UPDATES)

    -   ### getRootFolders$UPDATES

        static final boolean getRootFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getRootFolders$UPDATES)

    -   ### getRootFoldersPaging$UPDATES

        static final boolean getRootFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getRootFoldersPaging$UPDATES)

    -   ### getFoldersRequiringApproval$UPDATES

        static final boolean getFoldersRequiringApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFoldersRequiringApproval$UPDATES)

    -   ### getFoldersRequiringApprovalPaging$UPDATES

        static final boolean getFoldersRequiringApprovalPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFoldersRequiringApprovalPaging$UPDATES)

    -   ### getDocumentsRequiringApproval$UPDATES

        static final boolean getDocumentsRequiringApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getDocumentsRequiringApproval$UPDATES)

    -   ### getDocumentsRequiringApprovalPaging$UPDATES

        static final boolean getDocumentsRequiringApprovalPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getDocumentsRequiringApprovalPaging$UPDATES)

    -   ### getVersionsRequiringApproval$UPDATES

        static final boolean getVersionsRequiringApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getVersionsRequiringApproval$UPDATES)

    -   ### getVersionsRequiringApprovalPaging$UPDATES

        static final boolean getVersionsRequiringApprovalPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getVersionsRequiringApprovalPaging$UPDATES)

    -   ### getExpiredDocuments$UPDATES

        static final boolean getExpiredDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getExpiredDocuments$UPDATES)

    -   ### getExpiredDocumentsPaging$UPDATES

        static final boolean getExpiredDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getExpiredDocumentsPaging$UPDATES)

    -   ### notifyExpiredDocuments$UPDATES

        static final boolean notifyExpiredDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.notifyExpiredDocuments$UPDATES)

    -   ### notifyExpiredDocumentsForKnowledgeCenter$UPDATES

        static final boolean notifyExpiredDocumentsForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.notifyExpiredDocumentsForKnowledgeCenter$UPDATES)

    -   ### isKnowledgeCenterEmpty$UPDATES

        static final boolean isKnowledgeCenterEmpty$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.isKnowledgeCenterEmpty$UPDATES)

    -   ### getParentCommunities$UPDATES

        static final boolean getParentCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getParentCommunities$UPDATES)

    -   ### getParentCommunitiesPaging$UPDATES

        static final boolean getParentCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getParentCommunitiesPaging$UPDATES)

    -   ### getFavoriteKnowledgeCenters$UPDATES

        static final boolean getFavoriteKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFavoriteKnowledgeCenters$UPDATES)

    -   ### getFavoriteKnowledgeCentersPaging$UPDATES

        static final boolean getFavoriteKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFavoriteKnowledgeCentersPaging$UPDATES)

    -   ### addKnowledgeCenterToFavorites$UPDATES

        static final boolean addKnowledgeCenterToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.addKnowledgeCenterToFavorites$UPDATES)

    -   ### addKnowledgeCentersToFavorites$UPDATES

        static final boolean addKnowledgeCentersToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.addKnowledgeCentersToFavorites$UPDATES)

    -   ### removeKnowledgeCenterFromFavorites$UPDATES

        static final boolean removeKnowledgeCenterFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.removeKnowledgeCenterFromFavorites$UPDATES)

    -   ### removeKnowledgeCentersFromFavorites$UPDATES

        static final boolean removeKnowledgeCentersFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.removeKnowledgeCentersFromFavorites$UPDATES)

    -   ### getUserStatusForKnowledgeCenter$UPDATES

        static final boolean getUserStatusForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getUserStatusForKnowledgeCenter$UPDATES)

    -   ### getUserStatusForKnowledgeCenters$UPDATES

        static final boolean getUserStatusForKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getUserStatusForKnowledgeCenters$UPDATES)

    -   ### getAccessLevelForKnowledgeCenter$UPDATES

        static final boolean getAccessLevelForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAccessLevelForKnowledgeCenter$UPDATES)

    -   ### getAccessLevelForKnowledgeCenters$UPDATES

        static final boolean getAccessLevelForKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getAccessLevelForKnowledgeCenters$UPDATES)

    -   ### updateRolesForKnowledgeCenter$UPDATES

        static final boolean updateRolesForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateRolesForKnowledgeCenter$UPDATES)

    -   ### setRoleMapForKnowledgeCenter$UPDATES

        static final boolean setRoleMapForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.setRoleMapForKnowledgeCenter$UPDATES)

    -   ### getRoleMapForKnowledgeCenter$UPDATES

        static final boolean getRoleMapForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getRoleMapForKnowledgeCenter$UPDATES)

    -   ### browseKnowledgeCenters$UPDATES

        static final boolean browseKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.browseKnowledgeCenters$UPDATES)

    -   ### browseKnowledgeCentersPaging$UPDATES

        static final boolean browseKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.browseKnowledgeCentersPaging$UPDATES)

    -   ### addAdminToKnowledgeCenter$UPDATES

        static final boolean addAdminToKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.addAdminToKnowledgeCenter$UPDATES)

    -   ### updateKnowledgeCenterCreator$UPDATES

        static final boolean updateKnowledgeCenterCreator$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateKnowledgeCenterCreator$UPDATES)

    -   ### searchKnowledgeCenters$UPDATES

        static final boolean searchKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.searchKnowledgeCenters$UPDATES)

    -   ### searchKnowledgeCentersPaging$UPDATES

        static final boolean searchKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.searchKnowledgeCentersPaging$UPDATES)

    -   ### getDescendantDocumentsOfKnowledgeCenterPaging$UPDATES

        static final boolean getDescendantDocumentsOfKnowledgeCenterPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getDescendantDocumentsOfKnowledgeCenterPaging$UPDATES)

    -   ### getDescendantDocumentsOfKnowledgeCentersPaging$UPDATES

        static final boolean getDescendantDocumentsOfKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getDescendantDocumentsOfKnowledgeCentersPaging$UPDATES)

    -   ### getFolderTreeViewForKnowledgeCenter$UPDATES

        static final boolean getFolderTreeViewForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFolderTreeViewForKnowledgeCenter$UPDATES)

    -   ### getFolderTreeViewForKnowledgeCenters$UPDATES

        static final boolean getFolderTreeViewForKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getFolderTreeViewForKnowledgeCenters$UPDATES)

    -   ### getKnowledgeCentersList$UPDATES

        static final boolean getKnowledgeCentersList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCentersList$UPDATES)

    -   ### doesPrivateKnowledgeCenterExist$UPDATES

        static final boolean doesPrivateKnowledgeCenterExist$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.doesPrivateKnowledgeCenterExist$UPDATES)

    -   ### createPrivateKnowledgeCenter$UPDATES

        static final boolean createPrivateKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.createPrivateKnowledgeCenter$UPDATES)

    -   ### getSystemKnowledgeCenterId$UPDATES

        static final boolean getSystemKnowledgeCenterId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getSystemKnowledgeCenterId$UPDATES)

    -   ### setSystemKnowledgeCenterId$UPDATES

        static final boolean setSystemKnowledgeCenterId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.setSystemKnowledgeCenterId$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.suggest$UPDATES)

    -   ### deleteStatisticsKnowledgeCenter$UPDATES

        static final boolean deleteStatisticsKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.deleteStatisticsKnowledgeCenter$UPDATES)

    -   ### getContentIdForKnowledgeCenterId$UPDATES

        static final boolean getContentIdForKnowledgeCenterId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getContentIdForKnowledgeCenterId$UPDATES)

    -   ### getContentIdsForKnowledgeCenterIds$UPDATES

        static final boolean getContentIdsForKnowledgeCenterIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getContentIdsForKnowledgeCenterIds$UPDATES)

    -   ### getKnowledgeCenterIdForContentId$UPDATES

        static final boolean getKnowledgeCenterIdForContentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCenterIdForContentId$UPDATES)

    -   ### getKnowledgeCenterIdsForContentIds$UPDATES

        static final boolean getKnowledgeCenterIdsForContentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.getKnowledgeCenterIdsForContentIds$UPDATES)

    -   ### updateIsSearchableForKnowledgeCenter$UPDATES

        static final boolean updateIsSearchableForKnowledgeCenter$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.KnowledgeCenterService.updateIsSearchableForKnowledgeCenter$UPDATES)

-   ## Method Details

    -   ### createKnowledgeCenter

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createKnowledgeCenter([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a new knowledge center

        Parameters:

        `knowledgeCenter_` - a `KnowledgeCenter` object which should contain all of the information required to create a valid `KnowledgeCenter`. Minimum required fields: `name`, `description`, `changesRequireApproval`, `searchable`, `autoApproveForReadOnlyAccess`,`type`

        Returns:

        the unique ID of the newly created `KnowledgeCenter`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have enough privileges to create a knowledge center under the specified CommunityId field.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if this knowledge center is public, but the parent community ID specified does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createKnowledgeCenters

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createKnowledgeCenters([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] knowledgeCenters\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates multiple knowledge centers

        Parameters:

        `knowledgeCenters_` - an array of `KnowledgeCenter` objects which should contain minimum information required to create a valid `KnowledgeCenter`. Minimum required fields: `name`, `description`, `changesRequireApproval`, `searchable`, `autoApproveForReadOnlyAccess`,`type`

        Returns:

        the unique IDs of the created knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have enough privileges to create any knowledge center under the specified CommunityId field.

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the knowledge centers is public, but the parent community ID of the knowledge center does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateKnowledgeCenter

        void updateKnowledgeCenter([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates a knowledge center

        Parameters:

        `knowledgeCenter_` - a `KnowledgeCenter` object which contains information to be updated. Minimum required fields: `name`, `description`, `changesRequireApproval`, `isSearchable`, `autoApproveForReadOnlyAccess`, `id`,`creator`.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to update the specified knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID the knowledge center does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateKnowledgeCenters

        void updateKnowledgeCenters([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] knowledgeCenters\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates multiple knowledge centers

        Parameters:

        `knowledgeCenters_` - a list of `KnowledgeCenter` objects which should contain minimum information required to update a `KnowledgeCenter`. Minimum required fields: `name`, `description`,`changesRequireApproval`, `isSearchable`, `autoApproveForReadOnlyAccess`, `id`, `creator`.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to update the specified knowledge centers

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID any of the knowledge centers does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateExpirationDaysForKnowledgeCenter

        void updateExpirationDaysForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the information about the number of days after which documents in the given knowledge center will expire

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `days_` - the number of days after which documents in the knowledge center will expire

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to update the specified knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`updateAllChildrenAndVersionsVisibility`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content")

    -   ### updateExpirationDaysForKnowledgeCenters

        void updateExpirationDaysForKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") days\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the information about the number of days after which documents in the given knowledge centers will expire

        Parameters:

        `kcids_` - the uniques IDs of the knowledge centers

        `days_` - the number of days after which documents in the knowledge centers will expire

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to update the specified knowledge centers

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`updateAllChildrenAndVersionsExpiration`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content")

    -   ### updateForumForKnowledgeCenter

        void updateForumForKnowledgeCenter([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") knowledgeCenter\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the forum associated with a knowledge center

        Parameters:

        `knowledgeCenter_` - a `KnowledgeCenter` object which should contain all of the information required to update the `Forum` associated with `KnowledeCenter`. Minimum required fields: `name`, `description`,`changesRequireApproval`, `isSearchable`, `autoApproveForReadOnlyAccess`, `id`, `forum`. If `Forum` is set to `null`, this removes any forum associations.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the knowledge center does not correspond a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForumForKnowledgeCenters

        void updateForumForKnowledgeCenters([KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] knowledgeCenters\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the forums associated with knowledge centers

        Parameters:

        `knowledgeCenters_` - a list of `KnowledgeCenter` objects containing all of the information required to update the `Forum`s associated with the `KnowledgeCenter`s. Minimum required fields: `name`, `description`, `changesRequireApproval`, `isSearchable`, `autoApproveForReadOnlyAccess`, `id`, `forum`. If `Forum` is set to `null`, this removes any forum associations.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs of the knowledge centers does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteKnowledgeCenter

        void deleteKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes a given knowledge center. A knowledge center can only be deleted if it is empty (contains no folders).

        Parameters:

        `kcid_` - the unique ID of the knowledge center to be deleted

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to delete the specified knowledge center

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the knowledge center contains folders

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteKnowledgeCenters

        void deleteKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes knowledge centers. A knowledge center can only be deleted if it is empty (contains no folders).

        Parameters:

        `kcids_` - an array of the unique IDs of the knowledge centers to be deleted.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to delete any of the specified knowledge centers

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the the knowledge centers contains folders

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveKnowledgeCenter

        void moveKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Moves the given knowledge center to the given community. This method will also update the Content Object to reflect the changes of Type and Quota. If the move succeeds, the KC will be updated to a Community KC.

        Parameters:

        `kcid_` - the unique ID of the knowledge center to be moved

        `coid_` - the unique ID of the community to which to move the knowledge center

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community ID does not correspond to a valid community

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the knowledge center ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveKnowledgeCenters

        void moveKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Moves multiple knowledge centers to the given community. This method will also update the Content Object to reflect the changes of Type and Quota. If the move succeeds, the KCs will be updated to Community KCs.

        Parameters:

        `kcids_` - an array containing the unique IDs of the knowledge centers to be moved

        `coid_` - the unique ID of the community to which to move the knowledge center

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community ID does not correspond to a valid community

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the knowledge center IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCenter

        [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") getKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the knowledge center with the given ID

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        the retrieved knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have view privileges for this knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getKnowledgeCentersPaging(Long[], int, int, Integer, Integer)`](#getKnowledgeCentersPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers with the given IDs

        Parameters:

        `kcids_` - an array containing the unique IDs of the knowledge centers to be retrieved

        Returns:

        the retrieved knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have view privileges for any of the specified knowledge centers

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` contaning a list of the knowledge centers with the unique IDs specified

        Parameters:

        `kcids_` - an array containing the unique IDs of the knowledge centers to be retrieved

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects for the specified IDs.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have view privileges for any of knowledge center's returned

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWritableKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getWritableKnowledgeCenters() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getWritableKnowledgeCentersPaging(int, int, Integer, Integer)`](#getWritableKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers to which the current user has editor privileges or greater.

        Returns:

        an array of knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWritableKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWritableKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of the knowledge centers to which the current user has editor privileges or greater.

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` Objects.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWritableFoldersForKnowledgeCenterPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWritableFoldersForKnowledgeCenterPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcId\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of the `Folder` objects in the knowledge center with the given ID to which the current user has editor privileges or greater

        Parameters:

        `kcId_` - the ID of the knowledge center

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Folder` objects.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have view privileges to the specified knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAdministratableKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdministratableKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Retrieves a `ResultPage` containing a list of the knowledge centers to which the current user has administrator privileges, and to which the current user is subscribed

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForGroup

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid\_)

        Deprecated.

        use [`getKnowledgeCentersForGroupPaging(Long, int, int, Integer, Integer)`](#getKnowledgeCentersForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers to which a given group has access

        Parameters:

        `gid_` - the unique ID of the group

        Returns:

        a list of knowledge centers

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForGroupPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersForGroupPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") gid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Retrieves a `ResultPage` containing a list of knowledge centers to which a given group has access

        Parameters:

        `gid_` - the unique ID of the group

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForGroups

        [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersForGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] gids\_)

        Deprecated.

        Retrieves the knowledge centers to which the specified groups have acccess NOTE: This method is expensive, and so its use should be limited; `getKnowledgeCentersForGroupsPaging` should be used instead.

        Parameters:

        `gids_` - a list containing the unique IDs of the groups

        Returns:

        a list of knowledge centers to which the specified groups have access

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs deprecated use [`getKnowledgeCentersForGroupsPaging(Long[], int, int, Integer, Integer)`](#getKnowledgeCentersForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    -   ### getKnowledgeCentersForGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersForGroupsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] gids\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Retrieves a `ResultPage` contaning a list of knowledge centers to which the specified groups have access

        Parameters:

        `gids_` - an array containing the unique IDs of groups

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects, representing the knowledge centers to which the specified groups have access

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForCommunity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getKnowledgeCentersForCommunityPaging(Long, int, int, Integer, Integer)`](#getKnowledgeCentersForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers contained in the specified community

        Parameters:

        `coid_` - the unique ID of the `Community`

        Returns:

        a list of knowledge centers contained within the community

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForCommunityPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersForCommunityPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") coid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing the list of knowledge centers contained within a given community

        Parameters:

        `coid_` - the unique ID of the community

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects, representing the knowledge centers within a particular community

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersForCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getKnowledgeCentersForCommunities([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] coids\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getKnowledgeCentersForCommunitiesPaging(Long[], int, int, Integer, Integer)`](#getKnowledgeCentersForCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers contained within the given communities

        Parameters:

        `coids_` - an array of unique community IDs

        Returns:

        a list of knowledge centers within the given communities

        Throws:

        `InvalidComunityException` - if any of the IDs does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getKnowledgeCentersForCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersForCommunitiesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] coids\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of `KnowledgeCenter` objects for given `Community` IDs

        Parameters:

        `coids_` - a list of unique `Community` IDs

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects representing the knowledge centers contained within the given communities

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPersonalKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getPersonalKnowledgeCenters() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getPersonalKnowledgeCentersPaging(int, int, Integer, Integer)`](#getPersonalKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the current user's private knowlege centers

        Returns:

        the current user's private knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPersonalKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPersonalKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing the current user's private knowledge centers

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects, representing the current user's private knowledge centers.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscribedKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getSubscribedKnowledgeCenters() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getSubscribedKnowledgeCentersPaging(int, int, Integer, Integer)`](#getSubscribedKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the knowledge centers to which the current user is subscribed

        Returns:

        the list of knowledge centers to which the current user is subscribed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscribedKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getSubscribedKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing the list of knowledge centers to which the current user is subscribed

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects, representing the knowledge centers to which the current user is subscribed.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeKnowledgeCenter

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] subscribeKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribes the current user to a specified knowledge center. Returns an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of subscribed knowledge center names (eg if the user is automatically subscribed, the first index will be an empty `String` array and the second index will be a `String` array of length 1 containing the name of the knowledge center corresponding to `kcid_`)

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of resulting subscribed knowledge center names

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not already have access to knowledge center and the knowledge center is not set for autoApprovalForReadOnlyAccess and the owner of knowledge center cannot administer the subscription request

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeKnowledgeCenterWithNote

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] subscribeKnowledgeCenterWithNote([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userNote\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribes the current user to a specified knowledge center. If the subscription requires an approval from the administrator, he will receive a notification of the request along with the note given by the user. Returns an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of subscribed knowledge center names (eg if the user is automatically subscribed, the first index will be an empty `String` array and the second index will be a `String` array of length 1 containing the name of the knowledge center corresponding to `kcid_`)

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `userNote_` - a note from the user regarding why he is requesting access

        Returns:

        an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of resulting subscribed knowledge center names

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not already have access to knowledge center and the knowledge center is not set for autoApprovalForReadOnlyAccess and the owner of knowledge center cannot administer the subscription request

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeKnowledgeCentersWithNote

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] subscribeKnowledgeCentersWithNote([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userNote\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribes the current user to the specified knowledge centers. If the subscription requires an approval from the administrator, he will receive a notification of the request along with the note given by the user. Returns an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of subscribed knowledge center names (eg if the user is automatically subscribed, the first index will be an empty `String` array and the second index will be a `String` array of length 1 containing the name of the knowledge center corresponding to `kcid_`)

        Parameters:

        `kcids_` - array with the unique IDs of the knowledge centers.

        `userNote_` - a note from the user regarding why he is requesting access

        Returns:

        an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of resulting subscribed knowledge center names

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not already have access to knowledge center and the knowledge center is not set for autoApprovalForReadOnlyAccess and the owner of knowledge center cannot administer the subscription request

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### subscribeKnowledgeCenters

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] subscribeKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Subscribes the current user to multiple knowledge centers. Returns an array of length 2, the 1st index of which contains a `String` array of resulting pending knowledge center names and the second index of which is a `String` array of subscribed knowledge center names

        Parameters:

        `kcids_` - an array containing the unique knowledge center IDs

        Returns:

        an array of length 2, the first index of which contains a `String` array of resulting pending knowledge center names and the 2nd index of which is a `String` array of subscribed knowledge center names

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not already have access to knowledge center and the knowledge center is not set for autoApprovalForReadOnlyAccess and the owner of knowledge center cannot administer the subscription request

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsubscribeKnowledgeCenter

        void unsubscribeKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsubscribes the current user from the specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsubscribeKnowledgeCenters

        void unsubscribeKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unsubscribes the current user from multiple knowledge centers

        Parameters:

        `kcids_` - an array of unique knowledge center IDs

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSubscriptionRequests

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSubscriptionRequests([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_)

        Deprecated.

        Retrieves all the requests for subscription to a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        a list containing the usernames of the users who has requested subscription to the given knowledge center

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectSubscriptions

        void rejectSubscriptions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects subscriptions to a knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `users_` - a list containing the usernames of the users whose subscriptions (or subscription requests) to the given knowledge center are to be rejected

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the specified knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing all of the folders in a knowledge center (including the sub-folders of the direct child folders of the knowledge center)

        Parameters:

        `kcid_` - the unique ID of the `KnowledgeCenter`

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing `Folder` objects, representing all of the folders in the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getAllFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getAllFoldersPaging(Long, int, int, Integer, Integer)`](#getAllFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves all of the folders in a knowledge center (including the sub-folders of the direct child folders of the knowledge center)

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        a list of all folders within the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRootFolders

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getRootFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_, int startIndex\_, int scrollLength\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getRootFoldersPaging(Long, int, int, Integer, Integer)`](#getRootFoldersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves all of the folders that are the direct children of a given knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the property by which the results will be sorted. This is one of the `SORT_COLUMN_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `startIndex_` - the starting index of the first `Folder` to return

        `scrollLength_` - the number of consecutive `Folder` objects to return after the first

        Returns:

        the list of root folders for the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have view privileges for any of the folder's returned

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the child documents for root folders points to an invalid document

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the root folders or child folder of root folders points to an invalid folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRootFoldersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getRootFoldersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing all of the folders that are the direct children of the given knowledge center

        Parameters:

        `kcid_` - the unique ID of the `KnowledgeCenter`

        `startPosition_` - the the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Folder` objects, representing the root folders.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to perform this operation.

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFoldersRequiringApproval

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Folder](Folder.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFoldersRequiringApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFoldersRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getFoldersRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the folders requiring approval (for creation or deletion) for the given knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        the list of folders requiring approval for the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFoldersRequiringApprovalPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFoldersRequiringApprovalPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of requiring approval (for creation or deletion) for the given knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Folder` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Folder` objects, representing the folders tha require approval for the given knowledge center.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocumentsRequiringApproval

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDocumentsRequiringApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getDocumentsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getDocumentsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the documents requiring approval (both for creation and deletion) for a given knowledge center

        Parameters:

        `kcid_` - the unique ID of the `KnowledgeCenter`

        Returns:

        a list of documents requring approval for the knowledge center

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocumentsRequiringApprovalPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDocumentsRequiringApprovalPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a `ResultPage` containing the list of documents requiring approval (both for creation and deletion) for a knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of documents requiring approval for the knowledge center

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVersionsRequiringApproval

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getVersionsRequiringApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getVersionsRequiringApprovalPaging(Long, int, int, Integer, Integer)`](#getVersionsRequiringApprovalPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get versions of documents requiring approval (both for creation and deletion) for a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the `KnowledgeCenter`

        Returns:

        a list of documents representing versions that require approval for a knowledge center

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVersionsRequiringApprovalPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getVersionsRequiringApprovalPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a `ResultPage` contaning a list of document versions requiring approval (both for creation and deletion) for a specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Document` objects, representing the versions requiring approval for a knowledge center

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getExpiredDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getExpiredDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getExpiredDocumentsPaging(Long, int, int, Integer, Integer)`](#getExpiredDocumentsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves all expired documents for a knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        a list of expired documents for the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getExpiredDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getExpiredDocumentsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of all expired documents in the specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Document` objects, representing the expired documents in the knowledge center.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyExpiredDocuments

        void notifyExpiredDocuments([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") days\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Send EXPIRING\_FILES notifications for documents expiring within the next given number of days. This is the same list that appears with getExpiredDocuments, but from the root.

        Parameters:

        `days` - The number of days before a document expires. It is used as the criteria for selecting documents for which notifications should be sent. For example, if 14 is specified, notifications for expired documents and those expiring between now and 14 days from now will be sent. NOTE: it is not advisable to pass a value greater than the value set for the VIEW\_EXPIRATION\_DAYS\_AHEAD property in server\\\_conf\\collaboration.properties because the document reactivation user interface only shows documents that expire within the number of days specified by that property.

        `notifyCreator` - send notifications to creator of the kc

        `notifyUsers` - send notifications to users with admin rights over the kc

        `notifyGroups` - send notifications to groups with admin rights over the kc

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the content root

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyExpiredDocuments

        void notifyExpiredDocuments([Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")\[\] days\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Send EXPIRING\_FILES notifications for documents expiring within the next given number of days. This is the same list that appears with getExpiredDocuments, but from the root.

        Parameters:

        `days` - The number of days before (negative) or after (positive) now in which a document expiring will be counted for purposes of this function. Only the first two (2) elements of the array are used. The range between the days is the range used.

        `notifyCreator` - send notifications to creator of the kc

        `notifyUsers` - send notifications to users with admin rights over the kc

        `notifyGroups` - send notifications to groups with admin rights over the kc

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the content root

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyExpiredDocumentsForKnowledgeCenter

        void notifyExpiredDocumentsForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId\_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") days\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Send EXPIRING\_FILES notifications for documents expiring within the next given number of days. This is the same list that appears with getExpiredDocuments, from the given knowledge center's children.

        Parameters:

        `knowledgeCenterId` - only send notifications for the given knowledge center id

        `days` - The number of days before a document expires. It is used as the criteria for selecting documents for which notifications should be sent. For example, if 14 is specified, notifications for expired documents and those expiring between now and 14 days from now will be sent. NOTE: it is not advisable to pass a value greater than the value set for the VIEW\_EXPIRATION\_DAYS\_AHEAD property in server\\\_conf\\collaboration.properties because the document reactivation user interface only shows documents that expire within the number of days specified by that property.

        `notifyCreator` - send notifications to creator of the kc

        `notifyUsers` - send notifications to users with admin rights over the kc

        `notifyGroups` - send notifications to groups with admin rights over the kc

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the specified knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyExpiredDocumentsForKnowledgeCenter

        void notifyExpiredDocumentsForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId\_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")\[\] days\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyCreator\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyUsers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") notifyGroups\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Send EXPIRING\_FILES notifications for documents expiring within the next given number of days. This is the same list that appears with getExpiredDocuments, from the given knowledge center's children.

        Parameters:

        `knowledgeCenterId` - only send notifications for the given knowledge center id

        `days` - The number of days before (negative) or after (positive) now in which a document expiring will be counted for purposes of this function. Only the first two (2) elements of the array are used. The range between the days is the range used.

        `notifyCreator` - send notifications to creator of the kc

        `notifyUsers` - send notifications to users with admin rights over the kc

        `notifyGroups` - send notifications to groups with admin rights over the kc

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the specified knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isKnowledgeCenterEmpty

        boolean isKnowledgeCenterEmpty([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Checks whether the specified knowledge center is empty (that is, whether it contains any folders)

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        `true`, if the knowledge center contains no folders; `false` otherwise.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getParentCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getParentCommunities([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getParentCommunitiesPaging(Long, int, int, Integer, Integer)`](#getParentCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the parent communties of the specified knowledge center. If the knowledge center's direct parent community does not itself have any parents, the length of the returned array will be 1. If the knowledge center is private, the returned array will be zero-length.

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        a list of communities representing the parent communities

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getParentCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getParentCommunitiesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing a list of the communities which are the parents of a specified knowledge center. If the knowledge center's direct parent community does not itself have any parents, the length of the returned array will be 1. If the knowledge center is private, the returned array will be zero-length.

        Parameters:

        `kcid_` - the unique ID of the knowledge center.

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Community` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `Community` objects, representing the parent communities of this knowledge center.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFavoriteKnowledgeCenters([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFavoriteKnowledgeCentersPaging(int, int, Integer, Integer)`](#getFavoriteKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves knowledge centers which the current user has added to their "Favorites" list

        Parameters:

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the property by which the results will be sorted. This is one of the `SORT_COLUMN_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        Returns:

        the list of favorite knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing the knowledge centers which the current user has added to their "Favorites" list

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing a list of `KnowledgeCenter` objects, representing the current user's favorite knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addKnowledgeCenterToFavorites

        void addKnowledgeCenterToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds a knowledge center to the current user's "Favorites" list

        Parameters:

        `kcid_` - the unique ID for the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addKnowledgeCentersToFavorites

        void addKnowledgeCentersToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds multiple knowledge centers to the current user's "Favorites" list

        Parameters:

        `kcids_` - a list containing the unique IDs of the knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeKnowledgeCenterFromFavorites

        void removeKnowledgeCenterFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes a knowledge center from the current user's "Favorites" list

        Parameters:

        `kcid_` - the unique ID for the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeKnowledgeCentersFromFavorites

        void removeKnowledgeCentersFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes multiple knowledge centers from the current user's "Favorites" list

        Parameters:

        `kcids_` - a list containing the unique IDs of the knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getUserStatusForKnowledgeCenter

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserStatusForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the current user's subscription status (pending, subscribed or unsubscribed) for the specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        the status of the current user for the knowledge center. This is one of the `USER_STATUS_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUserStatusForKnowledgeCenters

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getUserStatusForKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the current user's subscription status (pending, subscribed or unsubscribed) for the specified knowledge centers

        Parameters:

        `kcids_` - a list containing the unique IDs of the knowledge centers

        Returns:

        the status of the current user for the knowledge centers. Each status is one of the `USER_STATUS_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAccessLevelForKnowledgeCenter

        int getAccessLevelForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the access level of the current user to the specified knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        the current user's access level to the knowledge center. This is one of the `ACCESS_LEVEL_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAccessLevelForKnowledgeCenters

        int\[\] getAccessLevelForKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the access level of the current user to the specified knowledge center

        Parameters:

        `kcids_` - the unique IDs of the knowledge centers

        Returns:

        access levels of the current user to the knowledge centers. Each access level is one of the `ACCESS_LEVEL_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

    -   ### updateRolesForKnowledgeCenter

        void updateRolesForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, int\[\] roles\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] notes\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, int\[\] groupRoles\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] groupNotes\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), com.appiancorp.kougar.mapper.exceptions.ParameterException, [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the role of the pending access users.

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `users_` - the list of users to update access

        `roles_` - the list of access for users KnowledgeCenter.\[ACCESS\_LEVEL\_ONLY | ACCESS\_LEVEL\_WRITE | ACESS\_LEVEL\_ADMINISTRATIVE | ACCESS\_LEVEL\_NO\_ACCESS\]

        `notes_` - the list of notes from the admin to the user regarding their new access level

        `groups_` - The list of groups to update access

        `groupRoles_` - the list of access for groups KnowledgeCenter.\[ACCESS\_LEVEL\_ONLY | ACCESS\_LEVEL\_WRITE | ACESS\_LEVEL\_ADMINISTRATIVE | ACCESS\_LEVEL\_NO\_ACCESS\]

        `groupNotes_` - the list of notes from the admin to the group regarding their new access level

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `com.appiancorp.kougar.mapper.exceptions.ParameterException` - if the set of arrays (users\_, roles\_ and notes\_ or groups\_, groupRoles\_ and groupNotes\_) don't match in length.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not already have access to knowledge center and the knowledge center is not set for autoApprovalForReadOnlyAccess and the owner of knowledge center cannot administer the subscription request

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

    -   ### setRoleMapForKnowledgeCenter

        void setRoleMapForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the role map for a given knowledge center. It is necessary to set the role map for a knowledge center before any methods which require certain privileges can be called (simply setting the permissions through the `KnowledgeCenter` is insufficient.)

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `crm_` - a `CollaborationRoleMap` object that contains the permissions to be applied to this knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid, or if any username that is part of the role map does not correspond to a valid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to administer the specified knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the group IDs in the role map does not correspond to a valid group

    -   ### getRoleMapForKnowledgeCenter

        [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") getRoleMapForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the role map for a given knowledge center

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        Returns:

        a `CollaborationRoleMap` object that contains the permissions for this knowledge center

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have enough privileges to access the KC

    -   ### browseKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] browseKnowledgeCenters(int startIndex\_, int scrollLength\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`browseKnowledgeCentersPaging(int, int, Integer, Integer)`](#browseKnowledgeCentersPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves knowledge centers, each of which meets the following criteria:

        -   The knowledge center is private
        -   The knowledge center name is not "My Private Knowledge Center"
        -   The current user is not subscribed to the knowledge center
        -   The current user has access to the knowledge center via group only (that is, the current user is a member of a group that has access to the knowledge center, but the current user does not have explicit access to the knowledge center)

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `scrollLength_` - the number of consecutive knowledge centers to return after the first

        Returns:

        the list of knowledge centers that meet the given criteria

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

    -   ### browseKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") browseKnowledgeCentersPaging(int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a `ResultPage` containing knowledge centers, each of which meets the following criteria:

        -   The knowledge center is private
        -   The knowledge center name is not "My Private Knowledge Center"
        -   The current user is not subscribed to the knowledge center
        -   The current user has access to the knowledge center via group only (that is, the current user is a member of a group that has access to the knowledge center, but the current user does not have explicit access to the knowledge center)

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects that meet the given criteria

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addAdminToKnowledgeCenter

        void addAdminToKnowledgeCenter([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Make a user an administrator of a knowledge center

        Parameters:

        `username_` - - the username of the user to be added as administrator of the knowledge center

        `kcid_` - - the ID of the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid, or if the username does not correspond to a valid user

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateKnowledgeCenterCreator

        void updateKnowledgeCenterCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Changes the creator of the knowledge center to be the user with the specified username

        Parameters:

        `username_` - the username of the user to designate as creator of the knowledge center

        `kcid_` - the ID of the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### searchKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] searchKnowledgeCenters([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm\_, int startIndex\_, int scrollLength\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use searchKnowledgeCentersPaging instead

        Returns knowledge centers which have names matching given search term. The search finds all knowledge centers that have the matching string anywhere in the name of knowledge center. for eg: search for om\* will return all knowledge centers whose name are some, myHome, ommm etc

        Parameters:

        `searchTerm_` - the search query

        `startIndex_` - the starting index of the first knowledge center to return

        `scrollLength_` - the number of consecutive knowledge centers to return after the first

        Returns:

        an array of knowledge centers matching the search terms

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### searchKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchKnowledgeCentersPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchterm\_, int startPosition\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns a `ResultPage` of knowledge centers which have names matching given search term. The search finds all knowledge centers that have the matching string anywhere in the name of knowledge center. for eg: search for om\* will return all knowledge centers whose names are some, myHome, ommm etc

        Parameters:

        `searchterm_` - the query string to match for knowledge center name

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `KnowledgeCenter` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing a list of `KnowledgeCenter` objects, representing knowledge centers that match the search terms.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDescendantDocumentsOfKnowledgeCenterPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDescendantDocumentsOfKnowledgeCenterPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a `ResultPage` containing a list of all documents in a given knowledge center

        Parameters:

        `knowledgeCenterId_` - the unique ID of the knowledge center

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) results in descending order

        Returns:

        a `ResultPage` containing the list of `Document` objects representing the document descendants of the knowledge center

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDescendantDocumentsOfKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDescendantDocumentsOfKnowledgeCentersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] knowledgeCenterIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a `ResultPage` containing a list of all documents in a given list of knowledge centers

        Parameters:

        `knowledgeCenterIds_` - a list of the unique IDs of the knowledge centers

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the returned `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the list of `Document` objects representing the document descendants of the given knowledge centers

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFolderTreeViewForKnowledgeCenter

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getFolderTreeViewForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") knowledgeCenterId\_, int accessLevel\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        Get a tree pivoted at a particular knowledge center. The children of the [`TreePivot`](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") will all be `Folder` objects for which the current user has the specified `accessLevel_`, or a greater access level. (Eg if `accessLevel_` is [`KnowledgeCenter.ACCESS_LEVEL_READ_WRITE`](KnowledgeCenter.html#ACCESS_LEVEL_READ_WRITE), all folders for which the current user has write access and also administrative access will be returned.) No `Document` objects will be returned as children of the `TreePivot`.

        Parameters:

        `knowledgeCenterId_` - the ID of the knowledge center

        `accessLevel_` - the accessLevel which the current user must have for the child folders of the knowledge center

        Returns:

        a `TreePivot`, pivoted at the specified knowledge center. The \_subtree field of `TreePivot` points to `TreeNode` object which might be either KnowledgeCenter, Document, Folder or Community. \* The `Id` field maps to the ID of objects mentioned above, `name` maps to object name and `data` maps to either of the TYPE\_DOCUMENT, TYPE\_FOLDER, TYPE\_COMMUNITY, TYPE\_KNOWLEDGE\_CENTER constants in `ObjectTypeMapping`. The \_breadcrumbs field points to the path of the object from the root.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `accessLevel_` is not one of:

        -   KnowledgeCenter.ACCESS\_LEVEL\_ADMINISTRATIVE
        -   KnowledgeCenter.ACCESS\_LEVEL\_READ\_ONLY
        -   KnowledgeCenter.ACCESS\_LEVEL\_READ\_WRITE

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFolderTreeViewForKnowledgeCenters

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")\[\] getFolderTreeViewForKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] knowledgeCenterIds\_, int accessLevel\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        Get trees pivoted at particular knowledge centers. The children of the `TreePivot` objects will all be `Folder` objects for which the current user has the specified `accessLevel_`, or a greater access level. (Eg if `accessLevel_` is [`KnowledgeCenter.ACCESS_LEVEL_READ_WRITE`](KnowledgeCenter.html#ACCESS_LEVEL_READ_WRITE), all `Folder` objects for which the current user has write access and also administrative access will be returned.) No `Document` objects will be returned as children of the `TreePivot` objects.

        Parameters:

        `knowledgeCenterIds_` - the IDs of the knowledge centers

        `accessLevel_` - the accessLevel which the current user must have for the child folders of the knowledge centers

        Returns:

        a list of `TreePivot` objects, each pivoted at one of the specified knowledge centers. The \_subtree field of each `TreePivot` points to `TreeNode` object which might be either KnowledgeCenter, Document, Folder or Community. \* The `Id` field maps to the ID of objects mentioned above, `name` maps to object name and `data` maps to either of the TYPE\_DOCUMENT, TYPE\_FOLDER, TYPE\_COMMUNITY, TYPE\_KNOWLEDGE\_CENTER constants in `ObjectTypeMapping`. The \_breadcrumbs field points to the path of the object from the root.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid knowledge center

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `accessLevel_` is not one of:

        -   KnowledgeCenter.ACCESS\_LEVEL\_ADMINISTRATIVE
        -   KnowledgeCenter.ACCESS\_LEVEL\_READ\_ONLY
        -   KnowledgeCenter.ACCESS\_LEVEL\_READ\_WRITE

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getKnowledgeCentersList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getKnowledgeCentersList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns a `ResultList` containing result codes for all given IDs and `KnowledgeCenter` objects for valid IDs

        Parameters:

        `ids_` - the IDs of knowledge centers to retrieve

        Returns:

        `ResultList` containing `KnowledgeCenter` objects and result codes. Each result code will be one of the `CODE_XXX` or `COLLAB_CODE_XXX` constants in [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common")

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### doesPrivateKnowledgeCenterExist

        boolean doesPrivateKnowledgeCenterExist()

        Deprecated.

        Determine whether the current user has an existing private knowledge center. This will be the case if a private knowledge center was never created for the user, or if it has been deleted.

        Returns:

        `true` if a private knowledge center exists for the user; `false` otherwise.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createPrivateKnowledgeCenter

        void createPrivateKnowledgeCenter()

        Deprecated.

        Create a private knowledge center for the current user. If the current user already has a private knowledge center, calling this method will do nothing.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSystemKnowledgeCenterId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemKnowledgeCenterId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getKnowledgeCenterIdForContentId(Long)`](#getKnowledgeCenterIdForContentId\(java.lang.Long\))

        This is a small wrapper on Content's getSystemId, but returns the content id as a document id.

        Parameters:

        `name` - A case-insensitive system name.

        Returns:

        the id of the community mapped to that name.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized

    -   ### setSystemKnowledgeCenterId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemKnowledgeCenterId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`createKnowledgeCenter(KnowledgeCenter)`](#createKnowledgeCenter\(com.appiancorp.suiteapi.collaboration.KnowledgeCenter\)) with a pre-populated UUID

        Stores and associates the specified `id` value with the specified `name` key.

        Parameters:

        `name` - A case-insensitive system name.

        `id` - The knowledge center id.

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized.

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are knowledge center.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted. Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are knowledge center.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted. Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### deleteStatisticsKnowledgeCenter

        void deleteStatisticsKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes the individual download statistics related to a given knowledge center.

        Parameters:

        `kcid` - knowledge center whose statistics should be deleted

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### deleteStatisticsKnowledgeCenter

        void deleteStatisticsKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcid\_) throws [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes the individual download statistics related to a given knowledge center.

        Parameters:

        `kcid` - knowledge centers whose statistics should be deleted

        Throws:

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getContentIdForKnowledgeCenterId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentIdForKnowledgeCenterId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

    -   ### getContentIdsForKnowledgeCenterIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getContentIdsForKnowledgeCenterIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Deprecated.

    -   ### getKnowledgeCenterIdForContentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getKnowledgeCenterIdForContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

    -   ### getKnowledgeCenterIdsForContentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getKnowledgeCenterIdsForContentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Deprecated.

    -   ### updateIsSearchableForKnowledgeCenter

        void updateIsSearchableForKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isHierachySearchable\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the searchability of a KC as well as recursively updates the searchability of the KC's contents down to the document level.

        Parameters:

        `kcid_` - the unique ID of the knowledge center

        `isHierachySearchable_` - specifies whether the KC as well as its contents will be searchable.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user making this call is an invalid user.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have rights to update the specified knowledge center

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid knowledge center

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs