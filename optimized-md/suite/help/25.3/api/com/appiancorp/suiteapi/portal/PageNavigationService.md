---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PageNavigationService.html
original_path: api/com/appiancorp/suiteapi/portal/PageNavigationService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface PageNavigationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface PageNavigationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for structured access to pages. Provides the ability to handle home pages for users and groups, manage tabs and bookmarks, organize pages into categories, and retrieve pages of direct interest to users.

Page categories provide a mechanism for organizing pages based on their content - pages of similar content can be associated with the same category. Similarly, pages may be associated with a group, so that members of that group may have centralized access to content pertaining to that group. Finally, home pages may be designated for users and for groups. In the former case, this page will be the first page that a user sees when logging into the application; in the latter, this page will be the first page that members of the group see when viewing group pages.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../common/exceptions/AppianException.html "class in com.appiancorp.suiteapi.common.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))). When sorting the results for [`getHomePagesForGroupsPaging(Long[], int, int, Integer, Integer)`](#getHomePagesForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) it is important to consider the following scenarios for the sort property:

-   The sort property should be one of the `SORT_BY_XXX` constant values inside [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal")
-   If the value is negative then [`PageInfo.SORT_BY_NAME`](PageInfo.html#SORT_BY_NAME) will be used instead
-   If the value is greater than [`PageInfo.SORT_BY_ACCESS_LEVEL`](PageInfo.html#SORT_BY_ACCESS_LEVEL) (12) then [`PageInfo.SORT_BY_ACCESS_LEVEL`](PageInfo.html#SORT_BY_ACCESS_LEVEL) will be used instead

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`NotificationService`](NotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PageService`](PageService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalSearchService`](PortalSearchService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortletService`](PortletService.html "interface in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addBookmark$UPDATES](#addBookmark$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addCategory$UPDATES](#addCategory$UPDATES)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[CATEGORY_TOP](#CATEGORY_TOP)`

    Deprecated.

    A constant used to indicated that sorting hierarchical tree structures of portal pages starts at the top.

    `static final boolean`

    `[cleanUpPageReferences$UPDATES](#cleanUpPageReferences$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findPages$UPDATES](#findPages$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findPagesPaging$UPDATES](#findPagesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllCategories$UPDATES](#getAllCategories$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllCategoriesPaging$UPDATES](#getAllCategoriesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getBookmarks$UPDATES](#getBookmarks$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getBookmarksPaging$UPDATES](#getBookmarksPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCategoriesPageCounts$UPDATES](#getCategoriesPageCounts$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getCategoryDescendants$UPDATES](#getCategoryDescendants$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getEditablePagesNotCreatedByCurrentUser$UPDATES](#getEditablePagesNotCreatedByCurrentUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getEditablePagesNotCreatedByCurrentUserPaging$UPDATES](#getEditablePagesNotCreatedByCurrentUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getHomePage$UPDATES](#getHomePage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getHomePageForGroup$UPDATES](#getHomePageForGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getHomePagesForGroups$UPDATES](#getHomePagesForGroups$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getHomePagesForGroupsPaging$UPDATES](#getHomePagesForGroupsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getLoginData$UPDATES](#getLoginData$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesCreatedByCurrentUser$UPDATES](#getPagesCreatedByCurrentUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesCreatedByCurrentUserPaging$UPDATES](#getPagesCreatedByCurrentUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesCreatedByUser$UPDATES](#getPagesCreatedByUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesCreatedByUserPaging$UPDATES](#getPagesCreatedByUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesForGroup$UPDATES](#getPagesForGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesForGroupPaging$UPDATES](#getPagesForGroupPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesForGroups$UPDATES](#getPagesForGroups$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesInCategory$UPDATES](#getPagesInCategory$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesInCategoryPaging$UPDATES](#getPagesInCategoryPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesPendingApprovalByCurrentUser$UPDATES](#getPagesPendingApprovalByCurrentUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPagesPendingApprovalByCurrentUserPaging$UPDATES](#getPagesPendingApprovalByCurrentUserPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootCategories$UPDATES](#getRootCategories$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRootCategoriesPaging$UPDATES](#getRootCategoriesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVisiblePagesForGroups$UPDATES](#getVisiblePagesForGroups$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeBookmark$UPDATES](#removeBookmark$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeBookmarks$UPDATES](#removeBookmarks$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeCategory$UPDATES](#removeCategory$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeCategoryAndDescendants$UPDATES](#removeCategoryAndDescendants$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[renameCategory$UPDATES](#renameCategory$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setGroupAssociationForPage$UPDATES](#setGroupAssociationForPage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setHomePage$UPDATES](#setHomePage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setHomePageForAnonymous$UPDATES](#setHomePageForAnonymous$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setHomePageForGroup$UPDATES](#setHomePageForGroup$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addBookmark](#addBookmark\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Adds the specified page to the current user's bookmarks.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[addCategory](#addCategory\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentCategoryId_)`

    Deprecated.

    Add a category.

    `void`

    `[cleanUpPageReferences](#cleanUpPageReferences\(\))()`

    Deprecated.

    Deletes any references to invalid pages for that user or his member groups.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[findPages](#findPages\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms_)`

    Deprecated.

    use [`findPagesPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#findPagesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findPagesPaging](#findPagesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Searches through names and descriptions of the portal pages the current user can view.

    `[Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getAllCategories](#getAllCategories\(\))()`

    Deprecated.

    use [`getAllCategoriesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getAllCategoriesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllCategoriesPaging](#getAllCategoriesPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing all categories Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category).

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getBookmarks](#getBookmarks\(\))()`

    Deprecated.

    use [`getBookmarksPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getBookmarksPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getBookmarksPaging](#getBookmarksPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing the list of bookmarked pages for the current user.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getCategoriesPageCounts](#getCategoriesPageCounts\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] categoryIds_)`

    Deprecated.

    Gets the number of pages in each category, for a list of categories

    `[TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common")`

    `[getCategoryDescendants](#getCategoryDescendants\(java.lang.Long,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_, int levels_)`

    Deprecated.

    Gets the descendants of a category up to the specified depth.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getEditablePagesNotCreatedByCurrentUser](#getEditablePagesNotCreatedByCurrentUser\(\))()`

    Deprecated.

    use [`getEditablePagesNotCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getEditablePagesNotCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getEditablePagesNotCreatedByCurrentUserPaging](#getEditablePagesNotCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a ResultPage containing a list of pages editable by the current user but not created by him

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")`

    `[getHomePage](#getHomePage\(\))()`

    Deprecated.

    Gets the home page for the current user.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")`

    `[getHomePageForGroup](#getHomePageForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Gets the home page of the specified group.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getHomePagesForGroups](#getHomePagesForGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    use [`getHomePagesForGroupsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getHomePagesForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getHomePagesForGroupsPaging](#getHomePagesForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing the home pages of the specified groups.

    `[LoginData](LoginData.html "class in com.appiancorp.suiteapi.portal")`

    `[getLoginData](#getLoginData\(int,int,java.lang.Integer,java.lang.Integer\))(int bookmarkPagingStartIndex_, int bookmarkPagingBatchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") bookmarkPagingSortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") bookmarkPagingSortOrder_)`

    Deprecated.

    Gets a `LoginData` bean containing the list of bookmarked pages for the current user, as well as a flag representing whether the user, or any of his member groups, references an invalid page.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPagesCreatedByCurrentUser](#getPagesCreatedByCurrentUser\(\))()`

    Deprecated.

    use [`getPagesCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPagesCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesCreatedByCurrentUserPaging](#getPagesCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing a list of pages created by the current user

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPagesCreatedByUser](#getPagesCreatedByUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Deprecated.

    use [`getPagesCreatedByUserPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesCreatedByUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesCreatedByUserPaging](#getPagesCreatedByUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing those pages created by the specified user that the current user has permission to view.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPagesForGroup](#getPagesForGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    use [`getPagesForGroupPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesForGroupPaging](#getPagesForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing all pages that are associated with the specified group and that the user has permission to view.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[][]`

    `[getPagesForGroups](#getPagesForGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Gets all pages that are associated with the specified groups and that the user has permission to view.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPagesInCategory](#getPagesInCategory\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_)`

    Deprecated.

    use [`getPagesInCategoryPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesInCategoryPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesInCategoryPaging](#getPagesInCategoryPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a ResultPage containing all the pages that are in a specified category, and that the current user has permission to view.

    `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPagesPendingApprovalByCurrentUser](#getPagesPendingApprovalByCurrentUser\(\))()`

    Deprecated.

    use [`getPagesPendingApprovalByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPagesPendingApprovalByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPagesPendingApprovalByCurrentUserPaging](#getPagesPendingApprovalByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a `ResultPage` containing a list of pages pending for approval that the current user has permission to approve.

    `[Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")[]`

    `[getRootCategories](#getRootCategories\(int\))(int levels_)`

    Deprecated.

    use [`getRootCategoriesPaging(int, int, int, java.lang.Integer, java.lang.Integer)`](#getRootCategoriesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getRootCategoriesPaging](#getRootCategoriesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\))(int levels_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the root categories Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category).

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[getVisiblePagesForGroups](#getVisiblePagesForGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Discover whether each element in an array of groups has at least one associated page that the user has permission to view.

    `void`

    `[removeBookmark](#removeBookmark\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Removes the specified page from the current user's bookmarks.

    `void`

    `[removeBookmarks](#removeBookmarks\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pageIds_)`

    Deprecated.

    Removes the specified pages from the current user's bookmarks.

    `void`

    `[removeCategory](#removeCategory\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_)`

    Deprecated.

    Remove a category.

    `void`

    `[removeCategoryAndDescendants](#removeCategoryAndDescendants\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId_)`

    Deprecated.

    Remove a category and all of its descendants.

    `void`

    `[renameCategory](#renameCategory\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pCategoryId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pCategoryName_)`

    Deprecated.

    use [`addCategory(java.lang.String, java.lang.Long)`](#addCategory\(java.lang.String,java.lang.Long\)) and [`removeCategory(java.lang.Long)`](#removeCategory\(java.lang.Long\)) instead

    `void`

    `[setGroupAssociationForPage](#setGroupAssociationForPage\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Associates a page to a group and a group to a page for the page and the group specified.

    `void`

    `[setHomePage](#setHomePage\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Sets the home page for the current user.

    `void`

    `[setHomePageForAnonymous](#setHomePageForAnonymous\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    anonymous user access was removed in 6.2

    `void`

    `[setHomePageForGroup](#setHomePageForGroup\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Sets the home page for the specified group.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### CATEGORY\_TOP

        static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") CATEGORY\_TOP

        Deprecated.

        A constant used to indicated that sorting hierarchical tree structures of portal pages starts at the top. See [`getCategoryDescendants(Long, int)`](#getCategoryDescendants\(java.lang.Long,int\)) for an example.

    -   ### setHomePage$UPDATES

        static final boolean setHomePage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.setHomePage$UPDATES)

    -   ### setHomePageForGroup$UPDATES

        static final boolean setHomePageForGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.setHomePageForGroup$UPDATES)

    -   ### getHomePage$UPDATES

        static final boolean getHomePage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getHomePage$UPDATES)

    -   ### getHomePageForGroup$UPDATES

        static final boolean getHomePageForGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getHomePageForGroup$UPDATES)

    -   ### getHomePagesForGroupsPaging$UPDATES

        static final boolean getHomePagesForGroupsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getHomePagesForGroupsPaging$UPDATES)

    -   ### getHomePagesForGroups$UPDATES

        static final boolean getHomePagesForGroups$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getHomePagesForGroups$UPDATES)

    -   ### getVisiblePagesForGroups$UPDATES

        static final boolean getVisiblePagesForGroups$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getVisiblePagesForGroups$UPDATES)

    -   ### getPagesForGroupPaging$UPDATES

        static final boolean getPagesForGroupPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesForGroupPaging$UPDATES)

    -   ### getPagesForGroup$UPDATES

        static final boolean getPagesForGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesForGroup$UPDATES)

    -   ### getPagesForGroups$UPDATES

        static final boolean getPagesForGroups$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesForGroups$UPDATES)

    -   ### getPagesCreatedByUserPaging$UPDATES

        static final boolean getPagesCreatedByUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByUserPaging$UPDATES)

    -   ### getPagesCreatedByUser$UPDATES

        static final boolean getPagesCreatedByUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByUser$UPDATES)

    -   ### getPagesCreatedByCurrentUserPaging$UPDATES

        static final boolean getPagesCreatedByCurrentUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByCurrentUserPaging$UPDATES)

    -   ### getPagesCreatedByCurrentUser$UPDATES

        static final boolean getPagesCreatedByCurrentUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesCreatedByCurrentUser$UPDATES)

    -   ### getEditablePagesNotCreatedByCurrentUserPaging$UPDATES

        static final boolean getEditablePagesNotCreatedByCurrentUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getEditablePagesNotCreatedByCurrentUserPaging$UPDATES)

    -   ### getEditablePagesNotCreatedByCurrentUser$UPDATES

        static final boolean getEditablePagesNotCreatedByCurrentUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getEditablePagesNotCreatedByCurrentUser$UPDATES)

    -   ### getPagesPendingApprovalByCurrentUserPaging$UPDATES

        static final boolean getPagesPendingApprovalByCurrentUserPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesPendingApprovalByCurrentUserPaging$UPDATES)

    -   ### getPagesPendingApprovalByCurrentUser$UPDATES

        static final boolean getPagesPendingApprovalByCurrentUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesPendingApprovalByCurrentUser$UPDATES)

    -   ### findPagesPaging$UPDATES

        static final boolean findPagesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.findPagesPaging$UPDATES)

    -   ### findPages$UPDATES

        static final boolean findPages$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.findPages$UPDATES)

    -   ### addBookmark$UPDATES

        static final boolean addBookmark$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.addBookmark$UPDATES)

    -   ### removeBookmark$UPDATES

        static final boolean removeBookmark$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.removeBookmark$UPDATES)

    -   ### removeBookmarks$UPDATES

        static final boolean removeBookmarks$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.removeBookmarks$UPDATES)

    -   ### getBookmarksPaging$UPDATES

        static final boolean getBookmarksPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getBookmarksPaging$UPDATES)

    -   ### getBookmarks$UPDATES

        static final boolean getBookmarks$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getBookmarks$UPDATES)

    -   ### getCategoryDescendants$UPDATES

        static final boolean getCategoryDescendants$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getCategoryDescendants$UPDATES)

    -   ### getRootCategories$UPDATES

        static final boolean getRootCategories$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getRootCategories$UPDATES)

    -   ### getRootCategoriesPaging$UPDATES

        static final boolean getRootCategoriesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getRootCategoriesPaging$UPDATES)

    -   ### getCategoriesPageCounts$UPDATES

        static final boolean getCategoriesPageCounts$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getCategoriesPageCounts$UPDATES)

    -   ### getAllCategoriesPaging$UPDATES

        static final boolean getAllCategoriesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getAllCategoriesPaging$UPDATES)

    -   ### getAllCategories$UPDATES

        static final boolean getAllCategories$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getAllCategories$UPDATES)

    -   ### getPagesInCategoryPaging$UPDATES

        static final boolean getPagesInCategoryPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesInCategoryPaging$UPDATES)

    -   ### getPagesInCategory$UPDATES

        static final boolean getPagesInCategory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getPagesInCategory$UPDATES)

    -   ### addCategory$UPDATES

        static final boolean addCategory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.addCategory$UPDATES)

    -   ### removeCategory$UPDATES

        static final boolean removeCategory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.removeCategory$UPDATES)

    -   ### removeCategoryAndDescendants$UPDATES

        static final boolean removeCategoryAndDescendants$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.removeCategoryAndDescendants$UPDATES)

    -   ### setGroupAssociationForPage$UPDATES

        static final boolean setGroupAssociationForPage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.setGroupAssociationForPage$UPDATES)

    -   ### setHomePageForAnonymous$UPDATES

        static final boolean setHomePageForAnonymous$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.setHomePageForAnonymous$UPDATES)

    -   ### renameCategory$UPDATES

        static final boolean renameCategory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.renameCategory$UPDATES)

    -   ### getLoginData$UPDATES

        static final boolean getLoginData$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.getLoginData$UPDATES)

    -   ### cleanUpPageReferences$UPDATES

        static final boolean cleanUpPageReferences$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageNavigationService.cleanUpPageReferences$UPDATES)

