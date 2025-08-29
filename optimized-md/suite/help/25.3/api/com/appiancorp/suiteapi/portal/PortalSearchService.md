---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PortalSearchService.html
original_path: api/com/appiancorp/suiteapi/portal/PortalSearchService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface PortalSearchService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface PortalSearchService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Provides search functionality related to the Portal application

Method [`generateSearchIndex(java.sql.Timestamp)`](#generateSearchIndex\(java.sql.Timestamp\)) wil generate an index file for all pages and portlets created or updated after a particular time. This index file can be used by the search engine to facilitate searching on pages and portlets.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

See Also:

-   [`PageService`](PageService.html "interface in com.appiancorp.suiteapi.portal")
-   [`NotificationService`](NotificationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortletService`](PortletService.html "interface in com.appiancorp.suiteapi.portal")
-   [`PortalNotificationService`](PortalNotificationService.html "interface in com.appiancorp.suiteapi.portal")

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ADMIN](#ADMIN)`

    Deprecated.

    Constant for indicating that the current user has administrative access to the page or portlet

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[CANTSEE](#CANTSEE)`

    Deprecated.

    Constant for indicating that the current user cannot see the page or portlet

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[EDITOR](#EDITOR)`

    Deprecated.

    Constant for indicating that the current user has editor access to the page or portlet

    `static final boolean`

    `[generateSearchIndex$UPDATES](#generateSearchIndex$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForPageIds$UPDATES](#getPermissionsForPageIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForPageIdsForUser$UPDATES](#getPermissionsForPageIdsForUser$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForPortletIds$UPDATES](#getPermissionsForPortletIds$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPermissionsForPortletIdsForUser$UPDATES](#getPermissionsForPortletIdsForUser$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PAGE_VER_DRAFT](#PAGE_VER_DRAFT)`

    Deprecated.

    Constant indicating that the page is in draft state

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PAGE_VER_PUBLISHED](#PAGE_VER_PUBLISHED)`

    Deprecated.

    Constant indicating that the page is in published state

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[READER](#READER)`

    Deprecated.

    Constant for indicating that the current user has read-only access to the page or portlet

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

    Generates search index bodies for: [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal") and [`Page`](Page.html "class in com.appiancorp.suiteapi.portal")

    `int[]`

    `[getPermissionsForPageIds](#getPermissionsForPageIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Gets the permissions for the current user for the pages with the specified ids

    `int[]`

    `[getPermissionsForPageIdsForUser](#getPermissionsForPageIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions for the given user for the pages with the specified ids

    `int[]`

    `[getPermissionsForPortletIds](#getPermissionsForPortletIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_)`

    Deprecated.

    Gets the permissions for the current user for the portlets with the specified ids

    `int[]`

    `[getPermissionsForPortletIdsForUser](#getPermissionsForPortletIdsForUser\(java.lang.Long%5B%5D,java.lang.String\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] ids_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName_)`

    Deprecated.

    Gets the permissions for the given user for the portlets with the specified ids

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### CANTSEE

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") CANTSEE

        Deprecated.

        Constant for indicating that the current user cannot see the page or portlet

    -   ### READER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") READER

        Deprecated.

        Constant for indicating that the current user has read-only access to the page or portlet

    -   ### EDITOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") EDITOR

        Deprecated.

        Constant for indicating that the current user has editor access to the page or portlet

    -   ### ADMIN

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ADMIN

        Deprecated.

        Constant for indicating that the current user has administrative access to the page or portlet

    -   ### PAGE\_VER\_DRAFT

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PAGE\_VER\_DRAFT

        Deprecated.

        Constant indicating that the page is in draft state

    -   ### PAGE\_VER\_PUBLISHED

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PAGE\_VER\_PUBLISHED

        Deprecated.

        Constant indicating that the page is in published state

    -   ### generateSearchIndex$UPDATES

        static final boolean generateSearchIndex$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalSearchService.generateSearchIndex$UPDATES)

    -   ### getPermissionsForPageIds$UPDATES

        static final boolean getPermissionsForPageIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalSearchService.getPermissionsForPageIds$UPDATES)

    -   ### getPermissionsForPageIdsForUser$UPDATES

        static final boolean getPermissionsForPageIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalSearchService.getPermissionsForPageIdsForUser$UPDATES)

    -   ### getPermissionsForPortletIds$UPDATES

        static final boolean getPermissionsForPortletIds$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalSearchService.getPermissionsForPortletIds$UPDATES)

    -   ### getPermissionsForPortletIdsForUser$UPDATES

        static final boolean getPermissionsForPortletIdsForUser$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortalSearchService.getPermissionsForPortletIdsForUser$UPDATES)

-   ## Method Details

    -   ### generateSearchIndex

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") generateSearchIndex([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStamp\_)

        Deprecated.

        Generates search index bodies for: [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal") and [`Page`](Page.html "class in com.appiancorp.suiteapi.portal")

        Parameters:

        `timeStamp_` - only include portlets and pagess modified since this time; pass `null` to do a full indexing

        Returns:

        filename of search index output

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPermissionsForPageIds

        int\[\] getPermissionsForPageIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions for the current user for the pages with the specified ids

        Parameters:

        `ids_` - of pages for which to return the permission levels

        Returns:

        array of same size as `ids_`, where each element is a constant representing access privileges for the current user to the given page. The possible return values are:

        -   [`CANTSEE`](#CANTSEE)
        -   [`READER`](#READER)
        -   [`EDITOR`](#EDITOR)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

    -   ### getPermissionsForPageIdsForUser

        int\[\] getPermissionsForPageIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions for the given user for the pages with the specified ids

        Parameters:

        `ids_` - of pages for which to return the permission levels

        `userName_` - the user name to find the access privileges of

        Returns:

        array of same size as `ids_`, where each element is a constant representing access permissions for the user with the given user name to the page with the given id. The possible return values are:

        -   [`CANTSEE`](#CANTSEE)
        -   [`READER`](#READER)
        -   [`EDITOR`](#EDITOR)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

    -   ### getPermissionsForPortletIds

        int\[\] getPermissionsForPortletIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions for the current user for the portlets with the specified ids

        Parameters:

        `ids_` - of portlets for which to return the permission levels

        Returns:

        array of same size as ids, where each member is a constant representing access capabilities for the current user to the given portlet. The possible return values are:

        -   [`CANTSEE`](#CANTSEE)
        -   [`READER`](#READER)
        -   [`EDITOR`](#EDITOR)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled

    -   ### getPermissionsForPortletIdsForUser

        int\[\] getPermissionsForPortletIdsForUser([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] ids\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") userName\_) throws [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the permissions for the given user for the portlets with the specified ids

        Parameters:

        `ids_` - IDs of portlets for which to return the permission levels

        `userName_` - user name to find the access capabilities for

        Returns:

        array of same size as `ids_`, where each element is a constant representing access permissions for the user with the given userName to the given portlet. The possible return values are:

        -   [`CANTSEE`](#CANTSEE)
        -   [`READER`](#READER)
        -   [`EDITOR`](#EDITOR)
        -   [`ADMIN`](#ADMIN)

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is anonymous, but anonymous access has not been enabled