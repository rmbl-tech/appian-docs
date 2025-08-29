---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserProfileService.html
original_path: api/com/appiancorp/suiteapi/personalization/UserProfileService.html
version: "25.3"
title: "Interface UserProfileService"
page_id: "api/com/appiancorp/suiteapi/personalization/UserProfileService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Interface UserProfileService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface UserProfileService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Provides the main functionality needed to create, update, delete, and retrieve [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization") objects from the Personalization service.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`GroupService`](GroupService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`GroupTypeService`](GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`PersonalizationSearchService`](PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserService`](UserService.html "interface in com.appiancorp.suiteapi.personalization")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[authenticateUser$UPDATES](#authenticateUser$UPDATES)`

    `static final boolean`

    `[createUser$UPDATES](#createUser$UPDATES)`

    `static final boolean`

    `[createUsers$UPDATES](#createUsers$UPDATES)`

    `static final boolean`

    `[findAllUsersPaging$UPDATES](#findAllUsersPaging$UPDATES)`

    `static final boolean`

    `[findUsers$UPDATES](#findUsers$UPDATES)`

    `static final boolean`

    `[findUsersPaging$UPDATES](#findUsersPaging$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getUser$UPDATES](#getUser$UPDATES)`

    `static final boolean`

    `[getUserByUuid$UPDATES](#getUserByUuid$UPDATES)`

    `static final boolean`

    `[getUserPreferences$UPDATES](#getUserPreferences$UPDATES)`

    `static final boolean`

    `[getUsers$UPDATES](#getUsers$UPDATES)`

    `static final boolean`

    `[getUsersByUuid$UPDATES](#getUsersByUuid$UPDATES)`

    `static final boolean`

    `[getUsersCreation$UPDATES](#getUsersCreation$UPDATES)`

    `static final boolean`

    `[getUsersForGroupByRolePaging$UPDATES](#getUsersForGroupByRolePaging$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final boolean`

    `[searchUserProfilesPaging$UPDATES](#searchUserProfilesPaging$UPDATES)`

    `static final boolean`

    `[setUserPreferences$UPDATES](#setUserPreferences$UPDATES)`

    `static final boolean`

    `[updateUser$UPDATES](#updateUser$UPDATES)`

    `static final boolean`

    `[updateUsers$UPDATES](#updateUsers$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[authenticateUser](#authenticateUser\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password_)`

    Deprecated.

    Since 6.0.2, use `#authenticate(String, byte[])`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[createUser](#createUser\(com.appiancorp.suiteapi.personalization.UserProfile\))([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") userprofile_)`

    Creates a new user

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[createUsers](#createUsers\(com.appiancorp.suiteapi.personalization.UserProfile%5B%5D\))([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[] userprofiles_)`

    Creates new users.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findAllUsersPaging](#findAllUsersPaging\(boolean,int,int,java.lang.Integer,java.lang.Integer\))(boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Fast method that gets all users.

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findUsers](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch_, boolean caseSensitive_)`

    Deprecated.

    Use [`findUsersPaging(UserSearch, boolean, int, int, Integer, Integer)`](#findUsersPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findUsersPaging](#findUsersPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch_, boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Finds a list of users for a given search criteria.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application on which this service is running.

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Gets a single user by username.

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUserByUuid](#getUserByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Gets a single user by uuid.

    `[UserPreferences](UserPreferences.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUserPreferences](#getUserPreferences\(\))()`

    Returns current user's preferences

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getUsers](#getUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Retrieves a list of users by username.

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getUsersByUuid](#getUsersByUuid\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Retrieves a list of users by uuid.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")[]`

    `[getUsersCreation](#getUsersCreation\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Gets the users creation date

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getUsersForGroupByRolePaging](#getUsersForGroupByRolePaging\(java.lang.Long,int,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int role_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Use [`UserService.getUsersForGroupByRolePaging(Long, Integer, int, int, Integer, Integer)`](UserService.html#getUsersForGroupByRolePaging\(java.lang.Long,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchUserProfilesPaging](#searchUserProfilesPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Searches for `User`s by first, last, and username and returns the `UserProfile` objects for each found `User`

    `void`

    `[setUserPreferences](#setUserPreferences\(com.appiancorp.suiteapi.personalization.UserPreferences\))([UserPreferences](UserPreferences.html "class in com.appiancorp.suiteapi.personalization") preferences_)`

    Set current user's preferences

    `void`

    `[updateUser](#updateUser\(com.appiancorp.suiteapi.personalization.UserProfile\))([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") userprofile_)`

    Updates a user.

    `void`

    `[updateUsers](#updateUsers\(com.appiancorp.suiteapi.personalization.UserProfile%5B%5D\))([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")[] userprofiles_)`

    Updates users.

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### getUser$UPDATES

        static final boolean getUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUser$UPDATES)

    -   ### getUsers$UPDATES

        static final boolean getUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUsers$UPDATES)

    -   ### getUserByUuid$UPDATES

        static final boolean getUserByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUserByUuid$UPDATES)

    -   ### getUsersByUuid$UPDATES

        static final boolean getUsersByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUsersByUuid$UPDATES)

    -   ### getUsersCreation$UPDATES

        static final boolean getUsersCreation$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUsersCreation$UPDATES)

    -   ### getUsersForGroupByRolePaging$UPDATES

        static final boolean getUsersForGroupByRolePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUsersForGroupByRolePaging$UPDATES)

    -   ### authenticateUser$UPDATES

        static final boolean authenticateUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.authenticateUser$UPDATES)

    -   ### findUsers$UPDATES

        static final boolean findUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.findUsers$UPDATES)

    -   ### findUsersPaging$UPDATES

        static final boolean findUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.findUsersPaging$UPDATES)

    -   ### createUser$UPDATES

        static final boolean createUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.createUser$UPDATES)

    -   ### createUsers$UPDATES

        static final boolean createUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.createUsers$UPDATES)

    -   ### updateUser$UPDATES

        static final boolean updateUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.updateUser$UPDATES)

    -   ### updateUsers$UPDATES

        static final boolean updateUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.updateUsers$UPDATES)

    -   ### findAllUsersPaging$UPDATES

        static final boolean findAllUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.findAllUsersPaging$UPDATES)

    -   ### searchUserProfilesPaging$UPDATES

        static final boolean searchUserProfilesPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.searchUserProfilesPaging$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getWorkspace$UPDATES)

    -   ### getUserPreferences$UPDATES

        static final boolean getUserPreferences$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.getUserPreferences$UPDATES)

    -   ### setUserPreferences$UPDATES

        static final boolean setUserPreferences$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserProfileService.setUserPreferences$UPDATES)

