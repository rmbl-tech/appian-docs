---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/links/LinksService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/links/LinksService.html
version: "25.3"
title: "Interface LinksService"
page_id: "api/com/appiancorp/suiteapi/portal/portlets/links/LinksService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal.portlets.links](package-summary.html)

# Interface LinksService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface LinksService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for the creation and organization of links.
A [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") is similar to but more general than a typical url link; it can store urls with name and description, but equally contain the information to point to other Appian objects such as

-   documents (see [`Document`](../../../collaboration/Document.html "class in com.appiancorp.suiteapi.collaboration"))
-   portal pages (see [`Page`](../../Page.html "class in com.appiancorp.suiteapi.portal"))
-   folders (see [`Folder`](../../../collaboration/Folder.html "class in com.appiancorp.suiteapi.collaboration"))
-   knowledge centers (see [`KnowledgeCenter`](../../../collaboration/KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration"))
-   communities (see [`Community`](../../../collaboration/Community.html "class in com.appiancorp.suiteapi.collaboration"))
-   threads (see [`DiscussionThread`](../../../forums/DiscussionThread.html "class in com.appiancorp.suiteapi.forums"))
-   forums (see [`Forum`](../../../forums/Forum.html "class in com.appiancorp.suiteapi.forums"))
-   external pages through secure connection
-   external pages through insecure connection
-   emails.

The links can be organized into folders, or be associated with [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")s, using [`moveLinkToLocalObject(java.lang.Long, com.appiancorp.suiteapi.common.LocalObject)`](#moveLinkToLocalObject\(java.lang.Long,com.appiancorp.suiteapi.common.LocalObject\)) after the link is created. Currently the supported `LocalObject` types are:

-   [`User`](../../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
-   [`Group`](../../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
-   [`Portlet`](../../Portlet.html "class in com.appiancorp.suiteapi.portal")

Folders can be organized into subfolders or be associated with `LocalObject`s by calling [`moveFolderToLocalObject(java.lang.Long, com.appiancorp.suiteapi.common.LocalObject)`](#moveFolderToLocalObject\(java.lang.Long,com.appiancorp.suiteapi.common.LocalObject\)) after the folder is created. Again only `User`, `Group`, and `Portlet` local objects are supported.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")
-   [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createFolder$UPDATES](#createFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createLink$UPDATES](#createLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createLinkType$UPDATES](#createLinkType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createRootFolder$UPDATES](#createRootFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createRootLink$UPDATES](#createRootLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteFolder$UPDATES](#deleteFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteLink$UPDATES](#deleteLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteLinkType$UPDATES](#deleteLinkType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findFoldersPaging$UPDATES](#findFoldersPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findLinksPaging$UPDATES](#findLinksPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findLinkTypesPaging$UPDATES](#findLinkTypesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildFolders$UPDATES](#getChildFolders$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getChildLinks$UPDATES](#getChildLinks$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolder$UPDATES](#getFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFolderIdsByLocalObject$UPDATES](#getFolderIdsByLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFoldersByLocalObject$UPDATES](#getFoldersByLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLink$UPDATES](#getLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLinkIdsByLocalObject$UPDATES](#getLinkIdsByLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLinksByLocalObject$UPDATES](#getLinksByLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLinkType$UPDATES](#getLinkType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLinkTypes$UPDATES](#getLinkTypes$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLocalObjectForFolder$UPDATES](#getLocalObjectForFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLocalObjectForLink$UPDATES](#getLocalObjectForLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getTreeAtFolder$UPDATES](#getTreeAtFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveFolderToFolder$UPDATES](#moveFolderToFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveFolderToLocalObject$UPDATES](#moveFolderToLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveFolderWithinParent$UPDATES](#moveFolderWithinParent$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveLinkToFolder$UPDATES](#moveLinkToFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveLinkToLocalObject$UPDATES](#moveLinkToLocalObject$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveLinkWithinParent$UPDATES](#moveLinkWithinParent$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[registerLinkType$UPDATES](#registerLinkType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[shiftFolderWithinParent$UPDATES](#shiftFolderWithinParent$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[shiftLinkWithinParent$UPDATES](#shiftLinkWithinParent$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateFolder$UPDATES](#updateFolder$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateLink$UPDATES](#updateLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateLinkType$UPDATES](#updateLinkType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateDatabase$UPDATES](#validateDatabase$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createFolder](#createFolder\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.links.Folder\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId_, [Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f_)`

    Deprecated.

    Create a non-root [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") Minimum properties which must be populated on the `Folder` are: none

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createLink](#createLink\(java.lang.Long,com.appiancorp.suiteapi.portal.portlets.links.Link\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId_, [Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") l_)`

    Deprecated.

    Create a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") within a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createLinkType](#createLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt_)`

    Deprecated.

    Create a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createRootFolder](#createRootFolder\(com.appiancorp.suiteapi.portal.portlets.links.Folder\))([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f_)`

    Deprecated.

    Create a root [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createRootLink](#createRootLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\))([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") link_)`

    Deprecated.

    Create a root [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `void`

    `[deleteFolder](#deleteFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deprecated.

    Delete a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `void`

    `[deleteLink](#deleteLink\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_)`

    Deprecated.

    Delete a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `void`

    `[deleteLinkType](#deleteLinkType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId_)`

    Deprecated.

    Delete a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findFoldersPaging](#findFoldersPaging\(com.appiancorp.suiteapi.portal.portlets.links.Folder,int,int\))([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchFolder_, int index_, int count_)`

    Deprecated.

    Searches through names of all created folders.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findLinksPaging](#findLinksPaging\(com.appiancorp.suiteapi.portal.portlets.links.Link,int,int\))([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchLink_, int index_, int count_)`

    Deprecated.

    Searches through names and descriptions of all created links.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findLinkTypesPaging](#findLinkTypesPaging\(com.appiancorp.suiteapi.portal.portlets.links.LinkType,int,int\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchLinkType_, int index_, int count_)`

    Deprecated.

    Searches through names and descriptions of all link types.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")[]`

    `[getChildFolders](#getChildFolders\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deprecated.

    Get an array of direct child folders of a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    `[Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")[]`

    `[getChildLinks](#getChildLinks\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deprecated.

    Get an array of direct child links of a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getFolder](#getFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deprecated.

    Get a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getFolderIdsByLocalObject](#getFolderIdsByLocalObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Get IDs of all the folders whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only the IDs of folders that are the direct children of the local object will be returned; the IDs of their sub-folders will not.

    `[Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")[]`

    `[getFoldersByLocalObject](#getFoldersByLocalObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Get all the folders whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

    `[Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLink](#getLink\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_)`

    Deprecated.

    Retrieve a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getLinkIdsByLocalObject](#getLinkIdsByLocalObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Get the IDs of all the links whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only the IDs of links that are the direct children of the local object will be returned.

    `[Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")[]`

    `[getLinksByLocalObject](#getLinksByLocalObject\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Get all the links whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only links that are the direct children of the local object will be returned.

    `[LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinkType](#getLinkType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId_)`

    Deprecated.

    Get a single [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")[]`

    `[getLinkTypes](#getLinkTypes\(\))()`

    Deprecated.

    Get all created link types

    `[LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getLocalObjectForFolder](#getLocalObjectForFolder\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_)`

    Deprecated.

    Get the [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that is the parent of the [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `[LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getLocalObjectForLink](#getLocalObjectForLink\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_)`

    Deprecated.

    Get the [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that is the parent of the [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    `[TreePivot](../../../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getTreeAtFolder](#getTreeAtFolder\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int depth_)`

    Deprecated.

    Get a [`TreePivot`](../../../common/TreePivot.html "class in com.appiancorp.suiteapi.common") containing the [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links"), the upward path to but not including the root `Folder`, and all the folder's descendants to the specified depth.

    `void`

    `[moveFolderToFolder](#moveFolderToFolder\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderToMoveId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newContainingFolderId_)`

    Deprecated.

    Move a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") so that it becomes a child of a specified `Folder`.

    `void`

    `[moveFolderToLocalObject](#moveFolderToLocalObject\(java.lang.Long,com.appiancorp.suiteapi.common.LocalObject\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Make a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") a child of a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    `void`

    `[moveFolderWithinParent](#moveFolderWithinParent\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int newPosition_)`

    Deprecated.

    Change a folder's position versus the other contents (both links and folders) of its parent.

    `void`

    `[moveLinkToFolder](#moveLinkToFolder\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newContainingFolderId_)`

    Deprecated.

    Move a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") so that its parent is a given [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    `void`

    `[moveLinkToLocalObject](#moveLinkToLocalObject\(java.lang.Long,com.appiancorp.suiteapi.common.LocalObject\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_, [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent_)`

    Deprecated.

    Make a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") a child of a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    `void`

    `[moveLinkWithinParent](#moveLinkWithinParent\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_, int newPosition_)`

    Deprecated.

    Change a link's position versus the other contents (links and folders) of its parent.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[registerLinkType](#registerLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt_)`

    Deprecated.

    Create a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") if necessary, updating it instead if already present.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[shiftFolderWithinParent](#shiftFolderWithinParent\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId_, int relativeOffset_)`

    Deprecated.

    Change a folder's position versus the other folders of its parent.

    `void`

    `[shiftLinkWithinParent](#shiftLinkWithinParent\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId_, int relativeOffset_)`

    Deprecated.

    Change a link's position versus the other links of its parent.

    `void`

    `[updateFolder](#updateFolder\(com.appiancorp.suiteapi.portal.portlets.links.Folder\))([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f_)`

    Deprecated.

    Update a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") Minimum properties which must be populated on the `Folder` are: `id`

    `void`

    `[updateFolder](#updateFolder\(com.appiancorp.suiteapi.portal.portlets.links.Folder%5B%5D\))([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")[] fs_)`

    Deprecated.

    Update folders Minimum properties which must be populated on the `Folder` are: `id`

    `void`

    `[updateLink](#updateLink\(com.appiancorp.suiteapi.portal.portlets.links.Link\))([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") l_)`

    Deprecated.

    Update a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `void`

    `[updateLink](#updateLink\(com.appiancorp.suiteapi.portal.portlets.links.Link%5B%5D\))([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")[] ls_)`

    Deprecated.

    Update links Minimum properties which must be populated on a `Link` are: `id`, `newWindow`, `linkTypeId`

    `void`

    `[updateLinkType](#updateLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt_)`

    Deprecated.

    Update an existing [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

    `void`

    `[updateLinkType](#updateLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType%5B%5D\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")[] lts_)`

    Deprecated.

    Update existing link types.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Deprecated.

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    `[DatabaseStatus](../../DatabaseStatus.html "class in com.appiancorp.suiteapi.portal")`

    `[validateDatabase](#validateDatabase\(int\))(int thoroughness_)`

    Deprecated.

    Performs validation on the database(s) associated with this service.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createRootFolder$UPDATES

        static final boolean createRootFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.createRootFolder$UPDATES)

    -   ### createRootLink$UPDATES

        static final boolean createRootLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.createRootLink$UPDATES)

    -   ### moveFolderToLocalObject$UPDATES

        static final boolean moveFolderToLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveFolderToLocalObject$UPDATES)

    -   ### moveLinkToLocalObject$UPDATES

        static final boolean moveLinkToLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveLinkToLocalObject$UPDATES)

    -   ### getLocalObjectForFolder$UPDATES

        static final boolean getLocalObjectForFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLocalObjectForFolder$UPDATES)

    -   ### getLocalObjectForLink$UPDATES

        static final boolean getLocalObjectForLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLocalObjectForLink$UPDATES)

    -   ### getFoldersByLocalObject$UPDATES

        static final boolean getFoldersByLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getFoldersByLocalObject$UPDATES)

    -   ### getFolderIdsByLocalObject$UPDATES

        static final boolean getFolderIdsByLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getFolderIdsByLocalObject$UPDATES)

    -   ### getLinksByLocalObject$UPDATES

        static final boolean getLinksByLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLinksByLocalObject$UPDATES)

    -   ### getLinkIdsByLocalObject$UPDATES

        static final boolean getLinkIdsByLocalObject$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLinkIdsByLocalObject$UPDATES)

    -   ### createFolder$UPDATES

        static final boolean createFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.createFolder$UPDATES)

    -   ### updateFolder$UPDATES

        static final boolean updateFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.updateFolder$UPDATES)

    -   ### deleteFolder$UPDATES

        static final boolean deleteFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.deleteFolder$UPDATES)

    -   ### getFolder$UPDATES

        static final boolean getFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getFolder$UPDATES)

    -   ### getChildFolders$UPDATES

        static final boolean getChildFolders$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getChildFolders$UPDATES)

    -   ### getChildLinks$UPDATES

        static final boolean getChildLinks$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getChildLinks$UPDATES)

    -   ### getTreeAtFolder$UPDATES

        static final boolean getTreeAtFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getTreeAtFolder$UPDATES)

    -   ### moveFolderToFolder$UPDATES

        static final boolean moveFolderToFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveFolderToFolder$UPDATES)

    -   ### moveFolderWithinParent$UPDATES

        static final boolean moveFolderWithinParent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveFolderWithinParent$UPDATES)

    -   ### shiftFolderWithinParent$UPDATES

        static final boolean shiftFolderWithinParent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.shiftFolderWithinParent$UPDATES)

    -   ### createLink$UPDATES

        static final boolean createLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.createLink$UPDATES)

    -   ### updateLink$UPDATES

        static final boolean updateLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.updateLink$UPDATES)

    -   ### deleteLink$UPDATES

        static final boolean deleteLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.deleteLink$UPDATES)

    -   ### getLink$UPDATES

        static final boolean getLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLink$UPDATES)

    -   ### moveLinkToFolder$UPDATES

        static final boolean moveLinkToFolder$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveLinkToFolder$UPDATES)

    -   ### moveLinkWithinParent$UPDATES

        static final boolean moveLinkWithinParent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.moveLinkWithinParent$UPDATES)

    -   ### shiftLinkWithinParent$UPDATES

        static final boolean shiftLinkWithinParent$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.shiftLinkWithinParent$UPDATES)

    -   ### registerLinkType$UPDATES

        static final boolean registerLinkType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.registerLinkType$UPDATES)

    -   ### createLinkType$UPDATES

        static final boolean createLinkType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.createLinkType$UPDATES)

    -   ### updateLinkType$UPDATES

        static final boolean updateLinkType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.updateLinkType$UPDATES)

    -   ### deleteLinkType$UPDATES

        static final boolean deleteLinkType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.deleteLinkType$UPDATES)

    -   ### getLinkType$UPDATES

        static final boolean getLinkType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLinkType$UPDATES)

    -   ### getLinkTypes$UPDATES

        static final boolean getLinkTypes$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.getLinkTypes$UPDATES)

    -   ### findLinksPaging$UPDATES

        static final boolean findLinksPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.findLinksPaging$UPDATES)

    -   ### findLinkTypesPaging$UPDATES

        static final boolean findLinkTypesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.findLinkTypesPaging$UPDATES)

    -   ### findFoldersPaging$UPDATES

        static final boolean findFoldersPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.findFoldersPaging$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.rollbackUpdateUsernames$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.validate$UPDATES)

    -   ### validateDatabase$UPDATES

        static final boolean validateDatabase$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.links.LinksService.validateDatabase$UPDATES)

