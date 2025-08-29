---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/administration/AdministrationService.html
original_path: api/com/appiancorp/suiteapi/administration/AdministrationService.html
version: "25.3"
title: "Interface AdministrationService"
page_id: "api/com/appiancorp/suiteapi/administration/AdministrationService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.administration](package-summary.html)

# Interface AdministrationService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface AdministrationService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The AdministrationService pertains to the legacy admin console, which will be replaced by the Appian Administration Console over the coming releases.

Provides functionality related to the Administration Console

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final boolean`

    `[getPermissionsForAdminConsole$UPDATES](#getPermissionsForAdminConsole$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getSecurityForAdminConsole$UPDATES](#getSecurityForAdminConsole$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setActorsInRolesForAdminConsole$UPDATES](#setActorsInRolesForAdminConsole$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[setSecurityForAdminConsole$UPDATES](#setSecurityForAdminConsole$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[validateDatabase$UPDATES](#validateDatabase$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[AdminConsolePermissions](AdminConsolePermissions.html "class in com.appiancorp.suiteapi.administration")`

    `[getPermissionsForAdminConsole](#getPermissionsForAdminConsole\(\))()`

    Deprecated.

    Gets the permissions related to the Administration Console for the current user.

    `[Security](../common/Security.html "class in com.appiancorp.suiteapi.common")`

    `[getSecurityForAdminConsole](#getSecurityForAdminConsole\(\))()`

    Deprecated.

    Returns a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") bean containing the security settings for the Administration Console.

    `void`

    `[setActorsInRolesForAdminConsole](#setActorsInRolesForAdminConsole\(java.lang.String%5B%5D,java.lang.String%5B%5D%5B%5D,java.lang.Long%5B%5D,java.lang.String%5B%5D%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] users_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] userRoles_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] groups_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[][] groupRoles_)`

    Deprecated.

    Sets the permissions of users and groups for the Administration Console.

    `void`

    `[setSecurityForAdminConsole](#setSecurityForAdminConsole\(com.appiancorp.suiteapi.common.Security\))([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s_)`

    Deprecated.

    Updates (overwrites) the security settings for the Administration Console.

    `[DatabaseStatus](../portal/DatabaseStatus.html "class in com.appiancorp.suiteapi.portal")`

    `[validateDatabase](#validateDatabase\(int\))(int thoroughness_)`

    Deprecated.

    Performs validation on the database(s) associated with this service.

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### getPermissionsForAdminConsole$UPDATES

        static final boolean getPermissionsForAdminConsole$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdministrationService.getPermissionsForAdminConsole$UPDATES)

    -   ### setSecurityForAdminConsole$UPDATES

        static final boolean setSecurityForAdminConsole$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdministrationService.setSecurityForAdminConsole$UPDATES)

    -   ### getSecurityForAdminConsole$UPDATES

        static final boolean getSecurityForAdminConsole$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdministrationService.getSecurityForAdminConsole$UPDATES)

    -   ### setActorsInRolesForAdminConsole$UPDATES

        static final boolean setActorsInRolesForAdminConsole$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdministrationService.setActorsInRolesForAdminConsole$UPDATES)

    -   ### validateDatabase$UPDATES

        static final boolean validateDatabase$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.administration.AdministrationService.validateDatabase$UPDATES)

