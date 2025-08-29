---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/content/ContentService.html
original_path: api/com/appiancorp/suiteapi/content/ContentService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.content](package-summary.html)

# Interface ContentService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface ContentService extends com.appiancorp.services.ContextSensitiveService

This interface provides access to the Content service (formerly the Collaboration service). Whereas previously there were separate services to deal with different types of content (e.g., [`FolderService`](../collaboration/FolderService.html "interface in com.appiancorp.suiteapi.collaboration")), all content can now be manipulated through this interface. The content service comes with an entirely new API and bean hierarchy, which cannot be used with the old Collaboration services. Inversely, the old beans cannot be used with the new Content service.

The methods in this service that check whether a user can act on a content item, such as [`canUserView(java.lang.Long, java.lang.String)`](#canUserView\(java.lang.Long,java.lang.String\)), only permit checking whether the user whose context was used to obtain the service can act on that item. To check whether another user has a certain role for the item, use [`getRoleMap(java.lang.Long, java.lang.Boolean)`](#getRoleMap\(java.lang.Long,java.lang.Boolean\)) and check whether the user is listed for the desired role or is a member of a group in the desired role.

There is also an associated service, the [`ContentStatisticsService`](ContentStatisticsService.html "interface in com.appiancorp.suiteapi.content"), which can be used to get various statistics on content (such as the number of content items fitting specific criteria).

**Type Masks:**
Types in Content are all powers of 2. This means that you can specify a filter of multiple types by using the bitwise or operator |. For instance, if you want to both documents and folders, you can set your typemask filter to:
`ContentConstants.TYPE_FOLDER | ContentConstants.TYPE_DOCUMENT`
Some of these combination filters are already defined as additional type constants at ContentConstants.TYPE\_XXX

**To obtain the root IDs for Rules and Document Management hierarchies:**

-   Rules - Use [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\)) and pass `com.appiancorp.suiteapi.content.ContentConstants.UUID_RULES_ROOT_FOLDER`
-   Document Management - Use [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\)) and pass `com.appiancorp.suiteapi.content.ContentConstants.UUID_COMMUNITY_ROOT`