-   ## Method Details

    -   ### createRootFolder

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createRootFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f\_)

        Deprecated.

        Create a root [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links"). This `Folder` is the ultimate ancestor of all folders and links [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") within the tree of which it is the root. Minimum properties which must be populated on the `Folder` object are: none Note: A root folder is merely a normal folder with no parent `Folder` or parent [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

        Parameters:

        `f_` - the `Folder` to be created. The `ID` field is ignored because it is assigned by the service.

        Returns:

        the ID for the new `Folder`.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createRootLink

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createRootLink([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") link\_)

        Deprecated.

        Create a root [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links"). Minimum properties which must be populated on the `Link` are: `newWindow` and `linkTypeId`

        Parameters:

        `link_` - the `Link` to be created. The `ID` field is ignored because it is assigned by the service.

        Returns:

        the ID for the new `Link`.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveFolderToLocalObject

        void moveFolderToLocalObject([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Make a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") a child of a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        Parameters:

        `folderId_` - the ID of the `Folder`.

        `parent_` - the `LocalObject` representing the parent of the `Folder`

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the `Folder` with the given ID does not exist

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### moveLinkToLocalObject

        void moveLinkToLocalObject([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_, [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Make a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") a child of a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        Parameters:

        `linkId_` - the ID of the `Link`.

        `parent_` - the `LocalObject` representing the parent of the `Link`

        Throws:

        `InvalidlLinkException` - if no `Link` with the given ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

        See Also:

        -   [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### getLocalObjectForFolder

        [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getLocalObjectForFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get the [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that is the parent of the [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `folderId_` - the ID of the `Folder`

        Returns:

        the `LocalObject` representing the parent of the `Folder`. If there is no related `LocalObject`, an `InvalidFolderException` is thrown.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if no `Folder` with the given ID exists or if the folder has no related `LocalObject`.

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLocalObjectForLink

        [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getLocalObjectForLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get the [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") that is the parent of the [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Parameters:

        `linkId_` - the ID of the `Link`

        Returns:

        the `LocalObject` representing the parent of the `Link` If there is no related `LocalObject`, an `InvalidLinkException` is thrown.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the `Link` does not exist or when passing in a root `Link` which has no `LocalObject` parent as a parameter

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFoldersByLocalObject

        [Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] getFoldersByLocalObject([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the folders whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common"). Only folders that are the direct children of the local object will be returned; their sub-folders will not.

        Parameters:

        `parent_` - the `LocalObject` whose child folders are to be retrieved

        Returns:

        the child folders.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the local object is invalid. LocalObject types that are supported are:

        -   [`User`](../../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Group`](../../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Portlet`](../../Portlet.html "class in com.appiancorp.suiteapi.portal")
        -   [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    -   ### getFolderIdsByLocalObject

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getFolderIdsByLocalObject([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get IDs of all the folders whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only the IDs of folders that are the direct children of the local object will be returned; the IDs of their sub-folders will not.

        Parameters:

        `parent_` - the `LocalObject` whose child folder IDs are to be retrieved

        Returns:

        IDs for all the child folders.

        Throws:

        `[InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the local object is invalid. LocalObject types that are supported are:

        -   [`User`](../../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Group`](../../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Portlet`](../../Portlet.html "class in com.appiancorp.suiteapi.portal")
        -   [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLinksByLocalObject

        [Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] getLinksByLocalObject([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get all the links whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only links that are the direct children of the local object will be returned.

        Parameters:

        `parent_` - the `LocalObject` whose child links are to be retrieved

        Returns:

        all the child links.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the local object is invalid. LocalObject types that are supported are:

        -   [`User`](../../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Group`](../../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Portlet`](../../Portlet.html "class in com.appiancorp.suiteapi.portal")
        -   [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

    -   ### getLinkIdsByLocalObject

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getLinkIdsByLocalObject([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") parent\_) throws [InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the IDs of all the links whose parent is the specified [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") Only the IDs of links that are the direct children of the local object will be returned.

        Parameters:

        `parent_` - the `LocalObject` whose child link IDs are to be retrieved

        Returns:

        IDs for all the child links.

        Throws:

        `[InvalidLocalObjectTypeException](../../../common/exceptions/InvalidLocalObjectTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the local object is invalid. LocalObject types that are supported are:

        -   [`User`](../../../personalization/User.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Group`](../../../personalization/Group.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Portlet`](../../Portlet.html "class in com.appiancorp.suiteapi.portal")
        -   [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createFolder

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId\_, [Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Create a non-root [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") Minimum properties which must be populated on the `Folder` are: none

        Parameters:

        `parentFolderId_` - The ID of the parent `Folder` within which this `Folder` will be created.

        `f_` - The `Folder` to create. The `id` field is ignored.

        Returns:

        The ID for the new `Folder`.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the parent folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateFolder

        void updateFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") f\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") Minimum properties which must be populated on the `Folder` are: `id`

        Parameters:

        `f_` - the new values for the `Folder`.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the ID of the `Folder` object does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateFolder

        void updateFolder([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] fs\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update folders Minimum properties which must be populated on the `Folder` are: `id`

        Parameters:

        `fs_` - the new values for the folders.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the ID of any of the `Folder` objects does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteFolder

        void deleteFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Delete a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").
        When a `Folder` is deleted, all its descendent folders and links are also deleted.

        Parameters:

        `folderId_` - the ID of the `Folder` to delete.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - If the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFolder

        [Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") getFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `folderId_` - the ID of the `Folder` to retrieve.

        Returns:

        the `Folder`.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the `Folder` ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildFolders

        [Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] getChildFolders([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get an array of direct child folders of a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Parameters:

        `folderId_` - the ID of the `Folder` whose child folders are to be returned

        Returns:

        the direct child folders

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getChildLinks

        [Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] getChildLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get an array of direct child links of a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Parameters:

        `folderId_` - the ID of the `Folder` whose child links are to be returned

        Returns:

        the direct child links

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getTreeAtFolder

        [TreePivot](../../../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getTreeAtFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int depth\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get a [`TreePivot`](../../../common/TreePivot.html "class in com.appiancorp.suiteapi.common") containing the [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links"), the upward path to but not including the root `Folder`, and all the folder's descendants to the specified depth. The tree pivot contains an array of `TreeNodes` which will either contain a `Folder` or `Link` in their data field

        Parameters:

        `folderId_` - The `Folder` on which to pivot.

        `depth_` - The depth to which to return children. Zero returns no children, -1 returns all descendants.

        Returns:

        the `TreePivot`

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveFolderToFolder

        void moveFolderToFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderToMoveId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newContainingFolderId\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links"), [RecursiveRelationshipException](../../../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Move a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") so that it becomes a child of a specified `Folder`.

        Parameters:

        `folderToMoveId_` - the ID of the `Folder` to move.

        `newContainingFolderId_` - the ID of the new parent `Folder`.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if either folder ID does not correspond to a valid folder

        `[RecursiveRelationshipException](../../../common/exceptions/RecursiveRelationshipException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `newContainingFolderId_` is equal to `folderToMoveId_`, or if `newContainingFolderId_` is equal to any of the child folder IDs of the folder to be moved

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveFolderWithinParent

        void moveFolderWithinParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int newPosition\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Change a folder's position versus the other contents (both links and folders) of its parent. Its parent can be either a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") or a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common").

        Parameters:

        `folderId_` - The ID of the `Folder` to move.

        `newPosition_` - The new position (0-based) for the `Folder`. If this value is equal to or greater than the number of content items, then the `Folder` is moved to the end. If newPosition is less than 0, then it will be normalized to be 0.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### shiftFolderWithinParent

        void shiftFolderWithinParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") folderId\_, int relativeOffset\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Change a folder's position versus the other folders of its parent. Its parent can be either a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") or a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        Parameters:

        `folderId_` - the ID of the `Folder` to move.

        `relativeOffset_` - this should be positive to increase the folder's index in the folder array, and negative to decrease the folder's index in the folder array. If the offset would move the folder before the beginning or after the end of the folder array, the folder will be moved to the beginning or to the end respectively.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createLink

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentFolderId\_, [Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") l\_) throws [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Create a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") within a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links"). Minimum properties which must be populated on the [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") are: `newWindow`, `linkTypeId`

        Parameters:

        `parentFolderId_` - the ID of the `Folder` in which to place the new `Link`.

        `l_` - The new `Link`. The `ID` field will be ignored.

        Returns:

        the ID of the new link.

        Throws:

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the parent folder ID does not correspond to a valid folder

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateLink

        void updateLink([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") l\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links"). Minimum properties which must be populated on the `Link` are: `id`, `newWindow`, `linkTypeId`

        Parameters:

        `l_` - the new values for the `Link`.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the ID of the `Link` does not correnpond to a valid `Link`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateLink

        void updateLink([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] ls\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update links Minimum properties which must be populated on a `Link` are: `id`, `newWindow`, `linkTypeId`

        Parameters:

        `ls_` - The new values for the links.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - If any of the IDs of the links does not correnpond to a valid `Link`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteLink

        void deleteLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Delete a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `linkId_` - the ID of the `Link` to be deleted.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the ID does not correspond to a valid link

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLink

        [Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") getLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Retrieve a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `linkId_` - the ID of the `Link` to be returned.

        Returns:

        the link

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - If the ID does not correspond to a valid `Link`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveLinkToFolder

        void moveLinkToFolder([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newContainingFolderId\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links"), [InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Move a [`Link`](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") so that its parent is a given [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Parameters:

        `linkId_` - the ID of the `Link` to move.

        `newContainingFolderId_` - the ID of the new parent `Folder`.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the the link ID does not correspond to a valid `Link`

        `[InvalidFolderException](InvalidFolderException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the folder id does not correspond to a valid `Folder`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveLinkWithinParent

        void moveLinkWithinParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_, int newPosition\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Change a link's position versus the other contents (links and folders) of its parent. Its parent can be either a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") or a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        Parameters:

        `linkId_` - the ID of the `Link` to move.

        `newPosition_` - the new position (0-based) for the `Link`. If this value is equal to or greater than the number of content items, then the `Link` is moved to the end. If newPosition is less than 0, then it will be normalized to be 0.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the link ID does not correspond to a valid `Link`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### shiftLinkWithinParent

        void shiftLinkWithinParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkId\_, int relativeOffset\_) throws [InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Change a link's position versus the other links of its parent. Its parent can be either a [`Folder`](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") or a [`LocalObject`](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

        Parameters:

        `linkId_` - the ID of the `Link` to move.

        `relativeOffset_` - This should be positive to increase the link's index in the link array, and negative to decrease the links index in the link array. If the offset would move the link before the beginning or after the end of the link array, the link will be moved to the beginning or to the end respectively.

        Throws:

        `[InvalidLinkException](InvalidLinkException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the link ID does not correspond to a valid `Link`

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### registerLinkType

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") registerLinkType([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt\_) throws [OutOfLinkTypesException](OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Create a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") if necessary, updating it instead if already present. The link type is primary-keyed on its `name` property for purposes of registration (ie if a link type already exists which has the same name as the link type which is being registered, then that link type will be updated) Minimum properties which must be populated on the `LinkType` are: none

        Parameters:

        `lt_` - the link type to register. The `ID` field will be ignored.

        Returns:

        the ID for the new link type.

        Throws:

        `[OutOfLinkTypesException](OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if a new link type is being created, adn 255 link types have already been created before this one.

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createLinkType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createLinkType([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt\_) throws [OutOfLinkTypesException](OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Create a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links"). There may be a maximum of 255 link types. Note that this method, unlike [`registerLinkType(com.appiancorp.suiteapi.portal.portlets.links.LinkType)`](#registerLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\)) will create another link type even if there exists a link type with the same name. Minimum properties which must be populated on the `LinkType` are: none

        Parameters:

        `lt_` - the link type to create. The `ID` field will be ignored.

        Returns:

        the ID for the new link type.

        Throws:

        `[OutOfLinkTypesException](OutOfLinkTypesException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if 255 link types have already been created before this one.

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateLinkType

        void updateLinkType([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") lt\_) throws [InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update an existing [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links"). Minimum properties which must be populated on the `LinkType` are: `id`

        Parameters:

        `lt_` - the link type to be updated

        Throws:

        `[InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the `id` of the link type does not correspond to a valid link type

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateLinkType

        void updateLinkType([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] lts\_) throws [InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Update existing link types. Minimum properties which must be populated on each `LinkType` are: `id`

        Parameters:

        `lts_` - The new values for the link types.

        Throws:

        `[InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - If any of the link type IDs does not correspond to a valid link type

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteLinkType

        void deleteLinkType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId\_) throws [InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Delete a [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `linkTypeId_` - the ID of the link type to delete.

        Throws:

        `[InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the link type ID does not correspond to a valid link type

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLinkType

        [LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") getLinkType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId\_) throws [InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")

        Deprecated.

        Get a single [`LinkType`](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links").

        Parameters:

        `linkTypeId_` - The ID of the link type to retrieve

        Returns:

        the link type.

        Throws:

        `[InvalidLinkTypeException](InvalidLinkTypeException.html "class in com.appiancorp.suiteapi.portal.portlets.links")` - if the link type ID does not correspond to a valid link type

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getLinkTypes

        [LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")\[\] getLinkTypes()

        Deprecated.

        Get all created link types

        Returns:

        all the link types.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findLinksPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findLinksPaging([Link](Link.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchLink\_, int index\_, int count\_)

        Deprecated.

        Searches through names and descriptions of all created links. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab"); items of any other type are exact-matched.

        Parameters:

        `searchLink_` - the `Link` used in the search

        `index_` - the index of the first `Link` that will be returned

        `count_` - the number of links to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `Link` objects matching the search terms

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findLinkTypesPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findLinkTypesPaging([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchLinkType\_, int index\_, int count\_)

        Deprecated.

        Searches through names and descriptions of all link types. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab"); items of any other type are exact-matched.

        Parameters:

        `searchLinkType_` - the `LinkType` used in the search

        `index_` - the index of the first `LinkType` that will be returned

        `count_` - the number of link types to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `LinkType` objects matching the search terms

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findFoldersPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findFoldersPaging([Folder](Folder.html "class in com.appiancorp.suiteapi.portal.portlets.links") searchFolder\_, int index\_, int count\_)

        Deprecated.

        Searches through names of all created folders. The search bean contains nulls for match-all wildcards. `java.lang.String` items are matched using regular expressions (e.g., "ab\*" matches those items beginning with "ab"); items of any other type are exact-matched.

        Parameters:

        `searchFolder_` - the `Folder` used in the search

        `index_` - the index of the first `Folder` that will be returned

        `count_` - the number of folders to be returned in the `ResultPage`

        Returns:

        a `ResultPage` containing the list of `Folder` objects matching the search terms

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../../../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[DuplicateNameException](../../../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../../../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Deprecated.

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateDatabase

        [DatabaseStatus](../../DatabaseStatus.html "class in com.appiancorp.suiteapi.portal") validateDatabase(int thoroughness\_)

        Deprecated.

        Performs validation on the database(s) associated with this service.

        Parameters:

        `thoroughness_` - indicates the level of thoroughness of the query. Values are [`DatabaseStatus.QUICK`](../../DatabaseStatus.html#QUICK) and [`DatabaseStatus.SLOW`](../../DatabaseStatus.html#SLOW)

        Returns:

        a `DatabaseStatus` object encapsulating the results of the validation query.