---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/forums/ForumsSearchService.html
original_path: api/com/appiancorp/suiteapi/forums/ForumsSearchService.html
version: "25.3"
title: "Interface ForumsSearchService"
page_id: "api/com/appiancorp/suiteapi/forums/ForumsSearchService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.forums](package-summary.html)

# Interface ForumsSearchService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface ForumsSearchService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Discussion Forums functionality will be removed in a future release. Use the News feed and related smart services to build applications with similar functionality.

Service for searching within messages in the forums application.

Method [`generateSearchIndex(java.sql.Timestamp)`](#generateSearchIndex\(java.sql.Timestamp\)) wil generate an index file for all messages created or updated after a particular time. This index file can be used by the search engine to facilitate searching on messages.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`DiscussionBodyService`](DiscussionBodyService.html "interface in com.appiancorp.suiteapi.forums")
-   [`DiscussionMetadataConvenienceService`](DiscussionMetadataConvenienceService.html "interface in com.appiancorp.suiteapi.forums")
-   [`DiscussionMetadataCoreService`](DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[CANSEE](#CANSEE)`

    Deprecated.

     

    `static final int`

    `[CANTSEE](#CANTSEE)`

    Deprecated.

     

    `static final boolean`

    `[generateSearchIndex$UPDATES](#generateSearchIndex$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForMessageIdsForUser$UPDATES](#getPermissionsForMessageIdsForUser$UPDATES)`

    Deprecated.

     

    `static final int`

    `[INVALID](#INVALID)`

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

    Generates search index bodies for: [`Message`](Message.html "class in com.appiancorp.suiteapi.forums")

    `int[]`

    `[getPermissionsForMessageIdsForUser](#getPermissionsForMessageIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions for the given user of the specified message ids

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### INVALID

        static final int INVALID

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ForumsSearchService.INVALID)

    -   ### CANTSEE

        static final int CANTSEE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ForumsSearchService.CANTSEE)

    -   ### CANSEE

        static final int CANSEE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ForumsSearchService.CANSEE)

    -   ### generateSearchIndex$UPDATES

        static final boolean generateSearchIndex$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ForumsSearchService.generateSearchIndex$UPDATES)

    -   ### getPermissionsForMessageIdsForUser$UPDATES

        static final boolean getPermissionsForMessageIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.forums.ForumsSearchService.getPermissionsForMessageIdsForUser$UPDATES)

-   ## Method Details

    -   ### generateSearchIndex

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateSearchIndex([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp\_)

        Deprecated.

        Generates search index bodies for: [`Message`](Message.html "class in com.appiancorp.suiteapi.forums")

        Parameters:

        `timeStamp_` - only include messages modified since `timestamp`. Pass `null` to index all messages.

        Returns:

        filename of search index output

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForMessageIdsForUser

        int\[\] getPermissionsForMessageIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions for the given user of the specified message ids

        Parameters:

        `ids_` - message IDs for which to retrieve permissions

        `userName_` - The username of user whose permissions are to be retrieved. If the username is invalid, the method will execute as if for an anonymous user.

        Returns:

        array of same size as `ids_`, where each is member is a constant representing access capabilities for the given user to the message with the given ID. For those null elements of the ids array the function puts -1 at the corresponding place in the persmissions array. The constant values are as follows:

        -   [`INVALID`](#INVALID), if no message with the given ID exists
        -   [`CANTSEE`](#CANTSEE), if the current user does not have access to the message with the given ID
        -   [`CANSEE`](#CANSEE), if the current user has access to the message with the given ID

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the `ids_` array, the `userName_` or both are null

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - will not trigger. Added for backwards compatibility.