-   ## Method Details

    -   ### getPermissionsForAdminConsole

        [AdminConsolePermissions](AdminConsolePermissions.html "class in com.appiancorp.suiteapi.administration") getPermissionsForAdminConsole()

        Deprecated.

        Gets the permissions related to the Administration Console for the current user.

        Returns:

        The `AdminConsolePermissions` bean containing the privileges for the current user.

        Throws:

        `ServiceException` - if any system-level error occurs

    -   ### setSecurityForAdminConsole

        void setSecurityForAdminConsole([Security](../common/Security.html "class in com.appiancorp.suiteapi.common") s\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Updates (overwrites) the security settings for the Administration Console.

        Parameters:

        `s_` - The [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") bean which contains the new security settings. All fields other than `native` in the `Security` object will be ignored. The native rolemap should be of type [`AdminConsoleRoleMap`](AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration")

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to change the security settings. A user must be an [`AdminConsoleRoleMap.EDITOR`](AdminConsoleRoleMap.html#EDITOR) or a system administrator in order to change the security settings.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any user in the `Security` object's rolemap does not exist

        `ServiceException` - if any system-level error occurs

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group does not exist

        See Also:

        -   [`getSecurityForAdminConsole()`](#getSecurityForAdminConsole\(\))

    -   ### getSecurityForAdminConsole

        [Security](../common/Security.html "class in com.appiancorp.suiteapi.common") getSecurityForAdminConsole()

        Deprecated.

        Returns a [`Security`](../common/Security.html "class in com.appiancorp.suiteapi.common") bean containing the security settings for the Administration Console. The `native` field of the returned `Security` will be populated with a role map of type [`AdminConsoleRoleMap`](AdminConsoleRoleMap.html "class in com.appiancorp.suiteapi.administration"); the `inheritable` field will be `null`.

        Returns:

        A `Security` bean containing the security settings for the Administration Console.

        Throws:

        `ServiceException` - if any system-level error occurs

        See Also:

        -   [`setSecurityForAdminConsole(Security)`](#setSecurityForAdminConsole\(com.appiancorp.suiteapi.common.Security\))

    -   ### setActorsInRolesForAdminConsole

        void setActorsInRolesForAdminConsole([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] users\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] userRoles\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] groups\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\]\[\] groupRoles\_) throws [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Sets the permissions of users and groups for the Administration Console. This method will only update the roles for users and groups which are specified in the parameters. To overwrite roles for all users and groups use [`setSecurityForAdminConsole(Security)`](#setSecurityForAdminConsole\(com.appiancorp.suiteapi.common.Security\))

        Parameters:

        `users_` - the list of users (user names) whose roles are to be added/modified This parameter can be null, as long as `userRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown. If the first dimension of both arrays is not the same length, then an ArrayIndexOutOfBoundsException will be thrown.

        `userRoles_` - a 2-dimensional array of size \[users\_.length\]. The String array userRoles\_\[i\] represents the roles which users\_\[i\] will have. (If this array is null or zero-length, the user has no explicit permissions in the Admin Console RoleMap). It is legal to have nulls within the array.

        `groups_` - the list of groups whose roles are to be added/modified This parameter can be null, as long as `groupRoles_` is also null. If one is null and the other is not, a NullPointerException will be thrown. If the first dimension of both arrays is not the same length, then an ArrayIndexOutOfBoundsException will be thrown.

        `groupRoles_` - a 2-dimentional array of size \[groups\_.length\]. The String array groupRoles\_\[i\] represents the roles which groups\_\[i\] will have. (If this array is null or zero-length, the group has no explicit permissions in the Admin Console RoleMap). It is legal to have nulls within the array for a particular group(s).

        Throws:

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have sufficient privileges to update the roles. A user must be an [`AdminConsoleRoleMap.EDITOR`](AdminConsoleRoleMap.html#EDITOR) or a system administrator to change the security settings.

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the users in `users_` do not exist.

        `ServiceException` - if any system-level error occurs

        `[InvalidGroupException](../common/exceptions/InvalidGroupException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the group doesn't exist

    -   ### validateDatabase

        [DatabaseStatus](../portal/DatabaseStatus.html "class in com.appiancorp.suiteapi.portal") validateDatabase(int thoroughness\_)

        Deprecated.

        Performs validation on the database(s) associated with this service.

        Parameters:

        `thoroughness_` - indicates the level of thoroughness of the query. Values are [`DatabaseStatus.QUICK`](../portal/DatabaseStatus.html#QUICK) and [`DatabaseStatus.SLOW`](../portal/DatabaseStatus.html#SLOW)

        Returns:

        a `DatabaseStatus` object encapsulating the results of the validation query.