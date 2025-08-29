---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PageService.html
original_path: api/com/appiancorp/suiteapi/portal/PageService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface PageService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface PageService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for access and modification of pages. There are two kinds of pages: portal pages are pages that contain portlets (all information must be displayed through portlets); custom pages are custom-made external JSP/HTML pages. All pages can be associated with categories for searching/browsing. A page can also be associated with a group (Department/Team) in which case it will be listed in the main left navigation bar under the group name if the user has sufficient privileges for viewing the page.

Portal pages have a "zone count" attribute which specifies the number of zones the page has for placing portlets. The portlets contained in a portal page can be Deactivated or Deleted; deactivating a portlet just hides it from the page, while deleting a portlet removes it permanently along with all its content (for shared portlets, all instances of the portlet on other pages will also be removed).

Pages can be private or public. The security for private pages is defined as follows:

-   a Portal Administrator can Delete, Edit, Approve, View, Target, Rename, Change Template, and Categorize the page (all the possible opertions)
-   a Page Creator can Delete, Edit, View, Target, Rename, Change Template, and Categorize the page (same as Portal Administrator, but can't Approve)
-   a Page Administrator can Delete, Edit, View, Target, Rename, Change Template, and Categorize the page (same as Page Creator)
-   a Page Editor can View and Edit the page
-   a Page Approver can View and Approve the page
-   a Page Viewer can View the page
-   an Anonymous User or Basic User with no explicit privileges (such as Page Admin/Editor/Approver/Viewer) cannot perform any operations

For public pages, the security is the same, except that everyone is allowed to view the page (including Anonymous and Basic Users). Personal and Department/Team pages are defined as private.

Portlets within portal pages have an additional separate security map defined as follows:

-   a Portal Administrator, Portlet Creator, or Portlet Administrator can Delete, Edit, View, Rename, Change Container, and Target the portlet (all the possible opertions)
-   a Portlet Editor can View and Edit the portlet
-   a Portlet Viewer can View the portlet
-   an Anonymous User or Basic User with no explicit privileges (such as Portlet Admin/Editor/Approver/Viewer) cannot perform any operations

When a user edits a page, the page is locked and a draft is created. Unless a user has the privileges to break the lock on the page, he/she will not be able to edit the page. If the page options are set such that modifications to the page require approval, the draft first has to be approved at which point it is published. Once a draft is published, it will be visible to page viewers.

Contributions are a way to log and keep track of all the content additions made by users. When a user submits new/updated content, or removes content, [`addContribution(com.appiancorp.suiteapi.portal.Contribution)`](#addContribution\(com.appiancorp.suiteapi.portal.Contribution\))/[`updateContribution(com.appiancorp.suiteapi.portal.Contribution)`](#updateContribution\(com.appiancorp.suiteapi.portal.Contribution\)) or [`deleteContribution(com.appiancorp.suiteapi.portal.Contribution)`](#deleteContribution\(com.appiancorp.suiteapi.portal.Contribution\)) should be called to log the event. This should be done for modifications of all content (not just pages but all Appian Type objects such as forums, documents, etc). The [`getContributionsForTypePaging(com.appiancorp.suiteapi.portal.Contribution, int, int, java.lang.Integer, java.lang.Integer)`](#getContributionsForTypePaging\(com.appiancorp.suiteapi.portal.Contribution,int,int,java.lang.Integer,java.lang.Integer\)) method can then be used later to retrieve the logged user content modifications.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`Page`](Page.html "class in com.appiancorp.suiteapi.portal")
-   [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal")
-   [`PageRoleMap`](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")
-   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`Contribution`](Contribution.html "class in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addContribution$UPDATES](#addContribution$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addPortlet$UPDATES](#addPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addPortlets$UPDATES](#addPortlets$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveDraft$UPDATES](#approveDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changePageDescription$UPDATES](#changePageDescription$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changePageTemplate$UPDATES](#changePageTemplate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createPage$UPDATES](#createPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createPages$UPDATES](#createPages$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATE_PORTLET](#DEACTIVATE_PORTLET)`

    Deprecated.

    A constant representing the deactivation of a portlet

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DELETE_PORTLET](#DELETE_PORTLET)`

    Deprecated.

    A constant representing the deletion of a portlet

    `static final boolean`

    `[deleteContribution$UPDATES](#deleteContribution$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteDraft$UPDATES](#deleteDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deletePage$UPDATES](#deletePage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForPage$UPDATES](#getAccessLevelForPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForPages$UPDATES](#getAccessLevelForPages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContributions$UPDATES](#getContributions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContributionsForType$UPDATES](#getContributionsForType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContributionsForTypePaging$UPDATES](#getContributionsForTypePaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDraft$UPDATES](#getDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMaximumContributions$UPDATES](#getMaximumContributions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPage$UPDATES](#getPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPages$UPDATES](#getPages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesList$UPDATES](#getPagesList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesPaging$UPDATES](#getPagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForPage$UPDATES](#getRoleMapForPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[movePortlet$UPDATES](#movePortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[peekDraft$UPDATES](#peekDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[publishDraft$UPDATES](#publishDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[publishDrafts$UPDATES](#publishDrafts$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removePortlet$UPDATES](#removePortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[renamePage$UPDATES](#renamePage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[returnDraft$UPDATES](#returnDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setIsPagePublic$UPDATES](#setIsPagePublic$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setMaximumContributions$UPDATES](#setMaximumContributions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setPageApproval$UPDATES](#setPageApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setPageCategory$UPDATES](#setPageCategory$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setPageDataContextType$UPDATES](#setPageDataContextType$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setPageUrl$UPDATES](#setPageUrl$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setRoleMapForPage$UPDATES](#setRoleMapForPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[takeDraft$UPDATES](#takeDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unlockDraft$UPDATES](#unlockDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateContribution$UPDATES](#updateContribution$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePage$UPDATES](#updatePage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePages$UPDATES](#updatePages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateTypedValues$UPDATES](#validateTypedValues$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addContribution](#addContribution\(com.appiancorp.suiteapi.portal.Contribution\))([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `void`

    `[addPortlet](#addPortlet\(java.lang.Long,java.lang.Long,java.lang.Integer,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") zone_, int index_)`

    Deprecated.

    Attempts to lock the current draft of the specified page and add a portlet.

    `void`

    `[addPortlets](#addPortlets\(java.lang.Long,java.lang.Long%5B%5D,java.lang.Integer%5B%5D,int%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] zones_, int[] indices_)`

    Deprecated.

    Attempts to lock the current draft of the specified page and add portlets.

    `void`

    `[approveDraft](#approveDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Applies the changes made to the draft of the specified page, and clears the draft.

    `void`

    `[changePageDescription](#changePageDescription\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newDescription_)`

    Deprecated.

    Changes the description of the specified page.

    `void`

    `[changePageTemplate](#changePageTemplate\(java.lang.Long,java.lang.String,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newTemplateName_, int newZoneCount_)`

    Deprecated.

    Attempts to lock the current draft for the specified page (i.e., put the page into draft state) and changes the template in the draft.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createPage](#createPage\(com.appiancorp.suiteapi.portal.Page\))([Page](Page.html "class in com.appiancorp.suiteapi.portal") page_)`

    Deprecated.

    Creates a page using the attributes specified in the passed object.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createPages](#createPages\(com.appiancorp.suiteapi.portal.Page%5B%5D\))([Page](Page.html "class in com.appiancorp.suiteapi.portal")[] pages_)`

    Deprecated.

    Creates pages in bulk using the attributes specified in the passed objects.

    `void`

    `[deleteContribution](#deleteContribution\(com.appiancorp.suiteapi.portal.Contribution\))([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `void`

    `[deleteDraft](#deleteDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Cancels the changes made to the draft for the specified page, and clears the draft.

    `void`

    `[deletePage](#deletePage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Deletes the specified page.

    `int`

    `[getAccessLevelForPage](#getAccessLevelForPage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Gets the current user's access level for the given page.

    `int[]`

    `[getAccessLevelForPages](#getAccessLevelForPages\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_)`

    Deprecated.

    Gets the current user's access levels for the given pages.

    `[Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getContributions](#getContributions\(\))()`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `[Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getContributionsForType](#getContributionsForType\(com.appiancorp.suiteapi.portal.Contribution\))([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getContributionsForTypePaging](#getContributionsForTypePaging\(com.appiancorp.suiteapi.portal.Contribution,int,int,java.lang.Integer,java.lang.Integer\))([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `[Page](Page.html "class in com.appiancorp.suiteapi.portal")`

    `[getDraft](#getDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Retrieves the draft version of the specified page.

    `int`

    `[getMaximumContributions](#getMaximumContributions\(\))()`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `[Page](Page.html "class in com.appiancorp.suiteapi.portal")`

    `[getPage](#getPage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Gets the specified portal page.

    `[Page](Page.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPages](#getPages\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_)`

    Deprecated.

    use [`getPagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getPagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesList](#getPagesList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_)`

    Deprecated.

    Gets the specified portal pages, returning the valid results even if all the results cannot be retrieved (for instance, if some of the pages corresponding to the IDs no longer exist).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesPaging](#getPagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the specified portal pages as an array of `Page` objects in a `ResultPage`.

    `[PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")`

    `[getRoleMapForPage](#getRoleMapForPage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Get the role map of a page, specifiying the administrators, editors and viewers of the page.

    `void`

    `[movePortlet](#movePortlet\(java.lang.Long,java.lang.Long,java.lang.Integer,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") zone_, int index_)`

    Deprecated.

    Attempts to lock the current draft of the specified page and move a portlet within the page.

    `[Page](Page.html "class in com.appiancorp.suiteapi.portal")`

    `[peekDraft](#peekDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Retrieves the pending draft if present or the published page, without setting the draft owner.

    `void`

    `[publishDraft](#publishDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Submits the current draft of the specified page for publication, and releases any lock on the draft.

    `void`

    `[publishDrafts](#publishDrafts\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_)`

    Deprecated.

    Submits the current drafts of the specified pages for publication, and releases any lock on the drafts.

    `void`

    `[removePortlet](#removePortlet\(java.lang.Long,java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") action_)`

    Deprecated.

    Attempts to lock the current draft of the specified page and remove a portlet.

    `void`

    `[renamePage](#renamePage\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newName_)`

    Deprecated.

    Renames the specified page to the specified name.

    `void`

    `[returnDraft](#returnDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Returns a submitted page back to a draft state (`Page.STATE_NEW_DRAFT` or `Page.STATE_DRAFT`).

    `void`

    `[setIsPagePublic](#setIsPagePublic\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, boolean isPublic_)`

    Deprecated.

    Changes whether the page is publicly viewable.

    `void`

    `[setMaximumContributions](#setMaximumContributions\(int\))(int size_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `void`

    `[setPageApproval](#setPageApproval\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, boolean approvalRequired_)`

    Deprecated.

    Sets whether approval is required for page modifications.

    `void`

    `[setPageCategory](#setPageCategory\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_)`

    Deprecated.

    Changes the category for the specified page.

    `void`

    `[setPageDataContextType](#setPageDataContextType\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataContextType)`

    Deprecated.

    Sets the type of data that will be sent to the page when it is requested.

    `void`

    `[setPageUrl](#setPageUrl\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url_)`

    Deprecated.

    Changes the URL for the specified custom page.

    `void`

    `[setRoleMapForPage](#setRoleMapForPage\(java.lang.Long,com.appiancorp.suiteapi.portal.PageRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") map_)`

    Deprecated.

    Set the role map for a page

    `[Page](Page.html "class in com.appiancorp.suiteapi.portal")`

    `[takeDraft](#takeDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Retrieves the draft version of the specified page and locks it for **editing**.

    `void`

    `[unlockDraft](#unlockDraft\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Releases the lock on the draft for the specified page, if the current user owns the draft.

    `void`

    `[updateContribution](#updateContribution\(com.appiancorp.suiteapi.portal.Contribution\))([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution_)`

    Deprecated.

    This functionality is no longer supported and will be removed in the next release.

    `void`

    `[updatePage](#updatePage\(com.appiancorp.suiteapi.portal.Page\))([Page](Page.html "class in com.appiancorp.suiteapi.portal") page_)`

    Deprecated.

    Updates a page using the attributes specified in the passed object.

    `void`

    `[updatePages](#updatePages\(com.appiancorp.suiteapi.portal.Page%5B%5D\))([Page](Page.html "class in com.appiancorp.suiteapi.portal")[] pages_)`

    Deprecated.

    Updates pages in bulk using the attributes specified in the passed objects.

    `boolean`

    `[validateTypedValues](#validateTypedValues\(com.appiancorp.suiteapi.type.TypedValue%5B%5D\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")[] typedValues)`

    Deprecated.

    Validates given TypedValues.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### DELETE\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DELETE\_PORTLET

        Deprecated.

        A constant representing the deletion of a portlet

    -   ### DEACTIVATE\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATE\_PORTLET

        Deprecated.

        A constant representing the deactivation of a portlet

    -   ### getPage$UPDATES

        static final boolean getPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getPage$UPDATES)

    -   ### getPages$UPDATES

        static final boolean getPages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getPages$UPDATES)

    -   ### createPage$UPDATES

        static final boolean createPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.createPage$UPDATES)

    -   ### createPages$UPDATES

        static final boolean createPages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.createPages$UPDATES)

    -   ### updatePage$UPDATES

        static final boolean updatePage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.updatePage$UPDATES)

    -   ### updatePages$UPDATES

        static final boolean updatePages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.updatePages$UPDATES)

    -   ### deletePage$UPDATES

        static final boolean deletePage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.deletePage$UPDATES)

    -   ### getAccessLevelForPage$UPDATES

        static final boolean getAccessLevelForPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getAccessLevelForPage$UPDATES)

    -   ### renamePage$UPDATES

        static final boolean renamePage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.renamePage$UPDATES)

    -   ### changePageDescription$UPDATES

        static final boolean changePageDescription$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.changePageDescription$UPDATES)

    -   ### getDraft$UPDATES

        static final boolean getDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getDraft$UPDATES)

    -   ### peekDraft$UPDATES

        static final boolean peekDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.peekDraft$UPDATES)

    -   ### takeDraft$UPDATES

        static final boolean takeDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.takeDraft$UPDATES)

    -   ### approveDraft$UPDATES

        static final boolean approveDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.approveDraft$UPDATES)

    -   ### deleteDraft$UPDATES

        static final boolean deleteDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.deleteDraft$UPDATES)

    -   ### publishDraft$UPDATES

        static final boolean publishDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.publishDraft$UPDATES)

    -   ### publishDrafts$UPDATES

        static final boolean publishDrafts$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.publishDrafts$UPDATES)

    -   ### returnDraft$UPDATES

        static final boolean returnDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.returnDraft$UPDATES)

    -   ### unlockDraft$UPDATES

        static final boolean unlockDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.unlockDraft$UPDATES)

    -   ### changePageTemplate$UPDATES

        static final boolean changePageTemplate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.changePageTemplate$UPDATES)

    -   ### setPageCategory$UPDATES

        static final boolean setPageCategory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setPageCategory$UPDATES)

    -   ### setPageUrl$UPDATES

        static final boolean setPageUrl$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setPageUrl$UPDATES)

    -   ### setPageApproval$UPDATES

        static final boolean setPageApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setPageApproval$UPDATES)

    -   ### setIsPagePublic$UPDATES

        static final boolean setIsPagePublic$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setIsPagePublic$UPDATES)

    -   ### addPortlet$UPDATES

        static final boolean addPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.addPortlet$UPDATES)

    -   ### removePortlet$UPDATES

        static final boolean removePortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.removePortlet$UPDATES)

    -   ### movePortlet$UPDATES

        static final boolean movePortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.movePortlet$UPDATES)

    -   ### getRoleMapForPage$UPDATES

        static final boolean getRoleMapForPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getRoleMapForPage$UPDATES)

    -   ### setRoleMapForPage$UPDATES

        static final boolean setRoleMapForPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setRoleMapForPage$UPDATES)

    -   ### addContribution$UPDATES

        static final boolean addContribution$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.addContribution$UPDATES)

    -   ### updateContribution$UPDATES

        static final boolean updateContribution$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.updateContribution$UPDATES)

    -   ### deleteContribution$UPDATES

        static final boolean deleteContribution$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.deleteContribution$UPDATES)

    -   ### getContributions$UPDATES

        static final boolean getContributions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getContributions$UPDATES)

    -   ### getContributionsForType$UPDATES

        static final boolean getContributionsForType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getContributionsForType$UPDATES)

    -   ### getContributionsForTypePaging$UPDATES

        static final boolean getContributionsForTypePaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getContributionsForTypePaging$UPDATES)

    -   ### setMaximumContributions$UPDATES

        static final boolean setMaximumContributions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setMaximumContributions$UPDATES)

    -   ### getMaximumContributions$UPDATES

        static final boolean getMaximumContributions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getMaximumContributions$UPDATES)

    -   ### getAccessLevelForPages$UPDATES

        static final boolean getAccessLevelForPages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getAccessLevelForPages$UPDATES)

    -   ### addPortlets$UPDATES

        static final boolean addPortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.addPortlets$UPDATES)

    -   ### getPagesPaging$UPDATES

        static final boolean getPagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getPagesPaging$UPDATES)

    -   ### getPagesList$UPDATES

        static final boolean getPagesList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.getPagesList$UPDATES)

    -   ### validateTypedValues$UPDATES

        static final boolean validateTypedValues$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.validateTypedValues$UPDATES)

    -   ### setPageDataContextType$UPDATES

        static final boolean setPageDataContextType$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageService.setPageDataContextType$UPDATES)

