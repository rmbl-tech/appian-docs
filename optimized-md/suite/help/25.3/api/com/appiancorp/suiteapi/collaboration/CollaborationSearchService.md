---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html
original_path: api/com/appiancorp/suiteapi/collaboration/CollaborationSearchService.html
version: "25.3"
title: "Interface CollaborationSearchService"
page_id: "api/com/appiancorp/suiteapi/collaboration/CollaborationSearchService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface CollaborationSearchService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface CollaborationSearchService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

Provides search functionality related to the Collaboration application

Method [`generateSearchIndex(java.sql.Timestamp)`](#generateSearchIndex\(java.sql.Timestamp\)) will generate an index file for all collaboration entities (documents, folders, knowledge centers, communities) created or updated after a particular time. This index file can be used by the search engine to facilitate searching on the entities

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`AdministrationService`](AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
-   [`CommunityService`](CommunityService.html "interface in com.appiancorp.suiteapi.collaboration")
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

    `static final int`

    `[ADMIN](#ADMIN)`

    Deprecated.

     

    `static final int`

    `[CANTSEE](#CANTSEE)`

    Deprecated.

     

    `static final int`

    `[EDITOR](#EDITOR)`

    Deprecated.

     

    `static final boolean`

    `[generateSearchIndex$UPDATES](#generateSearchIndex$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForCommunityIds$UPDATES](#getPermissionsForCommunityIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForCommunityIdsForUser$UPDATES](#getPermissionsForCommunityIdsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForDocumentIds$UPDATES](#getPermissionsForDocumentIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForDocumentIdsForUser$UPDATES](#getPermissionsForDocumentIdsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForFolderIds$UPDATES](#getPermissionsForFolderIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForFolderIdsForUser$UPDATES](#getPermissionsForFolderIdsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForKnowledgeCenterIds$UPDATES](#getPermissionsForKnowledgeCenterIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForKnowledgeCenterIdsForUser$UPDATES](#getPermissionsForKnowledgeCenterIdsForUser$UPDATES)`

    Deprecated.

     

    `static final int`

    `[INVALID](#INVALID)`

    Deprecated.

     

    `static final int`

    `[READER](#READER)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[generateSearchIndex](#generateSearchIndex\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp_)`

    Deprecated.

    Generates search index bodies for: [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")s, [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration")s, [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")s, and [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")s

    `int[]`

    `[getPermissionsForCommunityIds](#getPermissionsForCommunityIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of community IDs

    `int[]`

    `[getPermissionsForCommunityIdsForUser](#getPermissionsForCommunityIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] communityIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of community IDs

    `int[]`

    `[getPermissionsForDocumentIds](#getPermissionsForDocumentIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] documentIds_)`

    Deprecated.

    Gets the permissions which the current user has for a list of document IDs

    `int[]`

    `[getPermissionsForDocumentIdsForUser](#getPermissionsForDocumentIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] documentIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of document IDs

    `int[]`

    `[getPermissionsForFolderIds](#getPermissionsForFolderIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of folder IDs

    `int[]`

    `[getPermissionsForFolderIdsForUser](#getPermissionsForFolderIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] folderIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of folder IDs

    `int[]`

    `[getPermissionsForKnowledgeCenterIds](#getPermissionsForKnowledgeCenterIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] knowledgeCenterIds_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of knowledge center IDs

    `int[]`

    `[getPermissionsForKnowledgeCenterIdsForUser](#getPermissionsForKnowledgeCenterIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] knowledgeCenterIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions which the specified user has for a list of knowledge center IDs

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### INVALID

        static final int INVALID

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.INVALID)

    -   ### CANTSEE

        static final int CANTSEE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.CANTSEE)

    -   ### READER

        static final int READER

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.READER)

    -   ### EDITOR

        static final int EDITOR

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.EDITOR)

    -   ### ADMIN

        static final int ADMIN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.ADMIN)

    -   ### generateSearchIndex$UPDATES

        static final boolean generateSearchIndex$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.generateSearchIndex$UPDATES)

    -   ### getPermissionsForDocumentIds$UPDATES

        static final boolean getPermissionsForDocumentIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForDocumentIds$UPDATES)

    -   ### getPermissionsForDocumentIdsForUser$UPDATES

        static final boolean getPermissionsForDocumentIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForDocumentIdsForUser$UPDATES)

    -   ### getPermissionsForFolderIds$UPDATES

        static final boolean getPermissionsForFolderIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForFolderIds$UPDATES)

    -   ### getPermissionsForFolderIdsForUser$UPDATES

        static final boolean getPermissionsForFolderIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForFolderIdsForUser$UPDATES)

    -   ### getPermissionsForKnowledgeCenterIds$UPDATES

        static final boolean getPermissionsForKnowledgeCenterIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForKnowledgeCenterIds$UPDATES)

    -   ### getPermissionsForKnowledgeCenterIdsForUser$UPDATES

        static final boolean getPermissionsForKnowledgeCenterIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForKnowledgeCenterIdsForUser$UPDATES)

    -   ### getPermissionsForCommunityIds$UPDATES

        static final boolean getPermissionsForCommunityIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForCommunityIds$UPDATES)

    -   ### getPermissionsForCommunityIdsForUser$UPDATES

        static final boolean getPermissionsForCommunityIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.CollaborationSearchService.getPermissionsForCommunityIdsForUser$UPDATES)

-   ## Method Details

    -   ### generateSearchIndex

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateSearchIndex([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp\_)

        Deprecated.

        Generates search index bodies for: [`Document`](Document.html "class in com.appiancorp.suiteapi.collaboration")s, [`Folder`](Folder.html "class in com.appiancorp.suiteapi.collaboration")s, [`KnowledgeCenter`](KnowledgeCenter.html "class in com.appiancorp.suiteapi.collaboration")s, and [`Community`](Community.html "class in com.appiancorp.suiteapi.collaboration")s

        Parameters:

        `timeStamp_` - only include entities modified since this time. Pass `null` to perform a full index generation

        Returns:

        filename of search index output

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForDocumentIds

        int\[\] getPermissionsForDocumentIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] documentIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the current user has for a list of document IDs

        Parameters:

        `documentIds_` - the IDs of the documents for which to return the permission levels

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the document with the given ID. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no document with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForDocumentIdsForUser

        int\[\] getPermissionsForDocumentIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] documentIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of document IDs

        Parameters:

        `documentIds_` - the IDs of the documents for which to return the permission levels

        `userName_` - the username of the user for whom to check permissions

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the document with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no document with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForFolderIds

        int\[\] getPermissionsForFolderIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of folder IDs

        Parameters:

        `folderIds_` - the IDs of the folders for which to return the permission levels

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the folder with given ID. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no folder with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForFolderIdsForUser

        int\[\] getPermissionsForFolderIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] folderIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of folder IDs

        Parameters:

        `folderIds_` - the IDs of the folders for which to return the permission levels

        `userName_` - the username of the user for whom to check permissions

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the folder with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no folder with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForKnowledgeCenterIds

        int\[\] getPermissionsForKnowledgeCenterIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] knowledgeCenterIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of knowledge center IDs

        Parameters:

        `knowledgeCenterIds_` - the IDs of the knowledge centers for which to return the permission levels

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the knowledge center with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no knowledge center with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForKnowledgeCenterIdsForUser

        int\[\] getPermissionsForKnowledgeCenterIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] knowledgeCenterIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of knowledge center IDs

        Parameters:

        `knowledgeCenterIds_` - the IDs of the knowledge centers for which to return the permission levels

        `userName_` - the username of the user for whom to check permissions

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the knowledge center with the given ID. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no knowledge center with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForCommunityIds

        int\[\] getPermissionsForCommunityIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of community IDs

        Parameters:

        `communityIds_` - the IDs of the communities for which to return the permission levels. If communityIds\_ is null the the method will get the permission levels for all communities.

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the community with the given ID. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no community with the given ID exists, or the ID is `null`
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForCommunityIdsForUser

        int\[\] getPermissionsForCommunityIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] communityIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions which the specified user has for a list of community IDs

        Parameters:

        `communityIds_` - the IDs of the communities for which to return the permission levels

        `userName_` - the username of the user for whom to check permissions

        Returns:

        array of same size as input array, where each member is a constant representing access capabilities for the current user to the community with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID) - If no community with the given ID exists
        -   [`CANTSEE`](#CANTSEE) - No Access
        -   [`READER`](#READER) - Reader
        -   [`EDITOR`](#EDITOR) - Editor
        -   [`ADMIN`](#ADMIN) - Admin

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs