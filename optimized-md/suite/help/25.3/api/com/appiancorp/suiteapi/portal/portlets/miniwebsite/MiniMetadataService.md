---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/miniwebsite/MiniMetadataService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal.portlets.miniwebsite](package-summary.html)

# Interface MiniMetadataService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface MiniMetadataService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Defines methods for manipulating miniwebsite portlets.

When a user begins to edit a miniwebsite, a draft is created and all changes are made to that draft. When the user wants to make the draft public, he submits it for publishing.

When a miniwebsite is submitted for publishing, it may require the approval of the channel administrator. If it requires approval, then the administrator must approve the draft before the public can see it. If it does not require approval, the public can see it immediately, and it replaces the version that was previously available for the public to see.

All published drafts are kept as a history of the miniwebsite. Each published draft becomes a version in the history.

Note: This service does not write any data to disk. That must be done separately in order to use the service.

When a draft is created, the miniwebsite is locked and no other users may edit the miniwebsite or create a draft unless they break the lock (in which case the first user's draft is deleted). Locking prevents someone from accidentally overwriting someone else's draft.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../../../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../../../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../../../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../../../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../../../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`MiniMetadata`](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")
-   [`FileChange`](FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[breakLock$UPDATES](#breakLock$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changeAuthor$UPDATES](#changeAuthor$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changeMiniApproval$UPDATES](#changeMiniApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changeMwsPath$UPDATES](#changeMwsPath$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createMini$UPDATES](#createMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteDraftMini$UPDATES](#deleteDraftMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[editMini$UPDATES](#editMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllMiniFilenamesPaging$UPDATES](#getAllMiniFilenamesPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getMiniApproval$UPDATES](#getMiniApproval$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRevisionHistory$UPDATES](#getRevisionHistory$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[promoteToDraft$UPDATES](#promoteToDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[publishSubmitted$UPDATES](#publishSubmitted$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectSubmitted$UPDATES](#rejectSubmitted$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[returnSubmitted$UPDATES](#returnSubmitted$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[saveDraft$UPDATES](#saveDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[submitDraft$UPDATES](#submitDraft$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[uneditMini$UPDATES](#uneditMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unsubmit$UPDATES](#unsubmit$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[viewCurrentMini$UPDATES](#viewCurrentMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[viewMini$UPDATES](#viewMini$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[viewUnpublishedMinis$UPDATES](#viewUnpublishedMinis$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[breakLock](#breakLock\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Break the lock on a given miniwebsite portlet.

    `void`

    `[changeAuthor](#changeAuthor\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") oldAuthor_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newAuthor_)`

    Deprecated.

    Change the author of a draft/submission of a given miniwebsite portlet.

    `void`

    `[changeMiniApproval](#changeMiniApproval\(java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, boolean approvalRequired_)`

    Deprecated.

    Set whether or not changes to a given miniwebsite portlet will require approval by the channel administrator.

    `void`

    `[changeMwsPath](#changeMwsPath\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") substring_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") replacement_)`

    Deprecated.

    Modify the path where mini website content is stored for existing mini websites.

    `void`

    `[createMini](#createMini\(java.lang.Long,java.lang.String,boolean,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template_, boolean isVersioned_, boolean requiresApproval_)`

    Deprecated.

    Create a new miniwebsite portlet or a new version of an existing miniwebsite portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[deleteDraftMini](#deleteDraftMini\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Delete an author's current draft for a given miniwebsite portlet.

    `[MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[editMini](#editMini\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Lock a given miniwebsite portlet in order to edit it.

    `[ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllMiniFilenamesPaging](#getAllMiniFilenamesPaging\(int,int\))(int startPosition_, int batchSize_)`

    Deprecated.

    Gets the filename paths of all version (including prior) and drafts for all valid MiniWebSites

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `boolean`

    `[getMiniApproval](#getMiniApproval\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Returns whether changes to a given miniwebsite portlet require approval by the channel administrator.

    `[MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")[]`

    `[getRevisionHistory](#getRevisionHistory\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Get the revision history for a given miniwebsite portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `[FileChange](FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[promoteToDraft](#promoteToDraft\(java.lang.Long,java.lang.Integer,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Use a version of a given miniwebsite portlet to create a draft for a new version of the miniwebsite.

    `[FileChange](FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[publishSubmitted](#publishSubmitted\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Publish an author's submitted draft for a given miniwebsite portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[rejectSubmitted](#rejectSubmitted\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    Reject an author's miniwebsite draft submission.

    `void`

    `[returnSubmitted](#returnSubmitted\(java.lang.Long,java.lang.String,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message_)`

    Deprecated.

    Return an author's miniwebsite draft submission for rework.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[saveDraft](#saveDraft\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Save an author's current draft for a given miniwebsite portlet.

    `void`

    `[submitDraft](#submitDraft\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Submit an author's current miniwebsite draft for approval.

    `void`

    `[uneditMini](#uneditMini\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Unlock a given miniwebsite portlet if it is currently locked by the passed author and the author has no drafts/submissions.

    `void`

    `[unsubmit](#unsubmit\(java.lang.Long,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author_)`

    Deprecated.

    Cancel the submission for approval of a miniwebsite draft.

    `[MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[viewCurrentMini](#viewCurrentMini\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Get information about the latest version of a given miniwebsite portlet.

    `[MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")`

    `[viewMini](#viewMini\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") revisionId_)`

    Deprecated.

    View a version of a given miniwebsite portlet.

    `[MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")[]`

    `[viewUnpublishedMinis](#viewUnpublishedMinis\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    View the unpublished versions of a given miniwebsite portlet.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createMini$UPDATES

        static final boolean createMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.createMini$UPDATES)

    -   ### editMini$UPDATES

        static final boolean editMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.editMini$UPDATES)

    -   ### uneditMini$UPDATES

        static final boolean uneditMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.uneditMini$UPDATES)

    -   ### viewUnpublishedMinis$UPDATES

        static final boolean viewUnpublishedMinis$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.viewUnpublishedMinis$UPDATES)

    -   ### changeAuthor$UPDATES

        static final boolean changeAuthor$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.changeAuthor$UPDATES)

    -   ### deleteDraftMini$UPDATES

        static final boolean deleteDraftMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.deleteDraftMini$UPDATES)

    -   ### saveDraft$UPDATES

        static final boolean saveDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.saveDraft$UPDATES)

    -   ### submitDraft$UPDATES

        static final boolean submitDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.submitDraft$UPDATES)

    -   ### unsubmit$UPDATES

        static final boolean unsubmit$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.unsubmit$UPDATES)

    -   ### publishSubmitted$UPDATES

        static final boolean publishSubmitted$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.publishSubmitted$UPDATES)

    -   ### returnSubmitted$UPDATES

        static final boolean returnSubmitted$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.returnSubmitted$UPDATES)

    -   ### rejectSubmitted$UPDATES

        static final boolean rejectSubmitted$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.rejectSubmitted$UPDATES)

    -   ### breakLock$UPDATES

        static final boolean breakLock$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.breakLock$UPDATES)

    -   ### getRevisionHistory$UPDATES

        static final boolean getRevisionHistory$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.getRevisionHistory$UPDATES)

    -   ### viewMini$UPDATES

        static final boolean viewMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.viewMini$UPDATES)

    -   ### promoteToDraft$UPDATES

        static final boolean promoteToDraft$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.promoteToDraft$UPDATES)

    -   ### getMiniApproval$UPDATES

        static final boolean getMiniApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.getMiniApproval$UPDATES)

    -   ### changeMiniApproval$UPDATES

        static final boolean changeMiniApproval$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.changeMiniApproval$UPDATES)

    -   ### viewCurrentMini$UPDATES

        static final boolean viewCurrentMini$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.viewCurrentMini$UPDATES)

    -   ### changeMwsPath$UPDATES

        static final boolean changeMwsPath$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.changeMwsPath$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.getWorkspace$UPDATES)

    -   ### getAllMiniFilenamesPaging$UPDATES

        static final boolean getAllMiniFilenamesPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../../../constant-values.html#com.appiancorp.suiteapi.portal.portlets.miniwebsite.MiniMetadataService.getAllMiniFilenamesPaging$UPDATES)

-   ## Method Details

    -   ### createMini

        void createMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template\_, boolean isVersioned\_, boolean requiresApproval\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a new miniwebsite portlet or a new version of an existing miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet, if creating a new version of an existing portlet

        `template_` - reserved for future use; should be set to `null`. Value is saved to the database but not used anywhere.

        `isVersioned_` - Set to `true` to enable versioning for the miniwebsite (all revisions of the portlet will be saved). Set to `false` if new versions of the portlet should replace any existing versions.

        `requiresApproval_` - Sets whether the changes to this miniwebsite portlet will require approval by the channel administrators

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet ID is null or no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### editMini

        [MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite") editMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Lock a given miniwebsite portlet in order to edit it. No users other than `author_` will be able to edit the portlet while it is locked. If the miniwebsite is already locked, the MiniMetadata returned will show who locked the miniwebsite and the lock will not be broken.

        Parameters:

        `portletId_` - The ID of the miniwebsite portlet that should be locked.

        `author_` - The username of the author who will edit the portlet.

        Returns:

        `MiniMetadata` object containing information about the miniwebsite portlet whose ID was passed or null if the portlet ID corresponds to a non-miniwebsite portlet

        Throws:

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet ID is `null` or no portlet with the passed ID exists

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")`

    -   ### uneditMini

        void uneditMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unlock a given miniwebsite portlet if it is currently locked by the passed author and the author has no drafts/submissions. If the miniwebsite is locked by a user who has drafts, it will not be unlocked.

        Parameters:

        `portletId_` - The ID of the miniwebsite portlet that should be unlocked.

        `author_` - The username of the author calling this function

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### viewUnpublishedMinis

        [MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")\[\] viewUnpublishedMinis([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        View the unpublished versions of a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        Returns:

        `MiniMetadata` objects containing information about each of the unpublished versions of the portlet.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changeAuthor

        void changeAuthor([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") oldAuthor\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newAuthor\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Change the author of a draft/submission of a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `oldAuthor_` - The username of the author of the miniwebsite draft/submission.

        `newAuthor_` - The username of the person who should be set as the author of the minwebsite draft/submission.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteDraftMini

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") deleteDraftMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Delete an author's current draft for a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author whose draft should be deleted.

        Returns:

        The local path to the file which contains the miniwebsite body.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### saveDraft

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") saveDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Save an author's current draft for a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author whose draft should be saved.

        Returns:

        The local path to the file which should store the miniwebsite draft body.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet ID is `null` or no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### submitDraft

        void submitDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Submit an author's current miniwebsite draft for approval.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author submitting the draft.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet ID is `null` or no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsubmit

        void unsubmit([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Cancel the submission for approval of a miniwebsite draft. The miniwebsite will not be unsubmitted if the draft is in the submitted state (i.e., has been submitted and has not been approved), or if the author provided as a parameter is not the draft author

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author of the submitted draft.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### publishSubmitted

        [FileChange](FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite") publishSubmitted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Publish an author's submitted draft for a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author who submitted the draft.

        Returns:

        `FileChange` object containing: 1) the path to the file containing the submitted draft's body 2) the path to the file where the new version for the miniwebsite should be created. The body of the submitted draft should then be copied into the file for the new miniwebsite version, and the draft file should be deleted.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### returnSubmitted

        void returnSubmitted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Return an author's miniwebsite draft submission for rework.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author of the submitted draft.

        `message_` - Return message text. This parameter reserved for future use, and should be set to `null`.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectSubmitted

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") rejectSubmitted([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") message\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Reject an author's miniwebsite draft submission.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `author_` - The username of the author of the submitted draft.

        `message_` - Rejection message text. This parameter is reserved for future use, and should be set to `null`.

        Returns:

        The local path to the file which contains the submitted miniwebsite draft body. The caller then has the option of deleting this content.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### breakLock

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") breakLock([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Break the lock on a given miniwebsite portlet. This should be used to cancel/delete a draft for a miniwebsite.

        Parameters:

        `portletId_` - The ID of a locked miniwebsite portlet.

        Returns:

        The local path to the file which contains the body of the miniwebsite portlet whose ID was passed. The caller then has the option of deleting this content.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet ID is `null` or no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRevisionHistory

        [MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite")\[\] getRevisionHistory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the revision history for a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        Returns:

        `MiniMetadata` objects containing information about each of the revisions of the miniwebsite.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### viewMini

        [MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite") viewMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") revisionId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        View a version of a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `revisionId_` - The ID of the miniwebsite version to retrieve.

        Returns:

        `MiniMetadata` object containing information about the requested miniwebsite version.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### promoteToDraft

        [FileChange](FileChange.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite") promoteToDraft([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") author\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use a version of a given miniwebsite portlet to create a draft for a new version of the miniwebsite. Get the local path to a version of a miniwebsite, as well as the path to where a new draft for the miniwebsite should be created from that version.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `versionId_` - The ID of the miniwebsite version to retrieve.

        `author_` - The username of the author of that miniwebsite version.

        Returns:

        `FileChange` object containing: 1) the path to the file containing the requested miniwebsite version's body 2) the path to the file where the body of the new draft for the miniwebsite should be created. The body of the retrieved miniwebsite version should then be copied into the file for the new draft.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getMiniApproval

        boolean getMiniApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns whether changes to a given miniwebsite portlet require approval by the channel administrator.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        Returns:

        `true` if changes to the miniwebsite require approval and `false` otherwise.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changeMiniApproval

        void changeMiniApproval([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, boolean approvalRequired\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set whether or not changes to a given miniwebsite portlet will require approval by the channel administrator.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        `approvalRequired_` - Set to `true` if changes to the miniwebsite should require approval and `false` otherwise.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID is `null` or corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### viewCurrentMini

        [MiniMetadata](MiniMetadata.html "class in com.appiancorp.suiteapi.portal.portlets.miniwebsite") viewCurrentMini([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get information about the latest version of a given miniwebsite portlet.

        Parameters:

        `portletId_` - The ID of a miniwebsite portlet.

        Returns:

        `MiniMetadata` object containing information about the latest miniwebsite version.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the portlet ID corresponds to a non-miniwebsite portlet

        `[InvalidPortletException](../../../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet ID is null or no portlet with the passed ID exists

        `[InvalidPortletTypeException](../../../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the miniwebsite portlet type does not exist (for example, if the type was never registered)

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changeMwsPath

        void changeMwsPath([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") substring\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") replacement\_)

        Deprecated.

        Modify the path where mini website content is stored for existing mini websites. This call does a "replace all" on the MWS content path of current mini websites. Should be used for migration only: pass the existing directory path as the `substring_` and the new directory path as the `replacement_`.

        Parameters:

        `substring_` - A substring of the path, every occurence of which should be replaced.

        `replacement_` - The string with which every occurence of `substring_` should be replaced for all existing mini websites.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Deprecated.

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllMiniFilenamesPaging

        [ResultPage](../../../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllMiniFilenamesPaging(int startPosition\_, int batchSize\_) throws [PrivilegeException](../../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the filename paths of all version (including prior) and drafts for all valid MiniWebSites

        Parameters:

        `startPosition_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../../../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        Returns:

        a ResultPage where the results field is a string array of the filename paths of all version (including prior) and drafts for all valid MiniWebSites.

        Throws:

        `[PrivilegeException](../../../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user does not have permissions to make this call

        `[ServiceException](../../../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs