---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/DocumentService.html
original_path: api/com/appiancorp/suiteapi/collaboration/DocumentService.html
version: "25.3"
title: "Interface DocumentService"
page_id: "api/com/appiancorp/suiteapi/collaboration/DocumentService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface DocumentService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface DocumentService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

Defines methods for managing collaboration documents. Documents are stored within collaboration folders. The security attached to a document is set from the security the document's parent folder. Documents can also be set to expire - expiration days is a configurable property of the knowledge center in which the document resides.

Documents can have symbolic links, ie there can be a link to a document in a different location than where the document itself resides. A link provides direct access to the document and it is removed if the real document is removed.

Documents can be versioned using the `createVersion()` or `createVersions()` methods which add new versions to an existing document.

A document can also be locked, which prevents anyone from making changes to it (however, it is still accessible for viewing).

NOTE: This service does not actually write any documents to disk - it only provides functionality for storing and handling document metadata, so documents must still be manually written to disk. The path on disk to which a document should be written is obtained from doc.getInternalFilename() method. Note that this field is only populated when creating a new document object, creating a new version or retrieving the Documents with DocumentService.downloadDocument().

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[addDocumentsToFavorites$UPDATES](#addDocumentsToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[addDocumentToFavorites$UPDATES](#addDocumentToFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForDocument$UPDATES](#approveChangesForDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForDocuments$UPDATES](#approveChangesForDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForVersion$UPDATES](#approveChangesForVersion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[approveChangesForVersions$UPDATES](#approveChangesForVersions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createDocument$UPDATES](#createDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createDocuments$UPDATES](#createDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createLink$UPDATES](#createLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createLinks$UPDATES](#createLinks$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createVersion$UPDATES](#createVersion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createVersions$UPDATES](#createVersions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteDocument$UPDATES](#deleteDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteDocuments$UPDATES](#deleteDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteLink$UPDATES](#deleteLink$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteLinks$UPDATES](#deleteLinks$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteVersion$UPDATES](#deleteVersion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[deleteVersions$UPDATES](#deleteVersions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[downloadDocument$UPDATES](#downloadDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[downloadDocuments$UPDATES](#downloadDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllVersionsForDocument$UPDATES](#getAllVersionsForDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAllVersionsForDocumentPaging$UPDATES](#getAllVersionsForDocumentPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdForDocumentId$UPDATES](#getContentIdForDocumentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getContentIdsForDocumentIds$UPDATES](#getContentIdsForDocumentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocument$UPDATES](#getDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentIdForContentId$UPDATES](#getDocumentIdForContentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentIdsForContentIds$UPDATES](#getDocumentIdsForContentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocuments$UPDATES](#getDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentsList$UPDATES](#getDocumentsList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getDocumentsPaging$UPDATES](#getDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteDocuments$UPDATES](#getFavoriteDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getFavoriteDocumentsPaging$UPDATES](#getFavoriteDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemDocumentId$UPDATES](#getSystemDocumentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVersion$UPDATES](#getVersion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVersions$UPDATES](#getVersions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getVersionsPaging$UPDATES](#getVersionsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getViewableDocumentsPaging$UPDATES](#getViewableDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[lockDocument$UPDATES](#lockDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveDocument$UPDATES](#moveDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[moveDocuments$UPDATES](#moveDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForDocument$UPDATES](#rejectChangesForDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForDocuments$UPDATES](#rejectChangesForDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForVersion$UPDATES](#rejectChangesForVersion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rejectChangesForVersions$UPDATES](#rejectChangesForVersions$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeDocumentFromFavorites$UPDATES](#removeDocumentFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[removeDocumentsFromFavorites$UPDATES](#removeDocumentsFromFavorites$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[searchDocuments$UPDATES](#searchDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[searchDocumentsPaging$UPDATES](#searchDocumentsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSystemDocumentId$UPDATES](#setSystemDocumentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[undeleteDocument$UPDATES](#undeleteDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unexpireDocuments$UPDATES](#unexpireDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[unlockDocument$UPDATES](#unlockDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateDocument$UPDATES](#updateDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateDocuments$UPDATES](#updateDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForDocument$UPDATES](#updateForumForDocument$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateForumForDocuments$UPDATES](#updateForumForDocuments$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateDocumentId$UPDATES](#validateDocumentId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateDocumentIds$UPDATES](#validateDocumentIds$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addDocumentsToFavorites](#addDocumentsToFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Adds multiple documents to the current user's list of favourites.

    `void`

    `[addDocumentToFavorites](#addDocumentToFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Adds a document to the current user's list of favorites.

    `void`

    `[approveChangesForDocument](#approveChangesForDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Approves the changes for a document; to approve creation of a document, pass the id of the document, to approve deletion of a document, pass (-1 \* (document id)).

    `void`

    `[approveChangesForDocuments](#approveChangesForDocuments\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Approves changes for multiple documents; to approve creation of a document, pass the id of the document, to approve deletion of a document, pass (-1 \* (document id)).

    `void`

    `[approveChangesForVersion](#approveChangesForVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid_)`

    Deprecated.

    Approves changes made for a specific version of a document; to approve creation of a version, pass the id of the document directly, to approve deletion of a version, pass (-1 \* (document id)).

    `void`

    `[approveChangesForVersions](#approveChangesForVersions\(java.lang.Long%5B%5D,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] vids_)`

    Deprecated.

    Approves changes made for specific versions of multiple documents; approves the passed version of the corresponding document (ie each index in `doids_` maps to an index in `vids_`).

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")`

    `[createDocument](#createDocument\(com.appiancorp.suiteapi.collaboration.Document\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc_)`

    Deprecated.

    Create a document.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[createDocuments](#createDocuments\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[] docs_)`

    Deprecated.

    Create multiple documents.

    `void`

    `[createLink](#createLink\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Creates a symbolic link to a document.

    `void`

    `[createLinks](#createLinks\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] docIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid_)`

    Deprecated.

    Creates a list of symbolic links to documents.

    `void`

    `[createLinks](#createLinks\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] docIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] foids_)`

    Deprecated.

    Creates multiple symbolic links to documents in a list of folders; a single link is created in each of the folders (ie each index in `docIds_` maps to an index in `foids_`).

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")`

    `[createVersion](#createVersion\(com.appiancorp.suiteapi.collaboration.Document\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") document_)`

    Deprecated.

    Creates a new version of a document.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[createVersions](#createVersions\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[] documents_)`

    Deprecated.

    Creates new versions of multiple documents.

    `void`

    `[deleteDocument](#deleteDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Use the method [`#deactivate(Long, Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `void`

    `[deleteDocuments](#deleteDocuments\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Use the method [`#deactivate(Long[], Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `void`

    `[deleteLink](#deleteLink\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foId_)`

    Deprecated.

    Deletes a symbolic link to a document from a folder.

    `void`

    `[deleteLinks](#deleteLinks\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] docIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foId_)`

    Deprecated.

    Deletes multiple symbolic links from a folder.

    `void`

    `[deleteVersion](#deleteVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId_)`

    Deprecated.

    Use the method [`#deactivateVersion(Long, Integer, Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `void`

    `[deleteVersions](#deleteVersions\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionIds_)`

    Deprecated.

    Use the method [`#deactivateVersions(Long, Integer[], Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")`

    `[downloadDocument](#downloadDocument\(java.lang.Long,java.lang.Integer,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid_, int adminOverride_)`

    Deprecated.

    Download a document.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[downloadDocuments](#downloadDocuments\(java.lang.Long%5B%5D,java.lang.Integer,int\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid_, int adminOverride_)`

    Deprecated.

    Download multiple documents.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getAllVersionsForDocument](#getAllVersionsForDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Use [`getAllVersionsForDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getAllVersionsForDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getAllVersionsForDocumentPaging](#getAllVersionsForDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets all versions of a document, paging.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getContentIdForDocumentId](#getContentIdForDocumentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Returns the Content Id given a Document Id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getContentIdsForDocumentIds](#getContentIdsForDocumentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Deprecated.

    Returns the Content Id given a Document Id.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getDocument](#getDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Retrieves a document (without the internalFilename property populated).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getDocumentIdForContentId](#getDocumentIdForContentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Returns the document Id given a content Id.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDocumentIdsForContentIds](#getDocumentIdsForContentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] id_)`

    Deprecated.

    Returns the document Id given a content Id.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getDocuments](#getDocuments\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    use [`getDocumentsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getDocumentsList](#getDocumentsList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] docIds_)`

    Deprecated.

    Gets the specified documents, returning the valid results even if all the results cannot be retrieved (for instance, if some of the documents corresponding to the ids no longer exist).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDocumentsPaging](#getDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves several documents (without the internalFilename property populated).

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getFavoriteDocuments](#getFavoriteDocuments\(java.lang.Integer,java.lang.String\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn_)`

    Deprecated.

    Use [`getFavoriteDocumentsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteDocumentsPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteDocumentsPaging](#getFavoriteDocumentsPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Retrieves the list of the current user's favorite documents, paging.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemDocumentId](#getSystemDocumentId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getDocumentIdForContentId(Long)`](#getDocumentIdForContentId\(java.lang.Long\))

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getVersion](#getVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId_)`

    Deprecated.

    Gets a specific version of a document.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[getVersions](#getVersions\(java.lang.Long,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionIds_)`

    Deprecated.

    Use [`getVersionsPaging(java.lang.Long, java.lang.Integer[], int, int, java.lang.Integer, java.lang.Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getVersionsPaging](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] versionIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets specific versions of a document, paging.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getViewableDocumentsPaging](#getViewableDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] documentIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets the documents that the current user is allowed to access from a list of documents.

    `void`

    `[lockDocument](#lockDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Locks a document.

    `void`

    `[moveDocument](#moveDocument\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newFolderId_)`

    Deprecated.

    Moves a document to another folder.

    `void`

    `[moveDocuments](#moveDocuments\(java.lang.Long%5B%5D,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] docids_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newFolderId_)`

    Deprecated.

    Moves multiple documents to another folder.

    `void`

    `[rejectChangesForDocument](#rejectChangesForDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Rejects changes made to a document; to reject creation of a document, pass the id of the document, to reject deletion of a document, pass (-1 \* (document id)).

    `void`

    `[rejectChangesForDocuments](#rejectChangesForDocuments\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Rejects changes made to multiple documents; to reject creation of a document, pass the id of the document, to reject deletion of a document, pass (-1 \* (document id)).

    `void`

    `[rejectChangesForVersion](#rejectChangesForVersion\(java.lang.Long,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid_)`

    Deprecated.

    Rejects the changes made for a specific version of a document; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

    `void`

    `[rejectChangesForVersions](#rejectChangesForVersions\(java.lang.Long%5B%5D,java.lang.Integer%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] vids_)`

    Deprecated.

    Rejects changes made for specific versions of multiple documents; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

    `void`

    `[removeDocumentFromFavorites](#removeDocumentFromFavorites\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Removes a document from the current user's list of favorites.

    `void`

    `[removeDocumentsFromFavorites](#removeDocumentsFromFavorites\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Removes multiple documents from the current user's list of favorites.

    `[Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[]`

    `[searchDocuments](#searchDocuments\(java.lang.String,int,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm_, int startIndex_, int scrollLength_)`

    Deprecated.

    Use [`searchDocumentsPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#searchDocumentsPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)).

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchDocumentsPaging](#searchDocumentsPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Search for documents by name.

    `void`

    `[setSystemDocumentId](#setSystemDocumentId\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    use [`createDocument(Document)`](#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) with a pre-populated UUID

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxItems_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    Deprecated.

     

    `void`

    `[undeleteDocument](#undeleteDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Reactivates (undeletes) a document (NOTE: This method does not currently check whether the user has permission to reactivate the document).

    `void`

    `[unexpireDocuments](#unexpireDocuments\(java.lang.Long,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] doids_)`

    Deprecated.

    Unexpires multiple documents.

    `void`

    `[unlockDocument](#unlockDocument\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid_)`

    Deprecated.

    Unlocks a document.

    `void`

    `[updateDocument](#updateDocument\(com.appiancorp.suiteapi.collaboration.Document\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc_)`

    Deprecated.

    Updates a document.

    `void`

    `[updateDocuments](#updateDocuments\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[] docs_)`

    Deprecated.

    Updates multiple documents.

    `void`

    `[updateForumForDocument](#updateForumForDocument\(com.appiancorp.suiteapi.collaboration.Document\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc_)`

    Deprecated.

    Updates the discussion forum associated with a document.

    `void`

    `[updateForumForDocuments](#updateForumForDocuments\(com.appiancorp.suiteapi.collaboration.Document%5B%5D\))([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")[] docs_)`

    Deprecated.

    Updates the discussion forums associated with multiple documents.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[validateDocumentId](#validateDocumentId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Validates a document ID.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[validateDocumentIds](#validateDocumentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Validates document ids.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### createDocument$UPDATES

        static final boolean createDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createDocument$UPDATES)

    -   ### createDocuments$UPDATES

        static final boolean createDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createDocuments$UPDATES)

    -   ### updateDocument$UPDATES

        static final boolean updateDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.updateDocument$UPDATES)

    -   ### updateDocuments$UPDATES

        static final boolean updateDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.updateDocuments$UPDATES)

    -   ### updateForumForDocument$UPDATES

        static final boolean updateForumForDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.updateForumForDocument$UPDATES)

    -   ### updateForumForDocuments$UPDATES

        static final boolean updateForumForDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.updateForumForDocuments$UPDATES)

    -   ### deleteDocument$UPDATES

        static final boolean deleteDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteDocument$UPDATES)

    -   ### deleteDocuments$UPDATES

        static final boolean deleteDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteDocuments$UPDATES)

    -   ### getDocument$UPDATES

        static final boolean getDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocument$UPDATES)

    -   ### getDocumentsPaging$UPDATES

        static final boolean getDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocumentsPaging$UPDATES)

    -   ### getDocuments$UPDATES

        static final boolean getDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocuments$UPDATES)

    -   ### moveDocument$UPDATES

        static final boolean moveDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.moveDocument$UPDATES)

    -   ### moveDocuments$UPDATES

        static final boolean moveDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.moveDocuments$UPDATES)

    -   ### unlockDocument$UPDATES

        static final boolean unlockDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.unlockDocument$UPDATES)

    -   ### lockDocument$UPDATES

        static final boolean lockDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.lockDocument$UPDATES)

    -   ### createLink$UPDATES

        static final boolean createLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createLink$UPDATES)

    -   ### createLinks$UPDATES

        static final boolean createLinks$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createLinks$UPDATES)

    -   ### deleteLink$UPDATES

        static final boolean deleteLink$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteLink$UPDATES)

    -   ### deleteLinks$UPDATES

        static final boolean deleteLinks$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteLinks$UPDATES)

    -   ### createVersion$UPDATES

        static final boolean createVersion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createVersion$UPDATES)

    -   ### createVersions$UPDATES

        static final boolean createVersions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.createVersions$UPDATES)

    -   ### deleteVersion$UPDATES

        static final boolean deleteVersion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteVersion$UPDATES)

    -   ### deleteVersions$UPDATES

        static final boolean deleteVersions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.deleteVersions$UPDATES)

    -   ### getVersion$UPDATES

        static final boolean getVersion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getVersion$UPDATES)

    -   ### getVersionsPaging$UPDATES

        static final boolean getVersionsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getVersionsPaging$UPDATES)

    -   ### getVersions$UPDATES

        static final boolean getVersions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getVersions$UPDATES)

    -   ### getAllVersionsForDocument$UPDATES

        static final boolean getAllVersionsForDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getAllVersionsForDocument$UPDATES)

    -   ### getAllVersionsForDocumentPaging$UPDATES

        static final boolean getAllVersionsForDocumentPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getAllVersionsForDocumentPaging$UPDATES)

    -   ### approveChangesForDocument$UPDATES

        static final boolean approveChangesForDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.approveChangesForDocument$UPDATES)

    -   ### approveChangesForDocuments$UPDATES

        static final boolean approveChangesForDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.approveChangesForDocuments$UPDATES)

    -   ### rejectChangesForDocument$UPDATES

        static final boolean rejectChangesForDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.rejectChangesForDocument$UPDATES)

    -   ### rejectChangesForDocuments$UPDATES

        static final boolean rejectChangesForDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.rejectChangesForDocuments$UPDATES)

    -   ### approveChangesForVersion$UPDATES

        static final boolean approveChangesForVersion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.approveChangesForVersion$UPDATES)

    -   ### approveChangesForVersions$UPDATES

        static final boolean approveChangesForVersions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.approveChangesForVersions$UPDATES)

    -   ### rejectChangesForVersion$UPDATES

        static final boolean rejectChangesForVersion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.rejectChangesForVersion$UPDATES)

    -   ### rejectChangesForVersions$UPDATES

        static final boolean rejectChangesForVersions$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.rejectChangesForVersions$UPDATES)

    -   ### getFavoriteDocuments$UPDATES

        static final boolean getFavoriteDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getFavoriteDocuments$UPDATES)

    -   ### getFavoriteDocumentsPaging$UPDATES

        static final boolean getFavoriteDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getFavoriteDocumentsPaging$UPDATES)

    -   ### addDocumentToFavorites$UPDATES

        static final boolean addDocumentToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.addDocumentToFavorites$UPDATES)

    -   ### addDocumentsToFavorites$UPDATES

        static final boolean addDocumentsToFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.addDocumentsToFavorites$UPDATES)

    -   ### removeDocumentFromFavorites$UPDATES

        static final boolean removeDocumentFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.removeDocumentFromFavorites$UPDATES)

    -   ### removeDocumentsFromFavorites$UPDATES

        static final boolean removeDocumentsFromFavorites$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.removeDocumentsFromFavorites$UPDATES)

    -   ### downloadDocument$UPDATES

        static final boolean downloadDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.downloadDocument$UPDATES)

    -   ### downloadDocuments$UPDATES

        static final boolean downloadDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.downloadDocuments$UPDATES)

    -   ### undeleteDocument$UPDATES

        static final boolean undeleteDocument$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.undeleteDocument$UPDATES)

    -   ### unexpireDocuments$UPDATES

        static final boolean unexpireDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.unexpireDocuments$UPDATES)

    -   ### validateDocumentIds$UPDATES

        static final boolean validateDocumentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.validateDocumentIds$UPDATES)

    -   ### validateDocumentId$UPDATES

        static final boolean validateDocumentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.validateDocumentId$UPDATES)

    -   ### searchDocuments$UPDATES

        static final boolean searchDocuments$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.searchDocuments$UPDATES)

    -   ### searchDocumentsPaging$UPDATES

        static final boolean searchDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.searchDocumentsPaging$UPDATES)

    -   ### getViewableDocumentsPaging$UPDATES

        static final boolean getViewableDocumentsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getViewableDocumentsPaging$UPDATES)

    -   ### getDocumentsList$UPDATES

        static final boolean getDocumentsList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocumentsList$UPDATES)

    -   ### getSystemDocumentId$UPDATES

        static final boolean getSystemDocumentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getSystemDocumentId$UPDATES)

    -   ### setSystemDocumentId$UPDATES

        static final boolean setSystemDocumentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.setSystemDocumentId$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.suggest$UPDATES)

    -   ### getContentIdForDocumentId$UPDATES

        static final boolean getContentIdForDocumentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getContentIdForDocumentId$UPDATES)

    -   ### getContentIdsForDocumentIds$UPDATES

        static final boolean getContentIdsForDocumentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getContentIdsForDocumentIds$UPDATES)

    -   ### getDocumentIdForContentId$UPDATES

        static final boolean getDocumentIdForContentId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocumentIdForContentId$UPDATES)

    -   ### getDocumentIdsForContentIds$UPDATES

        static final boolean getDocumentIdsForContentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.DocumentService.getDocumentIdsForContentIds$UPDATES)