-   ## Method Details

    -   ### getUser

        [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") getUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a single user by username.

        Parameters:

        `username_` - the unique username of the user

        Returns:

        a `UserProfile` corresponding to the `username_`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given username does correspond to a valid user

        `ServiceException` - if any system-level error occurs

    -   ### getUsers

        [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] getUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a list of users by username.

        Parameters:

        `usernames_` - the unique usernames of the users objects

        Returns:

        an array of `UserProfile` objects corresponding to the `usernames_`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a given username does not exist

        `ServiceException` - if any system-level error occurs

    -   ### getUserByUuid

        [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") getUserByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a single user by uuid.

        Parameters:

        `uuid` - the unique uuid of the user

        Returns:

        a `UserProfile` corresponding to the `uuid`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given uuid does correspond to a valid user

        `ServiceException` - if any system-level error occurs

    -   ### getUsersByUuid

        [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] getUsersByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter\[\]\[\].class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Retrieves a list of users by uuid.

        Parameters:

        `uuids` - the unique uuids of the users objects

        Returns:

        an array of `UserProfile` objects corresponding to the `uuids`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a given uuid does not correspond to a valid user

        `ServiceException` - if any system-level error occurs

    -   ### getUsersCreation

        [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")\[\] getUsersCreation([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the users creation date

        Parameters:

        `usernames` - The list of users

        Returns:

        An array of timestamps with the user creation date.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### getUsersForGroupByRolePaging

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] getUsersForGroupByRolePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int role\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`UserService.getUsersForGroupByRolePaging(Long, Integer, int, int, Integer, Integer)`](UserService.html#getUsersForGroupByRolePaging\(java.lang.Long,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))

        Retrieves a list of users for a given group by user role.

        Parameters:

        `groupId_` - ID of the group whose users should be retrieved

        `role_` - the role for which to retrieve users. Valid roles are one of the `USER_ROLE_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        an array of `UserProfile` objects corresponding to the users in the group with the given role

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group given by `groupId_` does not exist

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the role is invalid

        `ServiceException` - if any system-level error occurs

    -   ### authenticateUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") authenticateUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password\_) throws [InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Since 6.0.2, use `#authenticate(String, byte[])`

        Used to validate a user (the login mechanism).

        Parameters:

        `username_` - the unique username of a user

        `password_` - the password for the user

        Returns:

        the `UserProfile` of the user with the given username

        Throws:

        `[InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the given `username_` and `password_` are not those of a valid user

        `ServiceException` - if any system-level error occurs

    -   ### findUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] findUsers([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch\_, boolean caseSensitive\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`findUsersPaging(UserSearch, boolean, int, int, Integer, Integer)`](#findUsersPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\)) instead.

        Finds a list of users for a given search criteria.

        The `userSearch_` object should be populated with the user fields to be searched on, and the criteria to be used in performing the search. For example, the `userSearch_` might have the `username` field set to "john.doe", the `lastName` fields set to "Doe", the `operatorUsername` field set to `Operator#EQUALS` and the `operatorLastName` field set to `Operator#ENDS_WITH`. Such a search will return all users whose username is "john.doe", and whose last name ends with "Doe".

        See [`GroupTypeService.getOperatorsForDataType(int)`](GroupTypeService.html#getOperatorsForDataType\(int\)) to obtain a list of possible operators for a given data type.

        Parameters:

        `userSearch_` - the search criteria

        `caseSensitive_` - whether the search is case sensitive

        Returns:

        the users that meet the given search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `ServiceException` - if any system-level error occurs

    -   ### findUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findUsersPaging([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch\_, boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Finds a list of users for a given search criteria. This method will return the paged resultset corresponding to [`findUsers(UserSearch, boolean)`](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))

        Parameters:

        `userSearch_` - criteria for the search

        `caseSensitive_` - whether the search is case sensitive

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `UserProfile` objects correpsonding to users who match the search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `ServiceException` - if any system-level error occurs

    -   ### createUser

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") createUser([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") userprofile\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a new user

        The `username` field of the created user must be unique. User fields required for creation are: `username`.

        NOTES:

        1) Although this call will complete successfully if only the `username` field is populated, if the `password` field is not also populated the created user will not able to log into the application.

        2) The `password` field must be hashed to work properly with the the product interface.

        3)In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` be validated for illegal characters (only allow alphanumeric symbols, underscores, and periods).

        If, after a user is created, it is necessary to call any method using that user's [`UserServiceContext`](../../services/UserServiceContext.html "class in com.appiancorp.services"), then `activateUserSession` must be called on the following services:

        -   [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")
        -   [`ProcessAnalyticsService`](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
        -   [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content")
        -   [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

        Parameters:

        `userprofile_` - a user to create

        Returns:

        the username of the user

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username already exists

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a System Administrator

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user\_ is empty

        `ServiceException` - if any system-level error occurs

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - Never thrown. Is only declared for backwards compatibility.

    -   ### createUsers

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] createUsers([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] userprofiles\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates new users.

        The `username` field of the created user must be unique. User fields required for creation are: `username`.

        NOTES:

        1) Although this call will complete successfully if only the `username` field is populated, if the `password` field is not also populated the created user will not able to log into the application.

        2) The `password` field must be hashed to work properly with the the product interface.

        3)In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` be validated for illegal characters (only allow alphanumeric symbols, underscores, and periods).

        If, after a user is created, it is necessary to call any method using that user's [`UserServiceContext`](../../services/UserServiceContext.html "class in com.appiancorp.services"), then `activateUserSession` must be called on the following services:

        -   [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")
        -   [`ProcessAnalyticsService`](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
        -   [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content")
        -   [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

        Parameters:

        `userprofiles_` - users to create.

        Returns:

        the usernames of the users

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the usernames already exists

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any username is `null`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not a System Administrator Must be a System Administrator to create a user.

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is not either `null` or the login of a valid user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one of users\_ is empty

        `ServiceException` - if any system-level error occurs

    -   ### updateUser

        void updateUser([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") userprofile\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a user. Does not modify `username` or `password`fields.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` field be validated for illegal characters (only allow alphanumeric symbols and underscores).

        This method will ignore any changes to the properties `userTypeId` and `userTypeName` when applied to the 'Administrator' user.

        Parameters:

        `userprofile_` - the user to modify

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a user with the given username does not exist

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### updateUsers

        void updateUsers([UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")\[\] userprofiles\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates users. Does not modify `username` or `password`fields. In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` field be validated for illegal characters (only allow alphanumeric symbols and underscores).

        This method will ignore any changes to the properties `userTypeId` and `userTypeName` when applied to the 'Administrator' user.

        Parameters:

        `userprofiles_` - users to update

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user with a given username does not exist

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")
        -   [`UserService.changeUserPassword(String, byte[], boolean)`](UserService.html#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\))

    -   ### findAllUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findAllUsersPaging(boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Fast method that gets all users. The `ResultPage` returned contains `UserProfile` objects sorted by the given `sortProperty`.

        Parameters:

        `caseSensitive_` - whether the results should be sorted in a case sensitive manner. Pass `false` to sort in the common lexicographical order (e.g., a, A, b, B, c, C).

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `UserProfile` objects

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### searchUserProfilesPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchUserProfilesPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Searches for `User`s by first, last, and username and returns the `UserProfile` objects for each found `User`

        Parameters:

        `query_` - The query by which to search for `UserProfile`s.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` of `UserProfile` objects which match the query.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `ServiceException` - if any system-level error occurs

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

        `ServiceException` - if any system-level error occurs

    -   ### getUserPreferences

        [UserPreferences](UserPreferences.html "class in com.appiancorp.suiteapi.personalization") getUserPreferences()

        Returns current user's preferences

        Returns:

        the `UserPreferences`

    -   ### setUserPreferences

        void setUserPreferences([UserPreferences](UserPreferences.html "class in com.appiancorp.suiteapi.personalization") preferences\_)

        Set current user's preferences

        Parameters:

        `preferences_` - The `UserPreferences` for the current user