-   ## Method Details

    -   ### setHomePage

        void setHomePage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the home page for the current user.

        Parameters:

        `pageId_` - the unique Id of the page to be set as the home page for the current user

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not authorized to view the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `pageId_` is `null`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### setHomePageForGroup

        void setHomePageForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the home page for the specified group. Note: This method needs to be called to explicitly set a home page of a group. If the home page is not set explicitly, the first page associated to the group becomes the default home page of the group.

        This method does not validate that the group id belongs to an existent or non-deleted group, so the caller should check that the group id is valid before passing it (known issue).

        Parameters:

        `pageId_` - the unique Id of the page to be set as the home page for the specified group

        `groupId_` - the unique Id of the specified group

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the specified group; if the user does not have permission to view the page, this exception is not thrown and the action succeeds (known issue)

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if any argument is `null`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getHomePage

        [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal") getHomePage() throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the home page for the current user. Returns default home page if none was specified for the current user. If the home page is not available, that is, it has not been set or has since been deleted the current default home page is returned. If the current default home page is not available, that is, it has been deleted an [`InvalidPageException`](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions") is thrown.

        Returns:

        a `PageInfo` object that represents the current user's home page

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to view the page

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if both the explicitly set home page and the default home page are not available, that is, the pages have since been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getHomePageForGroup

        [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal") getHomePageForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the home page of the specified group.

        This method does not validate that the group id belongs to an existent or non-deleted group, so the caller should check that the group id is valid before passing it (known issue).

        Parameters:

        `groupId_` - the unique Id of the group for which the home page should be retrieved

        Returns:

        a `PageInfo` object representing the home page of the specified group, or the first page associated with the group if no home page is specified. Returns `null` if there are no pages associated with the group.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - never thrown (known issue)

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to view the page

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page associated with the group no longer exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getHomePagesForGroupsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getHomePagesForGroupsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a `ResultPage` containing the home pages of the specified groups.

        Parameters:

        `groupIds_` - the groups for which the home page should be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the home pages as an array of `PageInfo` objects for the requested groups, `null` items if the current user does not have permission to view the corresponding pages (or if there are no pages associated with the corresponding groups). The `ResultPage` will be empty if the first id in the array belongs to an non-existent or deleted group or if that group has a null home page (known issue)

        Throws:

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the pages associated with the groups has been deleted

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the passed `groupIds_` array or any of its elements is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getHomePagesForGroups

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getHomePagesForGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getHomePagesForGroupsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getHomePagesForGroupsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the home pages of the specified groups.

        Parameters:

        `groupIds_` - an array of the unique Ids of the groups whose home pages should be retrieved

        Returns:

        an array of `PageInfo` objects representing the home pages of the requested groups. A `null` item will be set in the array for those groups that do not have pages associated . If the current user does not have permission to view the corresponding pages then `null` items will be set.

        Throws:

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the specified pages does not exist, that is, if any associated page has since been deleted

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the context of the user who made the call is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVisiblePagesForGroups

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] getVisiblePagesForGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Discover whether each element in an array of groups has at least one associated page that the user has permission to view. If an invalid group is passed, it returns `false` for that index (i.e. it does NOT have a visible page)

        Parameters:

        `groupIds_` - the unique Ids of the groups for which the existence of associated pages should be returned.

        Returns:

        an array of `Boolean` objects, parallel to the input array, where each element indicates whether the corresponding group has any associated pages.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesForGroupPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesForGroupPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Gets a `ResultPage` containing all pages that are associated with the specified group and that the user has permission to view.

        Parameters:

        `groupId_` - the group for which the associated pages should be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the pages, as an array of `PageInfo` objects that are associated with the group

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `groupId_` is `null`

    -   ### getPagesForGroup

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getPagesForGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        use [`getPagesForGroupPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesForGroupPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets all pages that are associated with the specified group and that the user has permission to view.

        Parameters:

        `groupId_` - the unique Id of the group for which the associated pages should be retrieved

        Returns:

        an array of `PageInfo` objects representing the pages that are associated with the group

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if argument is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesForGroups

        [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\]\[\] getPagesForGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Gets all pages that are associated with the specified groups and that the user has permission to view.

        Parameters:

        `groupIds_` - the groups for which the associated pages should be retrieved

        Returns:

        an array of arrays of `PageInfo` objects, each representing the pages that are associated with the groups in an optimized array. Each row will correspond to the pages of the group with the same index in the parameter. The array will be heterogeneous in that each row will only have as many elements as the group has associated pages.

        Throws:

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesCreatedByUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesCreatedByUserPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Gets a `ResultPage` containing those pages created by the specified user that the current user has permission to view.

        Parameters:

        `username_` - the user whose created pages should be retrieved

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the pages, as array of `PageInfo` objects that were created by the given user

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if specified user does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `username_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesCreatedByUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getPagesCreatedByUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        use [`getPagesCreatedByUserPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesCreatedByUserPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets those pages created by the specified user that the current user has permission to view.

        Parameters:

        `username_` - the user whose created pages should be retrieved

        Returns:

        an array of `PageInfo` objects representing the pages that were created by the user.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if specified user does not exist

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `username_` is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesCreatedByCurrentUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesCreatedByCurrentUserPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets a `ResultPage` containing a list of pages created by the current user

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing list of portal pages as an array of `PageInfo` objects

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesCreatedByCurrentUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getPagesCreatedByCurrentUser()

        Deprecated.

        use [`getPagesCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPagesCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets a list of pages created by the current user

        Returns:

        an array of `PageInfo` representing the portal pages created by the current user

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getEditablePagesNotCreatedByCurrentUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getEditablePagesNotCreatedByCurrentUserPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a ResultPage containing a list of pages editable by the current user but not created by him

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `PageInfo` objects

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getEditablePagesNotCreatedByCurrentUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getEditablePagesNotCreatedByCurrentUser() throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getEditablePagesNotCreatedByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getEditablePagesNotCreatedByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\))

        Gets a list of pages editable by the current user but not created by him

        Returns:

        a list of portal pages

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getPagesPendingApprovalByCurrentUserPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesPendingApprovalByCurrentUserPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a `ResultPage` containing a list of pages pending for approval that the current user has permission to approve.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `PageInfo` objects representing the portal pages pending approval

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getPagesPendingApprovalByCurrentUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getPagesPendingApprovalByCurrentUser() throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getPagesPendingApprovalByCurrentUserPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getPagesPendingApprovalByCurrentUserPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets a list of pages pending for approval that the user has permission to approve.

        Returns:

        a list of portal pages

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### findPagesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findPagesPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Searches through names and descriptions of the portal pages the current user can view. The current implementation looks for text containing the search term (case-insensitive).

        Parameters:

        `searchTerms_` - the string to search by

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the list of pages, as array of `PageInfo` matching the search terms

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `searchTerms_` is `null`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### findPages

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] findPages([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        use [`findPagesPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#findPagesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Searches through names and descriptions of the portal pages the current user can view. The current implementation looks for text containing the search term (case-insensitive).

        Parameters:

        `searchTerms_` - the string to search by

        Returns:

        and array of `PageInfo` objects representing the list of pages matching the search terms

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if `searchTerms_` is `null`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### addBookmark

        void addBookmark([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds the specified page to the current user's bookmarks.

        Parameters:

        `pageId_` - specifies the page that should be added to the bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user cannot view the page

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeBookmark

        void removeBookmark([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes the specified page from the current user's bookmarks. If the page is not currently in the bookmarks, simply returns.

        Parameters:

        `pageId_` - specifies the page that should be removed from the bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeBookmarks

        void removeBookmarks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pageIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Removes the specified pages from the current user's bookmarks. If the pages are not currently in the bookmarks, simply returns.

        Parameters:

        `pageIds_` - specifies the pages that should be removed from the bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the specified pages does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument is `null`

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getBookmarksPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getBookmarksPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a `ResultPage` containing the list of bookmarked pages for the current user. A `null` is returned for each page that does not exist, or that the user is not authorized to view.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing the list of pages, as an array of `PageInfo`, representing the current user's bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getBookmarks

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getBookmarks() throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getBookmarksPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getBookmarksPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the list of bookmarked pages for the current user. A `null` is returned for each page that does not exist, or that the user is not authorized to view.

        Returns:

        the list of pages in the current user's bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getCategoryDescendants

        [TreePivot](../common/TreePivot.html "class in com.appiancorp.suiteapi.common") getCategoryDescendants([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_, int levels\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the descendants of a category up to the specified depth. To start at top, pass in `CATEGORY_TOP` for categoryId. Each node in the subtree and breadcrumbs retrieved from the returned `TreePivot` will be populated with `id` (the ID of the category) and `name` (the name of the category). The `data` field of the node is not populated.

        Parameters:

        `categoryId_` - the category

        `levels_` - the depths of the tree to return

        Returns:

        a category Tree rooted at `categoryId_`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified category does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getRootCategories

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] getRootCategories(int levels\_)

        Deprecated.

        use [`getRootCategoriesPaging(int, int, int, java.lang.Integer, java.lang.Integer)`](#getRootCategoriesPaging\(int,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets the root categories Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category). The `data` field of the node is not populated.

        Parameters:

        `levels_` - the number of levels of children to get. This value must be greater than or equal to 0.

        Returns:

        a list of `Tree` objects representing the root categories

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRootCategoriesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getRootCategoriesPaging(int levels\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets the root categories Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category). The `data` field of the node is not populated.

        Parameters:

        `levels_` - the number of levels of children to get. This value must be greater than or equal to 0.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing at `Tree` objects representing the root categories

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getCategoriesPageCounts

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getCategoriesPageCounts([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] categoryIds\_)

        Deprecated.

        Gets the number of pages in each category, for a list of categories

        Parameters:

        `categoryIds_` - the Ids of the categories

        Returns:

        a list of the number of pages for each category. If a category Id does not correspond to a valid category, `null` will be returned for that category

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllCategoriesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllCategoriesPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Deprecated.

        Gets a `ResultPage` containing all categories Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category). The `data` field of the node is not populated.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`Tree`](../common/Tree.html "class in com.appiancorp.suiteapi.common").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` of `Tree` objects

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllCategories

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Tree](../common/Tree.html "class in com.appiancorp.suiteapi.common")\[\] getAllCategories()

        Deprecated.

        use [`getAllCategoriesPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getAllCategoriesPaging\(int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets all categories. Each node in the returned trees (and their breadcrumbs) will be populated with `id` (the ID of the category) and `name` (the name of the category). The `data` field of the node is not populated.

        Returns:

        an array of `Tree`s representing all the categories

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesInCategoryPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPagesInCategoryPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a ResultPage containing all the pages that are in a specified category, and that the current user has permission to view. Pass `null` to return all pages in all categories that the current user has permission to view.

        Parameters:

        `categoryId_` - the category id

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `ResultPage` containing an array of `PageInfo` objects, representing the pages in the given category

        Throws:

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if category id is not `null`, and does not correspond to a valid category

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPagesInCategory

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] getPagesInCategory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_) throws [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getPagesInCategoryPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getPagesInCategoryPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets all the pages that are in a specified category, and that the current user has permission to view. Pass `null` to return all pages in all categories that the current user has permission to view.

        Parameters:

        `categoryId_` - the category id

        Returns:

        a list of pages of the given category

        Throws:

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if category id is not `null`, and does not correspond to a valid category

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addCategory

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") addCategory([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parentCategoryId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Add a category. If this category should be a root category (have no parent), pass in `CATEGORY_TOP` for parentId.

        Parameters:

        `name_` - the name of the category

        `parentCategoryId_` - the id of its parent

        Returns:

        the id of the newly added category

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a portal administrator

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the parentId is not `CATEGORY_TOP` and this category does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeCategory

        void removeCategory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove a category. If a category is removed which has pages in it, the pages will no longer belong to any category.

        Parameters:

        `categoryId_` - the id of the category to be removed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the category has descendants. To delete the catgory and its descendants, use [`removeCategoryAndDescendants(java.lang.Long)`](#removeCategoryAndDescendants\(java.lang.Long\)) instead

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a portal administrator

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified category does not exist

        `[NotEmptyException](../common/exceptions/NotEmptyException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified category is not empty

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`removeCategoryAndDescendants(Long)`](#removeCategoryAndDescendants\(java.lang.Long\))

    -   ### removeCategoryAndDescendants

        void removeCategoryAndDescendants([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") categoryId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Remove a category and all of its descendants. If any category is removed which has pages in it, the pages will no longer belong to any category.

        Parameters:

        `categoryId_` - the id of the category to be removed

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a portal administrator

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified category does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### setGroupAssociationForPage

        void setGroupAssociationForPage([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Associates a page to a group and a group to a page for the page and the group specified. The page will be updated to belong to that group. Only page creators/administrators who are also administrators of the group, or portal administrators can successfully call this method. **NOTE: Any group previously associated with the page will still have access to it. Passing `null` for `groupId_` dissociates the group from the page specified (that it was originally associated with), and also the page from that group.**

        Parameters:

        `pageId_` - the id of the page

        `groupId_` - the id of the group. Set to null to delete the reference.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### setHomePageForAnonymous

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setHomePageForAnonymous([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        anonymous user access was removed in 6.2

        Sets the home page for anonymous users.

        Parameters:

        `pageId_` - the unique Id of the page to be set as the home page for anonymous users

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified page does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the specified group

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### renameCategory

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void renameCategory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pCategoryId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") pCategoryName\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`addCategory(java.lang.String, java.lang.Long)`](#addCategory\(java.lang.String,java.lang.Long\)) and [`removeCategory(java.lang.Long)`](#removeCategory\(java.lang.Long\)) instead

        Renames the page category specified by `pCategoryId_` to the new `pCategoryName_`

        Parameters:

        `pCategoryId_` - Id of the page category to be renamed.

        `pCategoryName_` - new name for the page category.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not have sufficient privileges to perform this action

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidCategoryException](../common/exceptions/InvalidCategoryException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified category does not exist

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getLoginData

        [LoginData](LoginData.html "class in com.appiancorp.suiteapi.portal") getLoginData(int bookmarkPagingStartIndex\_, int bookmarkPagingBatchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") bookmarkPagingSortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") bookmarkPagingSortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a `LoginData` bean containing the list of bookmarked pages for the current user, as well as a flag representing whether the user, or any of his member groups, references an invalid page. A `null` is returned for each bookmarked page that does not exist, or that the user is not authorized to view.

        Parameters:

        `bookmarkPagingStartIndex_` - the index into the collection of total bookmarks at which to start. Negative numbers are treated as zeros.

        `bookmarkPagingBatchSize_` - the number of bookmarks to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `bookmarkPagingSortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

        `bookmarkPagingSortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a `LoginData` containing the list of pages as the `_bookmarks` field, as an array of `PageInfo`, representing the current user's bookmarks

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### cleanUpPageReferences

        void cleanUpPageReferences() throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes any references to invalid pages for that user or his member groups. References addressed include the user's bookmarks, tabs and home page, and the pages and home page of the groups.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`