-   ## Method Details

    -   ### createDocument

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") createDocument([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create a document.

        Parameters:

        `doc_` - a `Document` object which should contain all of the information required to create a valid document.
        The minimum required fields are: `name`, `description` (can be `null` or "", if not set), `extension`, `size`, `folderId`, and `status`.

        Returns:

        the created document

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder ID specified by the document does not correspond to a valid folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not contain all of the required information

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator and will exceed his/her quota on a community KC by creating this document in it

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createDocuments

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] createDocuments([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] docs\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Create multiple documents.

        Parameters:

        `docs_` - an array of `Document` objects which should contain all of the information required to create valid documents.
        The minimum required fields are: `name`, `description` (can be `null` or "", if not set), `extension`, `size`, `folderId`, and `status`.

        Returns:

        the created documents

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder ID specified by any of the documents does not correspond to a valid folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not contain all of the required information

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator and will exceed his/her quota on a community KC by creating this document in it

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateDocument

        void updateDocument([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates a document.

        Parameters:

        `doc_` - a `Document` object, which should contain all of the information required to update a document.
        The minimum required fields are: `name`, `description` (can be an empty `String`), `extension`, `size`, `folderId`, `status` and `id`.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the document does not correspond to a valid document

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder ID specified by the document does not correspond to a valid folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateDocuments

        void updateDocuments([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] docs\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates multiple documents.

        Parameters:

        `docs_` - an array of `Document` objects, which should each contain all of the information required to update a document.
        The minimum required fields are: `name`, `description` (can be an empty `String`), `extension`, `size`, `folderId`, `status` and `id`.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of any of the documents does not correspond to a valid document

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder ID specified by any of the documents does not correspond to a valid folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForumForDocument

        void updateForumForDocument([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") doc\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the discussion forum associated with a document.

        Parameters:

        `doc_` - a `Document` object which should contain the updated discussion forum information. The fields that should be populated on the document are: `id` and `forum`. All other fields will be ignored. If `forum` is set to `null`, any forum associations are removed.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of the document does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if 1) the current user does not have access to the folder containing the document or 2) the current user is not an editor of the folder containing the document, and a forum currently exists for the document

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateForumForDocuments

        void updateForumForDocuments([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] docs\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates the discussion forums associated with multiple documents.

        Parameters:

        `docs_` - a list of `Document` object which should contain the updated discussion forum information. The fields that should be populated on each document are: `id` and `forum`. All other fields will be ignored. If `forum` is set to `null`, any forum associations are removed.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID of any of the documents does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if 1) the current user does not have access to the folder containing one of the documents or 2) the current user is not an editor of the folder containing one of the documents, and a forum currently exists for the document

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteDocument

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void deleteDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use the method [`#deactivate(Long, Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Deactivates all versions of the specified document. Does not remove the file from disk and does not log in deletion.log. Can be reversed with `#undelete(Long)`.

        Parameters:

        `doid_` - the ID of the document to be deleted.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder or the owner of the document

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid document

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void deleteDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use the method [`#deactivate(Long[], Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Deactivates all versions of multiple documents. Does not remove the files from disk and does not log in deletion.log. Can be reversed with `#undelete(Long)`.

        Parameters:

        `doids_` - the IDs of the documents to be deleted.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder or the owner of the documents

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid document

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocument

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") getDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves a document (without the internalFilename property populated). If you need the internalFilename property, use the [`downloadDocument`](#downloadDocument\(java.lang.Long,java.lang.Integer,int\)) method.

        Parameters:

        `doid_` - the ID of the document.

        Returns:

        the retrieved document

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDocumentsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves several documents (without the internalFilename property populated). If you need the internalFilename property, use the [`downloadDocument`](#downloadDocuments\(java.lang.Long%5B%5D,java.lang.Integer,int\)) method.

        Parameters:

        `doids_` - an array of unique document IDs.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - the order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        a `ResultPage` containing a list of `Document` objects, representing the documents with the given IDs (without the internalFilename property set). If you need the internalFilename property, use the [`downloadDocument`](#downloadDocuments\(java.lang.Long%5B%5D,java.lang.Integer,int\)) method

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder(s)

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getDocumentsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Retrieves several documents (without the internalFilename set). If you need the internalFilename property, use the [`downloadDocuments`](#downloadDocuments\(java.lang.Long%5B%5D,java.lang.Integer,int\)) method

        Parameters:

        `doids_` - an array of unique document IDs.

        Returns:

        the documents corresponding to the given IDs

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the IDs does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user context does not have the rights to perform this operation

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### moveDocument

        void moveDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newFolderId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Moves a document to another folder.

        Parameters:

        `docid_` - The id of the document to be moved.

        `newFolderId_` - The id of the folder to move the document to.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of both the old and new knowledge centers

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### moveDocuments

        void moveDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] docids\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") newFolderId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Moves multiple documents to another folder.

        Parameters:

        `docids_` - An array of ids of the documents to be moved.

        `newFolderId_` - The id of the folder to move the documents to.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of both the old and new knowledge centers

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one or more of the documents does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unlockDocument

        void unlockDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unlocks a document.

        Parameters:

        `doid_` - The id of the document to unlock.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder nor the person who locked the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### lockDocument

        void lockDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Locks a document.

        Parameters:

        `doid_` - The id of the document to lock.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createLink

        void createLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a symbolic link to a document.

        Parameters:

        `docId_` - The id of the document to create the link to.

        `foid_` - The id of the folder where the link should be created.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of both the folder containing the document and the folder where the link is being created

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createLinks

        void createLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] docIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a list of symbolic links to documents.

        Parameters:

        `docIds_` - The ids of the documents to create the links to.

        `foid_` - The id of the folder where the links should be created.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of both the folder containing the document and the folder where the links are being created

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any document does not exist, or has been deleted

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createLinks

        void createLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] docIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] foids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates multiple symbolic links to documents in a list of folders; a single link is created in each of the folders (ie each index in `docIds_` maps to an index in `foids_`).

        Parameters:

        `docIds_` - The ids of the documents to create the links to.

        `foids_` - The ids of the folders where the links should be created. This array must be the same size as the `docIds` array.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of both the folder containing the document and the folder where the links are being created

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the folders does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteLink

        void deleteLink([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") docId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes a symbolic link to a document from a folder.

        Parameters:

        `docId_` - The id of the document to which the link points.

        `foId_` - The id of the folder which contains the link.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder or the owner of the link

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteLinks

        void deleteLinks([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] docIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") foId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Deletes multiple symbolic links from a folder.

        Parameters:

        `docIds_` - An array of ids of the documents to which the links point.

        `foId_` - The id of the folder which contains the links.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - f the current user is not an administrator of the folder or the owner of the links

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createVersion

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") createVersion([Document](Document.html "class in com.appiancorp.suiteapi.collaboration") document\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a new version of a document.

        Parameters:

        `document_` - A `Document` object which should contain all of the information required to create a valid document (see [`createDocument(com.appiancorp.suiteapi.collaboration.Document)`](#createDocument\(com.appiancorp.suiteapi.collaboration.Document\))). The `id` field of the passed object should be the id of the document for which the new version is being created.

        Returns:

        A `Document` object representing the new version of the document.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user context is not found

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by the document does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document ID does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document is pending approval, or has been checked out

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no space on the filesystem to store the document version

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createVersions

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] createVersions([Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] documents\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions"), [StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates new versions of multiple documents.

        Parameters:

        `documents_` - An array of `Document` objects which should contain all of the information required to create valid documents (see [`createDocument(com.appiancorp.suiteapi.collaboration.Document)`](#createDocument\(com.appiancorp.suiteapi.collaboration.Document\))). The `id` field of each passed objects should be the id of the document for which a new version is being created.

        Returns:

        An array of `Document` objects representing the new versions of the documents

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user context is not found

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the folder specified by any of the documents does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the document IDs does not correspond to a valid document

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is neither an editor nor an administrator of the folder

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents is pending approval, or has been checked out

        `[StorageLimitException](../common/exceptions/StorageLimitException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if there is no space on the filesystem to store the document versions

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteVersion

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void deleteVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use the method [`#deactivateVersion(Long, Integer, Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Deactivates the specified version of a document. Does not remove the file from disk and does not log in deletion.log.

        Parameters:

        `doid_` - The id of a document.

        `versionId_` - The version number of the document version to be deleted.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not the administrator of the fodler or the owner of the version

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if the specified version does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### deleteVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void deleteVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use the method [`#deactivateVersions(Long, Integer[], Boolean)`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

        Deactivates multiple versions of a document. Does not remove the file from disk and does not log in deletion.log.

        Parameters:

        `doid_` - The id of a document.

        `versionIds_` - The version numbers of the document versions to be deleted.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not the administrator of the fodler or the owner of the versions

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if any of the specified versions does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVersion

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") getVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") versionId\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a specific version of a document.

        Parameters:

        `doid_` - The id of a document.

        `versionId_` - The version number of the document version to retrieve.

        Returns:

        A `Document` object representing the specified version of the document.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if the specified version does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed version id is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVersionsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getVersionsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets specific versions of a document, paging.

        Parameters:

        `doid_` - The id of a document.

        `versionIds_` - An array containing the version numbers of the document versions to retrieve.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing a list of `Document` objects, which hold information about the specified versions of the document with the passed id.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if any of the specified versions does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed version ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getVersions

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] versionIds\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getVersionsPaging(java.lang.Long, java.lang.Integer[], int, int, java.lang.Integer, java.lang.Integer)`](#getVersionsPaging\(java.lang.Long,java.lang.Integer%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)).

        Gets specific versions of a document.

        Parameters:

        `doid_` - The id of a document.

        `versionIds_` - An array containing the version numbers of the document versions to retrieve.

        Returns:

        A list of `Document` objects representing the specified versions of the document.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if any of the specified versions does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidVersionException](../common/exceptions/InvalidVersionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any one of the passed version ids is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllVersionsForDocument

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getAllVersionsForDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getAllVersionsForDocumentPaging(java.lang.Long, int, int, java.lang.Integer, java.lang.Integer)`](#getAllVersionsForDocumentPaging\(java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\)).

        Gets all versions of a document.

        Parameters:

        `doid_` - The id of a document.

        Returns:

        A list of `Document` objects representing all the document's versions.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist or has been deleted

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAllVersionsForDocumentPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getAllVersionsForDocumentPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets all versions of a document, paging.

        Parameters:

        `doid_` - The id of a document.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing a list of `Document` objects, which hold information about each of the versions of the document with the passed id.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForDocument

        void approveChangesForDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves the changes for a document; to approve creation of a document, pass the id of the document, to approve deletion of a document, pass (-1 \* (document id)).

        Parameters:

        `doid_` - The id of the document to approve creation or the negation of the document id to approve deletion.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForDocuments

        void approveChangesForDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves changes for multiple documents; to approve creation of a document, pass the id of the document, to approve deletion of a document, pass (-1 \* (document id)).

        Parameters:

        `doids_` - An array of ids of the documents to approve; to approve creation of a document, pass the id of the document, to approve deletion of a document, pass (-1 \* (document id)).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForDocument

        void rejectChangesForDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects changes made to a document; to reject creation of a document, pass the id of the document, to reject deletion of a document, pass (-1 \* (document id)).

        Parameters:

        `doid_` - The id of a document; to reject creation of a document, pass the id of the document directly, to reject deletion of a document, pass (-1 \* (document id)).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForDocuments

        void rejectChangesForDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects changes made to multiple documents; to reject creation of a document, pass the id of the document, to reject deletion of a document, pass (-1 \* (document id)).

        Parameters:

        `doids_` - An array of ids of documents; to reject creation of a document, pass the id of the document directly, to reject deletion of a document, pass (-1 \* (document id)).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForVersion

        void approveChangesForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves changes made for a specific version of a document; to approve creation of a version, pass the id of the document directly, to approve deletion of a version, pass (-1 \* (document id)).

        Parameters:

        `doid_` - The id of a document; to approve creation of a version, pass the id of the document directly, to approve deletion of a version, pass (-1 \* (document id)).

        `vid_` - The version number of the document version to approve.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if the specified version does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### approveChangesForVersions

        void approveChangesForVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] vids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Approves changes made for specific versions of multiple documents; approves the passed version of the corresponding document (ie each index in `doids_` maps to an index in `vids_`). To approve creation of a version, pass the id of the document directly, to approve deletion of a version, pass (-1 \* (document id)).

        Parameters:

        `doids_` - An array of ids of documents; to approve creation of a version, pass the id of the document directly, to approve deletion of a version, pass (-1 \* (document id)).

        `vids_` - An array of the version numbers of the document versions to approve. This should be the same size as the `doids` array.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted, or if the specified version does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForVersion

        void rejectChangesForVersion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects the changes made for a specific version of a document; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

        Parameters:

        `doid_` - The id of a document; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

        `vid_` - The version number of the document version.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted, or if the specified version does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rejectChangesForVersions

        void rejectChangesForVersions([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] vids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Rejects changes made for specific versions of multiple documents; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

        Parameters:

        `doids_` - An array of ids of documents; to reject creation of a version, pass the id of the document directly, to reject deletion of a version, pass (-1 \* (document id)).

        `vids_` - An array of the version numbers of the document versions. This should be the same size as the `doids` array.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the KC containing the document

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted, or if the specified version does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] getFavoriteDocuments([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") sortColumn\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`getFavoriteDocumentsPaging(int, int, java.lang.Integer, java.lang.Integer)`](#getFavoriteDocumentsPaging\(int,int,java.lang.Integer,java.lang.Integer\)).

        Retrieves the list of the current user's favorite documents.

        Parameters:

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        `sortColumn_` - The field of the `Document` object by which to sort the returned list of documents. This is one of the `SORT_BY_XX` in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")

        Returns:

        A list of the user's favorite documents.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getFavoriteDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteDocumentsPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Retrieves the list of the current user's favorite documents, paging.

        Parameters:

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing a list of `Document` objects, representing those documents that are the current user's favorites.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addDocumentToFavorites

        void addDocumentToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds a document to the current user's list of favorites.

        Parameters:

        `doid_` - The id of the document to add to favorites.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### addDocumentsToFavorites

        void addDocumentsToFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds multiple documents to the current user's list of favourites.

        Parameters:

        `doids_` - An array of ids of the documents to add to favorites.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if doids\_ is null.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeDocumentFromFavorites

        void removeDocumentFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes a document from the current user's list of favorites.

        Parameters:

        `doid_` - The id of the document to remove from favorites.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has been deleted

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### removeDocumentsFromFavorites

        void removeDocumentsFromFavorites([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Removes multiple documents from the current user's list of favorites.

        Parameters:

        `doids_` - An array of ids of the documents to remove from favorites.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if doids\_ is null.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### downloadDocument

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration") downloadDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid\_, int adminOverride\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Download a document. The `fileSystemId` of the returned document is:

        -   \-1, if the user cannot see the document
        -   \-2, if the document is pending revision
        -   the actual file system id otherwise; irrespective of whether the document is expired or not

        The [`getDocument(java.lang.Long)`](#getDocument\(java.lang.Long\)) method should be used to return document metadata (not logged as a download and security is more strict), while this method will allow downloads from low security knowledge centers, and the download will be logged.

        Parameters:

        `doid_` - The id of the document to be downloaded.

        `vid_` - The version number of the document version to be downloaded (use `Document.CURRENT_VERSION` for the current version; otherwise version numbers start at 1).

        `adminOverride_` - Should usually be set to 0. Set to 1 to allow any user to see a document to which he/she ordinarily does not have viewing rights.

        Returns:

        A `Document` object representing the downloaded document.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist, or has expired

        `[InvalidOperationException](../common/exceptions/InvalidOperationException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document is pending changes approval

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### downloadDocuments

        [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] downloadDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") vid\_, int adminOverride\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Download multiple documents. The `fileSystemId` of the returned documents is:

        -   \-1, if the user cannot see the document
        -   \-2, if the document is pending revision
        -   the actual file system id otherwise; irrespective of whether the document is expired or not

        The [`getDocumentsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getDocumentsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) method should be used to return document metadatas (not logged as a download and security is more strict), while this method will allow downloads from low security knowledge centers, and the download will be logged.

        Parameters:

        `doids_` - The ids of the documents to be downloaded.

        `vid_` - The version number of the documents' version to be downloaded (use `Document.CURRENT_VERSION` for the current version; otherwise version numbers start at 1).

        `adminOverride_` - Should usually be set to 0. Set to 1 to allow any user to see a document to which he/she ordinarily does not have viewing rights.

        Returns:

        A list of `Document` objects representing the downloaded documents.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have viewing privileges to the folder

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has expired

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### undeleteDocument

        void undeleteDocument([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") doid\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Reactivates (undeletes) a document (NOTE: This method does not currently check whether the user has permission to reactivate the document).

        Parameters:

        `doid_` - The id of the document to reactivate.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the document does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder or the owner of the document

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unexpireDocuments

        void unexpireDocuments([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") kcid\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] doids\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Unexpires multiple documents.

        Parameters:

        `kcid_` - The id of the knowledge center containing the documents.

        `doids_` - The ids of the documents to be unexpired.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents does not exist, or has been deleted

        `[InvalidKnowledgeCenterException](../common/exceptions/InvalidKnowledgeCenterException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed knowledge center or the knowledge center referenced by any of the documents is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an administrator of the folder or the owner of the documents

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateDocumentIds

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] validateDocumentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Deprecated.

        Validates document ids. This method takes an array of document ids and determines whether each document id in the array is valid. An array of '0's (NOT valid) and '1's (valid) will be returned. For example, given the array of document ids {100, 101, 102}, an output of {1, 0, 0} will be returned if document id '100' is valid (a document with that id exists), and document ids '101' and '102' are invalid (no documents with those ids exist).

        Parameters:

        `ids_` - An array of document ids to be validated.

        Returns:

        An `Integer[]` of '0's and '1's corresponding to the array of document ids that was passed as argument. '1' means 'valid', while '0' means Invalid.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateDocumentId

        [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") validateDocumentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Validates a document ID. If the id is valid (a document with the passed id exists), '1' is returned; otherwise returns '0'.

        Parameters:

        `id_` - The document id to validate.

        Returns:

        An `Integer` that is either '0' (if the passed id is invalid) or '1' (if the passed id is valid).

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### searchDocuments

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Document](Document.html "class in com.appiancorp.suiteapi.collaboration")\[\] searchDocuments([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm\_, int startIndex\_, int scrollLength\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`searchDocumentsPaging(java.lang.String, int, int, java.lang.Integer, java.lang.Integer)`](#searchDocumentsPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\)).

        Search for documents by name.

        Parameters:

        `searchTerm_` - The string representing the name of the document for which to search. A document will match if its name _contains_ the value of `searchTerm_`.

        `startIndex_` - The starting index of the first `Document` to return.

        `scrollLength_` - The number of consecutive `Document` objects to return after the first.

        Returns:

        A list of `Document` objects whose names match the specified search term, the list can have `null` values in it. Here, `null` means that user does not have access to that document.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### searchDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchDocumentsPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerm\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Search for documents by name.

        Parameters:

        `searchTerm_` - The string representing the document name for which to search. A document will match if its name _contains_ the value of `searchTerm_`.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing a list of `Document` objects, representing those documents whose names match the specified search term.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getViewableDocumentsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getViewableDocumentsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] documentIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the documents that the current user is allowed to access from a list of documents.

        Parameters:

        `documentIds_` - A list of ids of documents.

        `startIndex_` - The index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - The number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - The property by which the results should be sorted. This should be one of the `SORT_BY_XXX` constants defined in [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration").

        `sortOrder_` - The order in which to sort the results. This should be either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING).

        Returns:

        A `ResultPage` containing a list of `Document` objects, representing those documents which the current user is allowed to access.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not exist

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the documents is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getDocumentsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getDocumentsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] docIds\_)

        Deprecated.

        Gets the specified documents, returning the valid results even if all the results cannot be retrieved (for instance, if some of the documents corresponding to the ids no longer exist).

        Parameters:

        `docIds_` - The ids of the documents to retrieve.

        Returns:

        A `ResultList` containing documents and result codes. the [`Result.getResults()`](../common/Result.html#getResults\(\)) method should be used to get all the documents that were successfully retrieved. In addition [`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\)) can be used to get the list of result codes corresponding to each of the specified document ids. Each code represents the successful retrieval of a document, or, if the document could not be retrieved, the reason for the failure. Each code will be one of the `CODE_XXX` or `COLLAB_CODE_XXX` constants in [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common")

        See Also:

        -   [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common")
        -   [`Result`](../common/Result.html "class in com.appiancorp.suiteapi.common")

    -   ### getSystemDocumentId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemDocumentId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`ContentService.getIdByUuid(String)`](../content/ContentService.html#getIdByUuid\(java.lang.String\)) and [`getDocumentIdForContentId(Long)`](#getDocumentIdForContentId\(java.lang.Long\))

        This is a small wrapper on Content's getSystemId, but returns the content id as a document id.

        Parameters:

        `name` - A case-insensitive system name.

        Returns:

        the id of the document mapped to that name.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized

    -   ### setSystemDocumentId

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setSystemDocumentId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`createDocument(Document)`](#createDocument\(com.appiancorp.suiteapi.collaboration.Document\)) with a pre-populated UUID

        Stores and associates the specified `id` value with the specified `name` key.

        Parameters:

        `name` - A case-insensitive system name.

        `id` - The document id.

        Throws:

        `[InvalidDocumentException](../common/exceptions/InvalidDocumentException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the string is not recognized

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are document.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxItems\_, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params\_, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Deprecated.

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are document.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### getContentIdForDocumentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getContentIdForDocumentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Returns the Content Id given a Document Id. Note that for documents, the document id and the content id will always be the same.

        Parameters:

        `id_` - the document id.

    -   ### getContentIdsForDocumentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getContentIdsForDocumentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Deprecated.

        Returns the Content Id given a Document Id. Note that for documents, the document id and the content id will always be the same.

        Parameters:

        `id_` - the document id.

    -   ### getDocumentIdForContentId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getDocumentIdForContentId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Returns the document Id given a content Id. Note that for documents, the document id and the content id will always be the same.

        Parameters:

        `id_` - the document id.

    -   ### getDocumentIdsForContentIds

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDocumentIdsForContentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] id\_)

        Deprecated.

        Returns the document Id given a content Id. Note that for documents, the document id and the content id will always be the same.

        Parameters:

        `id_` - the document id.