Code example (using [`ServiceLocator`](../common/ServiceLocator.html "class in com.appiancorp.suiteapi.common") and [`ServiceContext`](../../services/ServiceContext.html "interface in com.appiancorp.services")):
`ServiceContext sc = ServiceLocator.getAdministratorServiceContext();   ContentService cs = ServiceLocator.getContentService(sc);   Long rulesRootId = cs.getIdByUuid(ContentConstants.UUID_RULES_ROOT_FOLDER);   `

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    `static final boolean`

    `[addFavorite$UPDATES](#addFavorite$UPDATES)`

    `static final boolean`

    `[addFavoriteForUsers$UPDATES](#addFavoriteForUsers$UPDATES)`

    `static final boolean`

    `[addFavorites$UPDATES](#addFavorites$UPDATES)`

    `static final boolean`

    `[addGroupInRole$UPDATES](#addGroupInRole$UPDATES)`

    `static final boolean`

    `[addGroupsInRole$UPDATES](#addGroupsInRole$UPDATES)`

    `static final boolean`

    `[addLinks$UPDATES](#addLinks$UPDATES)`

    `static final boolean`

    `[addUserInRole$UPDATES](#addUserInRole$UPDATES)`

    `static final boolean`

    `[addUsersInRole$UPDATES](#addUsersInRole$UPDATES)`

    `static final boolean`

    `[adjustCounter$UPDATES](#adjustCounter$UPDATES)`

    `static final boolean`

    `[approve$UPDATES](#approve$UPDATES)`

    `static final boolean`

    `[approveUsers$UPDATES](#approveUsers$UPDATES)`

    `static final boolean`

    `[approveVersion$UPDATES](#approveVersion$UPDATES)`

    `static final boolean`

    `[areFavorites$UPDATES](#areFavorites$UPDATES)`

    `static final boolean`

    `[breakLock$UPDATES](#breakLock$UPDATES)`

    `static final boolean`

    `[browse$UPDATES](#browse$UPDATES)`

    `static final boolean`

    `[browseIds$UPDATES](#browseIds$UPDATES)`

    `static final boolean`

    `[browsePaging$UPDATES](#browsePaging$UPDATES)`

    `static final boolean`

    `[canAdministrate$UPDATES](#canAdministrate$UPDATES)`

    `static final boolean`

    `[canEdit$UPDATES](#canEdit$UPDATES)`

    `static final boolean`

    `[canGroupAdministrate$UPDATES](#canGroupAdministrate$UPDATES)`

    `static final boolean`

    `[canGroupEdit$UPDATES](#canGroupEdit$UPDATES)`

    `static final boolean`

    `[canGroupView$UPDATES](#canGroupView$UPDATES)`

    `static final boolean`

    `[canUserAdministrate$UPDATES](#canUserAdministrate$UPDATES)`

    `static final boolean`

    `[canUserEdit$UPDATES](#canUserEdit$UPDATES)`

    `static final boolean`

    `[canUserView$UPDATES](#canUserView$UPDATES)`

    `static final boolean`

    `[canView$UPDATES](#canView$UPDATES)`

    `static final boolean`

    `[checkAccess$UPDATES](#checkAccess$UPDATES)`

    `static final boolean`

    `[cleanseApprovals$UPDATES](#cleanseApprovals$UPDATES)`

    `static final boolean`

    `[cleanseFavorites$UPDATES](#cleanseFavorites$UPDATES)`

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    `static final boolean`

    `[copy$UPDATES](#copy$UPDATES)`

    `static final boolean`

    `[create$UPDATES](#create$UPDATES)`

    `static final boolean`

    `[createApproval$UPDATES](#createApproval$UPDATES)`

    `static final boolean`

    `[createVersion$UPDATES](#createVersion$UPDATES)`

    `static final boolean`

    `[deactivate$UPDATES](#deactivate$UPDATES)`

    `static final boolean`

    `[deactivateVersion$UPDATES](#deactivateVersion$UPDATES)`

    `static final boolean`

    `[deactivateVersions$UPDATES](#deactivateVersions$UPDATES)`

    `static final boolean`

    `[delete$UPDATES](#delete$UPDATES)`

    `static final boolean`

    `[deleteContent$UPDATES](#deleteContent$UPDATES)`

    `static final boolean`

    `[deleteMyInactive$UPDATES](#deleteMyInactive$UPDATES)`

    `static final boolean`

    `[deleteVersion$UPDATES](#deleteVersion$UPDATES)`

    `static final boolean`

    `[deleteVersions$UPDATES](#deleteVersions$UPDATES)`

    `static final boolean`

    `[download$UPDATES](#download$UPDATES)`

    `static final boolean`

    `[generateSearchIndex$UPDATES](#generateSearchIndex$UPDATES)`

    `static final boolean`

    `[getAccessLevel$UPDATES](#getAccessLevel$UPDATES)`

    `static final boolean`

    `[getAccessLevelForUser$UPDATES](#getAccessLevelForUser$UPDATES)`

    `static final boolean`

    `[getAdministratable$UPDATES](#getAdministratable$UPDATES)`

    `static final boolean`

    `[getAdministratableByUser$UPDATES](#getAdministratableByUser$UPDATES)`

    `static final boolean`

    `[getAdministratablePaging$UPDATES](#getAdministratablePaging$UPDATES)`

    `static final boolean`

    `[getAdministratorGroup$UPDATES](#getAdministratorGroup$UPDATES)`

    `static final boolean`

    `[getAdvertisedChildren$UPDATES](#getAdvertisedChildren$UPDATES)`

    `static final boolean`

    `[getAdvertisedChildrenIds$UPDATES](#getAdvertisedChildrenIds$UPDATES)`

    `static final boolean`

    `[getAdvertisedChildrenPaging$UPDATES](#getAdvertisedChildrenPaging$UPDATES)`

    `static final boolean`

    `[getAllChildren$UPDATES](#getAllChildren$UPDATES)`

    `static final boolean`

    `[getAllChildrenAndVersionIds$UPDATES](#getAllChildrenAndVersionIds$UPDATES)`

    `static final boolean`

    `[getAllChildrenAndVersions$UPDATES](#getAllChildrenAndVersions$UPDATES)`

    `static final boolean`

    `[getAllChildrenAndVersionsPaging$UPDATES](#getAllChildrenAndVersionsPaging$UPDATES)`

    `static final boolean`

    `[getAllChildrenIds$UPDATES](#getAllChildrenIds$UPDATES)`

    `static final boolean`

    `[getAllChildrenPaging$UPDATES](#getAllChildrenPaging$UPDATES)`

    `static final boolean`

    `[getAllVersionIds$UPDATES](#getAllVersionIds$UPDATES)`

    `static final boolean`

    `[getAllVersions$UPDATES](#getAllVersions$UPDATES)`

    `static final boolean`

    `[getAllVersionsPaging$UPDATES](#getAllVersionsPaging$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getByPath$UPDATES](#getByPath$UPDATES)`

    `static final boolean`

    `[getChildren$UPDATES](#getChildren$UPDATES)`

    `static final boolean`

    `[getChildrenIds$UPDATES](#getChildrenIds$UPDATES)`

    `static final boolean`

    `[getChildrenPaging$UPDATES](#getChildrenPaging$UPDATES)`

    `static final boolean`

    `[getChildrenTypes$UPDATES](#getChildrenTypes$UPDATES)`

    `static final boolean`

    `[getChildrenTypesOfType$UPDATES](#getChildrenTypesOfType$UPDATES)`

    `static final boolean`

    `[getContent$UPDATES](#getContent$UPDATES)`

    `static final boolean`

    `[getContentIdsWhereViewable$UPDATES](#getContentIdsWhereViewable$UPDATES)`

    `static final boolean`

    `[getContentList$UPDATES](#getContentList$UPDATES)`

    `static final boolean`

    `[getContentPaging$UPDATES](#getContentPaging$UPDATES)`

    `static final boolean`

    `[getContentTree$UPDATES](#getContentTree$UPDATES)`

    `static final boolean`

    `[getContentTreePaging$UPDATES](#getContentTreePaging$UPDATES)`

    `static final boolean`

    `[getContentUrl$UPDATES](#getContentUrl$UPDATES)`

    `static final boolean`

    `[getContentWhereViewable$UPDATES](#getContentWhereViewable$UPDATES)`

    `static final boolean`

    `[getContentWhereViewablePaging$UPDATES](#getContentWhereViewablePaging$UPDATES)`

    `static final boolean`

    `[getDatatypeIds$UPDATES](#getDatatypeIds$UPDATES)`

    `static final boolean`

    `[getDocumentInputStream$UPDATES](#getDocumentInputStream$UPDATES)`

    `static final boolean`

    `[getDownloadLogType$UPDATES](#getDownloadLogType$UPDATES)`

    `static final boolean`

    `[getEditable$UPDATES](#getEditable$UPDATES)`

    `static final boolean`

    `[getEditableByUser$UPDATES](#getEditableByUser$UPDATES)`

    `static final boolean`

    `[getEditablePaging$UPDATES](#getEditablePaging$UPDATES)`

    `static final boolean`

    `[getExpired$UPDATES](#getExpired$UPDATES)`

    `static final boolean`

    `[getExpiredIds$UPDATES](#getExpiredIds$UPDATES)`

    `static final boolean`

    `[getExpiredPaging$UPDATES](#getExpiredPaging$UPDATES)`

    `static final boolean`

    `[getExternalFilename$UPDATES](#getExternalFilename$UPDATES)`

    `static final boolean`

    `[getExternalFilenames$UPDATES](#getExternalFilenames$UPDATES)`

    `static final boolean`

    `[getFavoriteByRootIds$UPDATES](#getFavoriteByRootIds$UPDATES)`

    `static final boolean`

    `[getFavoritesByRoot$UPDATES](#getFavoritesByRoot$UPDATES)`

    `static final boolean`

    `[getFavoritesByRootPaging$UPDATES](#getFavoritesByRootPaging$UPDATES)`

    `static final boolean`

    `[getIdByPath$UPDATES](#getIdByPath$UPDATES)`

    `static final boolean`

    `[getIdByUuid$UPDATES](#getIdByUuid$UPDATES)`

    `static final boolean`

    `[getIdsByUuid$UPDATES](#getIdsByUuid$UPDATES)`

    `static final boolean`

    `[getImageIdsForUsers$UPDATES](#getImageIdsForUsers$UPDATES)`

    `static final boolean`

    `[getInactive$UPDATES](#getInactive$UPDATES)`

    `static final boolean`

    `[getInactiveIds$UPDATES](#getInactiveIds$UPDATES)`

    `static final boolean`

    `[getInactiveIdsNoSystem$UPDATES](#getInactiveIdsNoSystem$UPDATES)`

    `static final boolean`

    `[getInactivePaging$UPDATES](#getInactivePaging$UPDATES)`

    `static final boolean`

    `[getInternalFilename$UPDATES](#getInternalFilename$UPDATES)`

    `static final boolean`

    `[getInternalFilenames$UPDATES](#getInternalFilenames$UPDATES)`

    `static final boolean`

    `[getLinkedBy$UPDATES](#getLinkedBy$UPDATES)`

    `static final boolean`

    `[getLinkIds$UPDATES](#getLinkIds$UPDATES)`

    `static final boolean`

    `[getLinkIdsOfType$UPDATES](#getLinkIdsOfType$UPDATES)`

    `static final boolean`

    `[getLinks$UPDATES](#getLinks$UPDATES)`

    `static final boolean`

    `[getLinksOfType$UPDATES](#getLinksOfType$UPDATES)`

    `static final boolean`

    `[getMyInactive$UPDATES](#getMyInactive$UPDATES)`

    `static final boolean`

    `[getMyInactiveIds$UPDATES](#getMyInactiveIds$UPDATES)`

    `static final boolean`

    `[getMyInactivePaging$UPDATES](#getMyInactivePaging$UPDATES)`

    `static final boolean`

    `[getNumberOfChildren$UPDATES](#getNumberOfChildren$UPDATES)`

    `static final boolean`

    `[getNumberOfRequests$UPDATES](#getNumberOfRequests$UPDATES)`

    `static final boolean`

    `[getOpaqueContentUri$UPDATES](#getOpaqueContentUri$UPDATES)`

    `static final boolean`

    `[getParent$UPDATES](#getParent$UPDATES)`

    `static final boolean`

    `[getParentId$UPDATES](#getParentId$UPDATES)`

    `static final boolean`

    `[getParentIds$UPDATES](#getParentIds$UPDATES)`

    `static final boolean`

    `[getParents$UPDATES](#getParents$UPDATES)`

    `static final boolean`

    `[getParentsFromRoot$UPDATES](#getParentsFromRoot$UPDATES)`

    `static final boolean`

    `[getParentsFromRootIds$UPDATES](#getParentsFromRootIds$UPDATES)`

    `static final boolean`

    `[getParentsToRoot$UPDATES](#getParentsToRoot$UPDATES)`

    `static final boolean`

    `[getParentsToRootIds$UPDATES](#getParentsToRootIds$UPDATES)`

    `static final boolean`

    `[getPending$UPDATES](#getPending$UPDATES)`

    `static final boolean`

    `[getPendingPaging$UPDATES](#getPendingPaging$UPDATES)`

    `static final boolean`

    `[getPendingReview$UPDATES](#getPendingReview$UPDATES)`

    `static final boolean`

    `[getPendingReviews$UPDATES](#getPendingReviews$UPDATES)`

    `static final boolean`

    `[getPendingUsers$UPDATES](#getPendingUsers$UPDATES)`

    `static final boolean`

    `[getPersonal$UPDATES](#getPersonal$UPDATES)`

    `static final boolean`

    `[getPersonalAndTeams$UPDATES](#getPersonalAndTeams$UPDATES)`

    `static final boolean`

    `[getPersonalAndTeamsIds$UPDATES](#getPersonalAndTeamsIds$UPDATES)`

    `static final boolean`

    `[getPersonalAndTeamsPaging$UPDATES](#getPersonalAndTeamsPaging$UPDATES)`

    `static final boolean`

    `[getPersonalId$UPDATES](#getPersonalId$UPDATES)`

    `static final boolean`

    `[getRequests$UPDATES](#getRequests$UPDATES)`

    `static final boolean`

    `[getRestrictionMap$UPDATES](#getRestrictionMap$UPDATES)`

    `static final boolean`

    `[getRoleMap$UPDATES](#getRoleMap$UPDATES)`

    `static final boolean`

    `[getRoleSet$UPDATES](#getRoleSet$UPDATES)`

    `static final boolean`

    `[getRoleSetForGroup$UPDATES](#getRoleSetForGroup$UPDATES)`

    `static final boolean`

    `[getRoleSetForUser$UPDATES](#getRoleSetForUser$UPDATES)`

    `static final boolean`

    `[getRoleSets$UPDATES](#getRoleSets$UPDATES)`

    `static final boolean`

    `[getRoleSetsForGroup$UPDATES](#getRoleSetsForGroup$UPDATES)`

    `static final boolean`

    `[getRoleSetsForUser$UPDATES](#getRoleSetsForUser$UPDATES)`

    `static final boolean`

    `[getSystemId$UPDATES](#getSystemId$UPDATES)`

    `static final boolean`

    `[getSystemIds$UPDATES](#getSystemIds$UPDATES)`

    `static final boolean`

    `[getSystemNames$UPDATES](#getSystemNames$UPDATES)`

    `static final boolean`

    `[getThumbnailIdsForUsers$UPDATES](#getThumbnailIdsForUsers$UPDATES)`

    `static final boolean`

    `[getUserSpaceAvailable$UPDATES](#getUserSpaceAvailable$UPDATES)`

    `static final boolean`

    `[getUserSpaceAvailableForUser$UPDATES](#getUserSpaceAvailableForUser$UPDATES)`

    `static final boolean`

    `[getUserSpaceUsage$UPDATES](#getUserSpaceUsage$UPDATES)`

    `static final boolean`

    `[getVersion$UPDATES](#getVersion$UPDATES)`

    `static final boolean`

    `[getVersionId$UPDATES](#getVersionId$UPDATES)`

    `static final boolean`

    `[getVersionIds$UPDATES](#getVersionIds$UPDATES)`

    `static final boolean`

    `[getVersions$UPDATES](#getVersions$UPDATES)`

    `static final boolean`

    `[getVersionsList$UPDATES](#getVersionsList$UPDATES)`

    `static final boolean`

    `[getVersionsPaging$UPDATES](#getVersionsPaging$UPDATES)`

    `static final boolean`

    `[getViewable$UPDATES](#getViewable$UPDATES)`

    `static final boolean`

    `[getViewableByUser$UPDATES](#getViewableByUser$UPDATES)`

    `static final boolean`

    `[getViewablePaging$UPDATES](#getViewablePaging$UPDATES)`

    `static final boolean`

    `[getWhatsNew$UPDATES](#getWhatsNew$UPDATES)`

    `static final boolean`

    `[getWhatsNewIds$UPDATES](#getWhatsNewIds$UPDATES)`

    `static final boolean`

    `[getWhatsNewPaging$UPDATES](#getWhatsNewPaging$UPDATES)`

    `static final boolean`

    `[hasChildren$UPDATES](#hasChildren$UPDATES)`

    `static final boolean`

    `[hasChildrenOfType$UPDATES](#hasChildrenOfType$UPDATES)`

    `static final boolean`

    `[hasNoChildren$UPDATES](#hasNoChildren$UPDATES)`

    `static final boolean`

    `[hasNoChildrenOfType$UPDATES](#hasNoChildrenOfType$UPDATES)`

    `static final boolean`

    `[haveChildren$UPDATES](#haveChildren$UPDATES)`

    `static final boolean`

    `[haveChildrenOfType$UPDATES](#haveChildrenOfType$UPDATES)`

    `static final boolean`

    `[haveNoChildren$UPDATES](#haveNoChildren$UPDATES)`

    `static final boolean`

    `[haveNoChildrenOfType$UPDATES](#haveNoChildrenOfType$UPDATES)`

    `static final boolean`

    `[importContent$UPDATES](#importContent$UPDATES)`

    `static final boolean`

    `[importValidate$UPDATES](#importValidate$UPDATES)`

    `static final boolean`

    `[isAdministrateNotRestricted$UPDATES](#isAdministrateNotRestricted$UPDATES)`

    `static final boolean`

    `[isEditNotRestricted$UPDATES](#isEditNotRestricted$UPDATES)`

    `static final boolean`

    `[isFavorite$UPDATES](#isFavorite$UPDATES)`

    `static final boolean`

    `[isViewNotRestricted$UPDATES](#isViewNotRestricted$UPDATES)`

    `static final boolean`

    `[localize$UPDATES](#localize$UPDATES)`

    `static final boolean`

    `[lock$UPDATES](#lock$UPDATES)`

    `static final boolean`

    `[move$UPDATES](#move$UPDATES)`

    `static final boolean`

    `[moveKnowledgeCenter$UPDATES](#moveKnowledgeCenter$UPDATES)`

    `static final boolean`

    `[moveKnowledgeCenters$UPDATES](#moveKnowledgeCenters$UPDATES)`

    `static final boolean`

    `[notifyApproved$UPDATES](#notifyApproved$UPDATES)`

    `static final boolean`

    `[notifyGroupDeletion$UPDATES](#notifyGroupDeletion$UPDATES)`

    `static final boolean`

    `[notifyGroupsDeletion$UPDATES](#notifyGroupsDeletion$UPDATES)`

    `static final boolean`

    `[notifyUserCreation$UPDATES](#notifyUserCreation$UPDATES)`

    `static final boolean`

    `[notifyUsersCreation$UPDATES](#notifyUsersCreation$UPDATES)`

    `static final boolean`

    `[populateExtensionInfo$UPDATES](#populateExtensionInfo$UPDATES)`

    `static final boolean`

    `[populateFavorites$UPDATES](#populateFavorites$UPDATES)`

    `static final boolean`

    `[populateRoleSets$UPDATES](#populateRoleSets$UPDATES)`

    `static final boolean`

    `[populateTypesOfChildren$UPDATES](#populateTypesOfChildren$UPDATES)`

    `static final boolean`

    `[queryByRoot$UPDATES](#queryByRoot$UPDATES)`

    `static final boolean`

    `[queryByRootPaging$UPDATES](#queryByRootPaging$UPDATES)`

    `static final boolean`

    `[queryIdsByRoot$UPDATES](#queryIdsByRoot$UPDATES)`

    `static final boolean`

    `[reactivate$UPDATES](#reactivate$UPDATES)`

    `static final boolean`

    `[reject$UPDATES](#reject$UPDATES)`

    `static final boolean`

    `[rejectUsers$UPDATES](#rejectUsers$UPDATES)`

    `static final boolean`

    `[rejectVersion$UPDATES](#rejectVersion$UPDATES)`

    `static final boolean`

    `[removeFavorite$UPDATES](#removeFavorite$UPDATES)`

    `static final boolean`

    `[removeFavoriteForUsers$UPDATES](#removeFavoriteForUsers$UPDATES)`

    `static final boolean`

    `[removeFavorites$UPDATES](#removeFavorites$UPDATES)`

    `static final boolean`

    `[removeGroupFromRole$UPDATES](#removeGroupFromRole$UPDATES)`

    `static final boolean`

    `[removeGroupsFromRole$UPDATES](#removeGroupsFromRole$UPDATES)`

    `static final boolean`

    `[removeLinks$UPDATES](#removeLinks$UPDATES)`

    `static final boolean`

    `[removeUserFromRole$UPDATES](#removeUserFromRole$UPDATES)`

    `static final boolean`

    `[removeUsersFromRole$UPDATES](#removeUsersFromRole$UPDATES)`

    `static final boolean`

    `[requestAccess$UPDATES](#requestAccess$UPDATES)`

    `static final boolean`

    `[resetGroupMembership$UPDATES](#resetGroupMembership$UPDATES)`

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    `static final boolean`

    `[searchByRoot$UPDATES](#searchByRoot$UPDATES)`

    `static final boolean`

    `[searchByRootPaging$UPDATES](#searchByRootPaging$UPDATES)`

    `static final boolean`

    `[searchIdsByRoot$UPDATES](#searchIdsByRoot$UPDATES)`

    `static final boolean`

    `[searchIdsWithin$UPDATES](#searchIdsWithin$UPDATES)`

    `static final boolean`

    `[searchWithin$UPDATES](#searchWithin$UPDATES)`

    `static final boolean`

    `[searchWithinPaging$UPDATES](#searchWithinPaging$UPDATES)`

    `static final boolean`

    `[setActorsInRoles$UPDATES](#setActorsInRoles$UPDATES)`

    `static final boolean`

    `[setAdministratorGroup$UPDATES](#setAdministratorGroup$UPDATES)`

    `static final boolean`

    `[setAsRoot$UPDATES](#setAsRoot$UPDATES)`

    `static final boolean`

    `[setPersonalId$UPDATES](#setPersonalId$UPDATES)`

    `static final boolean`

    `[setRestrictionMap$UPDATES](#setRestrictionMap$UPDATES)`

    `static final boolean`

    `[setRoleMap$UPDATES](#setRoleMap$UPDATES)`

    `static final boolean`

    `[setRoleMapForAllVersions$UPDATES](#setRoleMapForAllVersions$UPDATES)`

    `static final boolean`

    `[setRoot$UPDATES](#setRoot$UPDATES)`

    `static final boolean`

    `[setSizeOfDocumentVersion$UPDATES](#setSizeOfDocumentVersion$UPDATES)`

    `static final boolean`

    `[setSystemId$UPDATES](#setSystemId$UPDATES)`

    `static final boolean`

    `[setSystemIds$UPDATES](#setSystemIds$UPDATES)`

    `static final boolean`

    `[setUserSpaceAvailable$UPDATES](#setUserSpaceAvailable$UPDATES)`

    `static final boolean`

    `[setUserSpaceUsage$UPDATES](#setUserSpaceUsage$UPDATES)`

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    `static final boolean`

    `[unexpire$UPDATES](#unexpire$UPDATES)`

    `static final boolean`

    `[unlock$UPDATES](#unlock$UPDATES)`

    `static final boolean`

    `[updateAllChildrenAndVersionsExpiration$UPDATES](#updateAllChildrenAndVersionsExpiration$UPDATES)`

    `static final boolean`

    `[updateAllChildrenAndVersionsVisibility$UPDATES](#updateAllChildrenAndVersionsVisibility$UPDATES)`

    `static final boolean`

    `[updateFields$UPDATES](#updateFields$UPDATES)`

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    `static final boolean`

    `[updateVersionFields$UPDATES](#updateVersionFields$UPDATES)`

    `static final boolean`

    `[upload$UPDATES](#upload$UPDATES)`

    `static final boolean`

    `[uploadDocument$UPDATES](#uploadDocument$UPDATES)`

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    `static final boolean`

    `[validateTypedValues$UPDATES](#validateTypedValues$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memberOfGroups_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] adminOfGroups_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userTypeSysAdmin_)`

    Deprecated. 

    `[PendingAccess](PendingAccess.html "class in com.appiancorp.suiteapi.content")`

    `[addFavorite](#addFavorite\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `void`

    `[addFavoriteForUsers](#addFavoriteForUsers\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Deprecated. 

    `[PendingAccess](PendingAccess.html "class in com.appiancorp.suiteapi.content")`

    `[addFavorites](#addFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `void`

    `[addGroupInRole](#addGroupInRole\(java.lang.Long,java.lang.String,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Add group to content in given role.

    `void`

    `[addGroupsInRole](#addGroupsInRole\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupId)`

    Add groups to content in given role.

    `void`

    `[addLinks](#addLinks\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] links_)`

    Deprecated. 

    `void`

    `[addUserInRole](#addUserInRole\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Add user to content in given role.

    `void`

    `[addUsersInRole](#addUsersInRole\(java.lang.Long,java.lang.String,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] username)`

    Add users to content in given role.

    `[Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang")`

    `[adjustCounter](#adjustCounter\(java.lang.Long,java.lang.Double\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") value)`

    Adjust a rules based constant (counter) of type integer or double by the given adjustment value.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[adjustCounter](#adjustCounter\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") value)`

    Adjust a rules based constant (counter) of type integer or double by the given adjustment value.

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")`

    `[approve](#approve\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")[]`

    `[approve](#approve\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[approveUsers](#approveUsers\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Approve access to the specified content item for a set of users.

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")`

    `[approveVersion](#approveVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Deprecated. 

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[areFavorites](#areFavorites\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Deprecated. 

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[areFavorites](#areFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[breakLock](#breakLock\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[breakLock](#breakLock\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[browse](#browse\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Deprecated.

    use [`browsePaging(Long, ContentFilter, int, int, Integer, Integer)`](#browsePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[browseIds](#browseIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Browse includes: what the user may see via group permissions, including favorites, no personal content items, including advertised content items not visible, but not already in favorites.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[browsePaging](#browsePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Browse includes: what the user may see via group permissions, including favorites, no personal content items, including advertised content items not visible, but not already in favorites.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canAdministrate](#canAdministrate\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] content)`

    Can current user Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canAdministrate](#canAdministrate\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Can current user Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canAdministrate](#canAdministrate\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    Can current user Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canEdit](#canEdit\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] content_)`

    Can current user Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canEdit](#canEdit\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Can current user Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canEdit](#canEdit\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    Can current user Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canGroupAdministrate](#canGroupAdministrate\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canGroupAdministrate](#canGroupAdministrate\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canGroupEdit](#canGroupEdit\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canGroupEdit](#canGroupEdit\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canGroupView](#canGroupView\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canGroupView](#canGroupView\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Can given Group View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canUserAdministrate](#canUserAdministrate\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canUserAdministrate](#canUserAdministrate\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User Administrate?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canUserEdit](#canUserEdit\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canUserEdit](#canUserEdit\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User Edit?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canUserView](#canUserView\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canUserView](#canUserView\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Can given User View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canView](#canView\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] content)`

    Can current user View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[canView](#canView\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Can current user View?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[canView](#canView\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids)`

    Can current user View?

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[checkAccess](#checkAccess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Returns the current user access to a content item.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[checkAccess](#checkAccess\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Returns the current user access to a content items.

    `void`

    `[cleanseApprovals](#cleanseApprovals\(\))()`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[cleanseFavorites](#cleanseFavorites\(\))()`

    Deprecated. 

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")[]`

    `[copy](#copy\(com.appiancorp.suiteapi.content.CopySource%5B%5D,java.lang.Long\))([CopySource](CopySource.html "class in com.appiancorp.suiteapi.content")[] source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target)`

    This copies Content item from one location to another.

    `[CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")[]`

    `[copy](#copy\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target)`

    This copies Content item from one location to another.

    `[CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")[]`

    `[copy](#copy\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target)`

    This copies Content item from one location to another.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[create](#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Creates content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[create](#create\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Creates a content object.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[createApproval](#createApproval\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Attempts to create content, and gets the approval statuses back in an `Approval` bean.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[createApproval](#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Attempts to create content, and gets the approval status back in an `Approval` bean.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[createVersion](#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Deprecated.

    Use [`createVersion(Content, Integer)`](#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[createVersion](#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Creates a new version of content.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deactivate](#deactivate\(java.lang.Long%5B%5D,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren_)`

    Deactivates all versions of the given content items.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deactivate](#deactivate\(java.lang.Long,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren_)`

    Deactivates all versions of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deactivateVersion](#deactivateVersion\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren_)`

    Deactivates specified version of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deactivateVersions](#deactivateVersions\(java.lang.Long,java.lang.Integer%5B%5D,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionNumbers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren_)`

    Deactivates specified version(s) of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[delete](#delete\(java.lang.Long%5B%5D,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren_)`

    Deletes all versions of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[delete](#delete\(java.lang.Long,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren_)`

    Deletes all versions of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deleteContent](#deleteContent\(java.lang.Long%5B%5D,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren_)`

    Deletes the given content items.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[deleteMyInactive](#deleteMyInactive\(\))()`

    This is an 'empty Recycle Bin/Trashcan' method.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deleteVersion](#deleteVersion\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") children_)`

    Deletes specified version(s) of the given content item.

    `[Approval](Approval.html "class in com.appiancorp.suiteapi.content")`

    `[deleteVersions](#deleteVersions\(java.lang.Long,java.lang.Integer%5B%5D,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionNumbers_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") children_)`

    Deletes specified version(s) of the given content item.

    `[Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")[]`

    `[download](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpired_)`

    Gets a piece of content and log the transaction if logging is enabled.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[generateSearchIndex](#generateSearchIndex\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp_)`

    Generates search index text file bodies for: "content".

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAccessLevel](#getAccessLevel\(java.lang.Long%5B%5D,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, int typemask_)`

    Get the Access Level for the current user for a list of content items.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAccessLevel](#getAccessLevel\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Get the Access Level for the current user for a list of content items.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAccessLevel](#getAccessLevel\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, int typemask_)`

    Get the Access Level for the current user for a content item.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAccessLevel](#getAccessLevel\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Get the Access Level for the current user for a content item.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getAccessLevelForUser](#getAccessLevelForUser\(java.lang.Long%5B%5D,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Get the Access Level for the given user for a list of content items.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getAccessLevelForUser](#getAccessLevelForUser\(java.lang.Long,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Get the Access Level for the given user for a content item.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratable](#getAdministratable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Deprecated.

    use [`getAdministratablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAdministratablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdministratableByUser](#getAdministratableByUser\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Get all active, non-expired ids off the root, where administratable role held by user.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdministratablePaging](#getAdministratablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get Administratable Content objects paging.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAdministratorGroup](#getAdministratorGroup\(\))()`

    Members of this group will be considered administrators for all content (appadmins).

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getAdvertisedChildren](#getAdvertisedChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    Deprecated.

    use [`getAdvertisedChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAdvertisedChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAdvertisedChildrenIds](#getAdvertisedChildrenIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAdvertisedChildrenPaging](#getAdvertisedChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getAllChildren](#getAllChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    Deprecated.

    use [`getAllChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAllChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAllChildrenAndVersionIds](#getAllChildrenAndVersionIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Get ids of all versions of all children in a given container.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getAllChildrenAndVersions](#getAllChildrenAndVersions\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`getAllChildrenAndVersionsPaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAllChildrenAndVersionsPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllChildrenAndVersionsPaging](#getAllChildrenAndVersionsPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get all versions of all children in a given container.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAllChildrenIds](#getAllChildrenIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    Returns all descendant ids in a recursive descent from root.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllChildrenPaging](#getAllChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all descendants in a recursive descent from root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getAllVersionIds](#getAllVersionIds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the IDs of all of the versions of a particular versioned content item.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getAllVersions](#getAllVersions\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`getAllVersionsPaging(Long, int, int, Integer, Integer)`](#getAllVersionsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllVersionsPaging](#getAllVersionsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets all of the versions of a particular versioned content item.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Get the application name (in this case, "Appian Collaboration").

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getByPath](#getByPath\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path_)`

    Gets the content at the specified path relative to the given root.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getChildren](#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    Deprecated.

    use [`getChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getChildrenIds](#getChildrenIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_)`

    Returns the ids of the children of a container.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getChildrenPaging](#getChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns the children of a container.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getChildrenTypes](#getChildrenTypes\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] containers_)`

    Returns typemasks of all children types found within each container.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getChildrenTypes](#getChildrenTypes\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_)`

    Returns a typemask of all children types found within a container.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getChildrenTypes](#getChildrenTypes\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_)`

    Returns typemasks of all children types found within each container.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getChildrenTypesOfType](#getChildrenTypesOfType\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Returns typemasks of all children types found within each container.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getChildrenTypesOfType](#getChildrenTypesOfType\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Returns a typemask of all children types found within a container.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getContent](#getContent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`getVersion(Long, Integer)`](#getVersion\(java.lang.Long,java.lang.Integer\)) instead

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getContent](#getContent\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    use [`getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getContentIdsWhereViewable](#getContentIdsWhereViewable\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the specified content IDs where viewable, rather than giving an error that the content is not viewable.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getContentList](#getContentList\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Does the same thing as [`getContent(Long[])`](#getContent\(java.lang.Long%5B%5D\)), except it takes a type mask and returns error codes instead of throwing exceptions.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getContentPaging](#getContentPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    use [`getVersionsPaging(Long[], Integer, int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long%5B%5D,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getContentTree](#getContentTree\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootContentId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxDepth_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel_)`

    Deprecated.

    use [`getContentTreePaging(Long, Integer, Integer, Integer, int, int, Integer, Integer)`](#getContentTreePaging\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getContentTreePaging](#getContentTreePaging\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootContentId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxDepth_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get the content tree, and page the results.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getContentUrl](#getContentUrl\(long\))(long contentId)`

    Gets the URL for a given content.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getContentWhereViewable](#getContentWhereViewable\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    use [`getContentWhereViewablePaging(Long[], int, int, Integer, Integer)`](#getContentWhereViewablePaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getContentWhereViewablePaging](#getContentWhereViewablePaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the specified content where viewable, rather than giving an error that the content is not viewable.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDatatypeIds](#getDatatypeIds\(java.lang.Long...\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... contentIds)`

    Gets the datatype ids that content ids map to.

    `[DocumentInputStream](DocumentInputStream.html "class in com.appiancorp.suiteapi.content")`

    `[getDocumentInputStream](#getDocumentInputStream\(long\))(long id_)`

    Opens a stream to a Document allowing for the caller to read its contents.

    `[DocumentInputStream](DocumentInputStream.html "class in com.appiancorp.suiteapi.content")[]`

    `[getDocumentInputStream](#getDocumentInputStream\(long%5B%5D\))(long[] ids_)`

    Opens streams to multiple Documents allowing the caller to read their contents.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDownloadLogType](#getDownloadLogType\(\))()`

    Gets the download log type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditable](#getEditable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Deprecated.

    use [`getEditablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getEditablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getEditableByUser](#getEditableByUser\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Get all active, non-expired ids off the root, where editor role held by user.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getEditablePaging](#getEditablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get Editable Content objects paging.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getExpired](#getExpired\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`getExpiredPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getExpiredIds](#getExpiredIds\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated. 

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getExpiredPaging](#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getExternalFilename](#getExternalFilename\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the external filename (the name that the file would be saved as by the client, or the name within a .zip file) of a document.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getExternalFilenames](#getExternalFilenames\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the external filenames (the name that the file would be saved as by the client, or the name within a .zip file) of a set of document.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFavoriteByRootIds](#getFavoriteByRootIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent_)`

    Deprecated. 

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getFavoritesByRoot](#getFavoritesByRoot\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent_)`

    Deprecated.

    use [`getFavoritesByRootPaging(Long, ContentFilter, Boolean, int, int, Integer, Integer)`](#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoritesByRootPaging](#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIdByPath](#getIdByPath\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path_)`

    Gets the ID of the content at the specified path relative to the given root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getIdByUuid](#getIdByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Gets a content id by UUID.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIdsByUuid](#getIdsByUuid\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Gets content ids by UUID.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getImageIdsForUsers](#getImageIdsForUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Get the image document ids for the given users.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getInactive](#getInactive\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`getInactivePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getInactivePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInactiveIds](#getInactiveIds\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Gets all inactive content ids within the specified root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getInactiveIdsNoSystem](#getInactiveIdsNoSystem\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Gets all inactive content ids within the specified root but filters out system ids.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getInactivePaging](#getInactivePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets all inactive content items within the specified root.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getInternalFilename](#getInternalFilename\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    since 23.2.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getInternalFilenames](#getInternalFilenames\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    since 23.2.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getLinkedBy](#getLinkedBy\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Returns the ids of those content items that link to the given id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getLinkIds](#getLinkIds\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Returns all link ids to a given content id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getLinkIdsOfType](#getLinkIdsOfType\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Returns all links to a given content id.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getLinks](#getLinks\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Returns all links to a given content id.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getLinksOfType](#getLinksOfType\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Returns all links to a given content id.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getMyInactive](#getMyInactive\(\))()`

    Deprecated.

    use [`getMyInactivePaging(int, int, Integer, Integer)`](#getMyInactivePaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getMyInactiveIds](#getMyInactiveIds\(\))()`

    This retrieves the content ids in the 'Recycle Bin/Trashcan' of the current user.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getMyInactivePaging](#getMyInactivePaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    This retrieves the content items in the 'Recycle Bin/Trashcan' of the current user.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getNumberOfChildren](#getNumberOfChildren\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This returns the number of children matching the typemask for each root id specified.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getNumberOfChildren](#getNumberOfChildren\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This returns the number of children matching the typemask.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getNumberOfRequests](#getNumberOfRequests\(\))()`

    This returns the count of the requests returned by getRequests.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getOpaqueContentUri](#getOpaqueContentUri\(long\))(long contentId)`

    Gets the opaque id for a given content.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getParent](#getParent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the parent of the specified content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParentId](#getParentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the parents of the specified content items.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getParentIds](#getParentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the IDs of the parents of the specified content items.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getParents](#getParents\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the parents of the specified content items.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getParentsFromRoot](#getParentsFromRoot\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This returns all of direct ancestors of a node, starting with the root and tracing down to the node's parent.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getParentsFromRootIds](#getParentsFromRootIds\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This return ids of all of direct ancestors of a node, starting with the root and tracing down to the node's parent.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getParentsToRoot](#getParentsToRoot\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This returns all of direct ancestors of a node, starting with the node's parent and tracing up to the root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getParentsToRootIds](#getParentsToRootIds\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    This returns ids of all of direct ancestors of a node, starting with the node's parent and tracing up to the root.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getPending](#getPending\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Deprecated.

    use [`getPendingPaging(Long, ContentFilter, int, int, Integer, Integer)`](#getPendingPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPendingPaging](#getPendingPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated. 

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getPendingReview](#getPendingReview\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getPendingReviews](#getPendingReviews\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getPendingUsers](#getPendingUsers\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    This accumulates all users pending for the given content item, returning only the unique names.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getPersonal](#getPersonal\(\))()`

    Get your Personal content item.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getPersonalAndTeams](#getPersonalAndTeams\(com.appiancorp.suiteapi.content.ContentFilter\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`getPersonalAndTeamsPaging(ContentFilter, int, int, Integer, Integer)`](#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getPersonalAndTeamsIds](#getPersonalAndTeamsIds\(com.appiancorp.suiteapi.content.ContentFilter\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Get children of 'Personal and Teams'.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPersonalAndTeamsPaging](#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get children of 'Personal and Teams'.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPersonalId](#getPersonalId\(\))()`

    Get the id for your Personal content item.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRequests](#getRequests\(\))()`

    Once a user requests an action on a Content item that requires approval, that request is stored with the Content item.

    `[RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common")`

    `[getRestrictionMap](#getRestrictionMap\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content")`

    `[getRoleMap](#getRoleMap\(java.lang.Long,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeAggregate_)`

    Get the role map for a content item.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`

    `[getRoleSet](#getRoleSet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Get the `ContentRoleSet` associated with the content with the ID provided.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`

    `[getRoleSetForGroup](#getRoleSetForGroup\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Get the `ContentRoleSet` associated with the given content for a specific group.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")`

    `[getRoleSetForUser](#getRoleSetForUser\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Requires two sets of credentials.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRoleSets](#getRoleSets\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Get the `ContentRoleSet`s associated with the given contents.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRoleSets](#getRoleSets\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Get the `ContentRoleSet`s associated with the given content ids.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRoleSetsForGroup](#getRoleSetsForGroup\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Get the `ContentRoleSet`s associated with the given contents for a specific group.

    `[ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")[]`

    `[getRoleSetsForUser](#getRoleSetsForUser\(java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Requires two sets of credentials.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemId](#getSystemId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    use [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\)) instead.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getSystemIds](#getSystemIds\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] names_)`

    Deprecated.

    use [`getIdsByUuid(String[])`](#getIdsByUuid\(java.lang.String%5B%5D\)) instead.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getSystemNames](#getSystemNames\(\))()`

    Deprecated.

    see [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getThumbnailIdsForUsers](#getThumbnailIdsForUsers\(java.lang.String%5B%5D,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames, int size)`

    Get the document ids of the thumbnail images of the given size for the given users.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserSpaceAvailable](#getUserSpaceAvailable\(\))()`

    Deprecated.

    User quotas have been removed.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserSpaceAvailableForUser](#getUserSpaceAvailableForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Deprecated.

    User quotas have been removed.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getUserSpaceUsage](#getUserSpaceUsage\(\))()`

    Deprecated.

    User quotas have been removed.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getVersion](#getVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Gets the specified version of the content.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")`

    `[getVersion](#getVersion\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber)`

    Gets the specified version of the content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Gets the ID of the specified version of the content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getVersionId](#getVersionId\(java.lang.String,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber)`

    Gets the ID of the specified version of the content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getVersionIds](#getVersionIds\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Gets the specified version of a bunch of pieces of content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getVersionIds](#getVersionIds\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionNumbers_)`

    Gets the specified versions of a particular piece of content.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getVersions](#getVersions\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Deprecated.

    use [`getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getVersions](#getVersions\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionNumbers_)`

    Gets the specified versions of a particular piece of content.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsList](#getVersionsList\(java.lang.Long%5B%5D,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask)`

    Retrieves the specified version of the content objects identified by the given ids and of the given type.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsPaging](#getVersionsPaging\(java.lang.Long%5B%5D,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the specified version of a bunch of pieces of content.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsPaging](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionNumbers_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Gets the specified versions of a particular piece of content.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewable](#getViewable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter)`

    Deprecated.

    use [`getViewablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getViewablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getViewableByUser](#getViewableByUser\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Get all active, non-expired ids off the root, where view role held by user.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getViewablePaging](#getViewablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Get Viewable Content objects paging.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[getWhatsNew](#getWhatsNew\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`getWhatsNewPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getWhatsNewPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getWhatsNewIds](#getWhatsNewIds\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Returns id list of most recently modified content items within the specified root.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getWhatsNewPaging](#getWhatsNewPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns list of most recently modified content items within the specified root.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[hasChildren](#hasChildren\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_)`

    Checks whether the specified container has children.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[hasChildrenOfType](#hasChildrenOfType\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Checks whether the specified container has children of a the specified type(s).

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[hasNoChildren](#hasNoChildren\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_)`

    Checks whether the specified container has no children.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[hasNoChildrenOfType](#hasNoChildrenOfType\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Checks whether the specified container has no children of the specified type(s).

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[haveChildren](#haveChildren\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] containers_)`

    Checks whether each of the specified containers has children.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[haveChildren](#haveChildren\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_)`

    Checks whether each of the specified containers has children.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[haveChildrenOfType](#haveChildrenOfType\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Checks whether the specified container has children of a the specified type(s).

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[haveNoChildren](#haveNoChildren\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_)`

    Checks whether each of the specified containers has no children.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[haveNoChildrenOfType](#haveNoChildrenOfType\(java.lang.Long%5B%5D,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] containerIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask_)`

    Checks whether each of the specified containers has no children of the specified type(s).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[importContent](#importContent\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Deprecated.

    This API is no longer supported and will be removed in the next release.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[importValidate](#importValidate\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Checks the validity of the Content items for import, returning an import status for each.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[isAdministrateNotRestricted](#isAdministrateNotRestricted\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Is administrate privilege restricted?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[isEditNotRestricted](#isEditNotRestricted\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Is edit privilege restricted?

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[isFavorite](#isFavorite\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Returns true if content is marked as a favorite for the current user.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[isViewNotRestricted](#isViewNotRestricted\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Is view privilege restricted?

    `void`

    `[localize](#localize\(com.appiancorp.suiteapi.content.Content\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_)`

    Localizes the name, description, and parent name for the given content(s).

    `void`

    `[localize](#localize\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Localizes the name, description, and parent name for the given content(s).

    `void`

    `[localize](#localize\(com.appiancorp.suiteapi.content.Content%5B%5D,java.util.Locale\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Localizes the name, description, and parent name for the given content(s).

    `void`

    `[localize](#localize\(com.appiancorp.suiteapi.content.Content,java.util.Locale\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale_)`

    Localizes the name, description, and parent name for the given content(s).

    `void`

    `[lock](#lock\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `void`

    `[lock](#lock\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `void`

    `[move](#move\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") destinationParent_)`

    This moves Content items from one location to another, cutting connection from current parent, setting connection to new parent, updating bytes used in parents.

    `void`

    `[move](#move\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") destinationParent_)`

    This moves a Content item from one location to another, cutting connection from current parent, setting connection to new parent, updating bytes used in parents.

    `void`

    `[moveKnowledgeCenter](#moveKnowledgeCenter\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Move a KC to a community.

    `void`

    `[moveKnowledgeCenters](#moveKnowledgeCenters\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] kcIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId_)`

    Moves KCs to a community.

    `void`

    `[notifyApproved](#notifyApproved\(com.appiancorp.suiteapi.content.Approved...\))([Approved](Approved.html "class in com.appiancorp.suiteapi.content")... approved)`

    Deprecated. 

    `void`

    `[notifyGroupDeletion](#notifyGroupDeletion\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Notify the server that a group was deleted so any new group with the same id will not assume the same permissions.

    `void`

    `[notifyGroupsDeletion](#notifyGroupsDeletion\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Notify the server that groups were deleted so any new group with the same id will not assume the same permissions.

    `void`

    `[notifyUserCreation](#notifyUserCreation\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[notifyUsersCreation](#notifyUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userNames_)`

    Deprecated.

    done automatically by UserService.createUser

    `void`

    `[populateExtensionInfo](#populateExtensionInfo\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Populates the extensionInfo field in the document beans you pass in.

    `void`

    `[populateFavorites](#populateFavorites\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Deprecated. 

    `void`

    `[populateRoleSets](#populateRoleSets\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_)`

    Populates the roleSet field in the content beans you pass in.

    `void`

    `[populateTypesOfChildren](#populateTypesOfChildren\(com.appiancorp.suiteapi.content.Content%5B%5D\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] containers_)`

    Populate the typesOfChildren field in the content beans you pass in.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[queryByRoot](#queryByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`queryByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#queryByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[queryByRootPaging](#queryByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    This is more advanced search, accepting special keywords.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[queryIdsByRoot](#queryIdsByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    This is more advanced search, accepting special keywords.

    `void`

    `[reactivate](#reactivate\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Reactivates the given content item.

    `void`

    `[reactivate](#reactivate\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Reactivates the given content items.

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")`

    `[reject](#reject\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")[]`

    `[reject](#reject\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[rejectUsers](#rejectUsers\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_)`

    Reject access to the specified content item for a set of users.

    `[Approved](Approved.html "class in com.appiancorp.suiteapi.content")`

    `[rejectVersion](#rejectVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber_)`

    Deprecated. 

    `void`

    `[removeFavorite](#removeFavorite\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `void`

    `[removeFavoriteForUsers](#removeFavoriteForUsers\(java.lang.Long,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] username_)`

    Deprecated. 

    `void`

    `[removeFavorites](#removeFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `void`

    `[removeGroupFromRole](#removeGroupFromRole\(java.lang.Long,java.lang.String,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId)`

    Remove group from content in given role.

    `void`

    `[removeGroupsFromRole](#removeGroupsFromRole\(java.lang.Long,java.lang.String,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupId)`

    Remove groups from content in given role.

    `void`

    `[removeLinks](#removeLinks\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] links_)`

    Deprecated. 

    `void`

    `[removeUserFromRole](#removeUserFromRole\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Remove user from content in given role.

    `void`

    `[removeUsersFromRole](#removeUsersFromRole\(java.lang.Long,java.lang.String,java.lang.String%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] username)`

    Remove users from content in given role.

    `void`

    `[requestAccess](#requestAccess\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `void`

    `[requestAccess](#requestAccess\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `void`

    `[resetGroupMembership](#resetGroupMembership\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp_)`

    Deprecated.

    No longer necessary with credential system

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[searchByRoot](#searchByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Deprecated.

    use [`searchByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchByRootPaging](#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Searches for content from a given root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[searchIdsByRoot](#searchIdsByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter_)`

    Searches for content from a given root.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[searchIdsWithin](#searchIdsWithin\(java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Search for content within the given containers.

    `[Content](Content.html "class in com.appiancorp.suiteapi.content")[]`

    `[searchWithin](#searchWithin\(java.lang.String,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    use [`searchWithinPaging(String, Long[], int, int, Integer, Integer)`](#searchWithinPaging\(java.lang.String,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchWithinPaging](#searchWithinPaging\(java.lang.String,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Search for content within the given containers.

    `void`

    `[setActorsInRoles](#setActorsInRoles\(java.lang.Long,java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Set security roles for a content item by users and groups.

    `void`

    `[setAdministratorGroup](#setAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Set the group that will be considered administrators for all content (appadmins).

    `void`

    `[setAsRoot](#setAsRoot\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets the given id as its own root, splitting it from its existing hierarchy.

    `void`

    `[setPersonalId](#setPersonalId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Set the id for your Personal content item.

    `void`

    `[setRestrictionMap](#setRestrictionMap\(java.lang.Long,com.appiancorp.suiteapi.common.RoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap_)`

    Deprecated. 

    `[RoleMapChanges](RoleMapChanges.html "class in com.appiancorp.suiteapi.content")`

    `[setRoleMap](#setRoleMap\(java.lang.Long,com.appiancorp.suiteapi.content.ContentRoleMap,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content") rolemap_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") contract_)`

    Set the role map for a content item.

    `void`

    `[setRoleMapForAllVersions](#setRoleMapForAllVersions\(java.lang.Long,com.appiancorp.suiteapi.content.ContentRoleMap,java.lang.Boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_, [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content") rolemap_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") contract_)`

    Sets the role map for all the versions of a content item.

    `void`

    `[setRoot](#setRoot\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`setAsRoot(Long)`](#setAsRoot\(java.lang.Long\))

    `int`

    `[setSizeOfDocumentVersion](#setSizeOfDocumentVersion\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentContentId)`

    Deprecated.

    since 23.2.

    `void`

    `[setSystemId](#setSystemId\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Use [`create(Content, Integer)`](#create\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) with a pre-populated UUID and the flag [`ContentConstants.VIS_SYSTEM`](ContentConstants.html#VIS_SYSTEM).

    `void`

    `[setSystemIds](#setSystemIds\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] names_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Use [`create(Content[], Integer)`](#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) with pre-populated UUIDs and the flag [`ContentConstants.VIS_SYSTEM`](ContentConstants.html#VIS_SYSTEM).

    `void`

    `[setUserSpaceAvailable](#setUserSpaceAvailable\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") bytes_)`

    Deprecated.

    User quotas have been removed.

    `void`

    `[setUserSpaceUsage](#setUserSpaceUsage\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") bytesUsed_)`

    Deprecated.

    User quotas have been removed.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_)`

    Queries for content and returns a JSON formatted string to be used by autocomplete.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Queries for content and returns a JSON formatted string to be used by autocomplete.

    `void`

    `[unexpire](#unexpire\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `void`

    `[unexpire](#unexpire\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[unlock](#unlock\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated. 

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[unlock](#unlock\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated. 

    `void`

    `[updateAllChildrenAndVersionsExpiration](#updateAllChildrenAndVersionsExpiration\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") expirationDays)`

    Update the expiration days for all children and versions of the given id (including the content with the given id).

    `void`

    `[updateAllChildrenAndVersionsVisibility](#updateAllChildrenAndVersionsVisibility\(java.lang.Long,boolean,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, boolean maskType, int bitmask)`

    Update the visibility bitmask for all children and versions of the given id.

    `void`

    `[updateFields](#updateFields\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content")[] contents_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] fields_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Updates the specified fields of the content items.

    `void`

    `[updateFields](#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] fields_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Updates the specified fields of a content item's LATEST version.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[updateVersionFields](#updateVersionFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer,java.lang.Integer%5B%5D,java.lang.Integer\))([Content](Content.html "class in com.appiancorp.suiteapi.content") content_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] fields_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique_)`

    Updates the specified fields of a content item's specific version.

    `[ContentOutputStream](ContentOutputStream.html "class in com.appiancorp.suiteapi.content")`

    `[upload](#upload\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\))([Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") doc, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique)`

    Deprecated.

    since 23.2.

    `[ContentUploadOutputStream](ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content")`

    `[uploadDocument](#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\))([Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") doc, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique)`

    Creates a document and provides an output stream to which the document's content should be written.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[validate](#validate\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Gets the type of the content specified.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[validate](#validate\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the types of the content specified.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memberOfGroups_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] adminOfGroups_)`

    Deprecated.

    No longer necessary with credential system

    `boolean`

    `[validateTypedValues](#validateTypedValues\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")[] typedValues)`

    Validates given TypedValues.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getApplicationName$UPDATES)

    -   ### generateSearchIndex$UPDATES

        static final boolean generateSearchIndex$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.generateSearchIndex$UPDATES)

    -   ### setAdministratorGroup$UPDATES

        static final boolean setAdministratorGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setAdministratorGroup$UPDATES)

    -   ### getAdministratorGroup$UPDATES

        static final boolean getAdministratorGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdministratorGroup$UPDATES)

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.activateUserSession$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.validateGroupMembership$UPDATES)

    -   ### resetGroupMembership$UPDATES

        static final boolean resetGroupMembership$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.resetGroupMembership$UPDATES)

    -   ### notifyUserCreation$UPDATES

        static final boolean notifyUserCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.notifyUserCreation$UPDATES)

    -   ### notifyUsersCreation$UPDATES

        static final boolean notifyUsersCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.notifyUsersCreation$UPDATES)

    -   ### notifyGroupDeletion$UPDATES

        static final boolean notifyGroupDeletion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.notifyGroupDeletion$UPDATES)

    -   ### notifyGroupsDeletion$UPDATES

        static final boolean notifyGroupsDeletion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.notifyGroupsDeletion$UPDATES)

    -   ### setUserSpaceUsage$UPDATES

        static final boolean setUserSpaceUsage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setUserSpaceUsage$UPDATES)

    -   ### getUserSpaceUsage$UPDATES

        static final boolean getUserSpaceUsage$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getUserSpaceUsage$UPDATES)

    -   ### setUserSpaceAvailable$UPDATES

        static final boolean setUserSpaceAvailable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setUserSpaceAvailable$UPDATES)

    -   ### getUserSpaceAvailable$UPDATES

        static final boolean getUserSpaceAvailable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getUserSpaceAvailable$UPDATES)

    -   ### getUserSpaceAvailableForUser$UPDATES

        static final boolean getUserSpaceAvailableForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getUserSpaceAvailableForUser$UPDATES)

    -   ### getImageIdsForUsers$UPDATES

        static final boolean getImageIdsForUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getImageIdsForUsers$UPDATES)

    -   ### getThumbnailIdsForUsers$UPDATES

        static final boolean getThumbnailIdsForUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getThumbnailIdsForUsers$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.validate$UPDATES)

    -   ### createApproval$UPDATES

        static final boolean createApproval$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.createApproval$UPDATES)

    -   ### create$UPDATES

        static final boolean create$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.create$UPDATES)

    -   ### createVersion$UPDATES

        static final boolean createVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.createVersion$UPDATES)

    -   ### upload$UPDATES

        static final boolean upload$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.upload$UPDATES)

    -   ### importContent$UPDATES

        static final boolean importContent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.importContent$UPDATES)

    -   ### importValidate$UPDATES

        static final boolean importValidate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.importValidate$UPDATES)

    -   ### getContent$UPDATES

        static final boolean getContent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContent$UPDATES)

    -   ### getContentList$UPDATES

        static final boolean getContentList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentList$UPDATES)

    -   ### getContentPaging$UPDATES

        static final boolean getContentPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentPaging$UPDATES)

    -   ### getContentTree$UPDATES

        static final boolean getContentTree$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentTree$UPDATES)

    -   ### getContentTreePaging$UPDATES

        static final boolean getContentTreePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentTreePaging$UPDATES)

    -   ### getContentWhereViewable$UPDATES

        static final boolean getContentWhereViewable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentWhereViewable$UPDATES)

    -   ### getContentIdsWhereViewable$UPDATES

        static final boolean getContentIdsWhereViewable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentIdsWhereViewable$UPDATES)

    -   ### getContentWhereViewablePaging$UPDATES

        static final boolean getContentWhereViewablePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentWhereViewablePaging$UPDATES)

    -   ### getContentUrl$UPDATES

        static final boolean getContentUrl$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getContentUrl$UPDATES)

    -   ### getOpaqueContentUri$UPDATES

        static final boolean getOpaqueContentUri$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getOpaqueContentUri$UPDATES)

    -   ### getVersion$UPDATES

        static final boolean getVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersion$UPDATES)

    -   ### getVersions$UPDATES

        static final boolean getVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersions$UPDATES)

    -   ### getVersionsList$UPDATES

        static final boolean getVersionsList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersionsList$UPDATES)

    -   ### getVersionId$UPDATES

        static final boolean getVersionId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersionId$UPDATES)

    -   ### getVersionsPaging$UPDATES

        static final boolean getVersionsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersionsPaging$UPDATES)

    -   ### getVersionIds$UPDATES

        static final boolean getVersionIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getVersionIds$UPDATES)

    -   ### getAllVersions$UPDATES

        static final boolean getAllVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllVersions$UPDATES)

    -   ### getAllVersionsPaging$UPDATES

        static final boolean getAllVersionsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllVersionsPaging$UPDATES)

    -   ### getAllVersionIds$UPDATES

        static final boolean getAllVersionIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllVersionIds$UPDATES)

    -   ### download$UPDATES

        static final boolean download$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.download$UPDATES)

    -   ### getInternalFilename$UPDATES

        static final boolean getInternalFilename$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInternalFilename$UPDATES)

    -   ### getInternalFilenames$UPDATES

        static final boolean getInternalFilenames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInternalFilenames$UPDATES)

    -   ### getExternalFilename$UPDATES

        static final boolean getExternalFilename$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getExternalFilename$UPDATES)

    -   ### getExternalFilenames$UPDATES

        static final boolean getExternalFilenames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getExternalFilenames$UPDATES)

    -   ### getByPath$UPDATES

        static final boolean getByPath$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getByPath$UPDATES)

    -   ### getIdByPath$UPDATES

        static final boolean getIdByPath$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getIdByPath$UPDATES)

    -   ### getParent$UPDATES

        static final boolean getParent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParent$UPDATES)

    -   ### getParents$UPDATES

        static final boolean getParents$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParents$UPDATES)

    -   ### getParentId$UPDATES

        static final boolean getParentId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentId$UPDATES)

    -   ### getParentIds$UPDATES

        static final boolean getParentIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentIds$UPDATES)

    -   ### hasNoChildren$UPDATES

        static final boolean hasNoChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.hasNoChildren$UPDATES)

    -   ### haveNoChildren$UPDATES

        static final boolean haveNoChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.haveNoChildren$UPDATES)

    -   ### hasNoChildrenOfType$UPDATES

        static final boolean hasNoChildrenOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.hasNoChildrenOfType$UPDATES)

    -   ### haveNoChildrenOfType$UPDATES

        static final boolean haveNoChildrenOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.haveNoChildrenOfType$UPDATES)

    -   ### hasChildren$UPDATES

        static final boolean hasChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.hasChildren$UPDATES)

    -   ### haveChildren$UPDATES

        static final boolean haveChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.haveChildren$UPDATES)

    -   ### hasChildrenOfType$UPDATES

        static final boolean hasChildrenOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.hasChildrenOfType$UPDATES)

    -   ### haveChildrenOfType$UPDATES

        static final boolean haveChildrenOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.haveChildrenOfType$UPDATES)

    -   ### getChildrenTypesOfType$UPDATES

        static final boolean getChildrenTypesOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getChildrenTypesOfType$UPDATES)

    -   ### getChildrenTypes$UPDATES

        static final boolean getChildrenTypes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getChildrenTypes$UPDATES)

    -   ### populateTypesOfChildren$UPDATES

        static final boolean populateTypesOfChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.populateTypesOfChildren$UPDATES)

    -   ### getChildren$UPDATES

        static final boolean getChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getChildren$UPDATES)

    -   ### getChildrenIds$UPDATES

        static final boolean getChildrenIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getChildrenIds$UPDATES)

    -   ### getChildrenPaging$UPDATES

        static final boolean getChildrenPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getChildrenPaging$UPDATES)

    -   ### getAdvertisedChildren$UPDATES

        static final boolean getAdvertisedChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdvertisedChildren$UPDATES)

    -   ### getAdvertisedChildrenIds$UPDATES

        static final boolean getAdvertisedChildrenIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdvertisedChildrenIds$UPDATES)

    -   ### getAdvertisedChildrenPaging$UPDATES

        static final boolean getAdvertisedChildrenPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdvertisedChildrenPaging$UPDATES)

    -   ### getEditablePaging$UPDATES

        static final boolean getEditablePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getEditablePaging$UPDATES)

    -   ### getAdministratablePaging$UPDATES

        static final boolean getAdministratablePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdministratablePaging$UPDATES)

    -   ### getViewablePaging$UPDATES

        static final boolean getViewablePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getViewablePaging$UPDATES)

    -   ### getAllChildren$UPDATES

        static final boolean getAllChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildren$UPDATES)

    -   ### getAllChildrenIds$UPDATES

        static final boolean getAllChildrenIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildrenIds$UPDATES)

    -   ### getAllChildrenPaging$UPDATES

        static final boolean getAllChildrenPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildrenPaging$UPDATES)

    -   ### getAllChildrenAndVersions$UPDATES

        static final boolean getAllChildrenAndVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildrenAndVersions$UPDATES)

    -   ### getAllChildrenAndVersionIds$UPDATES

        static final boolean getAllChildrenAndVersionIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildrenAndVersionIds$UPDATES)

    -   ### getAllChildrenAndVersionsPaging$UPDATES

        static final boolean getAllChildrenAndVersionsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAllChildrenAndVersionsPaging$UPDATES)

    -   ### getNumberOfChildren$UPDATES

        static final boolean getNumberOfChildren$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getNumberOfChildren$UPDATES)

    -   ### getParentsToRoot$UPDATES

        static final boolean getParentsToRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentsToRoot$UPDATES)

    -   ### getParentsToRootIds$UPDATES

        static final boolean getParentsToRootIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentsToRootIds$UPDATES)

    -   ### getParentsFromRoot$UPDATES

        static final boolean getParentsFromRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentsFromRoot$UPDATES)

    -   ### getParentsFromRootIds$UPDATES

        static final boolean getParentsFromRootIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getParentsFromRootIds$UPDATES)

    -   ### updateVersionFields$UPDATES

        static final boolean updateVersionFields$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.updateVersionFields$UPDATES)

    -   ### updateFields$UPDATES

        static final boolean updateFields$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.updateFields$UPDATES)

    -   ### setSizeOfDocumentVersion$UPDATES

        static final boolean setSizeOfDocumentVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setSizeOfDocumentVersion$UPDATES)

    -   ### updateAllChildrenAndVersionsVisibility$UPDATES

        static final boolean updateAllChildrenAndVersionsVisibility$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.updateAllChildrenAndVersionsVisibility$UPDATES)

    -   ### updateAllChildrenAndVersionsExpiration$UPDATES

        static final boolean updateAllChildrenAndVersionsExpiration$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.updateAllChildrenAndVersionsExpiration$UPDATES)

    -   ### move$UPDATES

        static final boolean move$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.move$UPDATES)

    -   ### copy$UPDATES

        static final boolean copy$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.copy$UPDATES)

    -   ### delete$UPDATES

        static final boolean delete$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.delete$UPDATES)

    -   ### deleteContent$UPDATES

        static final boolean deleteContent$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deleteContent$UPDATES)

    -   ### deleteVersion$UPDATES

        static final boolean deleteVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deleteVersion$UPDATES)

    -   ### deleteVersions$UPDATES

        static final boolean deleteVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deleteVersions$UPDATES)

    -   ### deactivate$UPDATES

        static final boolean deactivate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deactivate$UPDATES)

    -   ### deactivateVersion$UPDATES

        static final boolean deactivateVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deactivateVersion$UPDATES)

    -   ### deactivateVersions$UPDATES

        static final boolean deactivateVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deactivateVersions$UPDATES)

    -   ### reactivate$UPDATES

        static final boolean reactivate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.reactivate$UPDATES)

    -   ### getInactive$UPDATES

        static final boolean getInactive$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInactive$UPDATES)

    -   ### getInactiveIds$UPDATES

        static final boolean getInactiveIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInactiveIds$UPDATES)

    -   ### getInactiveIdsNoSystem$UPDATES

        static final boolean getInactiveIdsNoSystem$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInactiveIdsNoSystem$UPDATES)

    -   ### getInactivePaging$UPDATES

        static final boolean getInactivePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getInactivePaging$UPDATES)

    -   ### getMyInactiveIds$UPDATES

        static final boolean getMyInactiveIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getMyInactiveIds$UPDATES)

    -   ### getMyInactive$UPDATES

        static final boolean getMyInactive$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getMyInactive$UPDATES)

    -   ### getMyInactivePaging$UPDATES

        static final boolean getMyInactivePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getMyInactivePaging$UPDATES)

    -   ### deleteMyInactive$UPDATES

        static final boolean deleteMyInactive$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.deleteMyInactive$UPDATES)

    -   ### getLinks$UPDATES

        static final boolean getLinks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getLinks$UPDATES)

    -   ### getLinkIds$UPDATES

        static final boolean getLinkIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getLinkIds$UPDATES)

    -   ### getLinksOfType$UPDATES

        static final boolean getLinksOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getLinksOfType$UPDATES)

    -   ### getLinkIdsOfType$UPDATES

        static final boolean getLinkIdsOfType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getLinkIdsOfType$UPDATES)

    -   ### addLinks$UPDATES

        static final boolean addLinks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addLinks$UPDATES)

    -   ### removeLinks$UPDATES

        static final boolean removeLinks$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeLinks$UPDATES)

    -   ### getLinkedBy$UPDATES

        static final boolean getLinkedBy$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getLinkedBy$UPDATES)

    -   ### searchByRoot$UPDATES

        static final boolean searchByRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchByRoot$UPDATES)

    -   ### searchIdsByRoot$UPDATES

        static final boolean searchIdsByRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchIdsByRoot$UPDATES)

    -   ### searchByRootPaging$UPDATES

        static final boolean searchByRootPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchByRootPaging$UPDATES)

    -   ### searchWithin$UPDATES

        static final boolean searchWithin$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchWithin$UPDATES)

    -   ### searchIdsWithin$UPDATES

        static final boolean searchIdsWithin$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchIdsWithin$UPDATES)

    -   ### searchWithinPaging$UPDATES

        static final boolean searchWithinPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.searchWithinPaging$UPDATES)

    -   ### queryByRoot$UPDATES

        static final boolean queryByRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.queryByRoot$UPDATES)

    -   ### queryIdsByRoot$UPDATES

        static final boolean queryIdsByRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.queryIdsByRoot$UPDATES)

    -   ### queryByRootPaging$UPDATES

        static final boolean queryByRootPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.queryByRootPaging$UPDATES)

    -   ### getExpired$UPDATES

        static final boolean getExpired$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getExpired$UPDATES)

    -   ### getExpiredIds$UPDATES

        static final boolean getExpiredIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getExpiredIds$UPDATES)

    -   ### getExpiredPaging$UPDATES

        static final boolean getExpiredPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getExpiredPaging$UPDATES)

    -   ### unexpire$UPDATES

        static final boolean unexpire$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.unexpire$UPDATES)

    -   ### lock$UPDATES

        static final boolean lock$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.lock$UPDATES)

    -   ### unlock$UPDATES

        static final boolean unlock$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.unlock$UPDATES)

    -   ### breakLock$UPDATES

        static final boolean breakLock$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.breakLock$UPDATES)

    -   ### approve$UPDATES

        static final boolean approve$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.approve$UPDATES)

    -   ### approveVersion$UPDATES

        static final boolean approveVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.approveVersion$UPDATES)

    -   ### reject$UPDATES

        static final boolean reject$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.reject$UPDATES)

    -   ### rejectVersion$UPDATES

        static final boolean rejectVersion$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.rejectVersion$UPDATES)

    -   ### notifyApproved$UPDATES

        static final boolean notifyApproved$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.notifyApproved$UPDATES)

    -   ### requestAccess$UPDATES

        static final boolean requestAccess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.requestAccess$UPDATES)

    -   ### checkAccess$UPDATES

        static final boolean checkAccess$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.checkAccess$UPDATES)

    -   ### approveUsers$UPDATES

        static final boolean approveUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.approveUsers$UPDATES)

    -   ### rejectUsers$UPDATES

        static final boolean rejectUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.rejectUsers$UPDATES)

    -   ### getPending$UPDATES

        static final boolean getPending$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPending$UPDATES)

    -   ### getPendingPaging$UPDATES

        static final boolean getPendingPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPendingPaging$UPDATES)

    -   ### getNumberOfRequests$UPDATES

        static final boolean getNumberOfRequests$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getNumberOfRequests$UPDATES)

    -   ### getRequests$UPDATES

        static final boolean getRequests$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRequests$UPDATES)

    -   ### getPendingUsers$UPDATES

        static final boolean getPendingUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPendingUsers$UPDATES)

    -   ### getPendingReview$UPDATES

        static final boolean getPendingReview$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPendingReview$UPDATES)

    -   ### getPendingReviews$UPDATES

        static final boolean getPendingReviews$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPendingReviews$UPDATES)

    -   ### getFavoritesByRoot$UPDATES

        static final boolean getFavoritesByRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getFavoritesByRoot$UPDATES)

    -   ### getFavoriteByRootIds$UPDATES

        static final boolean getFavoriteByRootIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getFavoriteByRootIds$UPDATES)

    -   ### getFavoritesByRootPaging$UPDATES

        static final boolean getFavoritesByRootPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getFavoritesByRootPaging$UPDATES)

    -   ### isFavorite$UPDATES

        static final boolean isFavorite$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.isFavorite$UPDATES)

    -   ### areFavorites$UPDATES

        static final boolean areFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.areFavorites$UPDATES)

    -   ### populateFavorites$UPDATES

        static final boolean populateFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.populateFavorites$UPDATES)

    -   ### addFavorite$UPDATES

        static final boolean addFavorite$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addFavorite$UPDATES)

    -   ### addFavoriteForUsers$UPDATES

        static final boolean addFavoriteForUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addFavoriteForUsers$UPDATES)

    -   ### addFavorites$UPDATES

        static final boolean addFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addFavorites$UPDATES)

    -   ### removeFavorite$UPDATES

        static final boolean removeFavorite$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeFavorite$UPDATES)

    -   ### removeFavorites$UPDATES

        static final boolean removeFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeFavorites$UPDATES)

    -   ### removeFavoriteForUsers$UPDATES

        static final boolean removeFavoriteForUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeFavoriteForUsers$UPDATES)

    -   ### cleanseFavorites$UPDATES

        static final boolean cleanseFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.cleanseFavorites$UPDATES)

    -   ### cleanseApprovals$UPDATES

        static final boolean cleanseApprovals$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.cleanseApprovals$UPDATES)

    -   ### getRoleMap$UPDATES

        static final boolean getRoleMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleMap$UPDATES)

    -   ### setRoleMap$UPDATES

        static final boolean setRoleMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setRoleMap$UPDATES)

    -   ### setRoleMapForAllVersions$UPDATES

        static final boolean setRoleMapForAllVersions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setRoleMapForAllVersions$UPDATES)

    -   ### getRestrictionMap$UPDATES

        static final boolean getRestrictionMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRestrictionMap$UPDATES)

    -   ### setRestrictionMap$UPDATES

        static final boolean setRestrictionMap$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setRestrictionMap$UPDATES)

    -   ### setActorsInRoles$UPDATES

        static final boolean setActorsInRoles$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setActorsInRoles$UPDATES)

    -   ### getRoleSet$UPDATES

        static final boolean getRoleSet$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSet$UPDATES)

    -   ### getRoleSets$UPDATES

        static final boolean getRoleSets$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSets$UPDATES)

    -   ### getRoleSetForUser$UPDATES

        static final boolean getRoleSetForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSetForUser$UPDATES)

    -   ### getRoleSetsForUser$UPDATES

        static final boolean getRoleSetsForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSetsForUser$UPDATES)

    -   ### getRoleSetForGroup$UPDATES

        static final boolean getRoleSetForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSetForGroup$UPDATES)

    -   ### getRoleSetsForGroup$UPDATES

        static final boolean getRoleSetsForGroup$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getRoleSetsForGroup$UPDATES)

    -   ### populateRoleSets$UPDATES

        static final boolean populateRoleSets$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.populateRoleSets$UPDATES)

    -   ### populateExtensionInfo$UPDATES

        static final boolean populateExtensionInfo$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.populateExtensionInfo$UPDATES)

    -   ### localize$UPDATES

        static final boolean localize$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.localize$UPDATES)

    -   ### addUserInRole$UPDATES

        static final boolean addUserInRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addUserInRole$UPDATES)

    -   ### addUsersInRole$UPDATES

        static final boolean addUsersInRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addUsersInRole$UPDATES)

    -   ### removeUserFromRole$UPDATES

        static final boolean removeUserFromRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeUserFromRole$UPDATES)

    -   ### removeUsersFromRole$UPDATES

        static final boolean removeUsersFromRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeUsersFromRole$UPDATES)

    -   ### addGroupInRole$UPDATES

        static final boolean addGroupInRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addGroupInRole$UPDATES)

    -   ### addGroupsInRole$UPDATES

        static final boolean addGroupsInRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.addGroupsInRole$UPDATES)

    -   ### removeGroupFromRole$UPDATES

        static final boolean removeGroupFromRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeGroupFromRole$UPDATES)

    -   ### removeGroupsFromRole$UPDATES

        static final boolean removeGroupsFromRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.removeGroupsFromRole$UPDATES)

    -   ### getViewable$UPDATES

        static final boolean getViewable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getViewable$UPDATES)

    -   ### getViewableByUser$UPDATES

        static final boolean getViewableByUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getViewableByUser$UPDATES)

    -   ### getEditable$UPDATES

        static final boolean getEditable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getEditable$UPDATES)

    -   ### getEditableByUser$UPDATES

        static final boolean getEditableByUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getEditableByUser$UPDATES)

    -   ### getAdministratable$UPDATES

        static final boolean getAdministratable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdministratable$UPDATES)

    -   ### getAdministratableByUser$UPDATES

        static final boolean getAdministratableByUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAdministratableByUser$UPDATES)

    -   ### canAdministrate$UPDATES

        static final boolean canAdministrate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canAdministrate$UPDATES)

    -   ### canUserAdministrate$UPDATES

        static final boolean canUserAdministrate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canUserAdministrate$UPDATES)

    -   ### canGroupAdministrate$UPDATES

        static final boolean canGroupAdministrate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canGroupAdministrate$UPDATES)

    -   ### isViewNotRestricted$UPDATES

        static final boolean isViewNotRestricted$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.isViewNotRestricted$UPDATES)

    -   ### isEditNotRestricted$UPDATES

        static final boolean isEditNotRestricted$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.isEditNotRestricted$UPDATES)

    -   ### isAdministrateNotRestricted$UPDATES

        static final boolean isAdministrateNotRestricted$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.isAdministrateNotRestricted$UPDATES)

    -   ### canEdit$UPDATES

        static final boolean canEdit$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canEdit$UPDATES)

    -   ### canUserEdit$UPDATES

        static final boolean canUserEdit$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canUserEdit$UPDATES)

    -   ### canGroupEdit$UPDATES

        static final boolean canGroupEdit$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canGroupEdit$UPDATES)

    -   ### canView$UPDATES

        static final boolean canView$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canView$UPDATES)

    -   ### canUserView$UPDATES

        static final boolean canUserView$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canUserView$UPDATES)

    -   ### canGroupView$UPDATES

        static final boolean canGroupView$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.canGroupView$UPDATES)

    -   ### getAccessLevel$UPDATES

        static final boolean getAccessLevel$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAccessLevel$UPDATES)

    -   ### getAccessLevelForUser$UPDATES

        static final boolean getAccessLevelForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getAccessLevelForUser$UPDATES)

    -   ### getWhatsNew$UPDATES

        static final boolean getWhatsNew$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getWhatsNew$UPDATES)

    -   ### getWhatsNewIds$UPDATES

        static final boolean getWhatsNewIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getWhatsNewIds$UPDATES)

    -   ### getWhatsNewPaging$UPDATES

        static final boolean getWhatsNewPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getWhatsNewPaging$UPDATES)

    -   ### setPersonalId$UPDATES

        static final boolean setPersonalId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setPersonalId$UPDATES)

    -   ### getPersonalId$UPDATES

        static final boolean getPersonalId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPersonalId$UPDATES)

    -   ### getPersonal$UPDATES

        static final boolean getPersonal$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPersonal$UPDATES)

    -   ### getPersonalAndTeamsIds$UPDATES

        static final boolean getPersonalAndTeamsIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPersonalAndTeamsIds$UPDATES)

    -   ### getPersonalAndTeams$UPDATES

        static final boolean getPersonalAndTeams$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPersonalAndTeams$UPDATES)

    -   ### getPersonalAndTeamsPaging$UPDATES

        static final boolean getPersonalAndTeamsPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getPersonalAndTeamsPaging$UPDATES)

    -   ### browse$UPDATES

        static final boolean browse$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.browse$UPDATES)

    -   ### browseIds$UPDATES

        static final boolean browseIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.browseIds$UPDATES)

    -   ### browsePaging$UPDATES

        static final boolean browsePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.browsePaging$UPDATES)

    -   ### getDownloadLogType$UPDATES

        static final boolean getDownloadLogType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getDownloadLogType$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.updateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.rollbackUpdateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.commitUpdateUsernames$UPDATES)

    -   ### getSystemId$UPDATES

        static final boolean getSystemId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getSystemId$UPDATES)

    -   ### getSystemIds$UPDATES

        static final boolean getSystemIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getSystemIds$UPDATES)

    -   ### getSystemNames$UPDATES

        static final boolean getSystemNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getSystemNames$UPDATES)

    -   ### setSystemId$UPDATES

        static final boolean setSystemId$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setSystemId$UPDATES)

    -   ### setSystemIds$UPDATES

        static final boolean setSystemIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setSystemIds$UPDATES)

    -   ### setRoot$UPDATES

        static final boolean setRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setRoot$UPDATES)

    -   ### setAsRoot$UPDATES

        static final boolean setAsRoot$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.setAsRoot$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.suggest$UPDATES)

    -   ### adjustCounter$UPDATES

        static final boolean adjustCounter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.adjustCounter$UPDATES)

    -   ### moveKnowledgeCenter$UPDATES

        static final boolean moveKnowledgeCenter$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.moveKnowledgeCenter$UPDATES)

    -   ### moveKnowledgeCenters$UPDATES

        static final boolean moveKnowledgeCenters$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.moveKnowledgeCenters$UPDATES)

    -   ### validateTypedValues$UPDATES

        static final boolean validateTypedValues$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.validateTypedValues$UPDATES)

    -   ### getIdByUuid$UPDATES

        static final boolean getIdByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getIdByUuid$UPDATES)

    -   ### getIdsByUuid$UPDATES

        static final boolean getIdsByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getIdsByUuid$UPDATES)

    -   ### getDatatypeIds$UPDATES

        static final boolean getDatatypeIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getDatatypeIds$UPDATES)

    -   ### getDocumentInputStream$UPDATES

        static final boolean getDocumentInputStream$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.getDocumentInputStream$UPDATES)

    -   ### uploadDocument$UPDATES

        static final boolean uploadDocument$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.content.ContentService.uploadDocument$UPDATES)