-   ## Method Details

    -   ### getPage

        [Page](Page.html "class in com.appiancorp.suiteapi.portal") getPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the specified portal page. If a published version does not exist for the page, the draft is returned. If a submitted draft exists for the page, the draft is returned with the state set as [`Page.STATE_DRAFT`](Page.html#STATE_DRAFT). If a published version exists for the page, the published version is returned.

        Parameters:

        `pageId_` - The ID of the page to retrieve.

        Returns:

        the requested page.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not authorized to view the page

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid; this exception is not thrown if the user is deactivated, so the caller should validate that the user is active before calling (known issue)

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPages

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Page](Page.html "class in com.appiancorp.suiteapi.portal")\[\] getPages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        use [`getPagesPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getPagesPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Gets the specified portal pages. `null` is returned for each page that does not exist, or that the user is not authorized to view. Also see [`getPage(Long)`](#getPage\(java.lang.Long\))

        Parameters:

        `pageIds_` - the IDs of the portal pages to retrieve.

        Returns:

        the requested pages. An array item is set to `null` for each page that does not exist, or that the current user does not have permission to view.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous and tries to view pages that anonymous users have no permission to access

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the specified pages do not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `pageIds_` array or any of its elements is `null`

    -   ### createPage

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createPage([Page](Page.html "class in com.appiancorp.suiteapi.portal") page\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a page using the attributes specified in the passed object. If a `group` attribute is specified, the current user must be an administrator of that group; creates the two way association between the group and the new page. The new page's state will be `Page.STATE_NEW_DRAFT`; only the creator and a portal administrator will be able to view/modify the page. The user making this call becomes the creator of the page.

        Parameters:

        `page_` - The page to create. The following fields are the minimum required attributes that must not be `null` to successfully create the page: `name`, `template` (a tiles reference for the template JSP), `zoneCount` (see [`Page.setZoneCount(int)`](Page.html#setZoneCount\(int\))). The following attributes are optional: `description`, `category`, `approvalRequired`, `group`, `public`, `type`, and `url` (note: url is applicable only for page type [`PageInfo.TYPE_CUSTOM`](PageInfo.html#TYPE_CUSTOM)). For the allowed values for `type` see `PageInfo.TYPE_XXX` constants. All other attributes are ignored. This is the same whether or not the page is a custom page - attributes that don't make sense for a custom page (such as `zoneCount`) should just be given valid dummy values.

        Returns:

        The ID of the created page.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to create the specified page

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if an invalid name or template was specified; this exception is not thrown if an invalid `zoneCount` is given, therefore the caller should validate that `zoneCount` > 0 and < 255

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the category ID was specified (is non-`null`), but does not correspond to a valid category

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `page_` object is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of the page already exists

    -   ### createPages

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createPages([Page](Page.html "class in com.appiancorp.suiteapi.portal")\[\] pages\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates pages in bulk using the attributes specified in the passed objects. See [`createPage(Page)`](#createPage\(com.appiancorp.suiteapi.portal.Page\)).

        Parameters:

        `pages_` - List of the pages to create. See [`createPage(Page)`](#createPage\(com.appiancorp.suiteapi.portal.Page\))

        Returns:

        The IDs of the created pages.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user calling this method is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if an invalid zone count, name or template was specified for any of the pages

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current user is not allowed to create any of the pages

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the category ID was specified (is non-`null`) for any of the pages, but does not correspond to a valid category

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If the passed `pages_` array or any of its elements is `null`

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of any of the pages already exists or if the same UUID is passed in for several pages

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - If any system-level error occurs

    -   ### updatePage

        void updatePage([Page](Page.html "class in com.appiancorp.suiteapi.portal") page\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates a page using the attributes specified in the passed object.

        This method does not create a new draft. It requires the current user to be an administrator of the group, if a `group` attribute is specified. This creates a two way association between the group and the page. A `null` value for group dissociates an existing two way association.

        To update some of the ignored attributes of the page use the following:

        -   `url` - use [`setPageUrl(Long, String)`](#setPageUrl\(java.lang.Long,java.lang.String\)) instead.
        -   `template` and `zoneCount` - use [`changePageTemplate(Long, String, int)`](#changePageTemplate\(java.lang.Long,java.lang.String,int\)) instead.
        -   `rolemap` - use [`setRoleMapForPage(Long, PageRoleMap)`](#setRoleMapForPage\(java.lang.Long,com.appiancorp.suiteapi.portal.PageRoleMap\)) instead.
        -   `portlets` - use [`addPortlets(Long, Long[], Integer[], int[])`](#addPortlets\(java.lang.Long,java.lang.Long%5B%5D,java.lang.Integer%5B%5D,int%5B%5D\)) and [`removePortlet(Long, Long, Integer)`](#removePortlet\(java.lang.Long,java.lang.Long,java.lang.Integer\)) instead.

        Parameters:

        `page_` - the page to update. The following fields are the minimum required attributes that must not be `null` to successfully update the page: `id`, `name` and `template` (a tiles reference for the template JSP, although it's ignored).
        The following attributes are optional: `description`, `category`, `group`, `public`. All other attributes are ignored. This is the same whether or not the page is a custom page - attributes that don't make sense for a custom page (such as `zoneCount`) should just be given valid dummy values.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If an anonymous `User` attempts to make this call.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current `User` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current `User` is not an administrator of the `Group` specified in the `group` field of the `Page` or if the current user does not have sufficient privileges to update the `Page`.

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - not thrown, instead the `category` is reset to null if an invalid category is given (known issue)

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If the given `page_` is null.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if either the `name` or `template` field is null.

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the `Page` given by the `id` field does not exist.

    -   ### updatePages

        void updatePages([Page](Page.html "class in com.appiancorp.suiteapi.portal")\[\] pages\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates pages in bulk using the attributes specified in the passed objects. See [`updatePage(Page)`](#updatePage\(com.appiancorp.suiteapi.portal.Page\)).

        Parameters:

        `pages_` - The attributes of each page to update. See [`updatePage(Page)`](#updatePage\(com.appiancorp.suiteapi.portal.Page\))

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If an anonymous `User` attempts to make this call.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current `User` does not exist.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current `User` is not an administrator of any one of the `Group` objects specified in the `group` field of the `Page` or if the current user does not have sufficient privileges to update any one of the `Page` objects.

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If at least one of the given `category` fields is invalid.

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If any of the `Page` objects is null.

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If either the `name` or template field in any of the given `Page` objects is null.

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If any of the `Page` objects given by the `id` field does not exist.

    -   ### deletePage

        void deletePage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes the specified page.

        Parameters:

        `pageId_` - the ID of the page to delete.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid; this exception is not thrown if a deactivated user is used to call this method, so the caller should validate that the user is not deactivated before calling (known issue)

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to delete the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAccessLevelForPage

        int getAccessLevelForPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the current user's access level for the given page.

        Parameters:

        `pageId_` - the ID of the page for which the user's access level is to be returned.

        Returns:

        the access level of the current user for the specified page. This is one of the `PAGE_ACCESS_LEVEL_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal")

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### renamePage

        void renamePage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newName\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Renames the specified page to the specified name.

        Parameters:

        `pageId_` - the ID of the page to rename.

        `newName_` - the new name of the page.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to rename the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changePageDescription

        void changePageDescription([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newDescription\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Changes the description of the specified page.

        Parameters:

        `pageId_` - the ID of the page whose description should be changed.

        `newDescription_` - the new description for the page.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to change the page description

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDraft

        [Page](Page.html "class in com.appiancorp.suiteapi.portal") getDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the draft version of the specified page.

        -   If a draft does not exist for the page, the published version is returned and the page is locked by the current user (no draft is created).
        -   If a draft exists and it is not locked by another user, the current draft is returned and is locked by the current user.
        -   If a draft exists and it is locked by another user, the current draft is returned but no changes will be allowed (the state will be `Page.STATE_LOCKED`).

        Parameters:

        `pageId_` - the ID of the page whose draft should be returned.

        Returns:

        the requested page draft.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to view the page draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`takeDraft(java.lang.Long)`](#takeDraft\(java.lang.Long\))

    -   ### peekDraft

        [Page](Page.html "class in com.appiancorp.suiteapi.portal") peekDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the pending draft if present or the published page, without setting the draft owner.

        -   If a draft does not exist for the page, the published version is returned.
        -   If a draft exists and it is not locked by another user, the current draft is returned without setting the draft owner.
        -   If a draft exists and it is locked by another user, the current draft is returned but no changes will be allowed (the state will be `Page.STATE_LOCKED`).

        Parameters:

        `pageId_` - the ID of the page whose draft should be returned.

        Returns:

        the requested page draft.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to view the page draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

    -   ### takeDraft

        [Page](Page.html "class in com.appiancorp.suiteapi.portal") takeDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the draft version of the specified page and locks it for **editing**.

        -   If a draft does not exist for the page, the published version is returned and the page is locked by the current user (no draft is created).
        -   If a draft exists and it is not locked by another user, the current draft is returned and the page is locked by the current user.
        -   If a draft exists and it is locked by another user, the current draft is returned and the lock is reassigned to the current user.

        Parameters:

        `pageId_` - the ID of the page whose draft should be returned.

        Returns:

        the requested page draft.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to view and lock the draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`getDraft(java.lang.Long)`](#getDraft\(java.lang.Long\))

    -   ### approveDraft

        void approveDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Applies the changes made to the draft of the specified page, and clears the draft.

        Parameters:

        `pageId_` - the ID of the page for which the draft should be approved.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to approve the page

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a draft does not exist for the specified page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteDraft

        void deleteDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Cancels the changes made to the draft for the specified page, and clears the draft. For new pages (never published), removes all portlets and puts the page into the `Page.STATE_NEW_DRAFT` state. Only page admins and the user who originally created the draft can delete the draft.

        Parameters:

        `pageId_` - the id of the page for which the draft should be deleted.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to delete the draft

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the draft is locked by another user

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page has no draft

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### publishDraft

        void publishDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Submits the current draft of the specified page for publication, and releases any lock on the draft. If approval is required, the page will only be published after [`approveDraft(java.lang.Long)`](#approveDraft\(java.lang.Long\)) is called, otherwise the page is published immediately. It associates the page with the group (group->page) if there was a group associated with the page (page->group).

        If a System Administrator user calls this method on a page that requires approval, the `Page` will enter the [`Page.STATE_PUBLISHED`](Page.html#STATE_PUBLISHED) state even if that user is not a member of Portal Administrators.

        Parameters:

        `pageId_` - the ID of the page for which the draft should be published.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a draft does not exist for the specified page

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to publish the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### publishDrafts

        void publishDrafts([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Submits the current drafts of the specified pages for publication, and releases any lock on the drafts. See [`updatePage(Page)`](#updatePage\(com.appiancorp.suiteapi.portal.Page\)).

        Parameters:

        `pageIds_` - the IDs of the pages for which the drafts should be published.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a draft does not exist for any of the specified pages

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed publish the pages

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid page

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### returnDraft

        void returnDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Returns a submitted page back to a draft state (`Page.STATE_NEW_DRAFT` or `Page.STATE_DRAFT`).

        Parameters:

        `pageId_` - the id of the page which should be returned to a draft.

        Throws:

        `[InvalidStateException](../common/exceptions/InvalidStateException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page state is not `Page.STATE_NEW_SUBMITTED` or `Page.STATE_SUBMITTED`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an approver of the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed page id is `null`

    -   ### unlockDraft

        void unlockDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Releases the lock on the draft for the specified page, if the current user owns the draft.

        Parameters:

        `pageId_` - the id of the page for which the draft lock should be released.

        Throws:

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not own the draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changePageTemplate

        void changePageTemplate([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newTemplateName\_, int newZoneCount\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Attempts to lock the current draft for the specified page (i.e., put the page into draft state) and changes the template in the draft.

        Parameters:

        `pageId_` - The ID of the page for which the template should be changed.

        `newTemplateName_` - The name of the new template, which should be a tiles reference.

        `newZoneCount_` - The number of zones that can contain portlets. See [`Page.getZoneCount()`](Page.html#getZoneCount\(\)).

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the current user is not allowed to modify the page

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the draft is locked and the current user does not own the draft

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - If an invalid zone count is used

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - If the page with the specified ID does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - If any argument is `null`.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - If any system-level error occurs

        See Also:

        -   [`getDraft(java.lang.Long)`](#getDraft\(java.lang.Long\))

    -   ### setPageCategory

        void setPageCategory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Changes the category for the specified page.

        Parameters:

        `pageId_` - the ID of the page for which the category should be set.

        `categoryId_` - the ID of the category to which to add the page.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to set the category for the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page with the specified ID does not exist

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no category with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setPageUrl

        void setPageUrl([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url\_) throws [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Changes the URL for the specified custom page. This does not change the state of the page.

        Parameters:

        `pageId_` - the ID of the page for which the URL should be set.

        `url_` - the new URL for the page.

        Throws:

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page is not a custom page

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to change the URL for the page

    -   ### setPageApproval

        void setPageApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, boolean approvalRequired\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets whether approval is required for page modifications. Automatically approves any pending submissions if the approval is changed from `true` to `false`.

        Parameters:

        `pageId_` - the ID of the page for which the approval should be set.

        `approvalRequired_` - specifies whether approval will be required for page modifications.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to change the approval setting for the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setIsPagePublic

        void setIsPagePublic([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, boolean isPublic\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Changes whether the page is publicly viewable.

        Parameters:

        `pageId_` - the ID of the page for which the viewable setting should be changed.

        `isPublic_` - specifies whether the page will be publicly viewable.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to change the viewable setting for the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addPortlet

        void addPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") zone\_, int index\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicatePortletException](../common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Attempts to lock the current draft of the specified page and add a portlet.

        Parameters:

        `pageId_` - the ID of the page to which the portlet should be added.

        `portletId_` - the ID of the portlet to add to the page.

        `zone_` - Specifies which zone will contain the portlet. The zone identifies which column the portlet should be placed into, with the indexing starting at 0 (left-most column).

        `index_` - Specifies the position of the portlet within the zone, with the indexing starting at 0 (top-most position).

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to modify the page

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified portlet is non-shareable, and is already on another page

        `[DuplicatePortletException](../common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified portlet already exists on the draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the specified ID exists

        `[InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified zone does not exist

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not own the draft

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any argument is null

    -   ### removePortlet

        void removePortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") action\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Attempts to lock the current draft of the specified page and remove a portlet. If the portlet is not shareable and it is not on the published version (if any) of the page, the portlet itself is also deleted from the database. If the portlet is not shareable but is on the published version of the page, then the portlet itself will be deleted when the draft version of the page becomes the published version.

        Parameters:

        `pageId_` - the ID of the page from which the portlet should be removed.

        `portletId_` - the ID of the portlet to remove.

        `action_` - The action to take ([`DELETE_PORTLET`](#DELETE_PORTLET) or [`DEACTIVATE_PORTLET`](#DEACTIVATE_PORTLET)).

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to remove the portlet

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not own the page draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### movePortlet

        void movePortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") zone\_, int index\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Attempts to lock the current draft of the specified page and move a portlet within the page.

        Parameters:

        `pageId_` - the ID of the page in which the portlet should be moved.

        `portletId_` - the ID of the portlet to move.

        `zone_` - specifies the new zone that will contain the portlet. The zone identifies which column the portlet should be placed into, with the indexing starting at 0 (left-most column).

        `index_` - specifies the position of the portlet within the zone, with the indexing starting at 0 (top-most position).

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to modify the page

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not own the page draft

        `[InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified zone does not exist

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any argument is null

    -   ### getRoleMapForPage

        [PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") getRoleMapForPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the role map of a page, specifiying the administrators, editors and viewers of the page.

        Parameters:

        `pageId_` - the ID of the page.

        Returns:

        the page rolemap.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to view the page rolemap

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`PageRoleMap`](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")

    -   ### setRoleMapForPage

        void setRoleMapForPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") map\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Set the role map for a page

        Parameters:

        `pageId_` - the ID of the page.

        `map_` - the new rolemap of the page.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous or the anonymous user is in the rolemap, but anonymous access has not been enabled.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to set the rolemap for the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any argument is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`PageRoleMap`](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")

    -   ### addContribution

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void addContribution([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Adds a new contribution. User contributions can be logged with this method for any Appian Object that is supported in `LocalObject`. Currently contributions are logged when a user creates or edits a message, thread or page and when the user uploads a document.

        Parameters:

        `contribution_` - the contribution to add. The `type`, `id`, and `author` fields should be set. The `timestamp` will be set by the system.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `contribution_` is null

        See Also:

        -   [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### updateContribution

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateContribution([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Updates a contribution. A user contribution can be logged with this method for any Appian Object that is supported in `LocalObject`. Currently contributions are logged when a user creates or edits a message, thread or page and when the user uploads a document.

        Parameters:

        `contribution_` - the contribution to update. The `type`, `id`, and `author` fields should be set. The `timestamp` will be set by the system.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `contribution_` is null

        See Also:

        -   [`LocalObject`](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")

    -   ### deleteContribution

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void deleteContribution([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Deletes a contribution.

        Parameters:

        `contribution_` - the contribution to delete. The `type` and `id` fields should be set.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `contribution_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getContributions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal")\[\] getContributions()

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Gets the current user's contributions.

        Returns:

        the contributions of the current user.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getContributionsForType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal")\[\] getContributionsForType([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Gets the current user's contributions of a certain type; the number of contributions returned is limited to a pre-defined maximum which can be retrieved using [`getMaximumContributions()`](#getMaximumContributions\(\)) and set to a new value using [`setMaximumContributions(int)`](#setMaximumContributions\(int\)). To retrieve the current user's authored threads set the `author` field of the passed `contribution_` to `Contribution.AUTHOR_ON`. To retrieve the threads in which the current user has participated set the `author` field of the passed `contribution_` to `Contribution.AUTHOR_OFF`. For contributions other than threads, the `author` field reflects whether the user created (`Contribution.AUTHOR_ON`) or updated (`Contribution.AUTHOR_OFF`) the contribution.

        Parameters:

        `contribution_` - a `Contribution` object whose `type` and `author` should be set to determine the type and author of the retrieved contributions.

        Returns:

        The current user's contributions of the passed type, sorted by timestamp from most recent to least recent.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getContributionsForTypePaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getContributionsForTypePaging([Contribution](Contribution.html "class in com.appiancorp.suiteapi.portal") contribution\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Gets the current user's contributions of a certain type. To retrieve the current user's authored threads set the `author` field of the passed `contribution_` to `Contribution.AUTHOR_ON`. To retrive the threads in which the current user has participated set the `author` field of the passed `contribution_` to `Contribution.AUTHOR_OFF`. For contributions other than threads, the `author` field reflects whether the user created (`Contribution.AUTHOR_ON`) or updated (`Contribution.AUTHOR_OFF`) the contribution.

        Parameters:

        `contribution_` - a `Contribution` object whose `type` and `author` should be set to determine the type and author of the retrieved contributions.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Contribution`](Contribution.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `Contribution` objects of the passed type.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `contribution_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setMaximumContributions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setMaximumContributions(int size\_)

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Sets the maximum number of contributions to be returned by [`getContributionsForType(Contribution)`](#getContributionsForType\(com.appiancorp.suiteapi.portal.Contribution\)).

        Parameters:

        `size_` - The maximum number of contributions to be returned by `getContributionsForType(Contribution)`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Contribution`](Contribution.html "class in com.appiancorp.suiteapi.portal")

    -   ### getMaximumContributions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int getMaximumContributions()

        Deprecated.

        This functionality is no longer supported and will be removed in the next release.

        Gets the maximum number of contributions to be returned by [`getContributionsForType(Contribution)`](#getContributionsForType\(com.appiancorp.suiteapi.portal.Contribution\)).

        Returns:

        The maximum number of contributions to be returned by `getContributionsForType(Contribution)`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Contribution`](Contribution.html "class in com.appiancorp.suiteapi.portal")

    -   ### getAccessLevelForPages

        int\[\] getAccessLevelForPages([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Gets the current user's access levels for the given pages.

        Parameters:

        `pageIds_` - the IDs of the pages for which the user's access levels should be returned.

        Returns:

        the access levels of the current user for the specified pages. Each access level will be one of the `PAGE_ACCESS_LEVEL_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the specified pages does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `pageIds_` is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addPortlets

        void addPortlets([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] zones\_, int\[\] indices\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicatePortletException](../common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions"), [LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Attempts to lock the current draft of the specified page and add portlets.

        Parameters:

        `pageId_` - the ID of the page to which the portlets should be added.

        `portletIds_` - the IDs of the portlets to add to the page.

        `zones_` - specifies which zone will contain the portlet with the same array index. The zone identifies which column the portlet should be placed into, with the indexing starting at 0 (left-most column).

        `indices_` - specifies the position within the zone of the portlet with the same array index. The position indexing starts at 0 (top-most position).

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not allowed to modify the page

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet is non-shareable, and is already on another page

        `[DuplicatePortletException](../common/exceptions/DuplicatePortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any specified portlet already exists on the draft

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no page with the specified ID exists

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the portlet IDs does not correspond to a valid portlet

        `[InvalidZoneException](../common/exceptions/InvalidZoneException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any specified zone does not exist

        `[LockException](../common/exceptions/LockException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not own the draft

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any argument is null

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`addPortlet(java.lang.Long, java.lang.Long, java.lang.Integer, int)`](#addPortlet\(java.lang.Long,java.lang.Long,java.lang.Integer,int\))

    -   ### getPagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Gets the specified portal pages as an array of `Page` objects in a `ResultPage`. `null` is returned for each page that does not exist, or that the user is not allowed to view.

        Parameters:

        `pageIds_` - the IDs of the portal pages to retrieve.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Page`](Page.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing an array of `Page` objects. The array may contain `null` items if the current user does not have permission to view particular pages, or of particular pages do not exist

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous and anonymous users cannot view any of the given pages

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid page

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `pageIds_` array or any of its elements is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        See Also:

        -   [`Page`](Page.html "class in com.appiancorp.suiteapi.portal")

    -   ### getPagesList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getPagesList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_)

        Deprecated.

        Gets the specified portal pages, returning the valid results even if all the results cannot be retrieved (for instance, if some of the pages corresponding to the IDs no longer exist).

        Parameters:

        `pageIds_` - the IDs of the pages that should be retrieved.

        Returns:

        a `ResultList` containing pages and error codes. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method should be used to get all the pages that were successfully retrieved. In addition, [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) can be used to get the list of result codes corresponding to each of the specified page IDs. Each code represents the successful retrieval of a page, or, if the page could not be retrieved, the reason for the failure; this is one of the `CODE_XXX` or `PORTAL_CODE_XXX` constants defined in `ResultList`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateTypedValues

        boolean validateTypedValues([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")\[\] typedValues)

        Deprecated.

        Validates given TypedValues. This method is free to throw an exception or to return false if any TypedValue passed is invalid for this engine. This engine supports: AppianType.PAGE AppianType.PORTLET

        Parameters:

        `typedValues` -

        Returns:

        true if valid, false if invalid

    -   ### setPageDataContextType

        void setPageDataContextType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") dataContextType)

        Deprecated.

        Sets the type of data that will be sent to the page when it is requested. Passing a `null` clear its value.

        Parameters:

        `pageId` - the ID of the page whose data context should be changed.

        `dataContextType` - id of data context type; `null` if clearing the context.