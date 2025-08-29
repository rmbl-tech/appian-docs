---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/CommunityService.html
original_path: api/com/appiancorp/suiteapi/collaboration/CommunityService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface CommunityService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface CommunityService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

This interface provides services for other applications using methods related to collaboration communities.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CollaborationSearchService`](CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`FolderService`](FolderService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`KnowledgeCenterService`](KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`ReportingService`](ReportingService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`StatisticsService`](StatisticsService.html "interface in com.appiancorp.suiteapi.collaboration")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addCommunitiesToFavorites$UPDATES](#addCommunitiesToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addCommunityToFavorites$UPDATES](#addCommunityToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[canGroupAdministrateCommunity$UPDATES](#canGroupAdministrateCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[canUserAdministrateCommunity$UPDATES](#canUserAdministrateCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createCommunities$UPDATES](#createCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createCommunity$UPDATES](#createCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteCommunity$UPDATES](#deleteCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForCommunities$UPDATES](#getAccessLevelForCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForCommunity$UPDATES](#getAccessLevelForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAdministratableCommunitiesForUser$UPDATES](#getAdministratableCommunitiesForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAdministratableCommunitiesForUserPaging$UPDATES](#getAdministratableCommunitiesForUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildCommunities$UPDATES](#getChildCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildCommunitiesPaging$UPDATES](#getChildCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildKnowledgeCenters$UPDATES](#getChildKnowledgeCenters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildKnowledgeCentersPaging$UPDATES](#getChildKnowledgeCentersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunities$UPDATES](#getCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunitiesForUser$UPDATES](#getCommunitiesForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunitiesForUserPaging$UPDATES](#getCommunitiesForUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunitiesList$UPDATES](#getCommunitiesList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunitiesPaging$UPDATES](#getCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunity$UPDATES](#getCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunityIdForContentId$UPDATES](#getCommunityIdForContentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCommunityIdsForContentIds$UPDATES](#getCommunityIdsForContentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdForCommunityId$UPDATES](#getContentIdForCommunityId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdsForCommunityIds$UPDATES](#getContentIdsForCommunityIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteCommunities$UPDATES](#getFavoriteCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteCommunitiesPaging$UPDATES](#getFavoriteCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForCommunity$UPDATES](#getFeaturedDocumentsForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForCommunityForUser$UPDATES](#getFeaturedDocumentsForCommunityForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForCommunityForUserPaging$UPDATES](#getFeaturedDocumentsForCommunityForUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForCommunityPaging$UPDATES](#getFeaturedDocumentsForCommunityPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForTopLevelCommunity$UPDATES](#getFeaturedDocumentsForTopLevelCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForTopLevelCommunityForUser$UPDATES](#getFeaturedDocumentsForTopLevelCommunityForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForTopLevelCommunityForUserPaging$UPDATES](#getFeaturedDocumentsForTopLevelCommunityForUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFeaturedDocumentsForTopLevelCommunityPaging$UPDATES](#getFeaturedDocumentsForTopLevelCommunityPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFullTree$UPDATES](#getFullTree$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFullTreePaging$UPDATES](#getFullTreePaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getInactiveCommunities$UPDATES](#getInactiveCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getInactiveCommunitiesPaging$UPDATES](#getInactiveCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getInheritedAdministratorGroups$UPDATES](#getInheritedAdministratorGroups$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getInheritedAdministrators$UPDATES](#getInheritedAdministrators$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForCommunity$UPDATES](#getRoleMapForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootCommunities$UPDATES](#getRootCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootCommunitiesPaging$UPDATES](#getRootCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemCommunityId$UPDATES](#getSystemCommunityId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVisibleChildrenOfCommunity$UPDATES](#getVisibleChildrenOfCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[isCommunityEmpty$UPDATES](#isCommunityEmpty$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[reactivateCommunity$UPDATES](#reactivateCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeCommunitiesFromFavorites$UPDATES](#removeCommunitiesFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeCommunityFromFavorites$UPDATES](#removeCommunityFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeFeaturedDocumentFromCommunity$UPDATES](#removeFeaturedDocumentFromCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeFeaturedDocumentsFromCommunity$UPDATES](#removeFeaturedDocumentsFromCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[searchCommunitiesPaging$UPDATES](#searchCommunitiesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setFeaturedDocumentForCommunity$UPDATES](#setFeaturedDocumentForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setFeaturedDocumentsForCommunity$UPDATES](#setFeaturedDocumentsForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRoleMapForCommunity$UPDATES](#setRoleMapForCommunity$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSystemCommunityId$UPDATES](#setSystemCommunityId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateCommunities$UPDATES](#updateCommunities$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateCommunity$UPDATES](#updateCommunity$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addCommunitiesToFavorites](#addCommunitiesToFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_)`

    Deprecated.

    Adds multiple [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects to the user's list of favorites

    `void`

    `[addCommunityToFavorites](#addCommunityToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Adds a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") to the user's list of favorites

    `boolean`

    `[canGroupAdministrateCommunity](#canGroupAdministrateCommunity\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Returns `true` if the specified `Group` is an administrator of the `Community`

    `boolean`

    `[canUserAdministrateCommunity](#canUserAdministrateCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Returns `true` if the current `User` is an administrator of the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createCommunities](#createCommunities\(com.appiancorp.suiteapi.collaboration.Community%5B%5D\))([Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[] communities_)`

    Deprecated.

    Creates [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects in bulk in the collaboration application

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createCommunity](#createCommunity\(com.appiancorp.suiteapi.collaboration.Community\))([Community](Community.html "class in com.appiancorp.suiteapi.collaboration") community_)`

    Deprecated.

    Creates a new [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in the collaboration application

    `void`

    `[deleteCommunity](#deleteCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Deletes the specified [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

    `int[]`

    `[getAccessLevelForCommunities](#getAccessLevelForCommunities\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] cids_)`

    Deprecated.

    Retrieves the Access Levels for a list of communities

    `int`

    `[getAccessLevelForCommunity](#getAccessLevelForCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") cid_)`

    Deprecated.

    Retrieves the Access Level for a community

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getAdministratableCommunitiesForUser](#getAdministratableCommunitiesForUser\(\))()`

    Deprecated.

    use [`getAdministratableCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getAdministratableCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdministratableCommunitiesForUserPaging](#getAdministratableCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects of which the current `User` is an administrator.

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getChildCommunities](#getChildCommunities\(java.lang.Long,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use [`getChildCommunitiesPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildCommunitiesPaging](#getChildCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent `Community`.

    `[KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getChildKnowledgeCenters](#getChildKnowledgeCenters\(java.lang.Long,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use [`getChildKnowledgeCentersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildKnowledgeCentersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildKnowledgeCentersPaging](#getChildKnowledgeCentersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") NOTE: The returned list will be sorted first by `sortProperty_`, and then by user status in the order: [`KnowledgeCenter.USER_STATUS_SUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_SUBSCRIBED), [`KnowledgeCenter.USER_STATUS_PENDING`](KnowledgeCenter.html#USER_STATUS_PENDING), [`KnowledgeCenter.USER_STATUS_UNSUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_UNSUBSCRIBED)

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getCommunities](#getCommunities\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_)`

    Deprecated.

    use [`getCommunitiesPaging(Long[], int, int, Integer, Integer)`](#getCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getCommunitiesForUser](#getCommunitiesForUser\(\))()`

    Deprecated.

    use [`getCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunitiesForUserPaging](#getCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which contain [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects to which the current `User` has access Users will only be able to see those `Document` objects to which they have at least read-only access.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunitiesList](#getCommunitiesList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Get the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects by the requested IDs.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getCommunitiesPaging](#getCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves a list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects from their IDs

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getCommunity](#getCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Retrieves a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCommunityIdForContentId](#getCommunityIdForContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Converts a content id into a community id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getCommunityIdsForContentIds](#getCommunityIdsForContentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Deprecated.

    Converts an array of content id's into an array of community id's.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentIdForCommunityId](#getContentIdForCommunityId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Converts a community id into a content id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getContentIdsForCommunityIds](#getContentIdsForCommunityIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Converts an array of community id's into an array of content id's.

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFavoriteCommunities](#getFavoriteCommunities\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    use [`getFavoriteCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteCommunitiesPaging](#getFavoriteCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which have been tagged as favorites by the user

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFeaturedDocumentsForCommunity](#getFeaturedDocumentsForCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    use [`getFeaturedDocumentsForCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFeaturedDocumentsForCommunityForUser](#getFeaturedDocumentsForCommunityForUser\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    use [`getFeaturedDocumentsForCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFeaturedDocumentsForCommunityForUserPaging](#getFeaturedDocumentsForCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the featured `Document` objects for a given `Community` and its subcommunities that the current `User` can access.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFeaturedDocumentsForCommunityPaging](#getFeaturedDocumentsForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (and its subcommunities)

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFeaturedDocumentsForTopLevelCommunity](#getFeaturedDocumentsForTopLevelCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    use [`getFeaturedDocumentsForTopLevelCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFeaturedDocumentsForTopLevelCommunityForUser](#getFeaturedDocumentsForTopLevelCommunityForUser\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    use [`getFeaturedDocumentsForTopLevelCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFeaturedDocumentsForTopLevelCommunityForUserPaging](#getFeaturedDocumentsForTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (but not its subcommunities) that the current user can access.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFeaturedDocumentsForTopLevelCommunityPaging](#getFeaturedDocumentsForTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the featured documents for a given Community (but not its subcommunities)

    `[MenuTree](MenuTree.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFullTree](#getFullTree\(\))()`

    Deprecated.

    Get a list of [`MenuTree`](MenuTree.html "class in com.appiancorp.suiteapi.collaboration") objects for construction of the collaboration navigation tree

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFullTreePaging](#getFullTreePaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get a list of [`MenuTree`](MenuTree.html "class in com.appiancorp.suiteapi.collaboration") objects for construction of the collaboration navigation tree

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getInactiveCommunities](#getInactiveCommunities\(\))()`

    Deprecated.

    use [`getInactiveCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getInactiveCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getInactiveCommunitiesPaging](#getInactiveCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of inactive [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInheritedAdministratorGroups](#getInheritedAdministratorGroups\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Get the inherited administrator groups for a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getInheritedAdministrators](#getInheritedAdministrators\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Get the inherited administrators for a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

    `[CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getRoleMapForCommunity](#getRoleMapForCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Retrieves the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") object for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

    `[Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getRootCommunities](#getRootCommunities\(\))()`

    Deprecated.

    use [`getRootCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getRootCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getRootCommunitiesPaging](#getRootCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are root communities NOTE: The returned list will be sorted first by `sortProperty_`, and then by user status in the order: [`Community.USER_STATUS_SUBSCRIBED`](Community.html#USER_STATUS_SUBSCRIBED), [`Community.USER_STATUS_PENDING`](Community.html#USER_STATUS_PENDING), [`Community.USER_STATUS_UNSUBSCRIBED`](Community.html#USER_STATUS_UNSUBSCRIBED)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemCommunityId](#getSystemCommunityId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getCommunityIdForContentId(Long)`](#getCommunityIdForContentId\(java.lang.Long\))

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getVisibleChildrenOfCommunity](#getVisibleChildrenOfCommunity\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_)`

    Deprecated.

    Retrieve visible children of a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

    `boolean`

    `[isCommunityEmpty](#isCommunityEmpty\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Checks whether a community contains children (sub-communities, knowledge centers, folders or documents).

    `void`

    `[reactivateCommunity](#reactivateCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Reactivate a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

    `void`

    `[removeCommunitiesFromFavorites](#removeCommunitiesFromFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_)`

    Deprecated.

    Removes multiple [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects from the user's favorites list

    `void`

    `[removeCommunityFromFavorites](#removeCommunityFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Deprecated.

    Removes a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") from the user's favorites list

    `void`

    `[removeFeaturedDocumentFromCommunity](#removeFeaturedDocumentFromCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentId_)`

    Deprecated.

    Unfeature a [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which it currently resides

    `void`

    `[removeFeaturedDocumentsFromCommunity](#removeFeaturedDocumentsFromCommunity\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] documentIds_)`

    Deprecated.

    Unfeature a list of [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which they currently reside

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchCommunitiesPaging](#searchCommunitiesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchterm_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Get the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects whose names match `searchterm_`.

    `void`

    `[setFeaturedDocumentForCommunity](#setFeaturedDocumentForCommunity\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentId_)`

    Deprecated.

    Set a [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") to be 'featured' for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which the `Document` currently resides.

    `void`

    `[setFeaturedDocumentsForCommunity](#setFeaturedDocumentsForCommunity\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] documentIds_)`

    Deprecated.

    Set a list of [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects to be 'featured' for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which they currently reside

    `void`

    `[setRoleMapForCommunity](#setRoleMapForCommunity\(java.lang.Long,com.appiancorp.suiteapi.collaboration.CollaborationRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm_)`

    Deprecated.

    Set the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") object for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

    `void`

    `[setSystemCommunityId](#setSystemCommunityId\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`createCommunity(Community)`](#createCommunity\(com.appiancorp.suiteapi.collaboration.Community\)) with a pre-populated UUID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Deprecated.

     

    `void`

    `[updateCommunities](#updateCommunities\(com.appiancorp.suiteapi.collaboration.Community%5B%5D\))([Community](Community.html "class in com.appiancorp.suiteapi.collaboration")[] communities_)`

    Deprecated.

    Updates the information stored about a list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects

    `void`

    `[updateCommunity](#updateCommunity\(com.appiancorp.suiteapi.collaboration.Community\))([Community](Community.html "class in com.appiancorp.suiteapi.collaboration") community_)`

    Deprecated.

    Updates a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createCommunity$UPDATES

        static final boolean createCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.createCommunity$UPDATES)

    -   ### createCommunities$UPDATES

        static final boolean createCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.createCommunities$UPDATES)

    -   ### deleteCommunity$UPDATES

        static final boolean deleteCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.deleteCommunity$UPDATES)

    -   ### getCommunity$UPDATES

        static final boolean getCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunity$UPDATES)

    -   ### getCommunities$UPDATES

        static final boolean getCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunities$UPDATES)

    -   ### getCommunitiesPaging$UPDATES

        static final boolean getCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunitiesPaging$UPDATES)

    -   ### getCommunitiesForUser$UPDATES

        static final boolean getCommunitiesForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunitiesForUser$UPDATES)

    -   ### getCommunitiesForUserPaging$UPDATES

        static final boolean getCommunitiesForUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunitiesForUserPaging$UPDATES)

    -   ### getAdministratableCommunitiesForUser$UPDATES

        static final boolean getAdministratableCommunitiesForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getAdministratableCommunitiesForUser$UPDATES)

    -   ### getAdministratableCommunitiesForUserPaging$UPDATES

        static final boolean getAdministratableCommunitiesForUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getAdministratableCommunitiesForUserPaging$UPDATES)

    -   ### getRootCommunities$UPDATES

        static final boolean getRootCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getRootCommunities$UPDATES)

    -   ### getRootCommunitiesPaging$UPDATES

        static final boolean getRootCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getRootCommunitiesPaging$UPDATES)

    -   ### updateCommunity$UPDATES

        static final boolean updateCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.updateCommunity$UPDATES)

    -   ### updateCommunities$UPDATES

        static final boolean updateCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.updateCommunities$UPDATES)

    -   ### getInactiveCommunities$UPDATES

        static final boolean getInactiveCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getInactiveCommunities$UPDATES)

    -   ### getInactiveCommunitiesPaging$UPDATES

        static final boolean getInactiveCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getInactiveCommunitiesPaging$UPDATES)

    -   ### getChildCommunities$UPDATES

        static final boolean getChildCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getChildCommunities$UPDATES)

    -   ### getChildCommunitiesPaging$UPDATES

        static final boolean getChildCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getChildCommunitiesPaging$UPDATES)

    -   ### getChildKnowledgeCenters$UPDATES

        static final boolean getChildKnowledgeCenters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getChildKnowledgeCenters$UPDATES)

    -   ### getChildKnowledgeCentersPaging$UPDATES

        static final boolean getChildKnowledgeCentersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getChildKnowledgeCentersPaging$UPDATES)

    -   ### isCommunityEmpty$UPDATES

        static final boolean isCommunityEmpty$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.isCommunityEmpty$UPDATES)

    -   ### getFavoriteCommunities$UPDATES

        static final boolean getFavoriteCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFavoriteCommunities$UPDATES)

    -   ### getFavoriteCommunitiesPaging$UPDATES

        static final boolean getFavoriteCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFavoriteCommunitiesPaging$UPDATES)

    -   ### addCommunityToFavorites$UPDATES

        static final boolean addCommunityToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.addCommunityToFavorites$UPDATES)

    -   ### addCommunitiesToFavorites$UPDATES

        static final boolean addCommunitiesToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.addCommunitiesToFavorites$UPDATES)

    -   ### removeCommunityFromFavorites$UPDATES

        static final boolean removeCommunityFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.removeCommunityFromFavorites$UPDATES)

    -   ### removeCommunitiesFromFavorites$UPDATES

        static final boolean removeCommunitiesFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.removeCommunitiesFromFavorites$UPDATES)

    -   ### getFullTree$UPDATES

        static final boolean getFullTree$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFullTree$UPDATES)

    -   ### getFullTreePaging$UPDATES

        static final boolean getFullTreePaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFullTreePaging$UPDATES)

    -   ### setRoleMapForCommunity$UPDATES

        static final boolean setRoleMapForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.setRoleMapForCommunity$UPDATES)

    -   ### getRoleMapForCommunity$UPDATES

        static final boolean getRoleMapForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getRoleMapForCommunity$UPDATES)

    -   ### getFeaturedDocumentsForCommunity$UPDATES

        static final boolean getFeaturedDocumentsForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunity$UPDATES)

    -   ### getFeaturedDocumentsForCommunityPaging$UPDATES

        static final boolean getFeaturedDocumentsForCommunityPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunityPaging$UPDATES)

    -   ### getFeaturedDocumentsForCommunityForUser$UPDATES

        static final boolean getFeaturedDocumentsForCommunityForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunityForUser$UPDATES)

    -   ### getFeaturedDocumentsForCommunityForUserPaging$UPDATES

        static final boolean getFeaturedDocumentsForCommunityForUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForCommunityForUserPaging$UPDATES)

    -   ### getFeaturedDocumentsForTopLevelCommunity$UPDATES

        static final boolean getFeaturedDocumentsForTopLevelCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunity$UPDATES)

    -   ### getFeaturedDocumentsForTopLevelCommunityPaging$UPDATES

        static final boolean getFeaturedDocumentsForTopLevelCommunityPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunityPaging$UPDATES)

    -   ### getFeaturedDocumentsForTopLevelCommunityForUser$UPDATES

        static final boolean getFeaturedDocumentsForTopLevelCommunityForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunityForUser$UPDATES)

    -   ### getFeaturedDocumentsForTopLevelCommunityForUserPaging$UPDATES

        static final boolean getFeaturedDocumentsForTopLevelCommunityForUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getFeaturedDocumentsForTopLevelCommunityForUserPaging$UPDATES)

    -   ### setFeaturedDocumentForCommunity$UPDATES

        static final boolean setFeaturedDocumentForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.setFeaturedDocumentForCommunity$UPDATES)

    -   ### setFeaturedDocumentsForCommunity$UPDATES

        static final boolean setFeaturedDocumentsForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.setFeaturedDocumentsForCommunity$UPDATES)

    -   ### removeFeaturedDocumentFromCommunity$UPDATES

        static final boolean removeFeaturedDocumentFromCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.removeFeaturedDocumentFromCommunity$UPDATES)

    -   ### removeFeaturedDocumentsFromCommunity$UPDATES

        static final boolean removeFeaturedDocumentsFromCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.removeFeaturedDocumentsFromCommunity$UPDATES)

    -   ### getInheritedAdministrators$UPDATES

        static final boolean getInheritedAdministrators$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getInheritedAdministrators$UPDATES)

    -   ### getInheritedAdministratorGroups$UPDATES

        static final boolean getInheritedAdministratorGroups$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getInheritedAdministratorGroups$UPDATES)

    -   ### reactivateCommunity$UPDATES

        static final boolean reactivateCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.reactivateCommunity$UPDATES)

    -   ### canUserAdministrateCommunity$UPDATES

        static final boolean canUserAdministrateCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.canUserAdministrateCommunity$UPDATES)

    -   ### canGroupAdministrateCommunity$UPDATES

        static final boolean canGroupAdministrateCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.canGroupAdministrateCommunity$UPDATES)

    -   ### getVisibleChildrenOfCommunity$UPDATES

        static final boolean getVisibleChildrenOfCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getVisibleChildrenOfCommunity$UPDATES)

    -   ### getCommunitiesList$UPDATES

        static final boolean getCommunitiesList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunitiesList$UPDATES)

    -   ### searchCommunitiesPaging$UPDATES

        static final boolean searchCommunitiesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.searchCommunitiesPaging$UPDATES)

    -   ### getSystemCommunityId$UPDATES

        static final boolean getSystemCommunityId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getSystemCommunityId$UPDATES)

    -   ### setSystemCommunityId$UPDATES

        static final boolean setSystemCommunityId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.setSystemCommunityId$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.suggest$UPDATES)

    -   ### getContentIdForCommunityId$UPDATES

        static final boolean getContentIdForCommunityId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getContentIdForCommunityId$UPDATES)

    -   ### getContentIdsForCommunityIds$UPDATES

        static final boolean getContentIdsForCommunityIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getContentIdsForCommunityIds$UPDATES)

    -   ### getCommunityIdForContentId$UPDATES

        static final boolean getCommunityIdForContentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunityIdForContentId$UPDATES)

    -   ### getCommunityIdsForContentIds$UPDATES

        static final boolean getCommunityIdsForContentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getCommunityIdsForContentIds$UPDATES)

    -   ### getAccessLevelForCommunity$UPDATES

        static final boolean getAccessLevelForCommunity$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getAccessLevelForCommunity$UPDATES)

    -   ### getAccessLevelForCommunities$UPDATES

        static final boolean getAccessLevelForCommunities$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CommunityService.getAccessLevelForCommunities$UPDATES)