-   ## Method Details

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Get the application name (in this case, "Appian Collaboration").

        Returns:

        the name of the application

    -   ### generateSearchIndex

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateSearchIndex([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp\_)

        Generates search index text file bodies for: "content". Fields in generated file:

        -   id
        -   n - name
        -   d - description
        -   t - type
        -   st - state
        -   sec - security
        -   vis - visibility
        -   crt - creator
        -   tsc - timestamp created
        -   tsm - timestamp modified
        -   ed - expiration days
        -   edt - expiration date timestamp
        -   b - bytes
        -   p - parent

        Parameters:

        `timestamp_` - only include content modified since timestamp (may be `null` for all)

        Returns:

        a string representation of the URI of the search index output

    -   ### setAdministratorGroup

        void setAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Set the group that will be considered administrators for all content (appadmins).

        Parameters:

        `groupId_` - the ID of the group to set as administrators

        See Also:

        -   [`getAdministratorGroup()`](#getAdministratorGroup\(\))

    -   ### getAdministratorGroup

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAdministratorGroup()

        Members of this group will be considered administrators for all content (appadmins).

        Returns:

        the ID of the group set as administrators

        See Also:

        -   [`setAdministratorGroup(Long)`](#setAdministratorGroup\(java.lang.Long\))

    -   ### activateUserSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memberOfGroups\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] adminOfGroups\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") userTypeSysAdmin\_)

        Deprecated.

        Notify the Content server of group membership and application privileges.

        Parameters:

        `memberOfGroups_` - ID(s) of groups for which the current user is a member

        `adminOfGroups_` - ID(s) of groups for which the current user is an admin

        `userTypeSysAdmin_` - user type (0 basic; 1 sysadmin)

    -   ### validateGroupMembership

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memberOfGroups\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] adminOfGroups\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        No longer necessary with credential system

        Validate that the group membership passed is incorrect or incomplete (whether activateUserSession needs to be called).

        Parameters:

        `memberOfGroups_` - ID(s) of groups for which the current user is a member

        `adminOfGroups_` - ID(s) of groups for which the current user is an admin

        Returns:

        whether activateUserSession needs to be called

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

    -   ### resetGroupMembership

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void resetGroupMembership([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp\_)

        Deprecated.

        No longer necessary with credential system

        Clear group membership for users who have not logged in since the given timestamp.

        Parameters:

        `timestamp_` - group membership will be cleared for users who have not logged in since this timestamp

    -   ### notifyUserCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUserCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Deprecated.

        done automatically by UserService.createUser

        Notify the server that the user was created.

        Parameters:

        `userName_` - username of the user that was created

    -   ### notifyUsersCreation

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userNames\_)

        Deprecated.

        done automatically by UserService.createUser

        Notify the server that the users were created.

        Parameters:

        `userNames_` - usernames of the users that were created

    -   ### notifyGroupDeletion

        void notifyGroupDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Notify the server that a group was deleted so any new group with the same id will not assume the same permissions.

        Parameters:

        `groupId_` - the ID of the group that was deleted

    -   ### notifyGroupsDeletion

        void notifyGroupsDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Notify the server that groups were deleted so any new group with the same id will not assume the same permissions.

        Parameters:

        `groupIds_` - the IDs of the groups that were deleted

    -   ### setUserSpaceUsage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setUserSpaceUsage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") bytesUsed\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        User quotas have been removed. Calls to this method will be ignored.

        Set the amount of space (in bytes) currently used by the specified user. This will override the automatically tracked value, and automatic tracking will continue from this value. Application administrator (sysadmin) privileges are required for the user calling this method.

        Parameters:

        `username_` - the username of the user for which to set the space usage

        `bytesUsed_` - the number of bytes that user has used. Passing a negative value will throw an IllegalArgumentException.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        See Also:

        -   [`getUserSpaceUsage()`](#getUserSpaceUsage\(\))

    -   ### getUserSpaceUsage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserSpaceUsage()

        Deprecated.

        User quotas have been removed. This method will always return 0

        Get the amount of space (in bytes) currently used by the specified user.

        Returns:

        the number of bytes currently used

        See Also:

        -   [`setUserSpaceUsage(String, Long)`](#setUserSpaceUsage\(java.lang.String,java.lang.Long\))

    -   ### setUserSpaceAvailable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setUserSpaceAvailable([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") bytes\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        User quotas have been removed. Calls to this method will be ignored.

        Set the remaining disk space (in bytes) available to the specified user. Application administrator (sysadmin) privileges are required for the user calling this method.

        Parameters:

        `username_` - the username of the user for which to set the quota

        `bytes_` - the number of bytes to set the quota to. Passing 0 will cause it to use the value set for server.conf.collaboration.DEFAULTSPACE in custom.properties. Passing a negative value will throw an IllegalArgumentException.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        See Also:

        -   [`getUserSpaceAvailable()`](#getUserSpaceAvailable\(\))

    -   ### getUserSpaceAvailable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserSpaceAvailable()

        Deprecated.

        User quotas have been removed. This method will always return [`- 1`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html#MAX_VALUE "class or interface in java.lang")

        Get the total available space (quota) in bytes for the user. In order to get the remaining available space, please subtract the available space to the remaining space: Example: `Long availableSpace = contentService.getUserSpaceAvailable() - contentService.getUserSpaceUsage();`

        Returns:

        the current user's disk quota

        See Also:

        -   [`setUserSpaceAvailable(String, Long)`](#setUserSpaceAvailable\(java.lang.String,java.lang.Long\))

    -   ### getUserSpaceAvailableForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getUserSpaceAvailableForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Deprecated.

        User quotas have been removed. This method will always return [`- 1`](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html#MAX_VALUE "class or interface in java.lang")

        Get the total available space (quota, in bytes) available to the specified user.

        Parameters:

        `username` - the username of the user for which to get the quota

        Returns:

        the specified user's disk quota

        See Also:

        -   [`getUserSpaceAvailable()`](#getUserSpaceAvailable\(\))
        -   [`setUserSpaceAvailable(String, Long)`](#setUserSpaceAvailable\(java.lang.String,java.lang.Long\))

    -   ### getImageIdsForUsers

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getImageIdsForUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Get the image document ids for the given users.

        Parameters:

        `usernames` - the usernames for which to query

        Returns:

        the id of the image document for each user, with nulls where an image was not found or the user is invalid

    -   ### getThumbnailIdsForUsers

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getThumbnailIdsForUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames, int size)

        Get the document ids of the thumbnail images of the given size for the given users.

        Parameters:

        `usernames` - the usernames for which to query

        `size` - the thumbnail size (width in pixels)

        Returns:

        the id of the thumbnail image document for each user, with nulls where an image of the given size was not found or the user is invalid

    -   ### validate

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") validate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Gets the type of the content specified.

        Parameters:

        `id_` - the ID of the content

        Returns:

        the type of the content. Will return 0 if the content does not exist, and -1 if the content is type 0 (atypical)

    -   ### validate

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] validate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Gets the types of the content specified.

        Parameters:

        `ids_` - the IDs of the content

        Returns:

        the types of the content in the same order as the IDs passed in. Will return 0 if the content does not exist, and -1 if the content is type 0 (atypical)

    -   ### createApproval

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") createApproval([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Attempts to create content, and gets the approval status back in an `Approval` bean. See [`create(Content[], Integer)`](#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)).

        Parameters:

        `content_` - the content to create

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the approval status in an `Approval` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

    -   ### createApproval

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") createApproval([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Attempts to create content, and gets the approval statuses back in an `Approval` bean.

        Parameters:

        `contents_` - the content to create

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the approval status in an `Approval` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

    -   ### create

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") create([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Creates a content object. If the Content object is of type [`ContentConstants.TYPE_DOCUMENT`](ContentConstants.html#TYPE_DOCUMENT), you must separately create the actual file on disk in the path specified by the `internalFileName` property of the object. This method does not create the file on disk.

        Parameters:

        `content_` - the content to create

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the ID of the content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

    -   ### create

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] create([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Creates content. The following fields are required:

        -   name
        -   parent

        The following fields will be populated if they are provided:

        -   attributes
        -   description
        -   expirationDays
        -   expirationTimestamp
        -   extension
        -   fileSystemId
        -   forum
        -   metadataIds
        -   name
        -   parent
        -   partition
        -   security
        -   size
        -   subtype
        -   type
        -   uuid
        -   visibility

        All other fields are ignored.

        Parameters:

        `contents_` - an array of Content objects

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the IDs of the content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

    -   ### createVersion

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") createVersion([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Creates a new version of content. This call does not update the parent of the content. If the new version has a new parent, make sure to call [`move(Long, Long)`](#move\(java.lang.Long,java.lang.Long\)). The new version will have the same security role map as its parent, even if the content is not otherwise set to inherit security. For content that should not inherit security from its parent, call [`setRoleMap(java.lang.Long, com.appiancorp.suiteapi.content.ContentRoleMap, java.lang.Boolean)`](#setRoleMap\(java.lang.Long,com.appiancorp.suiteapi.content.ContentRoleMap,java.lang.Boolean\)) after creating the new version. When creating a new version of a Document, set the file system id on the document to be auto-allocated before passing it to createVersion. The following code example demonstrates using this method:

         `Document doc = contentService.getVersion(docId, ContentConstants.VERSION_CURRENT);  // prepare the document, indicating the service to assign a new file path  // to the new version of the document  doc.setFileSystemId(ContentConstants.ALLOCATE_FSID);   // create a new version  Approval a = contentService.createVersion(doc, unique);  // get the file path of the new version  Long newVersionContentId = a.getId()[0];  Document newDocumentVersion = cs.download(newVersionContentId, VERSION_CURRENT, false);  try (OutputStream outStream = newDocumentVersion.getOutputStream()) {    IOUtils.copy(inStream, outStream);  }`

        Parameters:

        `content_` - a Content object

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the approval status in an `Approval` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### createVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approval](Approval.html "class in com.appiancorp.suiteapi.content") createVersion([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Use [`createVersion(Content, Integer)`](#createVersion\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\))

        Creates new versions of content. This may be used to create another version of any piece of Content. Each new Content bean passed into this function must be just like the existing one, except where you want the modifications to be. This is really a create, except that the version chain is extended to include this new Content. The id field in Content is used to determine which piece of content to create a new version of; any id in the version chain will suffice. The fields updated are the same list as those for create. This call does not update the parent of the contents. If the new versions have new parents, make sure to call [`move(Long[], Long)`](#move\(java.lang.Long%5B%5D,java.lang.Long\)) for bulk move or [`move(Long, Long)`](#move\(java.lang.Long,java.lang.Long\)) individually if each has a different parent.

        Parameters:

        `contents_` - the content to create as new versions

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the approval status in an `Approval` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### upload

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ContentOutputStream](ContentOutputStream.html "class in com.appiancorp.suiteapi.content") upload([Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") doc, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        since 23.2. Use [`uploadDocument(Document, Integer)`](#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)) instead

        Creates a document and provides an output stream to which the document's content should be written. The document is created using the [`createApproval(Content, Integer)`](#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) API. The caller must write the document's data to the returned output stream and complete the upload by calling [`ContentOutputStream.close()`](ContentOutputStream.html#close\(\)). Invoking the stream's close method will calculate the size of the data written to the stream and save it as metadata for the document.

        Parameters:

        `doc` - The Document to create.

        `unique` - How unique the name must be.

        Returns:

        The output stream to which the document's data should be written.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### importContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] importContent([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        This API is no longer supported and will be removed in the next release. Only objects that are exported using the Applications import/export will be importable in the next release.

        Imports content. For each content bean, if the UUID exists already in the same location, this function calls [`createVersion(Content[], Integer)`](#createVersion\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)). Otherwise, it calls [`create(Content[], Integer)`](#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) This does a create or createVersion, as necessary.

        Parameters:

        `contents_` - an array of Content objects to import

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Returns:

        the IDs of the new content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the UUID of any of the content items already exists or if the same UUID is passed in for several content items

    -   ### importValidate

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] importValidate([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks the validity of the Content items for import, returning an import status for each.

        Parameters:

        `contents_` - an array of Content objects to validate

        Returns:

        one of [`ContentConstants.IMPORT_VALID`](ContentConstants.html#IMPORT_VALID), [`ContentConstants.IMPORT_INVALID_PRIVILEGE`](ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [`ContentConstants.IMPORT_UUID_EXISTS_ELSEWHERE`](ContentConstants.html#IMPORT_UUID_EXISTS_ELSEWHERE), [`ContentConstants.IMPORT_INVALID_PRIVILEGE`](ContentConstants.html#IMPORT_INVALID_PRIVILEGE), [`ContentConstants.IMPORT_NAME_EXISTS_WITHIN_TYPE`](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_TYPE), or [`ContentConstants.IMPORT_NAME_EXISTS_WITHIN_PARENT`](ContentConstants.html#IMPORT_NAME_EXISTS_WITHIN_PARENT)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no more available space

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### getContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content") getContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getVersion(Long, Integer)`](#getVersion\(java.lang.Long,java.lang.Integer\)) instead

        .

        Parameters:

        `id_` - the ID of the content

        Returns:

        the `Content` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getContent

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets Contents by id. This will get the exact Content items specified, including the specific version implied by the Content id. If you want to get only the latest item of Content, use [`getVersion(Long, Integer)`](#getVersion\(java.lang.Long,java.lang.Integer\)) with version number [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) instead. If retrieving a [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") the `internalFilename` property won't be populated; use [`download(Long, Integer, Boolean)`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)) instead.

        Parameters:

        `ids_` - the IDs of the content

        Returns:

        the `Content` beans

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getContentPaging(Long[], int, int, Integer, Integer)`](#getContentPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getContentList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getContentList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Does the same thing as [`getContent(Long[])`](#getContent\(java.lang.Long%5B%5D\)), except it takes a type mask and returns error codes instead of throwing exceptions.

        Parameters:

        `ids_` - the IDs of the content

        `typemask_` - the types of content to return

        Returns:

        a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") of [`Content`](Content.html "class in com.appiancorp.suiteapi.content") beans.

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getContentPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getContentPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getVersionsPaging(Long[], Integer, int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long%5B%5D,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Does the same thing as [`getContent(Long[])`](#getContent\(java.lang.Long%5B%5D\)), except it pages and returns error codes instead of throwing exceptions.

        Parameters:

        `ids_` - the IDs of the content

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing the list of `Content` objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getContent(Long[])`](#getContent\(java.lang.Long%5B%5D\))

    -   ### getContentTree

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getContentTree([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootContentId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxDepth\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getContentTreePaging(Long, Integer, Integer, Integer, int, int, Integer, Integer)`](#getContentTreePaging\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get the content tree starting from the specified root. Returns the list of contents ordered by a depth first traversal. This populates the depth field in the `Content` beans.

        Parameters:

        `rootContentId_` - (atomic efficient)

        `maxDepth_` - the maximum depth to traverse the tree

        `typemask_` - only return contents that match this typemask

        `accessLevel_` - the minimum access level required (one of [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), and [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN)

        Returns:

        list of Content (Content but with additional depth field filled in)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        See Also:

        -   [`getContentTreePaging(Long, Integer, Integer, Integer, int, int, Integer, Integer)`](#getContentTreePaging\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getContentTreePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getContentTreePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootContentId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxDepth\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") accessLevel\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the content tree, and page the results. Returns the list of contents ordered by a depth first traversal. This populates the depth field in the `Content` beans.

        Parameters:

        `rootContentId_` - (atomic efficient)

        `maxDepth_` - the maximum depth to traverse the tree

        `typemask_` - only return contents that match this typemask

        `accessLevel_` - (0 is view, 1 is edit, 2 is admin)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of Content (Content but with additional depth field filled in)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        See Also:

        -   [`getContentTree(Long, Integer, Integer, Integer)`](#getContentTree\(java.lang.Long,java.lang.Integer,java.lang.Integer,java.lang.Integer\))

    -   ### getContentWhereViewable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getContentWhereViewable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getContentWhereViewablePaging(Long[], int, int, Integer, Integer)`](#getContentWhereViewablePaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the specified content where viewable, rather than giving an error that the content is not viewable. Note: The length of the array of `Content` beans returned may not be the same length as the array of IDs passed in.

        Parameters:

        `ids_` - the IDs of the content

        Returns:

        an array of the `Content` beans that are viewable

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        See Also:

        -   [`getContentWhereViewablePaging(Long[], int, int, Integer, Integer)`](#getContentWhereViewablePaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getContentIdsWhereViewable

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getContentIdsWhereViewable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the specified content IDs where viewable, rather than giving an error that the content is not viewable. Note: The length of the array of IDs returned may not be the same length as the array of IDs passed in.

        Parameters:

        `ids_` - the IDs of the content

        Returns:

        an array of the IDs of the viewable content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### getContentWhereViewablePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getContentWhereViewablePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the specified content where viewable, rather than giving an error that the content is not viewable. Note: The number of results returned may not be the same length as the array of IDs passed in.

        Parameters:

        `ids_` - the IDs of the content

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        an array of the `Content` beans that are viewable

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        See Also:

        -   [`getContentWhereViewable(Long[])`](#getContentWhereViewable\(java.lang.Long%5B%5D\))

    -   ### getContentUrl

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getContentUrl(long contentId)

        Gets the URL for a given content.

        Parameters:

        `contentId` - the internal identifier of the content

        Returns:

        the complete Tempo URL for the content

    -   ### getOpaqueContentUri

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getOpaqueContentUri(long contentId)

        Gets the opaque id for a given content.

        Parameters:

        `contentId` - the internal identifier of the content

        Returns:

        the opaque uri for the content

    -   ### getVersion

        [Content](Content.html "class in com.appiancorp.suiteapi.content") getVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified version of the content. If retrieving a [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") the `internalFilename` property won't be populated; use [`download(Long, Integer, Boolean)`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)) instead.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `versionNumber_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the `Content` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersion

        [Content](Content.html "class in com.appiancorp.suiteapi.content") getVersion(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified version of the content. If retrieving a [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") the `internalFilename` property won't be populated; use [`download(Long, Integer, Boolean)`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\)) instead.

        Parameters:

        `uuid` - the content UUID (any UUID within a version chain will do), as if by getIdByUuid

        `versionNumber` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the `Content` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the specified version of a bunch of pieces of content.

        Parameters:

        `ids_` - the content ids (any id within a version chain will do)

        `versionNumber_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the `Content` beans

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        See Also:

        -   [`getVersionsPaging(Long[], Integer, int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long%5B%5D,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getVersions

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionNumbers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified versions of a particular piece of content.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `versionNumbers_` - the version numbers of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the `Content` beans

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        See Also:

        -   [`getVersionsPaging(Long, Integer[], int, int, Integer, Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getVersionsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getVersionsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified version of a bunch of pieces of content.

        Parameters:

        `ids_` - the content ids (any id within a version chain will do)

        `versionNumber_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing the list of `Content` objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersionsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getVersionsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionNumbers\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified versions of a particular piece of content.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `versionNumbers_` - the version numbers of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") of [`Content`](Content.html "class in com.appiancorp.suiteapi.content") objects. In the case where there is an exception (such as access restriction) the ResultList.getResultCodes() will have an entry for every id passed to it, but the [`Result.getResults()`](../common/Result.html#getResults\(\)) will only have an entry for every valid result returned. i.e. ResultList.getResultCodes().length does not always equal Result.getResults().length. They are equal only when \*all\* items in the ResultList array are >= ResultList.CODE\_VALID.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersionsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getVersionsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves the specified version of the content objects identified by the given ids and of the given type. Like all [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") APIs, this method returns error codes instead of throwing exceptions. Note that the result array is not castable to something other than Content\[\]. The results should then be cast individually.

        Parameters:

        `ids` - The ids of the content objects to retrieve.

        `versionNumber` - The version of the content objects to retrieve.

        `typemask` - The type of content objects to retrieve.

        Returns:

        A [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") of [`Content`](Content.html "class in com.appiancorp.suiteapi.content") objects. In the case where there is an exception (such as access restriction) the ResultList.getResultCodes() will have an entry for every id passed to it, but the [`Result.getResults()`](../common/Result.html#getResults\(\)) will only have an entry for every valid result returned. i.e. ResultList.getResultCodes().length does not always equal Result.getResults().length. They are equal only when all items in the ResultList array are >= ResultList.CODE\_VALID.

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid type is passed in

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version number is passed in

    -   ### getVersionId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getVersionId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the ID of the specified version of the content.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `versionNumber_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the ID

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersionId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getVersionId(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the ID of the specified version of the content.

        Parameters:

        `uuid` - the content UUID (any UUID within a version chain will do), as if by getIdByUuid

        `versionNumber` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the ID

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersionIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getVersionIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified version of a bunch of pieces of content.

        Parameters:

        `ids_` - the content id (any id within a version chain will do)

        `versionNumber_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the IDs

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getVersionIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getVersionIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionNumbers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the specified versions of a particular piece of content.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `versionNumbers_` - the version number of content to get (use [`ContentConstants.VERSION_ORIGINAL`](ContentConstants.html#VERSION_ORIGINAL) to get the first version of the content and [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the current version of the content)

        Returns:

        the IDs

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getAllVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getAllVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getAllVersionsPaging(Long, int, int, Integer, Integer)`](#getAllVersionsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets all of the versions of a particular versioned content item. It will return empty for an unversioned content item.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        Returns:

        all of the versions of the content specified, or an empty array if the content is unversioned

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getAllVersionsPaging(Long, int, int, Integer, Integer)`](#getAllVersionsPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getAllVersionsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllVersionsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets all of the versions of a particular versioned content item. It will return empty for an unversioned content item.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing the list of `Content` objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getAllVersions(Long)`](#getAllVersions\(java.lang.Long\))

    -   ### getAllVersionIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAllVersionIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the IDs of all of the versions of a particular versioned content item. It will return empty for an unversioned content item.

        Parameters:

        `id_` - the content id (any id within a version chain will do)

        Returns:

        the Ids of the versions of the content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### download

        [Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge")\[\] download([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpired\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a piece of content and log the transaction if logging is enabled. If the content passed in is a document, this method functions similarly to [`getVersion(java.lang.Long, java.lang.Integer)`](#getVersion\(java.lang.Long,java.lang.Integer\)), but the download is logged if logging is enabled. If the content passed in is a container (e.g., a folder), all documents inside the container will be returned, and each document obtained is logged if logging is enabled. This function will only be used for Knowledge content.

        Parameters:

        `id_` - the id of content to download

        `versionNumber_` - the version number of content to download

        `includeExpired_` - whether to include expired content

        Returns:

        the documents

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getInternalFilename

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getInternalFilename([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        since 23.2. Use [`getDocumentInputStream(long)`](#getDocumentInputStream\(long\)) for reads and [`uploadDocument(Document, Integer)`](#uploadDocument\(com.appiancorp.suiteapi.knowledge.Document,java.lang.Integer\)) for writes, or call [`and use supported APIs on {@link com.appiancorp.suiteapi.knowledge.Document}`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))

        Gets the internal filename (physical location on disk) for a document. To always get the internal filename for the most current version, call [`getVersionId(Long, Integer)`](#getVersionId\(java.lang.Long,java.lang.Integer\)) with [`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT) to get the most current Id.

        Parameters:

        `id_` - the content ID of the version of the document; use [`getVersionId(Long, Integer)`](#getVersionId\(java.lang.Long,java.lang.Integer\)) to obtain the id of the version of the document

        Returns:

        a string representation of the internal filename

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getInternalFilenames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getInternalFilenames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        since 23.2. Use [`getDocumentInputStream(long[])`](#getDocumentInputStream\(long%5B%5D\))

        Gets the internal filenames (physical locations on disk) for a set of documents.

        Parameters:

        `ids_` - the content IDs of the versions of the documents; use [`getVersionIds(Long, Integer[])`](#getVersionIds\(java.lang.Long,java.lang.Integer%5B%5D\)) to obtain the ids of the versions of the document

        Returns:

        the string representations of the internal filenames

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getExternalFilename

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getExternalFilename([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the external filename (the name that the file would be saved as by the client, or the name within a .zip file) of a document.

        Parameters:

        `id_` - the content ID

        Returns:

        the string representation of the external filename

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getExternalFilenames

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getExternalFilenames([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the external filenames (the name that the file would be saved as by the client, or the name within a .zip file) of a set of document.

        Parameters:

        `ids_` - the content IDs

        Returns:

        the string representations of the external filenames

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getByPath

        [Content](Content.html "class in com.appiancorp.suiteapi.content") getByPath([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the content at the specified path relative to the given root.

        Parameters:

        `root_` - the id of the root Content item

        `path_` - the path relative to the root. containers are separated by "/"

        Returns:

        the `Content` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getIdByPath

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIdByPath([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the ID of the content at the specified path relative to the given root.

        Parameters:

        `root_` - the id of the root Content item

        `path_` - the path relative to the root. containers are separated by "/"

        Returns:

        the ID

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getParent

        [Content](Content.html "class in com.appiancorp.suiteapi.content") getParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the parent of the specified content.

        Parameters:

        `id_` - the id of the Content item

        Returns:

        the `Content` bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getParents

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getParents([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the parents of the specified content items.

        Parameters:

        `ids_` - the id of the Content items

        Returns:

        the `Content` beans

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getParentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the parents of the specified content items.

        Parameters:

        `id_` - the id of the Content item

        Returns:

        the ID of the parent

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getParentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getParentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets the IDs of the parents of the specified content items.

        Parameters:

        `ids_` - the ids of the Content items

        Returns:

        the IDs of the parents

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### hasNoChildren

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") hasNoChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether the specified container has no children. This is the inverse of [`hasChildren(Long)`](#hasChildren\(java.lang.Long\)).

        Parameters:

        `containerId_` - the ID of the container

        Returns:

        true if the container has no children; false if the container has children

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### haveNoChildren

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] haveNoChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether each of the specified containers has no children. This is the inverse of [`haveChildren(Long[])`](#haveChildren\(java.lang.Long%5B%5D\)).

        Parameters:

        `containerIds_` - the IDs of the containers

        Returns:

        true if the container has no children; false if the container has children

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### hasNoChildrenOfType

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") hasNoChildrenOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether the specified container has no children of the specified type(s).

        Parameters:

        `containerId_` - the ID of the container

        `typemask_` - specifies which content types to look for

        Returns:

        true if container has no children of given type(s), false if it does have children

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### haveNoChildrenOfType

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] haveNoChildrenOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether each of the specified containers has no children of the specified type(s).

        Parameters:

        `containerIds_` - the IDs of the containers

        `typemask_` - specifies which content types to look for

        Returns:

        for each container, true if container has no children of given type(s), false if it does have children

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### hasChildren

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") hasChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether the specified container has children. This is the inverse of [`hasNoChildren(Long)`](#hasNoChildren\(java.lang.Long\))

        Parameters:

        `containerId_` - the ID of the container

        Returns:

        true if container has children, false if it does not

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### haveChildren

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] haveChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether each of the specified containers has children. This is the inverse of [`haveNoChildren(Long[])`](#haveNoChildren\(java.lang.Long%5B%5D\)).

        Parameters:

        `containerIds_` - the IDs of the containers

        Returns:

        for each container, true if container has children, false if it does not

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### haveChildren

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] haveChildren([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] containers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether each of the specified containers has children. This method extracts the IDs from the `Content` beans passed in, and calls [`haveChildren(Long[])`](#haveChildren\(java.lang.Long%5B%5D\)) with those IDs.

        Parameters:

        `containers_` - the containers to check

        Returns:

        for each container, true if container has children, false if it does not

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### hasChildrenOfType

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") hasChildrenOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether the specified container has children of a the specified type(s).

        Parameters:

        `containerId_` - the ID of the container

        `typemask_` - children types to look for

        Returns:

        true if container has children of the specified type(s), false if it does not

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### haveChildrenOfType

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] haveChildrenOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Checks whether the specified container has children of a the specified type(s).

        Parameters:

        `containerIds_` - the IDs of the containers

        `typemask_` - children types to look for

        Returns:

        for each container, true if container has children, false if it does not

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getChildrenTypesOfType

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getChildrenTypesOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns a typemask of all children types found within a container.

        Parameters:

        `containerId_` - container id

        `typemask_` - children types to look for

        Returns:

        typemask of the children found

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getChildrenTypesOfType

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getChildrenTypesOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns typemasks of all children types found within each container.

        Parameters:

        `containerIds_` - container ids

        `typemask_` - children types to look for

        Returns:

        typemasks of the children found

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getChildrenTypes

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getChildrenTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns a typemask of all children types found within a container.

        Parameters:

        `containerId_` - container id

        Returns:

        typemask of the children found

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getChildrenTypes

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getChildrenTypes([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns typemasks of all children types found within each container.

        Parameters:

        `containerIds_` - container ids

        Returns:

        typemasks of the children found

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getChildrenTypes

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getChildrenTypes([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] containers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns typemasks of all children types found within each container.

        Parameters:

        `containers_` - containers

        Returns:

        typemasks of the children found

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### populateTypesOfChildren

        void populateTypesOfChildren([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] containers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Populate the typesOfChildren field in the content beans you pass in.

        Parameters:

        `containers_` - list of containers

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getChildren

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Returns the children of a container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - one of [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT), [`ContentConstants.GC_MOD_LINKS`](ContentConstants.html#GC_MOD_LINKS), [`ContentConstants.GC_MOD_NORMAL`](ContentConstants.html#GC_MOD_NORMAL), or [`ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN`](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getChildrenIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getChildrenIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns the ids of the children of a container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - one of [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT), [`ContentConstants.GC_MOD_LINKS`](ContentConstants.html#GC_MOD_LINKS), [`ContentConstants.GC_MOD_NORMAL`](ContentConstants.html#GC_MOD_NORMAL), or [`ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN`](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN)

        Returns:

        content ids\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getChildrenPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getChildrenPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns the children of a container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - one of [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT), [`ContentConstants.GC_MOD_LINKS`](ContentConstants.html#GC_MOD_LINKS), [`ContentConstants.GC_MOD_NORMAL`](ContentConstants.html#GC_MOD_NORMAL), or [`ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN`](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        ResultPage of Content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getChildren(Long, ContentFilter, Integer)`](#getChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))

    -   ### getAdvertisedChildren

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getAdvertisedChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getAdvertisedChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAdvertisedChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Returns the advertised children of a container. This includes the content items normally visible as well as those with the visibility bit VIS\_ADVERTISE set to true.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - one of [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT), [`ContentConstants.GC_MOD_LINKS`](ContentConstants.html#GC_MOD_LINKS), [`ContentConstants.GC_MOD_NORMAL`](ContentConstants.html#GC_MOD_NORMAL), or [`ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN`](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAdvertisedChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAdvertisedChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getAdvertisedChildrenIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdvertisedChildrenIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### getAdvertisedChildrenPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdvertisedChildrenPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### getEditablePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getEditablePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get Editable Content objects paging. Retrieves all editable objects from a give root, not just direct children.

        Parameters:

        `rootId_` - root content id: atomic

        `filter_` - applies to what children are returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        ResultPage of Content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getEditable(Long, ContentFilter)`](#getEditable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getAdministratablePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAdministratablePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get Administratable Content objects paging. Retrieves all objects from a given root that the user has admin rights to, not just direct children.

        Parameters:

        `rootId_` - root content id: atomic

        `filter_` - applies to what children are returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        ResultPage of Content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAdministratable(Long, ContentFilter)`](#getAdministratable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getViewablePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getViewablePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get Viewable Content objects paging. Retrieves all objects from a given root that the user has viewer rights to, not just direct children.

        Parameters:

        `rootId_` - root content id: atomic

        `filter_` - applies to what children are returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        ResultPage of Content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getViewable(Long, ContentFilter)`](#getViewable\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getAllChildren

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getAllChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getAllChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAllChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Returns all descendants in a recursive descent from root.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - one of [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT), [`ContentConstants.GC_MOD_LINKS`](ContentConstants.html#GC_MOD_LINKS), [`ContentConstants.GC_MOD_NORMAL`](ContentConstants.html#GC_MOD_NORMAL), or [`ContentConstants.GC_MOD_POPULATE_TYPES_OF_CHILDREN`](ContentConstants.html#GC_MOD_POPULATE_TYPES_OF_CHILDREN)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAllChildrenPaging(Long, ContentFilter, Integer, int, int, Integer, Integer)`](#getAllChildrenPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getAllChildrenIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAllChildrenIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all descendant ids in a recursive descent from root.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getAllChildrenPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllChildrenPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") modifiers\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all descendants in a recursive descent from root.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `modifiers_` - [`ContentConstants.GC_MOD_DRAFT`](ContentConstants.html#GC_MOD_DRAFT)

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAllChildren(Long, ContentFilter, Integer)`](#getAllChildren\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Integer\))

    -   ### getAllChildrenAndVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getAllChildrenAndVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getAllChildrenAndVersionsPaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAllChildrenAndVersionsPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get all versions of all children in a given container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        Returns:

        all versions of all children

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAllChildrenAndVersionsPaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAllChildrenAndVersionsPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getAllChildrenAndVersionIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAllChildrenAndVersionIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get ids of all versions of all children in a given container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        Returns:

        all versions of all children

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getAllChildrenAndVersionsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllChildrenAndVersionsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get all versions of all children in a given container.

        Parameters:

        `containerId_` - root content id

        `filter_` - applies to what children are returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        all versions of all children

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAllChildrenAndVersions(Long, ContentFilter)`](#getAllChildrenAndVersions\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getNumberOfChildren

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getNumberOfChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") containerId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This returns the number of children matching the typemask.

        Parameters:

        `containerId_` - root content id(s)

        `typemask_` - specifies which content types to look for

        Returns:

        integer

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getNumberOfChildren

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getNumberOfChildren([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] containerIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This returns the number of children matching the typemask for each root id specified.

        Parameters:

        `containerIds_` - root content id(s)

        `typemask_` - specifies which content types to look for

        Returns:

        integer

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getParentsToRoot

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getParentsToRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        This returns all of direct ancestors of a node, starting with the node's parent and tracing up to the root.

        Parameters:

        `id_` - content id

        `typemask_` - specifies which content types to return

        Returns:

        content list of parent path to root; only matching types are included. This goes from parent to parent, ending in the root.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getParentsToRootIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getParentsToRootIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        This returns ids of all of direct ancestors of a node, starting with the node's parent and tracing up to the root.

        Parameters:

        `id_` - content id

        `typemask_` - specifies which content types to return

        Returns:

        content ids of parent path to root; only matching types are included. This goes from parent to parent, ending in the root.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getParentsFromRoot

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getParentsFromRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This returns all of direct ancestors of a node, starting with the root and tracing down to the node's parent.

        Parameters:

        `id_` - content id

        `typemask_` - specifies which content types to return

        Returns:

        content list of parent path to root; only matching types are included. This goes from root down to id.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getParentsFromRootIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getParentsFromRootIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This return ids of all of direct ancestors of a node, starting with the root and tracing down to the node's parent.

        Parameters:

        `id_` - content id

        `typemask_` - specifies which content types to return

        Returns:

        content ids of parent path to root; only matching types are included. This goes from parent to parent, ending in the root.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### updateFields

        void updateFields([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] fields\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Updates the specified fields of a content item's LATEST version. **To move all the versions of a content use [`move(Long, Long)`](#move\(java.lang.Long,java.lang.Long\))**

        Parameters:

        `content_` - Content object to update

        `fields_` - Integer\[\] of field names to update; others except id ignored.

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if parent refers to self

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have the permissions to update the content

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### updateVersionFields

        void updateVersionFields([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] fields\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Updates the specified fields of a content item's specific version. **To move all the versions of a content use [`move(Long, Long)`](#move\(java.lang.Long,java.lang.Long\))**

        Parameters:

        `content_` - The content object whose data should be used for the update. The id field must be populated to indicate which persisted content object should be updated.

        `versionNumber` - The version of the target content that should be updated.

        `fields_` - The fields to update (other fields in the passed content object will be ignored).

        `unique_` - How unique the name must be, if it's one of the fields being updated (the value must be one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL)).

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced (if creator is updated and invalid)

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if parent refers to self

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have the permissions to update the content

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### updateFields

        void updateFields([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] fields\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Updates the specified fields of the content items. **To move all the versions of the contents use [`move(Long[], Long)`](#move\(java.lang.Long%5B%5D,java.lang.Long\))**

        Parameters:

        `contents_` - Content objects to update

        `fields_` - Integer\[\] of field names to update; others except id ignored.

        `unique_` - how unique the name must be (one of [`ContentConstants.UNIQUE_NONE`](ContentConstants.html#UNIQUE_NONE), [`ContentConstants.UNIQUE_FOR_TYPE`](ContentConstants.html#UNIQUE_FOR_TYPE), [`ContentConstants.UNIQUE_FOR_PARENT`](ContentConstants.html#UNIQUE_FOR_PARENT), or [`ContentConstants.UNIQUE_FOR_ALL`](ContentConstants.html#UNIQUE_FOR_ALL))

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if parent refers to self

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if a content item with the same uuid already exists

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have the permissions to update the content

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content name is not unique according to the unique\_ parameter

    -   ### setSizeOfDocumentVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int setSizeOfDocumentVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") documentContentId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        since 23.2. Writing to a Document via [`DocumentOutputStream`](DocumentOutputStream.html "class in com.appiancorp.suiteapi.content") or [`ContentUploadOutputStream`](ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") will update the Document size metadata automatically upon closing the stream.

        Sets the size property of a Document. This method calculates the size of the data saved for the given Document and saves the value within the Document's metadata (the size can then be retrieved by retrieving the Document's Content object and reading the [`size field`](Content.html#getSize\(\))).

        Parameters:

        `documentContentId` - The id of the target Document. This id must be the content id of the specific version for which the size should be set.

        Returns:

        The size of the Document in bytes.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - If there is no content object with the given id.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user does not have sufficient privileges to update the Document's metadata.

    -   ### updateAllChildrenAndVersionsVisibility

        void updateAllChildrenAndVersionsVisibility([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, boolean maskType, int bitmask) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Update the visibility bitmask for all children and versions of the given id. This is typically used to update the searchability of content. Example to set all ids under contentIdOfKnowledgeCenter as VIS\_SEARCHABLE: updateAllChildrenAndVersionsVisibility(contentIdOfKnowledgeCenter, true, VIS\_SEARCHABLE) Example to clear all ids under contentIdOfKnowledgeCenter from VIS\_SEARCHABLE: updateAllChildrenAndVersionsVisibility(contentIdOfKnowledgeCenter, false, 255-VIS\_SEARCHABLE) This is equivalent to updating the visibility on all ids returned by getAllChildrenAndVersionIds for the given id.

        Parameters:

        `id` -

        `maskType` - false for bitwise AND, true for bitwise OR

        `bitmask` - (0...255) value that will be AND'd or OR'd against visibility flag

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no edit privilege on id

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if id is invalid, deleted or deactivated

        See Also:

        -   [`updateIsSearchableForKnowledgeCenter`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

    -   ### updateAllChildrenAndVersionsExpiration

        void updateAllChildrenAndVersionsExpiration([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") expirationDays) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Update the expiration days for all children and versions of the given id (including the content with the given id). This is typically used to update the expiration of a knowledge center's children. Updating just the individual field will only take effect on newly created children not on existing data; use this method to update existing data. This is equivalent to updating the expirationDays on all ids returned by getAllChildrenAndVersionIds for the given id.

        Parameters:

        `id` -

        `expirationDays` - the number of days after which documents in the knowledge centers will expire. If null, the logid's (typically knowledge center id's) expiration days will be used.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no edit privilege on id

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if id is invalid, deleted or deactivated

        See Also:

        -   [`updateExpirationDaysForKnowledgeCenter`](../collaboration/KnowledgeCenterService.html "interface in com.appiancorp.suiteapi.collaboration")

    -   ### move

        void move([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") destinationParent\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This moves a Content item from one location to another, cutting connection from current parent, setting connection to new parent, updating bytes used in parents. Unlike [`updateFields(Content, Integer[], Integer)`](#updateFields\(com.appiancorp.suiteapi.content.Content,java.lang.Integer%5B%5D,java.lang.Integer\)), it moves all the versions of the content, that supports versioning, i.e. [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge"), [`FreeformRule`](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules"), [`Constant`](../rules/Constant.html "class in com.appiancorp.suiteapi.rules") and `QueryRule`.

        Parameters:

        `id_` - content id(s) to move

        `destinationParent_` - parent under which to move the id: atomic

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the destination is a descendant of the item you are moving

    -   ### move

        void move([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") destinationParent\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This moves Content items from one location to another, cutting connection from current parent, setting connection to new parent, updating bytes used in parents. Unlike [`updateFields(Content[], Integer[], Integer)`](#updateFields\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer%5B%5D,java.lang.Integer\)), it moves all the versions of the contents, that support versioning, i.e. [`Document`](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge"), [`FreeformRule`](../rules/FreeformRule.html "class in com.appiancorp.suiteapi.rules"), [`Constant`](../rules/Constant.html "class in com.appiancorp.suiteapi.rules") and `QueryRule`.

        Parameters:

        `ids_` - content id(s) to move

        `destinationParent_` - parent under which to move the id: atomic

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the destination is a descendant of the item you are moving

    -   ### copy

        [CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")\[\] copy([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        This copies Content item from one location to another. The source is copied to the target using the default CopySource rules (COPY\_INCLUDE\_INTO+COPY\_CREATOR). After copying the Content metadata, the underlying file representation must be copied (or linked, as desired). Loop through the CopyReference return list for the information. The copy method returns CopyReference\[\], as it can make copies of many content items. For each CopyReference you can use the [`CopyReference.copyContents()`](CopyReference.html#copyContents\(\)) API in order to complete the copy.

        Parameters:

        `source` - content id(s) to move

        `target` - parent under which to copy the id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### copy

        [CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")\[\] copy([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        This copies Content item from one location to another. The source ids are copied using default CopySource rules (COPY\_INCLUDE\_INTO+COPY\_CREATOR). After copying the Content metadata, the underlying file representation must be copied (or linked, as desired). Loop through the CopyReference return list for the information. The copy method returns CopyReference\[\], as it can make copies of many content items. For each CopyReference you can use the [`CopyReference.copyContents()`](CopyReference.html#copyContents\(\)) API in order to complete the copy. All sources are processed, forming the desired list to copy, before any action is taken.

        Parameters:

        `source` - content id(s) to move

        `target` - parent under which to copy the id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### copy

        [CopyReference](CopyReference.html "class in com.appiancorp.suiteapi.content")\[\] copy([CopySource](CopySource.html "class in com.appiancorp.suiteapi.content")\[\] source, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") target) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        This copies Content item from one location to another. The CopySource represents explicit rules about the copying. After copying the Content metadata, the underlying file representation must be copied (or linked, as desired). Loop through the CopyReference return list for the information. The copy method returns CopyReference\[\], as it can make copies of many content items. For each CopyReference you can use the [`CopyReference.copyContents()`](CopyReference.html#copyContents\(\)) API in order to complete the copy. All CopySources are processed, forming the desired list to copy, before any action is taken.

        Parameters:

        `source` - content id(s) to move

        `target` - parent under which to copy the id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### delete

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") delete([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes all versions of the given content item.

        Parameters:

        `id_` - content id(s), may be inactive

        `deleteChildren_` - delete children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### delete

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") delete([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes all versions of the given content item.

        Parameters:

        `ids_` - content id(s), may be inactive

        `deleteChildren_` - delete children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### deleteContent

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deleteContent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deleteChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes the given content items.

        Parameters:

        `ids_` - content id(s), may be inactive

        `deleteChildren_` - delete children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### deleteVersion

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deleteVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") children\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes specified version(s) of the given content item.

        Parameters:

        `id_` - content id(s), may be inactive

        `versionNumber_` - version number to delete

        `children_` - delete children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### deleteVersions

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deleteVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionNumbers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") children\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deletes specified version(s) of the given content item.

        Parameters:

        `id_` - content id(s), may be inactive

        `versionNumbers_` - version numbers to delete

        `children_` - delete children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### deactivate

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deactivate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deactivates all versions of the given content item. Does not remove the file from disk and does not log in deletion.log.

        Parameters:

        `id_` - content id(s), may be inactive

        `deactivateChildren_` - deactivate children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

    -   ### deactivate

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deactivate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deactivates all versions of the given content items. Does not remove the file from disk and does not log in deletion.log.

        Parameters:

        `ids_` - content id(s), may be inactive

        `deactivateChildren_` - deactivate children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

    -   ### deactivateVersion

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deactivateVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deactivates specified version of the given content item. Does not remove the file from disk and does not log in deletion.log

        Parameters:

        `id_` - content id(s), may be inactive

        `versionNumber_` - version number to deactivate

        `deactivateChildren_` - deactivate children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

    -   ### deactivateVersions

        [Approval](Approval.html "class in com.appiancorp.suiteapi.content") deactivateVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionNumbers\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") deactivateChildren\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deactivates specified version(s) of the given content item. Does not remove the file from disk and does not log in deletion.log.

        Parameters:

        `id_` - content id(s), may be inactive

        `versionNumbers_` - version numbers to deactivate

        `deactivateChildren_` - deactivate children (1 is do so, 0 is give exception if children)

        Returns:

        Approval Bean (content ids:Long\[\];pending ids;names of pending;logging id of pending;admin users of approver;admin groups of approver)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[HasChildrenException](exceptions/HasChildrenException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content item has children

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### reactivate

        void reactivate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Reactivates the given content item.

        Parameters:

        `id_` - content id(s), may be inactive

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### reactivate

        void reactivate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Reactivates the given content items.

        Parameters:

        `ids_` - content id(s), may be inactive

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getInactive

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getInactive([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getInactivePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getInactivePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets all inactive content items within the specified root.

        Parameters:

        `root_` - content id: atomic

        `filter_` - only content matching the filter will be returned

        Returns:

        list of inactive content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getInactivePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getInactivePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getInactiveIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInactiveIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets all inactive content ids within the specified root.

        Parameters:

        `root_` - content id: atomic

        `filter_` - only content matching the filter will be returned

        Returns:

        list of inactive content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getInactiveIdsNoSystem

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getInactiveIdsNoSystem([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets all inactive content ids within the specified root but filters out system ids.

        Parameters:

        `root_` - content id: atomic

        `filter_` - only content matching the filter will be returned

        Returns:

        list of inactive content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getInactivePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getInactivePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Gets all inactive content items within the specified root.

        Parameters:

        `root_` - content id: atomic

        `filter_` - only content matching the filter will be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of inactive content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getInactive(Long, ContentFilter)`](#getInactive\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getMyInactiveIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getMyInactiveIds()

        This retrieves the content ids in the 'Recycle Bin/Trashcan' of the current user.

        Returns:

        ids of deactivated Content items created by the current user

    -   ### getMyInactive

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getMyInactive()

        Deprecated.

        use [`getMyInactivePaging(int, int, Integer, Integer)`](#getMyInactivePaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        This retrieves the content items in the 'Recycle Bin/Trashcan' of the current user.

        Returns:

        list of deactivated Content items created by the current user

        See Also:

        -   [`getMyInactivePaging(int, int, Integer, Integer)`](#getMyInactivePaging\(int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getMyInactivePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getMyInactivePaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        This retrieves the content items in the 'Recycle Bin/Trashcan' of the current user.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of deactivated Content items created by the current user

        See Also:

        -   [`getMyInactive()`](#getMyInactive\(\))

    -   ### deleteMyInactive

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") deleteMyInactive()

        This is an 'empty Recycle Bin/Trashcan' method.

        Returns:

        count of deleted items

    -   ### getLinks

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all links to a given content id.

        Parameters:

        `id_` - content id(s) from which links will be returned

        Returns:

        content list

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getLinkIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getLinkIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all link ids to a given content id.

        Parameters:

        `id_` - content id(s) from which links will be returned

        Returns:

        link ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getLinksOfType

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getLinksOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all links to a given content id.

        Parameters:

        `id_` - content id(s) from which links will be returned

        `typemask_` - the types of content to return

        Returns:

        content list

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getLinkIdsOfType

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getLinkIdsOfType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns all links to a given content id.

        Parameters:

        `id_` - content id(s) from which links will be returned

        `typemask_` - the types of content to return

        Returns:

        content ids (flat if multiple)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### addLinks

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void addLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] links\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Add a link. A Link is a symbolic link, as in a filesystem for Documents. It's also used in Communities to link to 'Featured' Documents.

        Parameters:

        `id_` - content id to which links will be added: atomic

        `links_` - content ids which will be added as links to first parameter content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### removeLinks

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] links\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Remove a link.

        Parameters:

        `id_` - content id from which links will be removed: atomic

        `links_` - ids which will be removed from links of first parameter content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getLinkedBy

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getLinkedBy([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns the ids of those content items that link to the given id.

        Parameters:

        `id_` - content id to which returned ids link

        Returns:

        content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### searchByRoot

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] searchByRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`searchByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Searches for content from a given root.

        Parameters:

        `rootId_` - The root to search in

        `regex_` - A regular expression to match against name and description. The regex "\*text\*" will be used.

        `filter_` - A filter for the search results

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`searchByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### searchIdsByRoot

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] searchIdsByRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Searches for content from a given root.

        Parameters:

        `rootId_` - The root to search in

        `regex_` - A regular expression to match against name and description. The regex "\*text\*" will be used.

        `filter_` - A filter for the search results

        Returns:

        list of content ids matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### searchByRootPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchByRootPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Searches for content from a given root.

        Parameters:

        `rootId_` - The root to search in

        `regex_` - A regular expression to match against name and description. The regex "\*text\*" will be used.

        `filter_` - A filter for the search results

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`searchByRoot(Long, String, ContentFilter)`](#searchByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### searchWithin

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] searchWithin([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`searchWithinPaging(String, Long[], int, int, Integer, Integer)`](#searchWithinPaging\(java.lang.String,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Search for content within the given containers.

        Parameters:

        `regex` - A regular expression to match against name and description. The regex "\*contains\*" will be used.

        `ids_` - The ids of the containers within which to search

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`searchWithinPaging(String, Long[], int, int, Integer, Integer)`](#searchWithinPaging\(java.lang.String,java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### searchIdsWithin

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] searchIdsWithin([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Search for content within the given containers.

        Parameters:

        `regex` - A regular expression to match against name and description. The regex "\*contains\*" will be used.

        `ids_` - The ids of the containers within which to search

        Returns:

        list of content ids matching the search

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### searchWithinPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchWithinPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") regex\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Search for content within the given containers.

        Parameters:

        `regex_` - A regular expression to match against name and description. The regex "\*contains\*" will be used.

        `ids_` - The ids of the containers within which to search

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`searchWithin(String, Long[])`](#searchWithin\(java.lang.String,java.lang.Long%5B%5D\))

    -   ### queryByRoot

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] queryByRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`queryByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#queryByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        This is more advanced search, accepting special keywords.

        | Reserved Keyword | Notes |
        | --- | --- |
        | active | By default, only active is searched. |
        | inactive or nonactiv | This is the only way to search inactive. |
        | hierarchy | This limits to those ids visible in hierarchy. |
        | onhierarchy | This limits to those ids NOT visible in hierarchy. |
        | quota | This limits to those ids that are quota constrained. |
        | nonquota | This limits to those ids that are NOT quota constrained. |
        | logged | This limits to those ids that are logged. |
        | unlogged or nonlogged | This limits to those ids that are NOT logged. |
        | indexable | This limits to those ids that are indexable. |
        | nonindexable | This limits to those ids that are NOT indexable. |
        | author:name | This is a case-sensitive contains for the creator's username. |
        | author (current) | This limits to content created by current user. |
        | name:text |
        | description:text |
        | starts:text | This is name and description text\*, case-insensitive. |
        | ends:text | This is name and description \*text, case-insensitive. |
        | contains:text | This is name and description \*text\*, case-insensitive. |
        | subscribed | This limits to current user's subscriptions. |
        | unsubscribed or nonsubscribed | This limits to current user's subscriptions. |
        | bytes:number |  |
        | approved |  |
        | unapproved |  |
        | created:time |  |
        | modified:time |  |
        | expiration:days |  |
        | extension:ext |  |

        Other text is searched for as 'contains' in name and description.

        For name and description:

        -   : and = are both equals, <> and >< and != are unequal,
        -   < is less than, > is greater than, <= is less than or equal to, >= is greater than or equal to.

        Parameters:

        `root_` - The root from which to search

        `queryText_` - This is the query to perform.

        `filter_` - A filter for the search results

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`searchByRootPaging(Long, String, ContentFilter, int, int, Integer, Integer)`](#searchByRootPaging\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### queryIdsByRoot

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] queryIdsByRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This is more advanced search, accepting special keywords.

        Parameters:

        `root_` - The root from which to search

        `queryText_` - This is the query to perform.

        `filter_` - A filter for the search results

        Returns:

        list of content ids matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### queryByRootPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") queryByRootPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") queryText\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This is more advanced search, accepting special keywords.

        Parameters:

        `root_` - The root from which to search

        `queryText_` - This is the query to perform.

        `filter_` - A filter for the search results

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of content items matching the search

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`queryByRoot(Long, String, ContentFilter)`](#queryByRoot\(java.lang.Long,java.lang.String,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getExpired

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getExpired([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getExpiredPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Returns the list of content items within the given root which will be expired within the given number of days.

        Parameters:

        `root_` - content id: only content under root will be returned

        `days_` - Days in the future to check for expiration

        `filter_` - Only content matching the filter will be returned

        Returns:

        list of expired content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getExpiredPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getExpiredPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getExpiredIds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getExpiredIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Returns the list of content items within the given root which will be expired within the given number of days.

        Parameters:

        `root_` - content id: only content under root will be returned

        `days_` - Days in the future to check for expiration

        `filter_` - Only content matching the filter will be returned

        Returns:

        list of expired content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getExpiredPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getExpiredPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") days\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Returns the list of content items within the given root which will be expired within the given number of days.

        Parameters:

        `root_` - content id: only content under root will be returned

        `days_` - Days in the future to check for expiration

        `filter_` - Only content matching the filter will be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of expired content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getExpired(Long, Integer, ContentFilter)`](#getExpired\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### unexpire

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void unexpire([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        This unexpires the content, adding its parent expiration days to itself.

        Parameters:

        `id_` - content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### unexpire

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void unexpire([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        This unexpires the contents, adding their parent expiration days to themselves.

        Parameters:

        `ids_` - content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### lock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void lock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Exclusively locks the base id.

        Parameters:

        `id_` - content id to lock

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### lock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void lock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions"), [ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions"), [NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Exclusively locks the base ids.

        Parameters:

        `ids_` - content ids to lock

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PendingApprovalException](exceptions/PendingApprovalException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is pending approval

        `[ContentExpiredException](exceptions/ContentExpiredException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content you reference is expired

        `[NotLockOwnerException](exceptions/NotLockOwnerException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the content is locked and the current user is not the owner

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### unlock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] unlock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Only unlocks those ids currently locked by the current user.

        Parameters:

        `id_` - id to unlock

        Returns:

        ids unlocked

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### unlock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] unlock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Only unlocks those ids currently locked by the current user.

        Parameters:

        `ids_` - ids to unlock

        Returns:

        ids unlocked

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### breakLock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] breakLock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        If the user attempts to break his or her own lock (or something unlocked) then no additional security privilege is required; treat it like an unlock. If the user attempts to break another's lock, then admin security privilege is required, or an exception will be thrown.

        Parameters:

        `id_` - content id of lock to break

        Returns:

        ids with broken locks

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### breakLock

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] breakLock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        If the user attempts to break his or her own lock (or something unlocked) then no additional security privilege is required; treat it like an unlock. If the user attempts to break another's lock, then admin security privilege is required, or an exception will be thrown.

        Parameters:

        `ids_` - content id of lock to break

        Returns:

        ids with broken locks

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### approve

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content") approve([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Approve the given content item.

        Parameters:

        `id_` - content id(s)

        Returns:

        Approved bean (those ids that were successfully approved;action approved;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### approve

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content")\[\] approve([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Approve the given content items.

        Parameters:

        `ids_` - content id(s)

        Returns:

        Approved beans (those ids that were successfully approved;action approved;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### approveVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content") approveVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidApprovalStateException](exceptions/InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Approve the given version of a content item.

        Parameters:

        `id_` - content id

        `versionNumber_` - version number

        Returns:

        Approved bean (those ids that were successfully approved;action approved;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[InvalidApprovalStateException](exceptions/InvalidApprovalStateException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if there is an invalid content's state

    -   ### reject

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content") reject([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Reject the given content item.

        Parameters:

        `id_` - content id(s)

        Returns:

        Approved bean (those ids that were successfully rejected;action rejected;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### reject

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content")\[\] reject([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Reject the given content items.

        Parameters:

        `ids_` - content id(s)

        Returns:

        Approved beans (those ids that were successfully rejected;action rejected;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### rejectVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Approved](Approved.html "class in com.appiancorp.suiteapi.content") rejectVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionNumber\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidRejectionStateException](exceptions/InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Reject the given version of a content item.

        Parameters:

        `id_` - content id

        `versionNumber_` - version number

        Returns:

        Approved bean (those ids that were successfully rejected;action rejected;those users who requested said review)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid version is referenced

        `[InvalidRejectionStateException](exceptions/InvalidRejectionStateException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### notifyApproved

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void notifyApproved([Approved](Approved.html "class in com.appiancorp.suiteapi.content")... approved) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Sends a notification to the user associated with the approval. It receives the objects returned by any of the `accept` and `reject` service methods.

        Parameters:

        `approved` - approved bean

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### requestAccess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void requestAccess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Request access to the given content item. Note: This is also done implicitly by adding it as a favorite when the user possesses insufficient permission.

        Parameters:

        `id_` - content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### requestAccess

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void requestAccess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Request access to the given content items. Note: This is also done implicitly by adding it as a favorite when the user possesses insufficient permission.

        Parameters:

        `ids_` - content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### checkAccess

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") checkAccess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns the current user access to a content item. (This call is for Collaboration compatibility.)

        Parameters:

        `id_` - content id

        Returns:

        0=unsubcribed, 1=subscribed/favorite, 2=pending access

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### checkAccess

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] checkAccess([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns the current user access to a content items. (This call is for Collaboration compatibility.)

        Parameters:

        `ids_` - content ids

        Returns:

        0=unsubcribed, 1=subscribed/favorite, 2=pending access

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### approveUsers

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] approveUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Approve access to the specified content item for a set of users.

        Parameters:

        `id_` - content id

        `users_` - set of users to approve

        Returns:

        users who were successfully approved; they should then be notified by the caller

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### rejectUsers

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] rejectUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Reject access to the specified content item for a set of users.

        Parameters:

        `id_` - content id

        `users_` - set of users to reject

        Returns:

        users who were successfully rejected; they should then be notified by the caller

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getPending

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getPending([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getPendingPaging(Long, ContentFilter, int, int, Integer, Integer)`](#getPendingPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get the Content items that have approvals pending action by the current user. This is the inverse of the getRequests, which are requests to another from the current user. This populates the actionRequested, actionRequester.

        Parameters:

        `id` -

        `filter` -

        Returns:

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")`

    -   ### getPendingPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPendingPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Get the Content items that have approvals pending action by the current user. This is the inverse of the getRequests, which are requests to another from the current user. This populates the actionRequested, actionRequester.

        Parameters:

        `id` - root content id

        `filter` - applies to what children are returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        Content\[\]

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getPending(Long, ContentFilter)`](#getPending\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getNumberOfRequests

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getNumberOfRequests()

        This returns the count of the requests returned by getRequests. By only returning a count, and not all the data, this method is faster and more suitable for status updates.

        Returns:

        number of content ids for which a request is outstanding

    -   ### getRequests

        [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getRequests()

        Once a user requests an action on a Content item that requires approval, that request is stored with the Content item. This method returns those items that are still pending for this user or the user's group.

        Returns:

        list of content items pending approval from the current user

    -   ### getPendingUsers

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getPendingUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        This accumulates all users pending for the given content item, returning only the unique names.

        Parameters:

        `id_` - content id

        Returns:

        usernames of pending users

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getPendingReview

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getPendingReview([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        This returns the review code for each given id; this may include NO\_REVIEW (0).

        Parameters:

        `id_` - content id

        Returns:

        review id(s)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getPendingReviews

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getPendingReviews([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        This returns the review code for each given id; this may include NO\_REVIEW (0).

        Parameters:

        `ids_` - content ids

        Returns:

        review id(s)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getFavoritesByRoot

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getFavoritesByRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getFavoritesByRootPaging(Long, ContentFilter, Boolean, int, int, Integer, Integer)`](#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Retrieve all content items within the given root which are marked as favorites for the current user.

        Parameters:

        `rootId_` - root within which to get favorites

        `filter_` - Only content matching the filter will be returned

        `includeExpiredContent_` - set to true to include expired content

        Returns:

        favorite contents

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getFavoritesByRootPaging(Long, ContentFilter, Boolean, int, int, Integer, Integer)`](#getFavoritesByRootPaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getFavoriteByRootIds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFavoriteByRootIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Retrieve all content items within the given root which are marked as favorites for the current user.

        Parameters:

        `rootId_` - root within which to get favorites

        `filter_` - Only content matching the filter will be returned

        `includeExpiredContent_` - set to true to include expired content

        Returns:

        favorite content ids

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

    -   ### getFavoritesByRootPaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoritesByRootPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") rootId\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeExpiredContent\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Retrieve all content items within the given root which are marked as favorites for the current user.

        Parameters:

        `rootId_` - root within which to get favorites

        `filter_` - Only content matching the filter will be returned

        `includeExpiredContent_` - set to true to include expired content

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        favorite contents

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getFavoritesByRoot(Long, ContentFilter, Boolean)`](#getFavoritesByRoot\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,java.lang.Boolean\))

    -   ### isFavorite

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isFavorite([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns true if content is marked as a favorite for the current user.

        Parameters:

        `id_` - content id

        Returns:

        true if content is marked as favorite

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### areFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] areFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Returns true for each content which is marked as a favorite for the current user.

        Parameters:

        `ids_` - content ids

        Returns:

        true for each content which is marked as a favorite

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### areFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] areFavorites([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Returns true for each content which is marked as a favorite for the current user.

        Parameters:

        `contents_` - content items

        Returns:

        true for each content which is marked as a favorite

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### populateFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void populateFavorites([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Populates the favorite field in the content beans you pass in.

        Parameters:

        `contents_` - an array of Content objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### addFavorite

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PendingAccess](PendingAccess.html "class in com.appiancorp.suiteapi.content") addFavorite([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Mark the given content item as a favorite for the current user.

        Parameters:

        `id_` - content id

        Returns:

        PendingAccess bean (may be 0 length)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### addFavoriteForUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void addFavoriteForUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Mark the given content item as a favorite for the given users. Requires administrator privileges.

        Parameters:

        `id` - content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### addFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PendingAccess](PendingAccess.html "class in com.appiancorp.suiteapi.content") addFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Mark the given content items as a favorite for the current user.

        Parameters:

        `ids_` - content ids

        Returns:

        PendingAccess bean (may be 0 length)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### removeFavorite

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeFavorite([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Remove a content item as a favorite for the current user.

        Parameters:

        `id_` - content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### removeFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Remove content items as favorites for the current user.

        Parameters:

        `ids_` - content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### removeFavoriteForUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void removeFavoriteForUsers([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] username\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove content item as a favorite for the given users.

        Parameters:

        `id_` - content id

        `username_` - list of usernames

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### cleanseFavorites

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] cleanseFavorites()

        Deprecated.

        This call eliminates those favorites to which have been deactivated/deleted, or to which the user no longer has access.

        Returns:

        valid favorite ids

    -   ### cleanseApprovals

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void cleanseApprovals()

        Deprecated.

        This call eliminates those queued approvals that have already been handled by other users. (This is done automatically whenever something is approved or rejected by the current user.)

    -   ### getRoleMap

        [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content") getRoleMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") includeAggregate\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the role map for a content item.

        Parameters:

        `id_` - singular

        `includeAggregate_` - include aggregate ([`ContentConstants.RM_AGGREGATE`](ContentConstants.html#RM_AGGREGATE) or [`ContentConstants.RM_EXPLICIT`](ContentConstants.html#RM_EXPLICIT))

        Returns:

        RoleMap

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`setRoleMap(Long, ContentRoleMap, Boolean)`](#setRoleMap\(java.lang.Long,com.appiancorp.suiteapi.content.ContentRoleMap,java.lang.Boolean\))

    -   ### setRoleMap

        [RoleMapChanges](RoleMapChanges.html "class in com.appiancorp.suiteapi.content") setRoleMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content") rolemap\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") contract\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Set the role map for a content item.

        Parameters:

        `id_` - singular

        `rolemap_` - singular

        `contract_` - if true will remove users lower in the hierarchy who are removed from all access in this rolemap

        Returns:

        bean with fields approvedGroups, rejectedGroups, approvedUser, rejectedUser

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        See Also:

        -   [`getRoleMap(Long, Boolean)`](#getRoleMap\(java.lang.Long,java.lang.Boolean\))

    -   ### setRoleMapForAllVersions

        void setRoleMapForAllVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [ContentRoleMap](ContentRoleMap.html "class in com.appiancorp.suiteapi.content") rolemap\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") contract\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the role map for all the versions of a content item.

        Parameters:

        `id_` - The id of the content item whose role map should be set.

        `rolemap_` - The role map to set.

        `contract_` - if true will remove users lower in the hierarchy who are removed from all access in this rolemap

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content id is specified

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getRestrictionMap

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") getRestrictionMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the restriction map for a `Content` object.

        Parameters:

        `id_` - Restriction map will be returned for the object specified by this id.

        Returns:

        RoleMap with the same roles as a ContentRoleMap, indicating the restrictions on this object.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        See Also:

        -   [`setRestrictionMap(Long, RoleMap)`](#setRestrictionMap\(java.lang.Long,com.appiancorp.suiteapi.common.RoleMap\))

    -   ### setRestrictionMap

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setRestrictionMap([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [RoleMap](../common/RoleMap.html "class in com.appiancorp.suiteapi.common") roleMap\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the restriction map for a `Content` object.

        Parameters:

        `id_` - Restriction map will be set for the object specified by this id.

        `roleMap_` - RoleMap with the same roles as a ContentRoleMap, indicating the restrictions on this object.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        See Also:

        -   [`getRestrictionMap(Long)`](#getRestrictionMap\(java.lang.Long\))

    -   ### setActorsInRoles

        void setActorsInRoles([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Set security roles for a content item by users and groups. (also supports imaginary "deny" role which automatically sets deny\_readers and deny\_authors)

        Parameters:

        `id_` - content id

        `users_` - users to set security for

        `userRoles_` - contains an array of security roles for each corresponding entry in the users\_ array. It is legal to have null within this array.

        `groups_` - groups to set security for

        `groupRoles_` - contains an array of security roles for each corresponding entry in the groups\_ array. It is legal to have null within this array.

        Throws:

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

    -   ### getRoleSet

        [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") getRoleSet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the `ContentRoleSet` associated with the content with the ID provided.

        Parameters:

        `id_` - content id

        Returns:

        the role set associated with the given content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getRoleSets

        [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")\[\] getRoleSets([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the `ContentRoleSet`s associated with the given contents.

        Parameters:

        `contents_` - list of content items

        Returns:

        the role set associated with the given content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getRoleSets

        [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")\[\] getRoleSets([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the `ContentRoleSet`s associated with the given content ids.

        Parameters:

        `ids_` - content id

        Returns:

        the role sets associated with the given content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getRoleSetForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") getRoleSetForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Requires two sets of credentials.

        Get the `ContentRoleSet` associated with the given content for a specific user.

        Parameters:

        `username_` - user to retrieve role set for (must match current user, or will throw DeprecatedException)

        `id_` - content id

        Returns:

        the role sets associated with the given content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getRoleSetsForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")\[\] getRoleSetsForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Requires two sets of credentials.

        Get the `ContentRoleSet`s associated with the given contents for a specific user.

        Parameters:

        `username_` - user to retrieve role set for (must match current user, or will throw DeprecatedException)

        `ids_` - content ids

        Returns:

        the role sets associated with the given contents

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getRoleSetForGroup

        [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content") getRoleSetForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the `ContentRoleSet` associated with the given content for a specific group.

        Parameters:

        `groupId_` - group to retrieve role set for

        `id_` - content id

        Returns:

        the role sets associated with the given content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### getRoleSetsForGroup

        [ContentRoleSet](ContentRoleSet.html "class in com.appiancorp.suiteapi.content")\[\] getRoleSetsForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the `ContentRoleSet`s associated with the given contents for a specific group.

        Parameters:

        `groupId_` - group to retrieve role set for

        `ids_` - content id

        Returns:

        the role sets associated with the given content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### populateRoleSets

        void populateRoleSets([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Populates the roleSet field in the content beans you pass in.

        Parameters:

        `contents_` - an array of Content objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### populateExtensionInfo

        void populateExtensionInfo([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Populates the extensionInfo field in the document beans you pass in. Only applies to documents

        Parameters:

        `contents_` - an array of Document objects

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### localize

        void localize([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_)

        Localizes the name, description, and parent name for the given content(s).

        Parameters:

        `content_` - content to localize

    -   ### localize

        void localize([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_)

        Localizes the name, description, and parent name for the given content(s).

        Parameters:

        `contents_` - content to localize

    -   ### localize

        void localize([Content](Content.html "class in com.appiancorp.suiteapi.content") content\_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Localizes the name, description, and parent name for the given content(s).

        Parameters:

        `content_` - content to localize

        `locale_` - localize according to this local

    -   ### localize

        void localize([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] contents\_, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale\_)

        Localizes the name, description, and parent name for the given content(s).

        Parameters:

        `contents_` - content to localize

        `locale_` - localize according to this local

    -   ### addUserInRole

        void addUserInRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add user to content in given role.

        Parameters:

        `id_` - content id

        `role_` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `username_` - username

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### addUsersInRole

        void addUsersInRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add users to content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `username` - list of usernames to add role

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### removeUserFromRole

        void removeUserFromRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Remove user from content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `username` - user to remove role from

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### removeUsersFromRole

        void removeUsersFromRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Remove users from content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `username` - list of usernames to remove role from

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### addGroupInRole

        void addGroupInRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add group to content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `groupId` - group to add role to

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### addGroupsInRole

        void addGroupsInRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Add groups to content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `groupId` - list of groups to add role to

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### removeGroupFromRole

        void removeGroupFromRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Remove group from content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `groupId` - group to remove role from

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### removeGroupsFromRole

        void removeGroupsFromRole([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") role, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Remove groups from content in given role.

        Parameters:

        `id` - content id

        `role` - from ContentConstants (e.g. [`ContentConstants.ROLE_READERS`](ContentConstants.html#ROLE_READERS))

        `groupId` - list of groups to remove role from

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidRoleException](../common/exceptions/InvalidRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid role is passed in

    -   ### getViewable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getViewablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getViewablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get all active, non-expired ids off the root, where view role held by user.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        Returns:

        content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getViewablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getViewablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getViewableByUser

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getViewableByUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get all active, non-expired ids off the root, where view role held by user.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        `username` - user (must match current user, or will throw DeprecatedException)

        Returns:

        content ids

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getEditable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getEditablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getEditablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get all active, non-expired ids off the root, where editor role held by user.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        Returns:

        content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getEditablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getEditablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getEditableByUser

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getEditableByUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get all active, non-expired ids off the root, where editor role held by user.

        Parameters:

        `root_` - content id

        `filter_` - Only content matching the filter will be returned

        `username_` - username (must match current user, or will throw DeprecatedException)

        Returns:

        content ids

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getAdministratable

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratable([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getAdministratablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAdministratablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get all active, non-expired ids off the root, where administratable role held by user.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        Returns:

        content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        See Also:

        -   [`getAdministratablePaging(Long, ContentFilter, int, int, Integer, Integer)`](#getAdministratablePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getAdministratableByUser

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getAdministratableByUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get all active, non-expired ids off the root, where administratable role held by user.

        Parameters:

        `root` - content id

        `filter` - only content matching the filter will be returned

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        content ids

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### canAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Administrate?

        Parameters:

        `id` - content id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Administrate?

        Parameters:

        `ids` - content ids

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canAdministrate([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] content) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Administrate?

        Parameters:

        `content` - content array

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canUserAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canUserAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Can given User Administrate?

        Parameters:

        `id` - content id

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### canUserAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canUserAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given User Administrate?

        Parameters:

        `ids` - content ids

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canGroupAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group Administrate?

        Parameters:

        `id` - content id

        `groupId` - group id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupAdministrate

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canGroupAdministrate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group Administrate?

        Parameters:

        `ids` - content ids

        `groupId` - group id

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### isViewNotRestricted

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isViewNotRestricted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Is view privilege restricted?

        Parameters:

        `id_` - content id

        Returns:

        true if not restricted

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### isEditNotRestricted

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isEditNotRestricted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Is edit privilege restricted?

        Parameters:

        `id_` - content id

        Returns:

        true if not restricted

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### isAdministrateNotRestricted

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") isAdministrateNotRestricted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Is administrate privilege restricted?

        Parameters:

        `id_` - content id

        Returns:

        true if not restricted

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Edit?

        Parameters:

        `id` - content id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Edit?

        Parameters:

        `ids` - content ids

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canEdit([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] content\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user Edit?

        Parameters:

        `content_` - content list

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canUserEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canUserEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Can given User Edit?

        Parameters:

        `id` - content id

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### canUserEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canUserEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given User Edit?

        Parameters:

        `ids` - content id

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canGroupEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group Edit?

        Parameters:

        `id` - content id

        `groupId` - group id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupEdit

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canGroupEdit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group Edit?

        Parameters:

        `ids` - content ids

        `groupId` - group id

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user View?

        Parameters:

        `id` - content id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user View?

        Parameters:

        `ids` - content ids

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canView([Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] content) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can current user View?

        Parameters:

        `content` - content list

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canUserView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canUserView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Can given User View?

        Parameters:

        `id` - content id

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### canUserView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canUserView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given User View?

        Parameters:

        `ids` - content ids

        `username` - username (must match current user, or will throw DeprecatedException)

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") canGroupView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group View?

        Parameters:

        `id` - content id

        `groupId` - group id

        Returns:

        boolean (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### canGroupView

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] canGroupView([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Can given Group View?

        Parameters:

        `ids` - content ids

        `groupId` - group id

        Returns:

        boolean array (0 if not, 1 if so)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getAccessLevel

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAccessLevel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the Access Level for the current user for a content item.

        Parameters:

        `id_` - content id

        `typemask_` - specifies the content type

        Returns:

        access level. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getAccessLevel

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAccessLevel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, int typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the Access Level for the current user for a content item.

        Parameters:

        `id_` - content id

        `typemask_` - specifies the content type

        Returns:

        access level. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getAccessLevel

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAccessLevel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the Access Level for the current user for a list of content items.

        Parameters:

        `ids_` - content id

        `typemask_` - specifies the content type

        Returns:

        access level array. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getAccessLevel

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAccessLevel([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, int typemask\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the Access Level for the current user for a list of content items.

        Parameters:

        `ids_` - content id

        `typemask_` - specifies the content type

        Returns:

        access level array. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

    -   ### getAccessLevelForUser

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getAccessLevelForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the Access Level for the given user for a content item.

        Parameters:

        `id_` - content id

        `typemask_` - specifies the content type

        `username_` - username (must match current user, or will throw DeprecatedException)

        Returns:

        access level. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getAccessLevelForUser

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getAccessLevelForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") typemask\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Get the Access Level for the given user for a list of content items.

        Parameters:

        `ids_` - content id

        `typemask_` - specifies the content type

        `username_` - username (must match current user, or will throw DeprecatedException)

        Returns:

        access level array. One of [`ContentConstants.AL_ADMIN`](ContentConstants.html#AL_ADMIN), [`ContentConstants.AL_EDITOR`](ContentConstants.html#AL_EDITOR), [`ContentConstants.AL_INVALID_ID`](ContentConstants.html#AL_INVALID_ID), [`ContentConstants.AL_NONE`](ContentConstants.html#AL_NONE), [`ContentConstants.AL_VIEWER`](ContentConstants.html#AL_VIEWER)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an invalid user is referenced

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid typemask was passed in

        `[DeprecatedException](../common/exceptions/DeprecatedException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getWhatsNew

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getWhatsNew([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getWhatsNewPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getWhatsNewPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Returns list of most recently modified content items within the specified root.

        Parameters:

        `root_` - content id

        `maxResults_` - max number of content items to return

        `filter_` - only content matching the filter will be returned

        Returns:

        content list

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getWhatsNewPaging(Long, Integer, ContentFilter, int, int, Integer, Integer)`](#getWhatsNewPaging\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getWhatsNewIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getWhatsNewIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns id list of most recently modified content items within the specified root.

        Parameters:

        `root_` - content id

        `maxResults_` - max number of content items to return

        `filter_` - only content matching the filter will be returned

        Returns:

        id list

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### getWhatsNewPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getWhatsNewPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") maxResults\_, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Returns list of most recently modified content items within the specified root.

        Parameters:

        `root_` - content id

        `maxResults_` - max number of content items to return

        `filter_` - only content matching the filter will be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        content list

        Throws:

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the filter contains an invalid typemask

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getWhatsNew(Long, Integer, ContentFilter)`](#getWhatsNew\(java.lang.Long,java.lang.Integer,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### setPersonalId

        void setPersonalId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Set the id for your Personal content item. Currently refers to your personal knowledge center.

        Parameters:

        `id_` - of the content object to set as your personal content

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getPersonalId()`](#getPersonalId\(\))

    -   ### getPersonalId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPersonalId() throws [InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get the id for your Personal content item. Currently refers to your personal knowledge center. If no personal knowledge center exists it will be created.

        Returns:

        the id for your Personal content

        Throws:

        `[InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if Personal Content does not exist for this user

        See Also:

        -   [`setPersonalId(Long)`](#setPersonalId\(java.lang.Long\))

    -   ### getPersonal

        [Content](Content.html "class in com.appiancorp.suiteapi.content") getPersonal() throws [InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get your Personal content item. Currently refers to your personal knowledge center. If no personal knowledge center exists it will be created.

        Returns:

        your Personal content item

        Throws:

        `[InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if Personal Content does not exist for this user

    -   ### getPersonalAndTeamsIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getPersonalAndTeamsIds([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get children of 'Personal and Teams'. If no personal knowledge center exists it will be created.

        Parameters:

        `filter_` - only content matching the filter will be returned

        Returns:

        content ids

        Throws:

        `[InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if Personal Content does not exist for this user

    -   ### getPersonalAndTeams

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] getPersonalAndTeams([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_) throws [InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`getPersonalAndTeamsPaging(ContentFilter, int, int, Integer, Integer)`](#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Get children of 'Personal and Teams'. If no personal knowledge center exists it will be created.

        Parameters:

        `filter_` - only content matching the filter will be returned

        Returns:

        content list

        Throws:

        `[InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if Personal Content does not exist for this user

        See Also:

        -   [`getPersonalAndTeamsPaging(ContentFilter, int, int, Integer, Integer)`](#getPersonalAndTeamsPaging\(com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\))

    -   ### getPersonalAndTeamsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPersonalAndTeamsPaging([ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Get children of 'Personal and Teams'. If no personal knowledge center exists it will be created.

        Parameters:

        `filter_` - only content matching the filter will be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        content ids

        Throws:

        `[InvalidPersonalContentException](exceptions/InvalidPersonalContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if Personal Content does not exist for this user

        See Also:

        -   [`getPersonalAndTeams(ContentFilter)`](#getPersonalAndTeams\(com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### browse

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Content](Content.html "class in com.appiancorp.suiteapi.content")\[\] browse([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`browsePaging(Long, ContentFilter, int, int, Integer, Integer)`](#browsePaging\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Browse includes: what the user may see via group permissions, including favorites, no personal content items, including advertised content items not visible, but not already in favorites. Typically used with Personal Knowledge Centers off of Knowledge Root.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        Returns:

        list of content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### browseIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] browseIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Browse includes: what the user may see via group permissions, including favorites, no personal content items, including advertised content items not visible, but not already in favorites. Typically used with Personal Knowledge Centers off of Knowledge Root.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        Returns:

        list of content item ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

    -   ### browsePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") browsePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") root, [ContentFilter](ContentFilter.html "class in com.appiancorp.suiteapi.content") filter, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Browse includes: what the user may see via group permissions, including favorites, no personal content items, including advertised content items not visible, but not already in favorites. Typically used with Personal Knowledge Centers off of Knowledge Root.

        Parameters:

        `root` - content id

        `filter` - Only content matching the filter will be returned

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `COLUMN_XXX` constants in [`ContentConstants`](ContentConstants.html "interface in com.appiancorp.suiteapi.content").

        `sortOrder_` - the order in which to sort the results.This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        list of content items

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        See Also:

        -   [`browse(Long, ContentFilter)`](#browse\(java.lang.Long,com.appiancorp.suiteapi.content.ContentFilter\))

    -   ### getDownloadLogType

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDownloadLogType()

        Gets the download log type. Currently always returns TYPE\_KC.

        Returns:

        download log type

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        **Note:** Only this or the CollaborationService updateUsernames must be called. Do not call both.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a system administrator

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSystemId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        use [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\)) instead. This method will be removed in a future release

        Get the system id corresponding to the given name K Supplied names include: community (the system default community) kc (the system kc) image\_folder\_id leader\_message\_channel\_image\_folder\_id priority\_image\_folder\_id indicator\_image\_folder\_id reports\_folder\_id.

        Parameters:

        `name_` - this is a known name for a system Content id

        Returns:

        system id, or null for unknown

        See Also:

        -   [`setSystemId(String, Long)`](#setSystemId\(java.lang.String,java.lang.Long\))

    -   ### getSystemIds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getSystemIds([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] names\_)

        Deprecated.

        use [`getIdsByUuid(String[])`](#getIdsByUuid\(java.lang.String%5B%5D\)) instead. This method will be removed in a future release

        Get the system ids corresponding to the given names.

        Parameters:

        `names_` - these are the known names for a system Content id

        Returns:

        list of system ids (-1 for unknown)

        See Also:

        -   [`setSystemIds(String[], Long[])`](#setSystemIds\(java.lang.String%5B%5D,java.lang.Long%5B%5D\))

    -   ### getSystemNames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getSystemNames()

        Deprecated.

        see [`getIdByUuid(String)`](#getIdByUuid\(java.lang.String\))

        Get all system names.

        Returns:

        name array (it will be small)

    -   ### setSystemId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        Use [`create(Content, Integer)`](#create\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) with a pre-populated UUID and the flag [`ContentConstants.VIS_SYSTEM`](ContentConstants.html#VIS_SYSTEM).

        Set a system name to a system id.

        Parameters:

        `name_` - system name, must globally unique

        `id_` - content id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        See Also:

        -   [`getSystemId(String)`](#getSystemId\(java.lang.String\))

    -   ### setSystemIds

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemIds([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] names\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")

        Deprecated.

        Use [`create(Content[], Integer)`](#create\(com.appiancorp.suiteapi.content.Content%5B%5D,java.lang.Integer\)) with pre-populated UUIDs and the flag [`ContentConstants.VIS_SYSTEM`](ContentConstants.html#VIS_SYSTEM).

        Set system names to system ids.

        Parameters:

        `names_` - system names, must globally unique

        `ids_` - content ids

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `names_` is different from the length of `ids_`

        See Also:

        -   [`getSystemIds(String[])`](#getSystemIds\(java.lang.String%5B%5D\))

    -   ### setRoot

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setRoot([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Deprecated.

        use [`setAsRoot(Long)`](#setAsRoot\(java.lang.Long\))

        Sets the given name to be a system id, and its own root, splitting it from its existing hierarchy. Setting as root sets its parent to itself, so it won't traverse further up the tree, and it detaches from the old root. This method also sets the system id; no need for a separate call to call setSystemId().

        Parameters:

        `name_` - root name

        `id_` - root id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### setAsRoot

        void setAsRoot([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Sets the given id as its own root, splitting it from its existing hierarchy. Setting it as root sets its parent to itself, so it won't traverse further up the tree, and it detaches from the old root.

        Parameters:

        `id` - root id

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_)

        Queries for content and returns a JSON formatted string to be used by autocomplete.

        Parameters:

        `query_` - query

        `maxItems_` - max number of items to return

        `params_` - list of information on what is being suggested and what format the results should be in. valid types are rules.

        `groupResults_` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Queries for content and returns a JSON formatted string to be used by autocomplete.

        Parameters:

        `query_` - query

        `maxItems_` - max number of items to return

        `params_` - list of information on what is being suggested and what format the results should be in. valid types are rules.

        `groupResults_` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### adjustCounter

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") adjustCounter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") value) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Adjust a rules based constant (counter) of type integer or double by the given adjustment value. This is useful for atomically incrementing or decrementing global constant counters. Note, that while this is useful for ensuring that read/update/write errors do not occur, the propagation of the update is the same as all constant updates. Also, no new version of the id is created -- it is the same id as before. (This is to prevent a million counter updates from creating a million separate content items.)

        Parameters:

        `id_` - rule id of integer or double constant

        `value_` - adjustment value (e.g., 1 to increase by 1, -1 to decrease by 1, etc.)

        Returns:

        new value

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - for any type error, including adjusting non-rule, non-constant, non-integer or -double.

    -   ### adjustCounter

        [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") adjustCounter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_, [Double](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Double.html "class or interface in java.lang") value) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")

        Adjust a rules based constant (counter) of type integer or double by the given adjustment value. This is useful for atomically incrementing or decrementing global constant counters. Note, that while this is useful for ensuring that read/update/write errors do not occur, the propagation of the update is the same as all constant updates. Also, no new version of the id is created -- it is the same id as before. (This is to prevent a million counter updates from creating a million separate content items.)

        Parameters:

        `id_` - rule id of integer or double constant

        `value_` - adjustment value (e.g., 1 to increase by 1, -1 to decrease by 1, etc.)

        Returns:

        new value

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[InvalidTypeMaskException](exceptions/InvalidTypeMaskException.html "class in com.appiancorp.suiteapi.content.exceptions")` - for any type error, including adjusting non-rule, non-constant, non-integer or -double.

    -   ### moveKnowledgeCenter

        void moveKnowledgeCenter([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Move a KC to a community. This method will also update the Content Object to reflect the changes of Type and Quota. If the move succeeds, the KC will be updated to a Community KC.

        Parameters:

        `kcId_` - content id of the Knowledge Center to move

        `communityId_` - id of community under which to move the Knowledge Center

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the destination is a descendant of the item you are moving

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Deprecated. If the move succeeds, the KC will be updated to a Community KC.

    -   ### moveKnowledgeCenters

        void moveKnowledgeCenters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] kcIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") communityId\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Moves KCs to a community. This method will also update the Content Objects to reflect the changes to the columns of Type and Quota. If the move succeeds, the KCs will be updated to Community KCs.

        Parameters:

        `kcIds_` - content ids of the Knowledge Centers to move

        `communityId_` - id of community under which to move the Knowledge Centers

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have permission to take this action

        `[IllegalRecursionException](exceptions/IllegalRecursionException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if the destination is a descendant of the item you are moving

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Deprecated. If the move succeeds, the KC will be updated to a Community KC.

    -   ### validateTypedValues

        boolean validateTypedValues([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedValues) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates given TypedValues. This method is free to throw an exception or to return false if any TypedValue passed is invalid for this engine. This engine supports: AppianType.DOCUMENT AppianType.FOLDER AppianType.KNOWLEDGE\_CENTER AppianType.COMMUNITY AppianType.DOCUMENT\_OR\_FOLDER

        Parameters:

        `typedValues` -

        Returns:

        true if valid, false if invalid

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidCommunityException](../common/exceptions/InvalidCommunityException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getIdByUuid

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getIdByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Gets a content id by UUID. The version returned is NOT always the current version ([`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT)). Consider using [`getVersionId(String, Integer)`](#getVersionId\(java.lang.String,java.lang.Integer\)) instead.

        Parameters:

        `uuid` - content UUID

        Returns:

        content id or `null` if the UUID is not found

        See Also:

        -   `constants for System UUIDs`

    -   ### getIdsByUuid

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIdsByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter\[\]\[\].class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids)

        Gets content ids by UUID. The versions returned are NOT always the current version ([`ContentConstants.VERSION_CURRENT`](ContentConstants.html#VERSION_CURRENT)).

        Parameters:

        `uuids` - content UUIDs

        Returns:

        content ids or `null` items for UUIDs not found

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `uuids` is `null`

        See Also:

        -   `constants for System UUIDs`

    -   ### getDatatypeIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDatatypeIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")... contentIds)

        Gets the datatype ids that content ids map to. For example, a content object with [`ContentConstants.TYPE_RULE`](ContentConstants.html#TYPE_RULE) type and [`ContentConstants.SUBTYPE_RULE_QUERY`](ContentConstants.html#SUBTYPE_RULE_QUERY) subtype maps to a [`AppianType.QUERY_RULE`](../type/AppianType.html#QUERY_RULE) datatype

        Parameters:

        `contentIds` - content ids

        Returns:

        datatype ids mappped to the content objects specified by the given content ids

    -   ### getDocumentInputStream

        [DocumentInputStream](DocumentInputStream.html "class in com.appiancorp.suiteapi.content") getDocumentInputStream(long id\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Opens a stream to a Document allowing for the caller to read its contents.

        Parameters:

        `id_` - the content ID of the version of the document; use [`getVersionId(Long, Integer)`](#getVersionId\(java.lang.Long,java.lang.Integer\)) to obtain the id of the version of the document

        Returns:

        DocumentInputStream containing the content of the document

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening the input stream for the file

        See Also:

        -   [`getDocumentInputStream(long[])`](#getDocumentInputStream\(long%5B%5D\))
        -   [`download(Long, Integer, Boolean)`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))
        -   [`Document.getInputStream()`](../knowledge/Document.html#getInputStream\(\))

    -   ### getDocumentInputStream

        [DocumentInputStream](DocumentInputStream.html "class in com.appiancorp.suiteapi.content")\[\] getDocumentInputStream(long\[\] ids\_) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Opens streams to multiple Documents allowing the caller to read their contents.

        Parameters:

        `ids_` - the content IDs of the versions of the documents; use [`getVersionIds(Long, Integer[])`](#getVersionIds\(java.lang.Long,java.lang.Integer%5B%5D\)) to obtain the ids of the versions of the document

        Returns:

        DocumentInputStream\[\] containing the contents of the documents

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")` - if an invalid content item is referenced

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if an error occurs while opening an input stream for a file

        See Also:

        -   [`getDocumentInputStream(long)`](#getDocumentInputStream\(long\))
        -   [`download(Long, Integer, Boolean)`](#download\(java.lang.Long,java.lang.Integer,java.lang.Boolean\))
        -   [`Document.getInputStream()`](../knowledge/Document.html#getInputStream\(\))

    -   ### uploadDocument

        [ContentUploadOutputStream](ContentUploadOutputStream.html "class in com.appiancorp.suiteapi.content") uploadDocument([Document](../knowledge/Document.html "class in com.appiancorp.suiteapi.knowledge") doc, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") unique) throws [InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions"), [DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions"), [AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a document and provides an output stream to which the document's content should be written. The document is created using the [`createApproval(Content, Integer)`](#createApproval\(com.appiancorp.suiteapi.content.Content,java.lang.Integer\)) API. The caller must write the document's data to the returned output stream and complete the upload by calling [`ContentUploadOutputStream.close()`](ContentUploadOutputStream.html#close\(\)). Invoking the stream's close method will calculate the size of the data written to the stream and save it as metadata for the document.

        Parameters:

        `doc` - The Document to create.

        `unique` - How unique the name must be.

        Returns:

        The output stream to which the document's data should be written.

        Throws:

        `[InvalidContentException](exceptions/InvalidContentException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InsufficientNameUniquenessException](exceptions/InsufficientNameUniquenessException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[DuplicateUuidException](exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.content.exceptions")`

        `[AppianStorageException](../common/exceptions/AppianStorageException.html "class in com.appiancorp.suiteapi.common.exceptions")`