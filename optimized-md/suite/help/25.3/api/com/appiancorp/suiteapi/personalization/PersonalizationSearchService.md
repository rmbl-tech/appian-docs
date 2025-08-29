---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html
original_path: api/com/appiancorp/suiteapi/personalization/PersonalizationSearchService.html
version: "25.3"
title: "Interface PersonalizationSearchService"
page_id: "api/com/appiancorp/suiteapi/personalization/PersonalizationSearchService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Interface PersonalizationSearchService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface PersonalizationSearchService extends com.appiancorp.services.ContextSensitiveService

Provides access to search methods within Personalization.

Method [`generateSearchIndex(java.sql.Timestamp)`](#generateSearchIndex\(java.sql.Timestamp\)) wil generate an index file for all users and groups created or updated after a particular time. This index file can be used by the search engine to facilitate searching on users and groups.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`GroupService`](GroupService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`GroupTypeService`](GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserProfileService`](UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserService`](UserService.html "interface in com.appiancorp.suiteapi.personalization")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ADMIN](#ADMIN)`

    A constant indicating that a user is an administrator of a given entity

    `static final boolean`

    `[generateSearchIndex$UPDATES](#generateSearchIndex$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getPermissionsForGroupIds$UPDATES](#getPermissionsForGroupIds$UPDATES)`

    `static final boolean`

    `[getPermissionsForGroupIdsForUser$UPDATES](#getPermissionsForGroupIdsForUser$UPDATES)`

    `static final boolean`

    `[getPermissionsForUserIdsForUser$UPDATES](#getPermissionsForUserIdsForUser$UPDATES)`

    `static final boolean`

    `[getPermissionsForUserNames$UPDATES](#getPermissionsForUserNames$UPDATES)`

    `static final boolean`

    `[getPermissionsForUserNamesForUser$UPDATES](#getPermissionsForUserNamesForUser$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[INVALID](#INVALID)`

    A constant indicating that a group or username does not refer to a valid user or group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[LIMITED_EDIT](#LIMITED_EDIT)`

    A constant indicating that a user can edit his basic attributes (address, field01, etc.)

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[NO_ACCESS](#NO_ACCESS)`

    A constant indicating that a user has no access to a given entity

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[VIEW](#VIEW)`

    A constant indicating that a user can view a given entity

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[generateSearchIndex](#generateSearchIndex\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp_)`

    Generates search index bodies for: [`User`](User.html "class in com.appiancorp.suiteapi.personalization") [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application

    `int[]`

    `[getPermissionsForGroupIds](#getPermissionsForGroupIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Gets the permissions of the current user for the groups with the specified ids.

    `int[]`

    `[getPermissionsForGroupIdsForUser](#getPermissionsForGroupIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Gets the permissions of the given user for the groups with the specified ids.

    `int[]`

    `[getPermissionsForUserIdsForUser](#getPermissionsForUserIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] userIds_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

    `int[]`

    `[getPermissionsForUserNames](#getPermissionsForUserNames\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userNames_)`

    Deprecated.

    Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

    `int[]`

    `[getPermissionsForUserNamesForUser](#getPermissionsForUserNamesForUser\(java.lang.String%5B%5D,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userNames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### INVALID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") INVALID

        A constant indicating that a group or username does not refer to a valid user or group

    -   ### NO\_ACCESS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") NO\_ACCESS

        A constant indicating that a user has no access to a given entity

    -   ### VIEW

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") VIEW

        A constant indicating that a user can view a given entity

    -   ### LIMITED\_EDIT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") LIMITED\_EDIT

        A constant indicating that a user can edit his basic attributes (address, field01, etc.) but cannot edit supervisor and user type, among others. Thus, a non-admin user will have LIMITED\_EDIT(2) for himself and VIEW(1) on everyone else.

    -   ### ADMIN

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ADMIN

        A constant indicating that a user is an administrator of a given entity

    -   ### generateSearchIndex$UPDATES

        static final boolean generateSearchIndex$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.generateSearchIndex$UPDATES)

    -   ### getPermissionsForUserIdsForUser$UPDATES

        static final boolean getPermissionsForUserIdsForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserIdsForUser$UPDATES)

    -   ### getPermissionsForGroupIds$UPDATES

        static final boolean getPermissionsForGroupIds$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForGroupIds$UPDATES)

    -   ### getPermissionsForGroupIdsForUser$UPDATES

        static final boolean getPermissionsForGroupIdsForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForGroupIdsForUser$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getWorkspace$UPDATES)

    -   ### getPermissionsForUserNames$UPDATES

        static final boolean getPermissionsForUserNames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserNames$UPDATES)

    -   ### getPermissionsForUserNamesForUser$UPDATES

        static final boolean getPermissionsForUserNamesForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.PersonalizationSearchService.getPermissionsForUserNamesForUser$UPDATES)

-   ## Method Details

    -   ### generateSearchIndex

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateSearchIndex([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp\_)

        Generates search index bodies for:

        -   [`User`](User.html "class in com.appiancorp.suiteapi.personalization")
        -   [`Group`](Group.html "class in com.appiancorp.suiteapi.personalization")

        Parameters:

        `timeStamp_` - only include users and groups modified since this time. Pass `null` to index all users and groups.

        Returns:

        filename of search index output

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForUserIdsForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int\[\] getPermissionsForUserIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] userIds\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Deprecated.

        Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

        Gets the permissions of the given user for the users with the specified ids.

        Parameters:

        `userIds_` - the ids of the users for which to get permissions

        `userName_` - user name to find the access capabilities of

        Returns:

        array of same size as `userIds`, where each member is a constant representing access capabilities of the given user to the given user with the given id. The possible permission values are: `INVALID`, `NO_ACCESS`, `LIMITED_EDIT` and `ADMIN`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForGroupIds

        int\[\] getPermissionsForGroupIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_)

        Gets the permissions of the current user for the groups with the specified ids. If an ID is passed which does not correspond to a valid group, then [`INVALID`](#INVALID) will be returned for that ID.

        Parameters:

        `ids_` - the ids of the groups for which to get permissions. If `null`, an empty array will be returned.

        Returns:

        array of same size as `ids_`, where each member is a constant representing access capabilities of the current user to the group with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID)
        -   [`NO_ACCESS`](#NO_ACCESS)
        -   [`VIEW`](#VIEW)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForGroupIdsForUser

        int\[\] getPermissionsForGroupIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the permissions of the given user for the groups with the specified ids. If an ID is passed which does not correspond to a valid group, then [`INVALID`](#INVALID) will be returned for that ID.

        Parameters:

        `ids_` - the ids of the groups for which to get permissions. If `null`, an empty array will be returned.

        `userName_` - user name to find the access capabilities of

        Returns:

        array of same size as `ids_`, where each member is a constant representing access capabilities of the given user to the group with the given id. The constant values are as follows:

        -   [`INVALID`](#INVALID)
        -   [`NO_ACCESS`](#NO_ACCESS)
        -   [`VIEW`](#VIEW)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username does not correspond to a valid user

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Gets the name of the application

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getWorkspace

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getWorkspace()

        Gets the current memory profile for the workspace.

        Returns:

        array of Strings of length 4 describing memory usage:

        -   \[0\]Used - Memory Used by the Server so far for storage
        -   \[1\]Allocated - Memory allocated for use. Often if a large data item was allocated by a server and subsequently freed, this value will be large compared to "Used". If nearly all memory allocated is in use, this value will be close to (but always higher than) "Used"
        -   \[2\]Mapped - is the space used by memory-mapped files
        -   \[3\]Available - is the total available memory for the Server process

        Note: All usage statistics are in Bytes.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForUserNames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int\[\] getPermissionsForUserNames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userNames\_)

        Deprecated.

        Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

        Gets the permissions of the current user for the users with the specified usernames.

        Parameters:

        `userNames_` - the usernames of the users for which to get permissions

        Returns:

        array of same size as `userNames_`, where each is member is a constant representing access capabilities of the current user to the user with the given username. The possible permission values are: `INVALID`, `NO_ACCESS`, `LIMITED_EDIT` and `ADMIN`.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForUserNamesForUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") int\[\] getPermissionsForUserNamesForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userNames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_)

        Deprecated.

        Use [`UserService.getSecurityForUser(String)`](UserService.html#getSecurityForUser\(java.lang.String\))

        Gets the permissions of the given user for the users with the specified usernames.

        Parameters:

        `userNames_` - the usernames of the users for which to get permissions

        `userName_` - username to find the access capabilities of

        Returns:

        array of same size as `userNames_`, where each is member is a constant representing access capabilities of the user with the given userName to the users with the given usernames. The possible permission values are: `INVALID`, `NO_ACCESS`, `LIMITED_EDIT` and `ADMIN`. The constant values are as follows:

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs