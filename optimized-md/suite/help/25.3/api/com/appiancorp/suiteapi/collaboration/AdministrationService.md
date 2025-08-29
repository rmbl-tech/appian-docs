---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/collaboration/AdministrationService.html
original_path: api/com/appiancorp/suiteapi/collaboration/AdministrationService.html
version: "25.3"
title: "Interface AdministrationService"
page_id: "api/com/appiancorp/suiteapi/collaboration/AdministrationService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.collaboration](package-summary.html)

# Interface AdministrationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface AdministrationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

Use the class [`ContentService`](../content/ContentService.html "interface in com.appiancorp.suiteapi.content") instead.

This interface provides services for other applications using methods related to collaboration administration.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`CollaborationSearchService`](CollaborationSearchService.html "interface in com.appiancorp.suiteapi.collaboration")
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

    `static final boolean`

    `[activateUserSession$UPDATES](#activateUserSession$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[changePartitionPaths$UPDATES](#changePartitionPaths$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[commitUpdateUsernames$UPDATES](#commitUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getApplicationName$UPDATES](#getApplicationName$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSystemFolderId$UPDATES](#getSystemFolderId$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUserSpace$UPDATES](#getUserSpace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getUserSpaceUsage$UPDATES](#getUserSpaceUsage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getWorkspace$UPDATES](#getWorkspace$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[insertUser$UPDATES](#insertUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[insertUsersBulk$UPDATES](#insertUsersBulk$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyGroupDeletion$UPDATES](#notifyGroupDeletion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[notifyGroupsDeletion$UPDATES](#notifyGroupsDeletion$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[reloadProperties$UPDATES](#reloadProperties$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[rollbackUpdateUsernames$UPDATES](#rollbackUpdateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setAdministratorGroup$UPDATES](#setAdministratorGroup$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setUserSpaceUsage$UPDATES](#setUserSpaceUsage$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updateUsernames$UPDATES](#updateUsernames$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validate$UPDATES](#validate$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateGroupMembership$UPDATES](#validateGroupMembership$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang")`

    `[activateUserSession](#activateUserSession\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] membership_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] administration_)`

    Deprecated. 

    `void`

    `[changePartitionPaths](#changePartitionPaths\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalPath, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newPath)`

    Deprecated.

    Changes where collaboration files are stored from one path to another.

    `void`

    `[commitUpdateUsernames](#commitUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getApplicationName](#getApplicationName\(\))()`

    Deprecated.

    Gets the name of the application on which this service is running.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getSystemFolderId](#getSystemFolderId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

    Returns the folder id for a built-in system folder from among the following: image\_folder\_id leader\_message\_channel\_image\_folder\_id priority\_image\_folder\_id indicator\_image\_folder\_id This is a small wrapper on Content's getSystemId, but returns the content id as a folder id.

    `[UserSpace](UserSpace.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getUserSpace](#getUserSpace\(\))()`

    Deprecated.

    User quotas have been removed.

    `[UserSpace](UserSpace.html "class in com.appiancorp.suiteapi.collaboration")`

    `[getUserSpaceUsage](#getUserSpaceUsage\(\))()`

    Deprecated.

    User quotas have been removed.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getWorkspace](#getWorkspace\(\))()`

    Deprecated.

    Gets the current memory profile for the workspace.

    `void`

    `[insertUser](#insertUser\(java.lang.String,java.sql.Timestamp\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") whenCreated_)`

    Deprecated.

    Adds user with unique identifier username into Collaboration.

    `void`

    `[insertUsersBulk](#insertUsersBulk\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] usernames_)`

    Deprecated.

    Adds users with unique identifier usernames into Collaboration.

    `void`

    `[notifyGroupDeletion](#notifyGroupDeletion\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId_)`

    Deprecated.

    Notifies the collaboration application that the specified group has been deletedand no references to it should therefore exist in collaboration.

    `void`

    `[notifyGroupsDeletion](#notifyGroupsDeletion\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groupIds_)`

    Deprecated.

    Notifies the collaboration application that the specified groups have been deleted and no references to them should therefore exist in collaboration.

    `void`

    `[reloadProperties](#reloadProperties\(\))()`

    Deprecated.

    reloading properties is now automatic, so this call is now unnecessary and does nothing.

    `void`

    `[rollbackUpdateUsernames](#rollbackUpdateUsernames\(\))()`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `void`

    `[setAdministratorGroup](#setAdministratorGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Sets the specified group as the administrative group for the Collaboration application.

    `void`

    `[setUserSpaceUsage](#setUserSpaceUsage\(java.lang.String,java.lang.Long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mbytes_)`

    Deprecated.

    User quotas have been removed.

    `void`

    `[updateUsernames](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] oldUsernames_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] newUsernames_, long maxExpirationTimeInSeconds_)`

    Deprecated.

    instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[validate](#validate\(\))()`

    Deprecated.

    Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

    `boolean`

    `[validateGroupMembership](#validateGroupMembership\(java.lang.Long%5B%5D,java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] memGroupIds_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] admGroupIds_)`

    Deprecated. 

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getUserSpaceUsage$UPDATES

        static final boolean getUserSpaceUsage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.getUserSpaceUsage$UPDATES)

    -   ### getUserSpace$UPDATES

        static final boolean getUserSpace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.getUserSpace$UPDATES)

    -   ### setUserSpaceUsage$UPDATES

        static final boolean setUserSpaceUsage$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.setUserSpaceUsage$UPDATES)

    -   ### notifyGroupDeletion$UPDATES

        static final boolean notifyGroupDeletion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.notifyGroupDeletion$UPDATES)

    -   ### notifyGroupsDeletion$UPDATES

        static final boolean notifyGroupsDeletion$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.notifyGroupsDeletion$UPDATES)

    -   ### activateUserSession$UPDATES

        static final boolean activateUserSession$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.activateUserSession$UPDATES)

    -   ### insertUser$UPDATES

        static final boolean insertUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.insertUser$UPDATES)

    -   ### insertUsersBulk$UPDATES

        static final boolean insertUsersBulk$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.insertUsersBulk$UPDATES)

    -   ### setAdministratorGroup$UPDATES

        static final boolean setAdministratorGroup$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.setAdministratorGroup$UPDATES)

    -   ### getApplicationName$UPDATES

        static final boolean getApplicationName$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.getApplicationName$UPDATES)

    -   ### getWorkspace$UPDATES

        static final boolean getWorkspace$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.getWorkspace$UPDATES)

    -   ### validateGroupMembership$UPDATES

        static final boolean validateGroupMembership$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.validateGroupMembership$UPDATES)

    -   ### updateUsernames$UPDATES

        static final boolean updateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.updateUsernames$UPDATES)

    -   ### commitUpdateUsernames$UPDATES

        static final boolean commitUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.commitUpdateUsernames$UPDATES)

    -   ### rollbackUpdateUsernames$UPDATES

        static final boolean rollbackUpdateUsernames$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.rollbackUpdateUsernames$UPDATES)

    -   ### changePartitionPaths$UPDATES

        static final boolean changePartitionPaths$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.changePartitionPaths$UPDATES)

    -   ### reloadProperties$UPDATES

        static final boolean reloadProperties$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.reloadProperties$UPDATES)

    -   ### validate$UPDATES

        static final boolean validate$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.validate$UPDATES)

    -   ### getSystemFolderId$UPDATES

        static final boolean getSystemFolderId$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.collaboration.AdministrationService.getSystemFolderId$UPDATES)

-   ## Method Details

    -   ### getUserSpaceUsage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserSpace](UserSpace.html "class in com.appiancorp.suiteapi.collaboration") getUserSpaceUsage() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        User quotas have been removed. This method will always show that the user has unlimited space.

        Retrieves the total amount of space occupied by files stored in the the current user's private knowledge centers.

        Returns:

        a `UserSpace` object representing the physical disk space usage of the current user.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getUserSpace

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [UserSpace](UserSpace.html "class in com.appiancorp.suiteapi.collaboration") getUserSpace() throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        User quotas have been removed. This method will always show that the user has unlimited space.

        Retrieves the total amount of space occupied by files stored in the the current user's private knowledge centers.

        Returns:

        a `UserSpace` object representing the physical disk space usage of the current user.

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setUserSpaceUsage

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void setUserSpaceUsage([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") mbytes\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        User quotas have been removed. Calls to this method will be ignored.

        Sets the total amount of space to be allocated for file storage in the collaboration application for the user. This is the amount of space within the user's private knowledge centers.

        Parameters:

        `username_` - the username of the user for which to set disk space

        `mbytes_` - the amount of space in Mbytes

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user specified by the given username does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyGroupDeletion

        void notifyGroupDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") groupId\_)

        Deprecated.

        Notifies the collaboration application that the specified group has been deletedand no references to it should therefore exist in collaboration. This method should be called after [`GroupService.deleteGroup(java.lang.Long)`](../personalization/GroupService.html#deleteGroup\(java.lang.Long\)) has been called.

        Parameters:

        `groupId_` - the ID of the group that has been deleted

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### notifyGroupsDeletion

        void notifyGroupsDeletion([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groupIds\_)

        Deprecated.

        Notifies the collaboration application that the specified groups have been deleted and no references to them should therefore exist in collaboration. This method should be called after [`GroupService.deleteGroup(java.lang.Long)`](../personalization/GroupService.html#deleteGroup\(java.lang.Long\)) has been called.

        Parameters:

        `groupIds_` - the IDs of the groups that have been deleted

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### activateUserSession

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Void](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Void.html "class or interface in java.lang") activateUserSession([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] membership\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] administration\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Notifies the collaboration application that a new session has been created for the current user, and provides information about the current user's membership and administration rights to groups. This call is necessary every time the group membership role is changed, a new group is created, or when the user is newly created

        Parameters:

        `membership_` - the list of groups of which the user is a member

        `administration_` - the list of groups on which the user has administrative rights

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### insertUser

        void insertUser([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_, [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") whenCreated\_) throws [InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Adds user with unique identifier username into Collaboration. This method should be called after the user has previously been created in the personalization application using [`UserService.createUser(com.appiancorp.suiteapi.personalization.User)`](../personalization/UserService.html#createUser\(com.appiancorp.suiteapi.personalization.User\))

        Parameters:

        `username_` - username of the user to add to collaboration

        `whenCreated_` - the current system time

        Throws:

        `[InvalidDataFormatException](../common/exceptions/InvalidDataFormatException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the username is null or invalid.

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### insertUsersBulk

        void insertUsersBulk([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] usernames\_) throws [NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")

        Deprecated.

        Adds users with unique identifier usernames into Collaboration. This method should be called after the users have previously been created in the personalization application using [`UserService.createUsers(com.appiancorp.suiteapi.personalization.User[])`](../personalization/UserService.html#createUsers\(com.appiancorp.suiteapi.personalization.User%5B%5D\))

        Parameters:

        `usernames_` - usernames of the users to insert into collaboration

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[NullPointerException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/NullPointerException.html "class or interface in java.lang")`

    -   ### setAdministratorGroup

        void setAdministratorGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_) throws [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the specified group as the administrative group for the Collaboration application. Users in the administrative group can perform any action on every object in the application, irrespective of the security settings.

        Parameters:

        `id_` - the ID of the group to be set as admin group

        Throws:

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the ID is `null`

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getApplicationName

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getApplicationName()

        Deprecated.

        Gets the name of the application on which this service is running.

        Returns:

        the name of the application

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

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

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validateGroupMembership

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") boolean validateGroupMembership([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] memGroupIds\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] admGroupIds\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Validates if the association of a user as 'Member' and as an 'Administrator has changed or not.

        Parameters:

        `memGroupIds_` - Groups for which the User is a member

        `admGroupIds_` - Groups for which the User is an administrator

        Returns:

        true if there is not change in the membership of the user

        Throws:

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void updateUsernames([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] oldUsernames\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] newUsernames\_, long maxExpirationTimeInSeconds\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Updates a list of old usernames to new usernames.

        If successful, this method must be followed by [`commitUpdateUsernames()`](#commitUpdateUsernames\(\)). After `commitUpdateUsernames` has been called, the old usernames will still be active, but will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `updateUsernames` is successful but `commitUpdateUsernames` is not called, the new usernames will not become active.

        If unsuccessful, this method should be followed by [`rollbackUpdateUsernames()`](#rollbackUpdateUsernames\(\)). This will simply free memory dedicated to mapping old usernames to new usernames.

        Parameters:

        `oldUsernames_` - the usernames to be updated

        `newUsernames_` - the usernames to which the old usernames will be updated

        `maxExpirationTimeInSeconds_` - the interval, in seconds, after `commitUpdateUsernames` has been called, after which the old usernames will expire. If this parameter is zero or a negative value the old usernames will expire instantly. After expiration, the old usernames will no longer be valid.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the length of `oldUsernames_` is not the same as the length of `newUsernames_`.

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is not a system administrator

        `[DuplicateNameException](../common/exceptions/DuplicateNameException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any `oldUsernames_` or `newUsernames_` contain any duplicates, or if an old username is being updated to a username that already exists

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### commitUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void commitUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Commits an update of usernames.

        This method should be preceded by a call to [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)). After the commit, the old usernames will be temporarily active, and will expire after the interval specified by `maxExpirationTimeInSeconds_`; if `commitUpdateUsernames` is not called, the new usernames will not become active.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### rollbackUpdateUsernames

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void rollbackUpdateUsernames()

        Deprecated.

        instead use [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\))

        DEPRECATED: See [`UserService.renameUsersByUuid(java.lang.String[], java.lang.String[])`](../personalization/UserService.html#renameUsersByUuid\(java.lang.String%5B%5D,java.lang.String%5B%5D\)) Rolls back an update of usernames.

        This method should be called if [`updateUsernames(String[], String[], long)`](#updateUsernames\(java.lang.String%5B%5D,java.lang.String%5B%5D,long\)) is unsuccessful. The rollback will simply free memory dedicated to mapping old usernames to new usernames.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### changePartitionPaths

        void changePartitionPaths([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") originalPath, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") newPath)

        Deprecated.

        Changes where collaboration files are stored from one path to another. This is method is useful when switching server environments. For example, if switching from Windows to Linux this method could change the partition path from c:\\collab to /home/usr/collab.

        Parameters:

        `originalPath` - The path where collaboration files were previously stored.

        `newPath` - The path where collaboration files will now be stored.

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### reloadProperties

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") void reloadProperties()

        Deprecated.

        reloading properties is now automatic, so this call is now unnecessary and does nothing.

        Reloads all database-level properties files (\*.xml, \*.properties) without interrupting API services

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### validate

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") validate()

        Deprecated.

        Runs validation tests against the database to check whether it is corrupt, and returns a line-separated list of validation results

        Returns:

        the validation results

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getSystemFolderId

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getSystemFolderId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name) throws [InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the folder id for a built-in system folder from among the following: image\_folder\_id leader\_message\_channel\_image\_folder\_id priority\_image\_folder\_id indicator\_image\_folder\_id This is a small wrapper on Content's getSystemId, but returns the content id as a folder id.

        Parameters:

        `name` - A case-insensitive system name

        Returns:

        the id of the folder mapped to that name.

        Throws:

        `[InvalidFolderException](../common/exceptions/InvalidFolderException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the symbolic folder is not registered.