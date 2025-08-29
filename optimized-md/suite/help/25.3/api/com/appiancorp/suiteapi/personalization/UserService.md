---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/personalization/UserService.html
original_path: api/com/appiancorp/suiteapi/personalization/UserService.html
version: "25.3"
title: "Interface UserService"
page_id: "api/com/appiancorp/suiteapi/personalization/UserService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.personalization](package-summary.html)

# Interface UserService

All Superinterfaces:

`[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

public interface UserService extends [ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

Provides the main functionality needed to create, update, delete, and retrieve Users. Methods which retrieve users do not return deactivated users, unless noted otherwise.

For updating a user's password, authenticating a user, and creating a new user, the password must be provided in a hashed and base64 encoded `byte[]` using UTF-8 character-set. Use `java.security.MessageDigest` and `org.apache.commons.codec.binary.Base64`, for instance, to obtain the hashed form of a plaintext password in a base64 encoded `byte[]`.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`GroupService`](GroupService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`GroupTypeService`](GroupTypeService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`PersonalizationSearchService`](PersonalizationSearchService.html "interface in com.appiancorp.suiteapi.personalization")
-   [`UserProfileService`](UserProfileService.html "interface in com.appiancorp.suiteapi.personalization")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_GROUP_CREATE](#ACTION_SYSTEM_GROUP_CREATE)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_GROUP_CREATE_PUBLIC](#ACTION_SYSTEM_GROUP_CREATE_PUBLIC)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a public group

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_GROUP_SET_DELEGATED_ADMIN_AT_GROUP_CREATION](#ACTION_SYSTEM_GROUP_SET_DELEGATED_ADMIN_AT_GROUP_CREATION)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to set if a group delegated admin at group creation

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_GROUPTYPE_CREATE](#ACTION_SYSTEM_GROUPTYPE_CREATE)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a group type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_GROUPTYPE_CREATE_PUBLIC](#ACTION_SYSTEM_GROUPTYPE_CREATE_PUBLIC)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a public group type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_USER_CREATE](#ACTION_SYSTEM_USER_CREATE)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a user

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_USER_MODIFY_SECURITY_SETTINGS](#ACTION_SYSTEM_USER_MODIFY_SECURITY_SETTINGS)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to modify security settings of a group.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_SYSTEM_VIEW_DEACTIVATED_USERS](#ACTION_SYSTEM_VIEW_DEACTIVATED_USERS)`

    Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to view deactivated users

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_DEACTIVATE_USER](#ACTION_USER_DEACTIVATE_USER)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to decativate a user

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_DELETE_USER](#ACTION_USER_DELETE_USER)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to delete a user

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_EDIT_ALL_USER_ATTRIBUTES](#ACTION_USER_EDIT_ALL_USER_ATTRIBUTES)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to edit all of a user's attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_EDIT_LIMITED_USER_ATTRIBUTES](#ACTION_USER_EDIT_LIMITED_USER_ATTRIBUTES)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to edit a user's limited attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_REACTIVATE_USER](#ACTION_USER_REACTIVATE_USER)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to reactivate a user

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_VIEW_ALL_USER_ATTRIBUTES](#ACTION_USER_VIEW_ALL_USER_ATTRIBUTES)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to view a user's attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_VIEW_LIMITED_USER_ATTRIBUTES](#ACTION_USER_VIEW_LIMITED_USER_ATTRIBUTES)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to view a user's limited attributes

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTION_USER_VIEW_USER_EXISTENCE](#ACTION_USER_VIEW_USER_EXISTENCE)`

    Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to see a user's existence

    `static final boolean`

    `[addUserToFavorites$UPDATES](#addUserToFavorites$UPDATES)`

    `static final boolean`

    `[authenticate$UPDATES](#authenticate$UPDATES)`

    `static final boolean`

    `[authenticateUser$UPDATES](#authenticateUser$UPDATES)`

    `static final boolean`

    `[changeUserPassword$UPDATES](#changeUserPassword$UPDATES)`

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    `static final boolean`

    `[createTitle$UPDATES](#createTitle$UPDATES)`

    `static final boolean`

    `[createUser$UPDATES](#createUser$UPDATES)`

    `static final boolean`

    `[createUsers$UPDATES](#createUsers$UPDATES)`

    `static final boolean`

    `[deactivateUser$UPDATES](#deactivateUser$UPDATES)`

    `static final boolean`

    `[deactivateUsers$UPDATES](#deactivateUsers$UPDATES)`

    `static final boolean`

    `[doesUserExist$UPDATES](#doesUserExist$UPDATES)`

    `static final boolean`

    `[findAllUsersPaging$UPDATES](#findAllUsersPaging$UPDATES)`

    `static final boolean`

    `[findUsers$UPDATES](#findUsers$UPDATES)`

    `static final boolean`

    `[findUsersForGroupPaging$UPDATES](#findUsersForGroupPaging$UPDATES)`

    `static final boolean`

    `[findUsersForGroupType$UPDATES](#findUsersForGroupType$UPDATES)`

    `static final boolean`

    `[findUsersPaging$UPDATES](#findUsersPaging$UPDATES)`

    `static final boolean`

    `[getAllUserTypeAttributes$UPDATES](#getAllUserTypeAttributes$UPDATES)`

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    `static final boolean`

    `[getDeactivatedUsersPaging$UPDATES](#getDeactivatedUsersPaging$UPDATES)`

    `static final boolean`

    `[getFavoriteUsers$UPDATES](#getFavoriteUsers$UPDATES)`

    `static final boolean`

    `[getRankList$UPDATES](#getRankList$UPDATES)`

    `static final boolean`

    `[getRankListForDisplay$UPDATES](#getRankListForDisplay$UPDATES)`

    `static final boolean`

    `[getSecurityForUser$UPDATES](#getSecurityForUser$UPDATES)`

    `static final boolean`

    `[getSystemActions$UPDATES](#getSystemActions$UPDATES)`

    `static final boolean`

    `[getUser$UPDATES](#getUser$UPDATES)`

    `static final boolean`

    `[getUserActions$UPDATES](#getUserActions$UPDATES)`

    `static final boolean`

    `[getUserByUuid$UPDATES](#getUserByUuid$UPDATES)`

    `static final boolean`

    `[getUsers$UPDATES](#getUsers$UPDATES)`

    `static final boolean`

    `[getUsersByUuid$UPDATES](#getUsersByUuid$UPDATES)`

    `static final boolean`

    `[getUsersForGroupByRolePaging$UPDATES](#getUsersForGroupByRolePaging$UPDATES)`

    `static final boolean`

    `[getUsersList$UPDATES](#getUsersList$UPDATES)`

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    `static final boolean`

    `[isCurrentUserDeactivated$UPDATES](#isCurrentUserDeactivated$UPDATES)`

    `static final boolean`

    `[isPasswordUnique$UPDATES](#isPasswordUnique$UPDATES)`

    `static final boolean`

    `[isPasswordValid$UPDATES](#isPasswordValid$UPDATES)`

    `static final boolean`

    `[isSocialSecurityNumberUnique$UPDATES](#isSocialSecurityNumberUnique$UPDATES)`

    `static final boolean`

    `[isUserInGroupByRole$UPDATES](#isUserInGroupByRole$UPDATES)`

    `static final boolean`

    `[isUsernameAvailable$UPDATES](#isUsernameAvailable$UPDATES)`

    `static final boolean`

    `[isUserPasswordValid$UPDATES](#isUserPasswordValid$UPDATES)`

    `static final boolean`

    `[loginAttempt$UPDATES](#loginAttempt$UPDATES)`

    `static final boolean`

    `[reactivateUsers$UPDATES](#reactivateUsers$UPDATES)`

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    `static final boolean`

    `[removeUserFromFavorites$UPDATES](#removeUserFromFavorites$UPDATES)`

    `static final boolean`

    `[renameUsersByUuid$UPDATES](#renameUsersByUuid$UPDATES)`

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    `static final boolean`

    `[searchUsersPaging$UPDATES](#searchUsersPaging$UPDATES)`

    `static final boolean`

    `[setSecurityForUser$UPDATES](#setSecurityForUser$UPDATES)`

    `static final boolean`

    `[suggest$UPDATES](#suggest$UPDATES)`

    `static final boolean`

    `[suggestUsers$UPDATES](#suggestUsers$UPDATES)`

    `static final boolean`

    `[suggestUsersBulk$UPDATES](#suggestUsersBulk$UPDATES)`

    `static final boolean`

    `[unlockUser$UPDATES](#unlockUser$UPDATES)`

    `static final boolean`

    `[updateTitle$UPDATES](#updateTitle$UPDATES)`

    `static final boolean`

    `[updateUser$UPDATES](#updateUser$UPDATES)`

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    `static final boolean`

    `[updateUsers$UPDATES](#updateUsers$UPDATES)`

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    ### Fields inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[CONFIGURE_METHOD_NAME](../../services/ContextSensitiveSingletonService.html#CONFIGURE_METHOD_NAME)`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addUserToFavorites](#addUserToFavorites\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Adds this user (username\_) to the current user's favorites

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[authenticate](#authenticate\(java.lang.String,byte%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte[] password)`

    Used to authenticate the user as part of the login mechanism.

    `[UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization")`

    `[authenticateUser](#authenticateUser\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password_)`

    Deprecated.

    Since 6.0.2, use [`authenticate(String, byte[])`](#authenticate\(java.lang.String,byte%5B%5D\))

    `void`

    `[changeUserPassword](#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte[] newPassword, boolean temporary)`

    Change the user's password to the new provided password.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createTitle](#createTitle\(com.appiancorp.suiteapi.personalization.UserRank\))([UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization") title_)`

    Creates a new rank (title).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[createUser](#createUser\(com.appiancorp.suiteapi.personalization.User\))([User](User.html "class in com.appiancorp.suiteapi.personalization") user_)`

    Creates a new user

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[createUsers](#createUsers\(com.appiancorp.suiteapi.personalization.User%5B%5D\))([User](User.html "class in com.appiancorp.suiteapi.personalization")[] users_)`

    Creates new users.

    `void`

    `[deactivateUser](#deactivateUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deactivates the given User.

    `void`

    `[deactivateUsers](#deactivateUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userNames_)`

    Deactivates the given Users.

    `boolean`

    `[doesUserExist](#doesUserExist\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Determines whether a user with the exact username exists by conducting a case-sensitive comparison of the given username to usernames in the system.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findAllUsersPaging](#findAllUsersPaging\(boolean,int,int,java.lang.Integer,java.lang.Integer\))(boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Fast method that gets all users.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findUsers](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch_, boolean caseSensitive_)`

    Deprecated.

    use findUsersPaging

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findUsersForGroupPaging](#findUsersForGroupPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") searchCriteria_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Finds users who are members of a certain group for a given search criteria.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[findUsersForGroupType](#findUsersForGroupType\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch_, boolean caseSensitive_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId_)`

    Deprecated.

    Use [`findUsersForGroupPaging(UserSearch, boolean, Long, int, int, Integer, Integer)`](#findUsersForGroupPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findUsersPaging](#findUsersPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,int,int,java.lang.Integer,java.lang.Integer\))([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch_, boolean caseSensitive_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all users who match the search criteria.

    `[Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getAllUserTypeAttributes](#getAllUserTypeAttributes\(\))()`

    Gets the list of user type attributes - the fields which can be used in user rules.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Gets the name of the application on which this service is running.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getDeactivatedUsersPaging](#getDeactivatedUsersPaging\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all the deactivated users.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getFavoriteUsers](#getFavoriteUsers\(int,int,java.lang.Integer,java.lang.Integer\))(int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns favorite users of the current user

    `[UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getRankList](#getRankList\(\))()`

    Gets the list of ranks (titles) used in the system

    `[UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getRankListForDisplay](#getRankListForDisplay\(\))()`

    Gets the list of ranks (titles) used in the system for display purposes as well as a rank of "Any"

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForUser](#getSecurityForUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Gets the security settings of the user.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[getSystemActions](#getSystemActions\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] actionIds_)`

    Gets boolean values indicating whether a system administrator user can perform the action with the given ID.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUser](#getUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Gets a single user by username

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")[]`

    `[getUserActions](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] actionIds_)`

    Gets boolean values indicating whether the user can perform the action with the given ID.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")`

    `[getUserByUuid](#getUserByUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Gets a single user by uuid

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getUsers](#getUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Gets a list of users by username.

    `[User](User.html "class in com.appiancorp.suiteapi.personalization")[]`

    `[getUsersByUuid](#getUsersByUuid\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Gets a list of users by uuid.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getUsersForGroupByRolePaging](#getUsersForGroupByRolePaging\(java.lang.Long,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Returns all users in the given group with the given role.

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getUsersList](#getUsersList\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames)`

    Retrieves the users by username without throwing exceptions.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Gets the current memory profile for the workspace.

    `boolean`

    `[isCurrentUserDeactivated](#isCurrentUserDeactivated\(\))()`

    Determines whether the current user is deactivated

    `boolean`

    `[isPasswordUnique](#isPasswordUnique\(java.lang.String,byte%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte[] password)`

    Checkes whether the given user's password is not one of their last N passwords, where N is a number determined by the `conf.security.pw.NUMBER_PAST_PASSWORDS_TO_CHECK` in `custom.properties`.

    `boolean`

    `[isPasswordValid](#isPasswordValid\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password_)`

    Deprecated.

    Since 6.0.2, use [`isUserPasswordValid(String, byte[])`](#isUserPasswordValid\(java.lang.String,byte%5B%5D\))

    `boolean`

    `[isSocialSecurityNumberUnique](#isSocialSecurityNumberUnique\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") socialSceurityNumber_)`

    Determines whether a user with the given social security number already exists

    `boolean`

    `[isUserInGroupByRole](#isUserInGroupByRole\(java.lang.String,java.lang.Long,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role_)`

    Checks if a user has the given role for the given group

    `boolean`

    `[isUsernameAvailable](#isUsernameAvailable\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Determines whether the given username is available for use.

    `boolean`

    `[isUserPasswordValid](#isUserPasswordValid\(java.lang.String,byte%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte[] password)`

    Validates that the provided password matches that of the given user.

    `boolean`

    `[loginAttempt](#loginAttempt\(boolean\))(boolean valid)`

    Deprecated.

    Use [`loginAttempt(String, boolean)`](#loginAttempt\(java.lang.String,boolean\)) instead.

    `boolean`

    `[loginAttempt](#loginAttempt\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, boolean valid)`

    Increases the number of login attempts a user has tried.

    `void`

    `[reactivateUsers](#reactivateUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] userNames_)`

    Reactivates the given Users.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[removeUserFromFavorites](#removeUserFromFavorites\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Removes this user (username\_) from the current user's favorites

    `void`

    `[renameUsersByUuid](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernameUuids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames)`

    Rename users at usernameUuids to newUsernames.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[searchUsersPaging](#searchUsersPaging\(java.lang.String,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sorOrder_)`

    Searches for `User`s by first, last, and username.

    `void`

    `[setSecurityForUser](#setSecurityForUser\(java.lang.String,com.appiancorp.suiteapi.common.Security\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") sec)`

    Sets the security settings of the user.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggest](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean,java.lang.Long%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")[] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] allowList)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[suggestUsers](#suggestUsers\(java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query_, int maxSuggestions_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `[Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")[][]`

    `[suggestUsersBulk](#suggestUsersBulk\(java.lang.String%5B%5D,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] queries_, int maxSuggestionsPerQuery_)`

    Deprecated.

    use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

    `void`

    `[unlockUser](#unlockUser\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Unlocks a user that has reached the maximum number of attempts and the lockout duration has not expired yet.

    `void`

    `[updateTitle](#updateTitle\(com.appiancorp.suiteapi.personalization.UserRank\))([UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization") title_)`

    Updates the rank (title) name associated with the id of the object passed as a parameter

    `void`

    `[updateUser](#updateUser\(com.appiancorp.suiteapi.personalization.User\))([User](User.html "class in com.appiancorp.suiteapi.personalization") user_)`

    Updates a user.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[updateUsers](#updateUsers\(com.appiancorp.suiteapi.personalization.User%5B%5D\))([User](User.html "class in com.appiancorp.suiteapi.personalization")[] users_)`

    Updates users.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    ### Methods inherited from interface com.appiancorp.services.[ContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html "interface in com.appiancorp.services")

    `[configureContextSensitiveSingletonService](../../services/ContextSensitiveSingletonService.html#configureContextSensitiveSingletonService\(com.appiancorp.services.spring.ServiceContextProvider,com.appiancorp.services.AuthorizationInterceptorProvider\))`

-   ## Field Details

    -   ### ACTION\_SYSTEM\_USER\_CREATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_USER\_CREATE

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a user

    -   ### ACTION\_SYSTEM\_USER\_MODIFY\_SECURITY\_SETTINGS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_USER\_MODIFY\_SECURITY\_SETTINGS

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to modify security settings of a group. This is not currently used.

    -   ### ACTION\_SYSTEM\_GROUP\_CREATE\_PUBLIC

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_GROUP\_CREATE\_PUBLIC

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a public group

    -   ### ACTION\_SYSTEM\_GROUP\_CREATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_GROUP\_CREATE

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a group

    -   ### ACTION\_SYSTEM\_GROUPTYPE\_CREATE\_PUBLIC

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_GROUPTYPE\_CREATE\_PUBLIC

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a public group type

    -   ### ACTION\_SYSTEM\_GROUPTYPE\_CREATE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_GROUPTYPE\_CREATE

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to create a group type

    -   ### ACTION\_SYSTEM\_VIEW\_DEACTIVATED\_USERS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_VIEW\_DEACTIVATED\_USERS

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to view deactivated users

    -   ### ACTION\_SYSTEM\_GROUP\_SET\_DELEGATED\_ADMIN\_AT\_GROUP\_CREATION

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_SYSTEM\_GROUP\_SET\_DELEGATED\_ADMIN\_AT\_GROUP\_CREATION

        Index in return array from [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\)) which refers to the user's permissions to set if a group delegated admin at group creation

    -   ### ACTION\_USER\_DELETE\_USER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_DELETE\_USER

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to delete a user

    -   ### ACTION\_USER\_EDIT\_ALL\_USER\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_EDIT\_ALL\_USER\_ATTRIBUTES

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to edit all of a user's attributes

    -   ### ACTION\_USER\_EDIT\_LIMITED\_USER\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_EDIT\_LIMITED\_USER\_ATTRIBUTES

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to edit a user's limited attributes

    -   ### ACTION\_USER\_VIEW\_ALL\_USER\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_VIEW\_ALL\_USER\_ATTRIBUTES

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to view a user's attributes

    -   ### ACTION\_USER\_VIEW\_LIMITED\_USER\_ATTRIBUTES

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_VIEW\_LIMITED\_USER\_ATTRIBUTES

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to view a user's limited attributes

    -   ### ACTION\_USER\_VIEW\_USER\_EXISTENCE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_VIEW\_USER\_EXISTENCE

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to see a user's existence

    -   ### ACTION\_USER\_DEACTIVATE\_USER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_DEACTIVATE\_USER

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to decativate a user

    -   ### ACTION\_USER\_REACTIVATE\_USER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTION\_USER\_REACTIVATE\_USER

        Index in return array from [`getUserActions(String,Integer[])`](#getUserActions\(java.lang.String,java.lang.Integer%5B%5D\)) which refers to the user's permissions to reactivate a user

    -   ### createUser$UPDATES

        static final boolean createUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.createUser$UPDATES)

    -   ### createUsers$UPDATES

        static final boolean createUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.createUsers$UPDATES)

    -   ### updateUser$UPDATES

        static final boolean updateUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.updateUser$UPDATES)

    -   ### updateUsers$UPDATES

        static final boolean updateUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.updateUsers$UPDATES)

    -   ### getUser$UPDATES

        static final boolean getUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUser$UPDATES)

    -   ### getUsers$UPDATES

        static final boolean getUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUsers$UPDATES)

    -   ### getUserByUuid$UPDATES

        static final boolean getUserByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUserByUuid$UPDATES)

    -   ### getUsersByUuid$UPDATES

        static final boolean getUsersByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUsersByUuid$UPDATES)

    -   ### findUsers$UPDATES

        static final boolean findUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.findUsers$UPDATES)

    -   ### findUsersForGroupType$UPDATES

        static final boolean findUsersForGroupType$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.findUsersForGroupType$UPDATES)

    -   ### findUsersForGroupPaging$UPDATES

        static final boolean findUsersForGroupPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.findUsersForGroupPaging$UPDATES)

    -   ### isUserInGroupByRole$UPDATES

        static final boolean isUserInGroupByRole$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isUserInGroupByRole$UPDATES)

    -   ### authenticateUser$UPDATES

        static final boolean authenticateUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.authenticateUser$UPDATES)

    -   ### authenticate$UPDATES

        static final boolean authenticate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.authenticate$UPDATES)

    -   ### changeUserPassword$UPDATES

        static final boolean changeUserPassword$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.changeUserPassword$UPDATES)

    -   ### doesUserExist$UPDATES

        static final boolean doesUserExist$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.doesUserExist$UPDATES)

    -   ### isUsernameAvailable$UPDATES

        static final boolean isUsernameAvailable$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isUsernameAvailable$UPDATES)

    -   ### getRankList$UPDATES

        static final boolean getRankList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getRankList$UPDATES)

    -   ### getRankListForDisplay$UPDATES

        static final boolean getRankListForDisplay$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getRankListForDisplay$UPDATES)

    -   ### createTitle$UPDATES

        static final boolean createTitle$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.createTitle$UPDATES)

    -   ### updateTitle$UPDATES

        static final boolean updateTitle$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.updateTitle$UPDATES)

    -   ### getAllUserTypeAttributes$UPDATES

        static final boolean getAllUserTypeAttributes$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getAllUserTypeAttributes$UPDATES)

    -   ### getUserActions$UPDATES

        static final boolean getUserActions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUserActions$UPDATES)

    -   ### getSystemActions$UPDATES

        static final boolean getSystemActions$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getSystemActions$UPDATES)

    -   ### isSocialSecurityNumberUnique$UPDATES

        static final boolean isSocialSecurityNumberUnique$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isSocialSecurityNumberUnique$UPDATES)

    -   ### isPasswordValid$UPDATES

        static final boolean isPasswordValid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isPasswordValid$UPDATES)

    -   ### isUserPasswordValid$UPDATES

        static final boolean isUserPasswordValid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isUserPasswordValid$UPDATES)

    -   ### reactivateUsers$UPDATES

        static final boolean reactivateUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.reactivateUsers$UPDATES)

    -   ### deactivateUser$UPDATES

        static final boolean deactivateUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.deactivateUser$UPDATES)

    -   ### deactivateUsers$UPDATES

        static final boolean deactivateUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.deactivateUsers$UPDATES)

    -   ### getDeactivatedUsersPaging$UPDATES

        static final boolean getDeactivatedUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getDeactivatedUsersPaging$UPDATES)

    -   ### findUsersPaging$UPDATES

        static final boolean findUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.findUsersPaging$UPDATES)

    -   ### getUsersForGroupByRolePaging$UPDATES

        static final boolean getUsersForGroupByRolePaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUsersForGroupByRolePaging$UPDATES)

    -   ### isCurrentUserDeactivated$UPDATES

        static final boolean isCurrentUserDeactivated$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isCurrentUserDeactivated$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getWorkspace$UPDATES)

    -   ### getUsersList$UPDATES

        static final boolean getUsersList$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getUsersList$UPDATES)

    -   ### findAllUsersPaging$UPDATES

        static final boolean findAllUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.findAllUsersPaging$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.rollbackUpdateUsernames$UPDATES)

    -   ### suggestUsers$UPDATES

        static final boolean suggestUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.suggestUsers$UPDATES)

    -   ### searchUsersPaging$UPDATES

        static final boolean searchUsersPaging$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.searchUsersPaging$UPDATES)

    -   ### suggestUsersBulk$UPDATES

        static final boolean suggestUsersBulk$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.suggestUsersBulk$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.validate$UPDATES)

    -   ### addUserToFavorites$UPDATES

        static final boolean addUserToFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.addUserToFavorites$UPDATES)

    -   ### removeUserFromFavorites$UPDATES

        static final boolean removeUserFromFavorites$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.removeUserFromFavorites$UPDATES)

    -   ### getFavoriteUsers$UPDATES

        static final boolean getFavoriteUsers$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getFavoriteUsers$UPDATES)

    -   ### suggest$UPDATES

        static final boolean suggest$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.suggest$UPDATES)

    -   ### loginAttempt$UPDATES

        static final boolean loginAttempt$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.loginAttempt$UPDATES)

    -   ### unlockUser$UPDATES

        static final boolean unlockUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.unlockUser$UPDATES)

    -   ### isPasswordUnique$UPDATES

        static final boolean isPasswordUnique$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.isPasswordUnique$UPDATES)

    -   ### setSecurityForUser$UPDATES

        static final boolean setSecurityForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.setSecurityForUser$UPDATES)

    -   ### getSecurityForUser$UPDATES

        static final boolean getSecurityForUser$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.getSecurityForUser$UPDATES)

    -   ### renameUsersByUuid$UPDATES

        static final boolean renameUsersByUuid$UPDATES

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.personalization.UserService.renameUsersByUuid$UPDATES)