-   ## Method Details

    -   ### createCommunity

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createCommunity([Community](Community.html "class in com.appiancorp.suiteapi.collaboration") community\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a new [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in the collaboration application

        Parameters:

        `community_` - A `Community` object which should contain all of the information required to create a valid `Community`. Minimum required fields: `name`, `description`

        Returns:

        The unique ID of the newly created `Community`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the parent ID of the `Community` specifies a `Community` that does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createCommunities

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createCommunities([Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] communities\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects in bulk in the collaboration application

        Parameters:

        `communities_` - An array of `Community` objects, each of which should contain all of the information required to create a valid `Community`. Minimum required fields: `name`, `description`

        Returns:

        The unique IDs of the newly created `Community` objects

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the parent ID of any of the `Community` objects specifies a `Community` that does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteCommunity

        void deleteCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes the specified [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Parameters:

        `communityId_` - the unique ID of the `Community` to be deleted

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no `Community` exists with the unique ID `communityId_`

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` contains children (either other `Community` objects or `KnowledgeCenter` objects) and therefore cannot be deleted.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunity

        [Community](Community.html "class in com.appiancorp.suiteapi.collaboration") getCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Parameters:

        `communityId_` - The unique ID of the `Community` to be retrieved

        Returns:

        A `Community` object representing the community with unique ID `communityId_`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no `Community` exists with the unique ID `communityId_`.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getCommunities([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getCommunitiesPaging(Long[], int, int, Integer, Integer)`](#getCommunitiesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves a list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects from their IDs

        Parameters:

        `communityIds_` - an array of unique IDs of the communities to be retrieved

        Returns:

        an array of `Community` objects representing the communities whose unique IDs are in `communityIds_`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the unique IDs in `communityIds_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCommunitiesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects from their IDs

        Parameters:

        `communityIds_` - an array of unique IDs of the communities to be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `Community` objects representing the communities whose unique IDs are in `communityIds_`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the unique IDs in `communityIds_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs.

    -   ### getCommunitiesForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getCommunitiesForUser() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which contain [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects to which the current `User` has access. Users will only be able to see those `Document` objects to which they have at least read-only access.

        Returns:

        An array of `Community` objects representing the communities which contain documents to which the current user has access

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the communities returned no longer exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunitiesForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getCommunitiesForUserPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which contain [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects to which the current `User` has access Users will only be able to see those `Document` objects to which they have at least read-only access.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `Community` objects representing the communities which contain documents to which the current `User` has access

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the communities returned no longer exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAdministratableCommunitiesForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getAdministratableCommunitiesForUser() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getAdministratableCommunitiesForUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getAdministratableCommunitiesForUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects of which the current `User` is an administrator.

        Returns:

        An array of `Community` objects representing the communities of which the current `User` is an administrator.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the communities returned no longer exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs.

    -   ### getAdministratableCommunitiesForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdministratableCommunitiesForUserPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects of which the current `User` is an administrator.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `Community` objects representing the communities of which the current `User` is an administrator.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the communities returned no longer exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs.

    -   ### getRootCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getRootCommunities() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getRootCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getRootCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are root communities NOTE:The returned list will be sorted first by ID, and then by user status in the order: [`Community.USER_STATUS_SUBSCRIBED`](Community.html#USER_STATUS_SUBSCRIBED), [`Community.USER_STATUS_PENDING`](Community.html#USER_STATUS_PENDING), [`Community.USER_STATUS_UNSUBSCRIBED`](Community.html#USER_STATUS_UNSUBSCRIBED)

        Returns:

        An array of `Community` objects representing the communities which are root communities.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the root communities to be returned contains an invalid [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRootCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getRootCommunitiesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are root communities NOTE: The returned list will be sorted first by `sortProperty_`, and then by user status in the order: [`Community.USER_STATUS_SUBSCRIBED`](Community.html#USER_STATUS_SUBSCRIBED), [`Community.USER_STATUS_PENDING`](Community.html#USER_STATUS_PENDING), [`Community.USER_STATUS_UNSUBSCRIBED`](Community.html#USER_STATUS_UNSUBSCRIBED)

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `Community` objects representing the communities which are root communities.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the root communities to be returned contains an invalid [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the comunities does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateCommunity

        void updateCommunity([Community](Community.html "class in com.appiancorp.suiteapi.collaboration") community\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Parameters:

        `community_` - A `Community` object which should contain all of the information required to update a valid community. Minimum required fields: `name`,`description`, `id`. The rest of the fields are ignored.

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community is invalid or does not exist

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the parent ID of the community is the same as the ID of the community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateCommunities

        void updateCommunities([Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] communities\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the information stored about a list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects

        Parameters:

        `communities_` - a list of `Community` objects which should contain all of the information required to update a valid community. Minimum required fields: `name`, `description`, `id`. The rest of the fields are ignored.

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities specified in `communities_` is invalid or does not exist

        `[RecursiveRelationshipException](../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the parent ID of any of the communities is the same as the ID for that community

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getInactiveCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getInactiveCommunities()

        Deprecated.

        use [`getInactiveCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getInactiveCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of inactive [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects

        Returns:

        An array of `Community` objects representing all inactive communities

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getInactiveCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getInactiveCommunitiesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Retrieves the list of inactive [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `Community` objects representing all inactive communities

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getChildCommunities([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getChildCommunitiesPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildCommunitiesPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent `Community`. NOTE: The returned list will be sorted first by `sortColumn_`, and then by user status in the order: [`Community.USER_STATUS_SUBSCRIBED`](Community.html#USER_STATUS_SUBSCRIBED), [`Community.USER_STATUS_PENDING`](Community.html#USER_STATUS_PENDING), [`Community.USER_STATUS_UNSUBSCRIBED`](Community.html#USER_STATUS_UNSUBSCRIBED)

        Parameters:

        `communityId_` - the unique ID of the parent `Community`

        `sortOrder_` - The order in which to sort the returned list of communities. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - The field of the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") by which to sort the returned list of communities. This is one of the `SORT_COLUMN_XXX` constants in [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Returns:

        An array of `Community` objects representing those communities which are direct children of the specified community

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the comunity does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the comunities to be returned contains a `KnowledgeCenter` which does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildCommunitiesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent `Community`. NOTE: The returned list will be sorted first by `sortProperty_`, and then by user status in the order: [`Community.USER_STATUS_SUBSCRIBED`](Community.html#USER_STATUS_SUBSCRIBED), [`Community.USER_STATUS_PENDING`](Community.html#USER_STATUS_PENDING), [`Community.USER_STATUS_UNSUBSCRIBED`](Community.html#USER_STATUS_UNSUBSCRIBED)

        Parameters:

        `communityId_` - the unique ID of the parent `Community`

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing an array of `Community` objects representing those communities which are direct children of the specified community

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the comunity does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the comunities to be returned contains a `KnowledgeCenter` which does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildKnowledgeCenters

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [KnowledgeCenter](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")\[\] getChildKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getChildKnowledgeCentersPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getChildKnowledgeCentersPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") NOTE: The returned list will be sorted first by `sortColumn_`, and then by user status in the order: [`KnowledgeCenter.USER_STATUS_SUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_SUBSCRIBED), [`KnowledgeCenter.USER_STATUS_PENDING`](KnowledgeCenter.html#USER_STATUS_PENDING), [`KnowledgeCenter.USER_STATUS_UNSUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_UNSUBSCRIBED)

        Parameters:

        `communityId_` - the unique ID of the parent community

        `sortOrder_` - the order in which to sort the returned list of knowledge centers. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - The field of the `KnowledgeCenter` by which to sort the returned list of knowledge centers. This is one of the `SORT_COLUMN_XXX` constants in [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration").

        Returns:

        a list of `KnowledgeCenter` objects representing those knowledge centers which are direct children of the community specified by `communityId_`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the knowledge centers to be returned does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - of the `Community` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildKnowledgeCentersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildKnowledgeCentersPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration") objects which are direct children of the specified parent [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") NOTE: The returned list will be sorted first by `sortProperty_`, and then by user status in the order: [`KnowledgeCenter.USER_STATUS_SUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_SUBSCRIBED), [`KnowledgeCenter.USER_STATUS_PENDING`](KnowledgeCenter.html#USER_STATUS_PENDING), [`KnowledgeCenter.USER_STATUS_UNSUBSCRIBED`](KnowledgeCenter.html#USER_STATUS_UNSUBSCRIBED)

        Parameters:

        `communityId_` - the unique ID of the parent community

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `SORT_KNOWLEDGECENTER_PROPERTY_XXX` constants in [`KnowledgeCenterService`](KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the returned communities This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing the list of `KnowledgeCenter` objects representing those knowledge centers which are direct children of the specified community

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the knowledge centers to be returned does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### isCommunityEmpty

        boolean isCommunityEmpty([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Checks whether a community contains children (sub-communities, knowledge centers, folders or documents).

        Parameters:

        `communityId_` - the unique ID of the community to check

        Returns:

        `true` if the community is empty; `false` otherwise

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community specified by `communityId_` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteCommunities

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Community](Community.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFavoriteCommunities([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFavoriteCommunitiesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteCommunitiesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which have been tagged as favorites by the user

        Parameters:

        `sortOrder_` - The order in which to sort the returned list of communities. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        `sortColumn_` - the field of the `Community` by which to sort the returned list of communities. This is one of the `SORT_COLUMN_XXX` constants in [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration").

        Returns:

        An array of `Community` objects representing those communities which are in the user's list of favorite communities

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the comunities do not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities to be returned contains an invalid `KnowledgeCenter`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteCommunitiesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects which have been tagged as favorites by the user

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the returned communities This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing the list of `Community` objects representing those communities which are in the user's list of favorite communities

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the comunities do not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities to be returned contains an invalid `KnowledgeCenter`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addCommunityToFavorites

        void addCommunityToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") to the user's list of favorites

        Parameters:

        `communityId_` - the unique ID of the community to be added

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `communityId_` does not correspond to a community

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community to be added contains an invalid `KnowledgeCenter`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addCommunitiesToFavorites

        void addCommunitiesToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds multiple [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects to the user's list of favorites

        Parameters:

        `communityIds_` - an array containing the unique IDs of the communities to be added as favorites

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the unique IDs in `communityIds_` does not correspond to a community

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities to be added contains an invalid `KnowledgeCenter`

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if communityIds\_ is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeCommunityFromFavorites

        void removeCommunityFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") from the user's favorites list

        Parameters:

        `communityId_` - the unique ID of the community to be removed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the community to be removed contains an invalid `KnowledgeCenter`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeCommunitiesFromFavorites

        void removeCommunitiesFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes multiple [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects from the user's favorites list

        Parameters:

        `communityIds_` - an array containing the unique IDs of the communities to be removed from favorites

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the unique IDs in `communityIds_` does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities to be removed contains an invalid `KnowledgeCenter`

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if communityIds\_ is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFullTree

        [MenuTree](MenuTree.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFullTree() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a list of [`MenuTree`](MenuTree.html "class in com.appiancorp.suiteapi.collaboration") objects for construction of the collaboration navigation tree

        Returns:

        An array of `MenuTree` objects

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the `KnowledgeCenter` objects represented by the `MenuTree` object does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFullTreePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFullTreePaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get a list of [`MenuTree`](MenuTree.html "class in com.appiancorp.suiteapi.collaboration") objects for construction of the collaboration navigation tree

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `SORT_MENUTREE_PROPERTY_XXX` constants

        `sortOrder_` - The order in which to sort the `MenuTree` This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing an array of `MenuTree` objects

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the `KnowledgeCenter` objects represented by the `MenuTree` object does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setRoleMapForCommunity

        void setRoleMapForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") crm\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") object for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration"). It is necessary to set the role map for a community before any methods which require certain privileges can be called (simply setting the permissions through the `Community` is insufficient).

        Parameters:

        `communityId_` - the unique ID for a `Community`

        `crm_` - The `CollaborationRoleMap` object which contains the users and groups in each role to set (overwrite)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not have the rights to set the rolemap

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRoleMapForCommunity

        [CollaborationRoleMap](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") getRoleMapForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_)

        Deprecated.

        Retrieves the [`CollaborationRoleMap`](CollaborationRoleMap.html "class in com.appiancorp.suiteapi.collaboration") object for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Parameters:

        `communityId_` - The unique ID for a `Community`

        Returns:

        `CollaborationRoleMap` object which contains the users and groups in each role

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForCommunity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFeaturedDocumentsForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFeaturedDocumentsForCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (and its subcommunities).

        Parameters:

        `communityId_` - the unique ID for a `Community`

        Returns:

        An array of `Document` objects representing the featured `Document` objects for this `Community` (and its subcommunities)

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the featured `Document` objects to be returned does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getFeaturedDocumentsForCommunityPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFeaturedDocumentsForCommunityPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (and its subcommunities)

        Parameters:

        `communityId_` - the unique ID for a `Community`

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This will be one of the `SORT_DOCUMENT_PROPERTY_XXX` constants in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - The order in which to sort the `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing an array of `Document` objects representing the featured `Document` objects for this `Community` (and its subcommunities)

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the featured `Document` objects to be returned does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForCommunityForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFeaturedDocumentsForCommunityForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFeaturedDocumentsForCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") and its subcommunities that the current `User` can access. Users will only be able to see those `Document` objects to which they have at least read-only access.

        Parameters:

        `communityId_` - the unique ID for a `Community`

        Returns:

        An array of `Document` objects representing the featured documents for this `Community` and its subcommunities that the current user can access

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Comunity` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects to be returned is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForCommunityForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFeaturedDocumentsForCommunityForUserPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the featured `Document` objects for a given `Community` and its subcommunities that the current `User` can access. Users will only be able to see those `Document` objects to which they have at least read-only access.

        Parameters:

        `communityId_` - the unique ID for a `Community`

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This will be one of the `SORT_DOCUMENT_PROPERTY_XXX` constants in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing the list of `Document` objects representing the featured documents for this `Community` and its subcommunities that the current `User` can access.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects to be returned is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForTopLevelCommunity

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFeaturedDocumentsForTopLevelCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFeaturedDocumentsForTopLevelCommunityPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForTopLevelCommunityPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the featured documents for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (but not its subcommunities)

        Parameters:

        `communityId_` - the unique ID for a `Community`

        Returns:

        An array of `Document` objects representing the featured `Document` objects for this `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the featured `Document` objects to be returned does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForTopLevelCommunityPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFeaturedDocumentsForTopLevelCommunityPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the featured documents for a given Community (but not its subcommunities)

        Parameters:

        `communityId_` - the unique ID for a `Community`

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This will be one of the `SORT_DOCUMENT_PROPERTY_XXX` constants in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - The order in which to sort the `Document` objects. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing an array of `Document` objects representing the featured `Document` objects for this `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the featured `Document` objects to be returned does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForTopLevelCommunityForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFeaturedDocumentsForTopLevelCommunityForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getFeaturedDocumentsForTopLevelCommunityForUserPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getFeaturedDocumentsForTopLevelCommunityForUserPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieves the featured documents for a given Community (but not its subcommunities) that the current user can access. Users will only be able to see those `Document` objects to which they have at least read-only access.

        Parameters:

        `communityId_` - the unique ID for a `Community`

        Returns:

        An array of `Document` objects representing the featured documents for this `Community` that the current user can access

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Comunity` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects to be returned is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFeaturedDocumentsForTopLevelCommunityForUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFeaturedDocumentsForTopLevelCommunityForUserPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the featured [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for a given [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") (but not its subcommunities) that the current user can access. Users will only be able to see those `Document` objects to which they have at least read-only access.

        Parameters:

        `communityId_` - the unique ID for a `Community`

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This will be one of the `SORT_DOCUMENT_PROPERTY_XXX` constants in [`DocumentService`](DocumentService.html "interface in com.appiancorp.suiteapi.collaboration")

        `sortOrder_` - This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` containing the list of `Document` objects representing the featured documents for this `Community` that the current `User` can access

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects to be returned is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setFeaturedDocumentForCommunity

        void setFeaturedDocumentForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set a [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") to be 'featured' for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which the `Document` currently resides.

        Parameters:

        `documentId_` - the unique ID for a `Document`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` in which the `Document` resides is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Document` is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setFeaturedDocumentsForCommunity

        void setFeaturedDocumentsForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] documentIds\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set a list of [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects to be 'featured' for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which they currently reside

        Parameters:

        `documentIds_` - An array of unique IDs for the `Document` objects

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` in which any of the `Document` objects reside is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeFeaturedDocumentFromCommunity

        void removeFeaturedDocumentFromCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentId\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unfeature a [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which it currently resides

        Parameters:

        `documentId_` - the unique ID of the `Document`

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Document` does not exist

        `InvalidCommuntyException` - if the `Community` which contains the `Document` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeFeaturedDocumentsFromCommunity

        void removeFeaturedDocumentsFromCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] documentIds\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unfeature a list of [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration") objects for the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") in which they currently reside

        Parameters:

        `documentIds_` - An array of unique IDs for the `Document` objects

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Document` objects does not exist

        `InvalidCommuntyException` - if the `Community` which contains any of the `Document` objects does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getInheritedAdministrators

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getInheritedAdministrators([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the inherited administrators for a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration"). [`Community.getAdministrators()`](Community.html#getAdministrators\(\)) does not return inherited administrators

        Parameters:

        `communityId_` - the unique ID for the `Community`

        Returns:

        An array of usernames representing the inherited administrators for the `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getInheritedAdministratorGroups

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInheritedAdministratorGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the inherited administrator groups for a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration"). [`Community.getAdministratorGroups()`](Community.html#getAdministratorGroups\(\)) does not return inherited group administrators

        Parameters:

        `communityId_` - the unique ID for the `Community`

        Returns:

        An array of group IDs representing the inherited group administrators for the `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reactivateCommunity

        void reactivateCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Reactivate a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration"). NOTE: This method does not currently check whether the user has permission to reactivate the `Community`

        Parameters:

        `communityId_` - the unique ID for the `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` does not exist

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Community` has parent communities which are still inactive. These must be reactivated first.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### canUserAdministrateCommunity

        boolean canUserAdministrateCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns `true` if the current `User` is an administrator of the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")

        Parameters:

        `communityId_` - the unique ID for the `Community`

        Returns:

        `true` if the current `User` is an administrator of the `Community`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `user` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `communityId_` does not correspond to a valid `Community`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### canGroupAdministrateCommunity

        boolean canGroupAdministrateCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns `true` if the specified `Group` is an administrator of the `Community`

        Parameters:

        `groupId_` - the unique ID for the `Group`

        `communityId_` - the unique ID for the `Community`

        Returns:

        `true` if the `Group` can administer the `Community`

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `communityId_` does not correspond to a valid `Community`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVisibleChildrenOfCommunity

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getVisibleChildrenOfCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieve visible children of a [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration"). This call is used to populate a `Community` object's children in a hierarchy.

        Parameters:

        `communityIds_` - an array of unique ids which each correspond to a `Community`.

        Returns:

        an `Integer` array of children in each `Community` where 0=none, 1=community, 2=kc, 3=kc and community

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Community` objects contains an invalid `KnowledgeCenter`

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the `Community` objects is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCommunitiesList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getCommunitiesList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects by the requested IDs.

        Parameters:

        `ids_` - IDs of `Community` objects to retrieve.

        Returns:

        ResultList containing an array of `Community` objects which correspond to the `ids_` passed in.
        Also contains result codes for each ID. The result code will be one of `CODE_XXX` or `COLLAB_CODE_XXX` in [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common").

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not exist

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if ids is null

    -   ### searchCommunitiesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchCommunitiesPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchterm\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration") objects whose names match `searchterm_`.

        Parameters:

        `searchterm_` - a term for which to search in the names of communities

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results will be sorted. This is one of the `Community.SORT_BY_XXX` constants

        `sortOrder_` - The order in which to sort the returned communities This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a list of `Community`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the communities is invalid

    -   ### getSystemCommunityId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemCommunityId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getCommunityIdForContentId(Long)`](#getCommunityIdForContentId\(java.lang.Long\))

        This is a small wrapper on Content's getSystemId, but returns the content id as a document id.

        Parameters:

        `name` - A case-insensitive system name.

        Returns:

        the id of the community mapped to that name.

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized.

    -   ### setSystemCommunityId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemCommunityId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`createCommunity(Community)`](#createCommunity\(com.appiancorp.suiteapi.collaboration.Community\)) with a pre-populated UUID

        Stores and associates the specified `id` value with the specified `name` key.

        Parameters:

        `name` - A case-insensitive system name.

        `id` - The community id.

        Throws:

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized.

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are communities.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are communities.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### getContentIdForCommunityId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentIdForCommunityId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Converts a community id into a content id. Note that the id can only be different for migrated KDB's existing prior AE 5.5 (previous Rules feature). Deployments after 5.5, the community id and the content id will be the same

        Parameters:

        `id` - The community id to convert

        Returns:

        The content id

    -   ### getContentIdsForCommunityIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getContentIdsForCommunityIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Deprecated.

        Converts an array of community id's into an array of content id's. Note that the id can only be different for migrated KDB's existing prior AE 5.5 (previous Rules feature). Deployments after 5.5, the community id and the content id will be the same

        Parameters:

        `id` - The array of community ids to convert

        Returns:

        An array of content ids

    -   ### getCommunityIdForContentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCommunityIdForContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Converts a content id into a community id. Note that the id can only be different for migrated KDB's existing prior AE 5.5 (previous Rules feature). Deployments after 5.5, the community id and the content id will be the same

        Parameters:

        `id` - The content id to convert

        Returns:

        The community id

    -   ### getCommunityIdsForContentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getCommunityIdsForContentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Deprecated.

        Converts an array of content id's into an array of community id's. Note that the id can only be different for migrated KDB's existing prior AE 5.5 (previous Rules feature). Deployments after 5.5, the community id and the content id will be the same

        Parameters:

        `id` - The array of content ids to convert

        Returns:

        An array of community ids

    -   ### getAccessLevelForCommunity

        int getAccessLevelForCommunity([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") cid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the Access Level for a community

        Parameters:

        `cid_` - the unique ID of the community

        Returns:

        int see `Community` for valid return values

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Comunity` does not exist

    -   ### getAccessLevelForCommunities

        int\[\] getAccessLevelForCommunities([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] cids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the Access Levels for a list of communities

        Parameters:

        `cids_` - a list of unique IDs of the communities

        Returns:

        int\[\] see `Community` for valid return values

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `User` does not exist

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the `Comunity` does not exist