-   ## Method Details

    -   ### createUser

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") createUser([User](User.html "class in com.appiancorp.suiteapi.personalization") user\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a new user

        The `username` field of the created user must be unique. User fields required for creation are: `username`, `password`.

        NOTES:

        1) The `password` field must be hashed to work properly with the the product interface.

        2)In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` be validated for illegal characters (only allow alphanumeric symbols, underscores, and periods).

        If, after a user is created, it is necessary to call any method using that user's [`UserServiceContext`](../../services/UserServiceContext.html "class in com.appiancorp.services"), then `activateUserSession` must be called on the following services:

        -   [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")
        -   [`ProcessAnalyticsService`](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
        -   [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
        -   [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

        Parameters:

        `user_` - a user to create

        Returns:

        the username of the user

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username already exists

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username is `null`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a System Administrator

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if user\_ is empty. This exception is also thrown if either the username or password field is empty.

        `ServiceException` - if any system-level error occurs

    -   ### createUsers

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] createUsers([User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] users\_) throws [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates new users.

        The `username` field of the created user must be unique. User fields required for creation are: `username`.

        NOTES:

        1) Although this call will complete successfully if only the `username` field is populated, if the `password` field is not also populated the created user will not able to log into the application.

        2) The `password` field must be hashed to work properly with the the product interface.

        3)In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` be validated for illegal characters (only allow alphanumeric symbols, underscores, and periods).

        If, after a user is created, it is necessary to call any method using that user's [`UserServiceContext`](../../services/UserServiceContext.html "class in com.appiancorp.services"), then `activateUserSession` must be called on the following services:

        -   [`ProcessDesignService`](../process/ProcessDesignService.html "interface in com.appiancorp.suiteapi.process")
        -   [`ProcessAnalyticsService`](../process/analytics2/ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")
        -   [`AdministrationService`](../collaboration/AdministrationService.html "interface in com.appiancorp.suiteapi.collaboration")
        -   [`DiscussionMetadataCoreService`](../forums/DiscussionMetadataCoreService.html "interface in com.appiancorp.suiteapi.forums")

        Parameters:

        `users_` - users to create.

        Returns:

        the usernames of the users

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the usernames already exists

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any username is `null`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is not a System Administrator Must be a System Administrator to create a user

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is not either `null` or the login of a valid user

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if null is passed for the object or the username or password are null

        `ServiceException` - if any system-level error occurs

    -   ### updateUser

        void updateUser([User](User.html "class in com.appiancorp.suiteapi.personalization") user\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates a user. Does not modify `username` or `password`fields. You can also pass in a [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization") to update fields not contained within [`User`](User.html "class in com.appiancorp.suiteapi.personalization").

        If you do not pass in a `UserProfile`, the additional fields that are in `UserProfile` but not in `User` will be erased.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` field be validated for illegal characters (only allow alphanumeric symbols and underscores).

        This method will ignore any changes to the properties `userTypeId` and `userTypeName` when applied to the 'Administrator' user.

        Parameters:

        `user_` - the user to modify

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if null is passed for the object or the username or password are null

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")
        -   [`changeUserPassword(String, byte[], boolean)`](#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\))

    -   ### updateUsers

        void updateUsers([User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] users\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates users. Does not modify `username` or `password`fields. You can also pass in an array of [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization") objects to update fields not contained within [`User`](User.html "class in com.appiancorp.suiteapi.personalization").

        If you do not pass in `UserProfile` objects, the additional fields that are in `UserProfile` but not in `User` will be erased.

        In order to minimize possible breaks with the user interface, it is HIGHLY recommended that the `username` field be validated for illegal characters (only allow alphanumeric symbols and underscores).

        This method will ignore any changes to the properties `userTypeId` and `userTypeName` when applied to the 'Administrator' user.

        Parameters:

        `users_` - users to update

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user with a given username does not exist

        `[InvalidSupervisorException](../common/exceptions/InvalidSupervisorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the supervisor property is neither `null` nor the login of a valid user

        `ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        See Also:

        -   [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")
        -   [`changeUserPassword(String, byte[], boolean)`](#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\))

    -   ### getUser

        [User](User.html "class in com.appiancorp.suiteapi.personalization") getUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a single user by username

        Parameters:

        `username_` - the primary key of a user

        Returns:

        the `User`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a user with the given username does not exist

        `ServiceException` - if any system-level error occurs

    -   ### getUsers

        [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] getUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of users by username.

        Parameters:

        `usernames_` - usernames of users to retrieve

        Returns:

        a list of users corresponding to the given usernames

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user with the a given username does not exist

        `ServiceException` - if any system-level error occurs

    -   ### getUserByUuid

        [User](User.html "class in com.appiancorp.suiteapi.personalization") getUserByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a single user by uuid

        Parameters:

        `uuid` - the uuid of a user

        Returns:

        the `User`

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if a user with the given uuid does not exist

        `ServiceException` - if any system-level error occurs

    -   ### getUsersByUuid

        [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] getUsersByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter\[\]\[\].class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets a list of users by uuid.

        Parameters:

        `uuids` - uuids of users to retrieve

        Returns:

        a list of users corresponding to the given uuids

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user with the a given uuid does not exist

        `ServiceException` - if any system-level error occurs

    -   ### findUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] findUsers([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch\_, boolean caseSensitive\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use findUsersPaging

        Finds a list of users for a given search criteria.

        The `userSearch_` object should be populated with the user fields to be searched on, and the criteria to be used in performing the search. For example, the `userSearch_` might have the `username` field set to "john.doe", the `lastName` fields set to "Doe", the `operatorUsername` field set to [`Operator.EQUALS`](Operator.html#EQUALS) and the `operatorLastName` field set to [`Operator.ENDS_WITH`](Operator.html#ENDS_WITH). Such a search will return all users whose username is "john.doe", and whose last name ends with "Doe". To get all users, use `findAllUsersPaging`.

        See [`GroupTypeService.getOperatorsForDataType(int)`](GroupTypeService.html#getOperatorsForDataType\(int\)) to obtain a list of possible operators for a given data type.

        Parameters:

        `userSearch_` - the search criteria

        `caseSensitive_` - whether the search is case sensitive

        Returns:

        the users that meet the given search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `ServiceException` - if any system-level error occurs

    -   ### findUsersForGroupType

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [User](User.html "class in com.appiancorp.suiteapi.personalization")\[\] findUsersForGroupType([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupTypeId\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Use [`findUsersForGroupPaging(UserSearch, boolean, Long, int, int, Integer, Integer)`](#findUsersForGroupPaging\(com.appiancorp.suiteapi.personalization.UserSearch,boolean,java.lang.Long,int,int,java.lang.Integer,java.lang.Integer\))

        Finds a list of users who are members of groups of a certain group type, for a given search criteria.

        This method behaves in a similar fashion to [`findUsers(UserSearch, boolean)`](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\)), except that it only searches for users in groups with the given group type.

        Parameters:

        `userSearch_` - the search criteria

        `caseSensitive_` - whether the search is case sensitive

        `groupTypeId_` - groupType to find users who are members of

        Returns:

        the users that meet the given search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `[InvalidGroupTypeException](../common/exceptions/InvalidGroupTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group type does not exist

        `ServiceException` - if any system-level error occurs

    -   ### findUsersForGroupPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findUsersForGroupPaging([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") searchCriteria\_, boolean caseSensitive\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Finds users who are members of a certain group for a given search criteria.

        This method behaves in a similar fashion to [`findUsers(UserSearch, boolean)`](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\)), except that it only searches for users in the given group.

        Parameters:

        `searchCriteria_` - the search criteria

        `caseSensitive_` - whether the search is case sensitive

        `groupId_` - the ID of the group in which to search

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        `ResultPage` of `User` objects.

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group does not exist

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `ServiceException` - if any system-level error occurs

    -   ### isUserInGroupByRole

        boolean isUserInGroupByRole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checks if a user has the given role for the given group

        Parameters:

        `username_` - the login of the user

        `groupId_` - the group whose membership is being checked

        `role_` - the role being checked. This must be one of the `USER_ROLE_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        Returns:

        whether the user has the given role for the group

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group does not exist

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the role is invalid

        `ServiceException` - if any system-level error occurs

    -   ### authenticateUser

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") authenticateUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password\_) throws [InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Since 6.0.2, use [`authenticate(String, byte[])`](#authenticate\(java.lang.String,byte%5B%5D\))

        Used to validate a user (the login mechanism). Note: If password is stored as hashed in database (stored as hashed by default in the product), the password passed in to this function must be hashed. For more details, see topic "Frequently Asked Questions" in the product Developer's Guide.

        Parameters:

        `username_` - the login of the user

        `password_` - the password of the user

        Returns:

        the user matching the login

        Throws:

        `[InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if no user with the given username and password exists

        `ServiceException` - if any system-level error occurs

    -   ### authenticate

        [UserProfile](UserProfile.html "class in com.appiancorp.suiteapi.personalization") authenticate([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte\[\] password) throws [InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Used to authenticate the user as part of the login mechanism. A user that provides the correct credentials, a username and password combination that match those stored in the system, is considered to be authenticated. Note: this method will successfully authenticate regardless of whether or not the password is temporary (see [`changeUserPassword(String, byte[], boolean)`](#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\))).

        Parameters:

        `username` - the username of the user to authenticate

        `password` - the user's hashed password; see the interface description [`above`](UserService.html "interface in com.appiancorp.suiteapi.personalization").

        Returns:

        the authenticated user

        Throws:

        `[InvalidLoginException](../common/exceptions/InvalidLoginException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the authentication challenge fails with the provided credentials

    -   ### changeUserPassword

        void changeUserPassword([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte\[\] newPassword, boolean temporary) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Change the user's password to the new provided password. The provided password must be in its hashed form. If the `temporary` flag is passed as `true`, the user will be required to change their password on the next login.

        Parameters:

        `username` - the username of the user whose password is being changed

        `newPassword` - the new password, hashed; see interface description [`above`](UserService.html "interface in com.appiancorp.suiteapi.personalization") for more info

        `temporary` - a flag to indicate whether this is a temporary password that should be reset the next time the user logs in

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the provided username doesn't map to a user in the system or the user is deactivated

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the method is called by a user other than a System Administrator or the user whose password the method is attempting to change Used to change a user's password

    -   ### doesUserExist

        boolean doesUserExist([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Determines whether a user with the exact username exists by conducting a case-sensitive comparison of the given username to usernames in the system. Users cannot be created with a username that matches an existing username in a case-insensitive comparison, so use [`isUsernameAvailable(String)`](#isUsernameAvailable\(java.lang.String\)) instead to determine if a given username is available for use when creating a new user.

        Parameters:

        `username_` - the username

        Returns:

        `true`, if a user with this username exists.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### isUsernameAvailable

        boolean isUsernameAvailable([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)

        Determines whether the given username is available for use. A username is available if it does not match any existing username in a case-insensitive comparison.

        Parameters:

        `username_` - the username

        Returns:

        `true`, if a new user can be created with this username.

    -   ### getRankList

        [UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization")\[\] getRankList()

        Gets the list of ranks (titles) used in the system

        Returns:

        the rank list

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getRankListForDisplay

        [UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization")\[\] getRankListForDisplay()

        Gets the list of ranks (titles) used in the system for display purposes as well as a rank of "Any"

        Returns:

        the rank list

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### createTitle

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createTitle([UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization") title\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Creates a new rank (title). Only the name is required.

        Returns:

        the new rank (title) id

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user context is not a system administrator

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument itself is null (title\_ is null)

    -   ### updateTitle

        void updateTitle([UserRank](UserRank.html "class in com.appiancorp.suiteapi.personalization") title\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidTitleException](../common/exceptions/InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Updates the rank (title) name associated with the id of the object passed as a parameter

        Throws:

        `[InvalidTitleException](../common/exceptions/InvalidTitleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the passed title (rank) id does not exist or is null

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user context is not a system administrator

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")` - if the argument itself is null (title\_ is null)

    -   ### getAllUserTypeAttributes

        [Attribute](Attribute.html "class in com.appiancorp.suiteapi.personalization")\[\] getAllUserTypeAttributes()

        Gets the list of user type attributes - the fields which can be used in user rules.

        Returns:

        the attribute list

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### getUserActions

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] getUserActions([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] actionIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets boolean values indicating whether the user can perform the action with the given ID. The user must be a basic user; to check the actions that a system administrator can perform, use [`getSystemActions(Integer[])`](#getSystemActions\(java.lang.Integer%5B%5D\))

        Parameters:

        `username_` - the username of the user

        `actionIds_` - IDs of actions for which to check the user's permissions. Each action ID must be one of the `ACTION_USER_XXX` constants

        Returns:

        an array that is parallel to `actionIds_`, with each element in the result set to true if the user can perform the associated action

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `ServiceException` - if any system-level error occurs

    -   ### getSystemActions

        [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")\[\] getSystemActions([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] actionIds\_)

        Gets boolean values indicating whether a system administrator user can perform the action with the given ID.

        Parameters:

        `actionIds_` - IDs of system actions. Each action ID must be one of the `ACTION_SYSTEM_XXX` constants

        Returns:

        an array parallel to `actionIds_`, with each element in the result set to true if the user can perform the associated action

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### isSocialSecurityNumberUnique

        boolean isSocialSecurityNumberUnique([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") socialSceurityNumber\_)

        Determines whether a user with the given social security number already exists

        Parameters:

        `socialSceurityNumber_` - a social security number, in XXXXXXXXX format

        Returns:

        `true` if no current user has this social security number

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### isPasswordValid

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean isPasswordValid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") password\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Since 6.0.2, use [`isUserPasswordValid(String, byte[])`](#isUserPasswordValid\(java.lang.String,byte%5B%5D\))

        Validates password for a given user. Simply checks if entered password for given user matches his stored password.

        Parameters:

        `username_` - the login of a user

        `password_` - the password of the user

        Returns:

        `true` if password is valid

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user does not exist

        `ServiceException` - if any system-level error occurs

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### isUserPasswordValid

        boolean isUserPasswordValid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte\[\] password) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Validates that the provided password matches that of the given user. The password must be provided in its hashed form. See the interface description [`above`](UserService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `username` - the username of the user to check

        `password` - the hashed password to check

        Returns:

        true if the password is the user's current password, otherwise false

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the provided username doesn't map to a user in the system or the user is deactivated

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### reactivateUsers

        void reactivateUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userNames\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Reactivates the given Users.

        Parameters:

        `userNames_` - the logins of users that are inactive

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the logins does not correspond to a valid user

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an admin

        `ServiceException` - if any system-level error occurs

    -   ### deactivateUser

        void deactivateUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deactivates the given User. Deactivating a user does NOT wipe the user from the system, but rather disables the user's ability to log into the system and other users' ability to view the user. A deactivated user can always be reactivated using [`reactivateUsers(String[])`](#reactivateUsers\(java.lang.String%5B%5D\)).

        Parameters:

        `userName_` - the login of a user to deactivate

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the login does not correspond to a valid user or the Administrator was provided

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an admin

        `ServiceException` - if any system-level error occurs

    -   ### deactivateUsers

        void deactivateUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] userNames\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deactivates the given Users. Deactivating a user does NOT wipe the user from the system, but rather disables the user's ability to log into the system and other users' ability to view the user. A deactivated user can always be reactivated using [`reactivateUsers(String[])`](#reactivateUsers\(java.lang.String%5B%5D\)).

        Parameters:

        `userNames_` - the logins of a users to deactivate

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if one of the logins does not correspond to a valid user or the Administrator is in the list of users to deactivate

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not an admin

        `ServiceException` - if any system-level error occurs

    -   ### getDeactivatedUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getDeactivatedUsersPaging(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Returns all the deactivated users.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `User` objects corresponding to inactive users

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### findUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findUsersPaging([UserSearch](UserSearch.html "class in com.appiancorp.suiteapi.personalization") userSearch\_, boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns all users who match the search criteria.

        This method will return the paged resultset corresponding to [`findUsers(UserSearch, boolean)`](#findUsers\(com.appiancorp.suiteapi.personalization.UserSearch,boolean\))

        Parameters:

        `userSearch_` - criteria for the search

        `caseSensitive_` - whether the search is case sensitive

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `User` objects correpsonding to users who match the search criteria

        Throws:

        `[UnsupportedOperatorException](../common/exceptions/UnsupportedOperatorException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `userSearch_` contains an invalid operator

        `ServiceException` - if any system-level error occurs

    -   ### getUsersForGroupByRolePaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getUsersForGroupByRolePaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") role\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions"), [UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Returns all users in the given group with the given role.

        Parameters:

        `groupId_` - the ID of the group

        `role_` - the role. This is one of the `USER_ROLE_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `User` beans corresponding to users who match the search criteria

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group id does not exist

        `[UnsupportedRoleException](../common/exceptions/UnsupportedRoleException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the role is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not have sufficient privileges to view the members of this group - that is, if [`GroupService.getGroupActions(Long, Integer[])`](GroupService.html#getGroupActions\(java.lang.Long,java.lang.Integer%5B%5D\)) returns false for the action [`GroupService.ACTION_GROUP_VIEW_GROUP_MEMBERS`](GroupService.html#ACTION_GROUP_VIEW_GROUP_MEMBERS)

        `ServiceException` - if any system-level error occurs

    -   ### isCurrentUserDeactivated

        boolean isCurrentUserDeactivated()

        Determines whether the current user is deactivated

        Returns:

        `true` if the current user is deactivated

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

    -   ### getUsersList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getUsersList([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames)

        Retrieves the users by username without throwing exceptions.

        The result codes returned in the `ResultList` are in the same order and correspond to the usernames passed as the parameter. The following result codes are returned:

        -   [`ResultList.CODE_INVALID`](../common/ResultList.html#CODE_INVALID) - the corresponding username does not belong to an existing user
        -   [`ResultList.CODE_NO_PERMISSION`](../common/ResultList.html#CODE_NO_PERMISSION) - the context user does not have permission to view the user with the corresponding username
        -   [`ResultList.CODE_VALID`](../common/ResultList.html#CODE_VALID) - the user is valid and the context user has permission to view it

        The [`User`](User.html "class in com.appiancorp.suiteapi.personalization") array returned in the results is neither the same length as the input array nor is it in the same order. Any invalid usernames have no corresponding item in the array and users that cannot be viewed by the context users are sorted to the end of the array for convenience.

        Parameters:

        `usernames` - the usernames of the users to retrieve

        Returns:

        a `ResultList` containing the an array of `User` objects and result codes corresponding to the input array.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### findAllUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findAllUsersPaging(boolean caseSensitive\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Fast method that gets all users.

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. use of [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted This is one of the `SORT_BY_XXX` constants in [`UserProfile`](UserProfile.html "class in com.appiancorp.suiteapi.personalization")

        `sortOrder_` - [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) for sorting results in ascending order, [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING) for sorting results in descending order

        Returns:

        a `ResultPage` containing an array of `User` objects

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `ServiceException` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`renameUsersByUuid(java.lang.String[], java.lang.String[])`](#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### suggestUsers

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggestUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int maxSuggestions\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Returns a String in a specified format that contains `User`s whose first, last, or username match or partially match the query string. The number of suggestions is limited. Format (for `User`s and `Group`s: \[\[4, 'john.user', John User\],\[5, 32, 'Finance'\]\]

        Parameters:

        `query_` - The search query.

        `maxSuggestions_` - The maximum number of suggestions to return.

        Returns:

        A String of suggestions in the specified format.

    -   ### searchUsersPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") searchUsersPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sorOrder\_)

        Searches for `User`s by first, last, and username.

        Parameters:

        `query_` - The query by which to search for `User`s.

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` of `User` objects which match the search query.

    -   ### suggestUsersBulk

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Suggestion](../common/Suggestion.html "class in com.appiancorp.suiteapi.common")\[\]\[\] suggestUsersBulk([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] queries\_, int maxSuggestionsPerQuery\_)

        Deprecated.

        use [`suggest(String, int, SuggestParam[], Boolean)`](#suggest\(java.lang.String,int,com.appiancorp.suiteapi.common.SuggestParam%5B%5D,java.lang.Boolean\)) instead

        Suggests `User`s whose first, last, or username matches each query.

        Parameters:

        `queries_` - A list of queries by which to search for `User`s.

        `maxSuggestionsPerQuery_` - The maximum number of suggestions to return for each query.

        Returns:

        An array of `Suggestion[]` which are the suggestions corresponding to each query string. The first dimension of the array is equal to the number of queries passed to the method. The second dimension is equal to or lesser than the max suggestion per query.

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### addUserToFavorites

        void addUserToFavorites([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Adds this user (username\_) to the current user's favorites

        Parameters:

        `username_` - The username of the user that is to be added as favorites

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if username\_ is empty, or the username\_ does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### removeUserFromFavorites

        void removeUserFromFavorites([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Removes this user (username\_) from the current user's favorites

        Parameters:

        `username_` - The username of the user that is to be removed from favorites

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if username\_ is empty or the username\_ does not exist

    -   ### getFavoriteUsers

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getFavoriteUsers(int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_)

        Returns favorite users of the current user

        Parameters:

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`User`](User.html "class in com.appiancorp.suiteapi.personalization").

        `sortOrder_` - the order in which to sort the results. This is one of [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        A `ResultPage` of `User` objects

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults)

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are user.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        Returns:

        a JSON formatted string

    -   ### suggest

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") suggest([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") query, int maxItems, [SuggestParam](../common/SuggestParam.html "class in com.appiancorp.suiteapi.common")\[\] params, [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") groupResults, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] allowList)

        Parameters:

        `query` -

        `maxItems` -

        `params` - list of information on what is being suggested and what format the results should be in. valid types are user.

        `groupResults` - if specifying more than one SuggestParam, would you like to group the results by type, or mixed together and sorted? Default is true. If grouped, order of types matches the order of the suggestParams passed in.

        `allowList` - list of IDs that will be automatically added to returned results, filtered by query. Ignored if null or empty.

        Returns:

        a JSON formatted string

    -   ### loginAttempt

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean loginAttempt(boolean valid)

        Deprecated.

        Use [`loginAttempt(String, boolean)`](#loginAttempt\(java.lang.String,boolean\)) instead.

        Increases the number of login attempts a user has tried. The user making this call is the user which the attempts are increased to.

        Parameters:

        `valid` - Whether the login attempt is successful or not

        Returns:

        true if the user is allowed to login. False if the user is locked

    -   ### loginAttempt

        boolean loginAttempt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, boolean valid)

        Increases the number of login attempts a user has tried.

        Parameters:

        `username` - The user attempting the login

        `valid` - Whether the login attempt is successful or not

        Returns:

        true if the user is allowed to login. False if the user is locked

    -   ### unlockUser

        void unlockUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Unlocks a user that has reached the maximum number of attempts and the lockout duration has not expired yet.

        Parameters:

        `username` - the username

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the provided username doesn't map to a user in the system or the user is deactivated

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the method is called by a user other than a System Administrator

    -   ### isPasswordUnique

        boolean isPasswordUnique([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, byte\[\] password) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Checkes whether the given user's password is not one of their last N passwords, where N is a number determined by the `conf.security.pw.NUMBER_PAST_PASSWORDS_TO_CHECK` in `custom.properties`. This method should be used in conjunction with [`changeUserPassword(String, byte[], boolean)`](#changeUserPassword\(java.lang.String,byte%5B%5D,boolean\)) for systems that need to enforce that a new password is not one of the previous passwords. The provided password must be hashed using the algorithm. See the interface description [`above`](UserService.html "interface in com.appiancorp.suiteapi.personalization").

        Parameters:

        `username` - the user whose password history should be checked

        `password` - the hashed password to check against the history

        Returns:

        true if the password is unique, otherwise false.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the method is called by a user other than a System Administrator or the user for whom the method is attempting to verify the new password for uniqueness

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

    -   ### setSecurityForUser

        void setSecurityForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username, [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") sec) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Sets the security settings of the user. Fields `canInherit`, `inheritable` and `doesInherit` will be ignored

        Parameters:

        `username` - the user whose security settings will be set

        `sec` - a `Security` object which encapsulates the security settings for a user. The role map in the `Security` object must be a `RoleMap` object.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation or cannot see a group specified in the rolemap

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user specified in the rolemap is invalid or the current user does not have viewing privileges over that user

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group specified in the rolemap is invalid

    -   ### getSecurityForUser

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Gets the security settings of the user.

        Parameters:

        `username` - the user whose security settings will be retrieved

        Returns:

        the `Security` object that contains the security for the user. The role map in the `Security` object is a `RoleMap` object.

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to perform this operation

    -   ### renameUsersByUuid

        void renameUsersByUuid(@ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter\[\]\[\].class) [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernameUuids, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames) throws [AppianRuntimeException](../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Rename users at usernameUuids to newUsernames. This replaces the previous updateUsernames/commitUpdateUsernames/rollbackUpdateUsernames for each engine. This generates a request to all enlisted components of the Appian system to do the rename. It is transactional, and will be retried as necessary if a component is down at the time. Renaming by UUID is idempotent, so it may be retried as necessary if a component is down during the attempt. The rename is done immediately on the Personalization K engine (which is the primary source of truth for users). It may or may not be done immediately on other engines and other persistent storage mechanisms attached in a structured manner to Appian. A timeout may be employed to allow the method to return quickly, even if an engine is down at the time of the attempt. Such engines may be retried later automatically. All user creation and user renames are sequenced, such that they occur in order even when components are down. Invoking user must have privilege to reactivate user.

        Parameters:

        `usernameUuids` - must be non-null, match newUsernames in length, be unique, contain no nulls (may use getUserUuids to obtain this information) The UUID is used to avoid ambiguous behaviors when renaming users in a loop, e.g., (a->b, b->c, c->a), which would have race conditions between distributed engines holding the data. Use of the user UUID avoids the ambiguity.

        `newUsernames` - must be non-null, match usernameUuids in length, be unique, contain no nulls, be valid usernames (see instead use [`createUser(User)`](#createUser\(com.appiancorp.suiteapi.personalization.User\)))

        Throws:

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidNameException](../common/exceptions/InvalidNameException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[SelfRenameException](../common/exceptions/SelfRenameException.html "class in com.appiancorp.suiteapi.common.exceptions")`

        `[AppianRuntimeException](../common/exceptions/AppianRuntimeException.html "class in com.appiancorp.suiteapi.common.exceptions")`