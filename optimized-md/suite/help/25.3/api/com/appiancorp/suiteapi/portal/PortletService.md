---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PortletService.html
original_path: api/com/appiancorp/suiteapi/portal/PortletService.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Interface PortletService

All Superinterfaces:

`com.appiancorp.services.ContextSensitiveService`, `[Service](../../services/Service.html "interface in com.appiancorp.services")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public interface PortletService extends com.appiancorp.services.ContextSensitiveService

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

This interface defines methods for access to and modification of portlets.

Portlets may have their own security settings, or they may inherit the security settings of the page on which they exist. Portlets may also be shared, so that the same portlet can be placed on several different pages.

Methods of service classes can all throw the unchecked exception [`ServiceException`](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions") if any system-level error (for example, server failure) occurs, and will in general throw a checked exception (`InvalidXXXException`) when an entity to be retrieved is inaccessible, instead of returning `null`. Exceptions to this paradigm (including the use of `ResultList` as described below) are noted. All checked exceptions extend [`AppianException`](../../exceptions/AppianException.html "class in com.appiancorp.exceptions").

It may be necessary to retrieve a subset of results as opposed to an entire collection, and also to sort the subset by some property of the returned object. "Paging" methods which return a [`ResultPage`](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") are provided in certain instances for this purpose. The `ResultPage` will contain the sorted subset of results (via [`Result.getResults()`](../common/Result.html#getResults\(\))), and the total number of items in the available result set (via [`ResultPage.getAvailableItems()`](../common/ResultPage.html#getAvailableItems\(\))).

It may also be necessary to retrieve some results, even if all results cannot be retrieved (for instance, some of the entities corresponding to a list of entity IDs may no longer exist). Methods which return a [`ResultList`](../common/ResultList.html "class in com.appiancorp.suiteapi.common") are provided for this purpose. The [`Result.getResults()`](../common/Result.html#getResults\(\)) method in this case will return all results which can be retrieved. In addition, there will be a list of result codes ([`ResultList.getResultCodes()`](../common/ResultList.html#getResultCodes\(\))) that represent the successful retrieval of an entity, or, if the entity could not be retrieved, the reason for the failure. See the `CODE_XXX` constants in `ResultList` for details.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTIVE_AND_DEACTIVATED_PORTLET](#ACTIVE_AND_DEACTIVATED_PORTLET)`

    Deprecated.

    A constant used to indicate both activated and deactivated portlets will be included from portlet searches

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[ACTIVE_PORTLET](#ACTIVE_PORTLET)`

    Deprecated.

    A constant used to indicate only activated portlets will be included from portlet searches

    `static final boolean`

    `[createPortlet$UPDATES](#createPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[createPortlets$UPDATES](#createPortlets$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[DEACTIVATED_PORTLET](#DEACTIVATED_PORTLET)`

    Deprecated.

    A constant used to indicate only deactivated portlets will be included from portlet searches

    `static final boolean`

    `[findPortlets$UPDATES](#findPortlets$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[findPortletsPaging$UPDATES](#findPortletsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForPortlet$UPDATES](#getAccessLevelForPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getAccessLevelForPortlets$UPDATES](#getAccessLevelForPortlets$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getInheritedRoleMapForPortlet$UPDATES](#getInheritedRoleMapForPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortlet$UPDATES](#getPortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortlets$UPDATES](#getPortlets$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortletsList$UPDATES](#getPortletsList$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getPortletsPaging$UPDATES](#getPortletsPaging$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[getRoleMapForPortlet$UPDATES](#getRoleMapForPortlet$UPDATES)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[NO_PAGE](#NO_PAGE)`

    Deprecated.

    A constant used to indicate that no pages will be excluded from portlet searches

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PORTLET_LIST_CODE_ADMIN](#PORTLET_LIST_CODE_ADMIN)`

    Deprecated.

    A constant used to indicate that the user can administer the requested portlet.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PORTLET_LIST_CODE_EDITOR](#PORTLET_LIST_CODE_EDITOR)`

    Deprecated.

    A constant used to indicate that the user can edit the requested portlet.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PORTLET_LIST_CODE_INVALID](#PORTLET_LIST_CODE_INVALID)`

    Deprecated.

    A constant used to indicate that the requested portlet id was not valid.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PORTLET_LIST_CODE_NO_PERMISSIONS](#PORTLET_LIST_CODE_NO_PERMISSIONS)`

    Deprecated.

    A constant used to indicate that the user does not have adequate privileges to retrieve the requested portlet.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[PORTLET_LIST_CODE_VIEWER](#PORTLET_LIST_CODE_VIEWER)`

    Deprecated.

    A constant used to indicate that the user can view the requested portlet.

    `static final boolean`

    `[setRoleMapForPortlet$UPDATES](#setRoleMapForPortlet$UPDATES)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SHARED_AND_UNSHARED_PORTLET](#SHARED_AND_UNSHARED_PORTLET)`

    Deprecated.

    A constant used to indicate both shared and unshared portlets will be included from portlet searches

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SHARED_PORTLET](#SHARED_PORTLET)`

    Deprecated.

    A constant used to indicate only shared portlets will be included from portlet searches

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[UNSHARED_PORTLET](#UNSHARED_PORTLET)`

    Deprecated.

    A constant used to indicate only unshared portlets will be included from portlet searches

    `static final boolean`

    `[unsharePortlet$UPDATES](#unsharePortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortlet$UPDATES](#updatePortlet$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortletParameters$UPDATES](#updatePortletParameters$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortlets$UPDATES](#updatePortlets$UPDATES)`

    Deprecated.

     

    `static final boolean`

    `[updatePortletsParameters$UPDATES](#updatePortletsParameters$UPDATES)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.services.ContextSensitiveService

    `SET_SERVICE_CONTEXT_METHOD_NAME`

-   ## Method Summary

    All MethodsInstance MethodsAbstract MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[createPortlet](#createPortlet\(com.appiancorp.suiteapi.portal.Portlet\))([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal") p_)`

    Deprecated.

    Creates a portlet.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[createPortlets](#createPortlets\(com.appiancorp.suiteapi.portal.Portlet%5B%5D\))([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[] ps_)`

    Deprecated.

    Creates portlets in bulk.

    `[Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[]`

    `[findPortlets](#findPortlets\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sharedType_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state_)`

    Deprecated.

    use [`findPortletsPaging(java.lang.String, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Integer, int, int, java.lang.Integer, java.lang.Integer)`](#findPortletsPaging\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[findPortletsPaging](#findPortletsPaging\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sharedType_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a ResultPage containing a list of portlets of the given type obtained by searching for a string in name/description.

    `int`

    `[getAccessLevelForPortlet](#getAccessLevelForPortlet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Gets the current user's access level for the specified portlet.

    `int[]`

    `[getAccessLevelForPortlets](#getAccessLevelForPortlets\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_)`

    Deprecated.

    Gets the current user's access level for the specified portlets.

    `[PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")`

    `[getInheritedRoleMapForPortlet](#getInheritedRoleMapForPortlet\(java.lang.Long,java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_)`

    Deprecated.

    Returns the role map that the portlet inherits from its page.

    `[Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")`

    `[getPortlet](#getPortlet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Gets a portlet

    `[Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[]`

    `[getPortlets](#getPortlets\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_)`

    Deprecated.

    use [`getPortletsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getPortletsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

    `[ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common")`

    `[getPortletsList](#getPortletsList\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_)`

    Deprecated.

    Returns a ResultList containing [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal") instances for valid ids and result codes for all ids.

    `[ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common")`

    `[getPortletsPaging](#getPortletsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_, int startIndex_, int batchSize_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder_)`

    Deprecated.

    Gets a ResultPage containing a list of portlets as specified by the portlet ids

    `[PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")`

    `[getRoleMapForPortlet](#getRoleMapForPortlet\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_)`

    Deprecated.

    Get the role map for a portlet NOTE: This should not be used to verify the access level that the current user has on the portlet because the access level can depend on other properties of the portlet such as `inheritsSecurity` and `shareable`.

    `void`

    `[setRoleMapForPortlet](#setRoleMapForPortlet\(java.lang.Long,com.appiancorp.suiteapi.portal.PortalRoleMap\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") map_)`

    Deprecated.

    Set the role map for a portlet

    `void`

    `[unsharePortlet](#unsharePortlet\(java.lang.Long,java.lang.Long,boolean\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId_, boolean force_)`

    Deprecated.

    Make a shared portlet non-shareable and clear it's uuid if it has one.

    `void`

    `[updatePortlet](#updatePortlet\(com.appiancorp.suiteapi.portal.Portlet\))([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal") portlet_)`

    Deprecated.

    Update a portlet In order to update a portlet the fields following fields must be populated: `id`, `shareable`, `inheritsSecurity`, `portletType`, `name`, `frame`, `public`.

    `void`

    `[updatePortletParameters](#updatePortletParameters\(java.lang.Long,java.util.Map\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") parameterValueMap_)`

    Deprecated.

    Update the portlet's name/value pairs of its parameters

    `void`

    `[updatePortlets](#updatePortlets\(com.appiancorp.suiteapi.portal.Portlet%5B%5D\))([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[] portlets_)`

    Deprecated.

    Update portlets in bulk.

    `void`

    `[updatePortletsParameters](#updatePortletsParameters\(java.lang.Long%5B%5D,java.util.Map%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] portletIds_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")[] parameterValueMaps_)`

    Deprecated.

    Update the portlets' name/value pairs of their parameters

    ### Methods inherited from interface com.appiancorp.services.ContextSensitiveService

    `setServiceContext`

-   ## Field Details

    -   ### NO\_PAGE

        static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") NO\_PAGE

        Deprecated.

        A constant used to indicate that no pages will be excluded from portlet searches

    -   ### SHARED\_AND\_UNSHARED\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SHARED\_AND\_UNSHARED\_PORTLET

        Deprecated.

        A constant used to indicate both shared and unshared portlets will be included from portlet searches

    -   ### SHARED\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SHARED\_PORTLET

        Deprecated.

        A constant used to indicate only shared portlets will be included from portlet searches

    -   ### UNSHARED\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") UNSHARED\_PORTLET

        Deprecated.

        A constant used to indicate only unshared portlets will be included from portlet searches

    -   ### ACTIVE\_AND\_DEACTIVATED\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTIVE\_AND\_DEACTIVATED\_PORTLET

        Deprecated.

        A constant used to indicate both activated and deactivated portlets will be included from portlet searches

    -   ### ACTIVE\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") ACTIVE\_PORTLET

        Deprecated.

        A constant used to indicate only activated portlets will be included from portlet searches

    -   ### DEACTIVATED\_PORTLET

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") DEACTIVATED\_PORTLET

        Deprecated.

        A constant used to indicate only deactivated portlets will be included from portlet searches

    -   ### PORTLET\_LIST\_CODE\_INVALID

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PORTLET\_LIST\_CODE\_INVALID

        Deprecated.

        A constant used to indicate that the requested portlet id was not valid.

    -   ### PORTLET\_LIST\_CODE\_NO\_PERMISSIONS

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PORTLET\_LIST\_CODE\_NO\_PERMISSIONS

        Deprecated.

        A constant used to indicate that the user does not have adequate privileges to retrieve the requested portlet.

    -   ### PORTLET\_LIST\_CODE\_VIEWER

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PORTLET\_LIST\_CODE\_VIEWER

        Deprecated.

        A constant used to indicate that the user can view the requested portlet.

    -   ### PORTLET\_LIST\_CODE\_EDITOR

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PORTLET\_LIST\_CODE\_EDITOR

        Deprecated.

        A constant used to indicate that the user can edit the requested portlet.

    -   ### PORTLET\_LIST\_CODE\_ADMIN

        static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") PORTLET\_LIST\_CODE\_ADMIN

        Deprecated.

        A constant used to indicate that the user can administer the requested portlet.

    -   ### getAccessLevelForPortlet$UPDATES

        static final boolean getAccessLevelForPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getAccessLevelForPortlet$UPDATES)

    -   ### getAccessLevelForPortlets$UPDATES

        static final boolean getAccessLevelForPortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getAccessLevelForPortlets$UPDATES)

    -   ### createPortlet$UPDATES

        static final boolean createPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.createPortlet$UPDATES)

    -   ### createPortlets$UPDATES

        static final boolean createPortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.createPortlets$UPDATES)

    -   ### getPortlet$UPDATES

        static final boolean getPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getPortlet$UPDATES)

    -   ### getPortletsPaging$UPDATES

        static final boolean getPortletsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getPortletsPaging$UPDATES)

    -   ### getPortletsList$UPDATES

        static final boolean getPortletsList$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getPortletsList$UPDATES)

    -   ### getPortlets$UPDATES

        static final boolean getPortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getPortlets$UPDATES)

    -   ### findPortletsPaging$UPDATES

        static final boolean findPortletsPaging$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.findPortletsPaging$UPDATES)

    -   ### findPortlets$UPDATES

        static final boolean findPortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.findPortlets$UPDATES)

    -   ### updatePortlet$UPDATES

        static final boolean updatePortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.updatePortlet$UPDATES)

    -   ### updatePortlets$UPDATES

        static final boolean updatePortlets$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.updatePortlets$UPDATES)

    -   ### updatePortletParameters$UPDATES

        static final boolean updatePortletParameters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.updatePortletParameters$UPDATES)

    -   ### updatePortletsParameters$UPDATES

        static final boolean updatePortletsParameters$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.updatePortletsParameters$UPDATES)

    -   ### unsharePortlet$UPDATES

        static final boolean unsharePortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.unsharePortlet$UPDATES)

    -   ### getRoleMapForPortlet$UPDATES

        static final boolean getRoleMapForPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getRoleMapForPortlet$UPDATES)

    -   ### setRoleMapForPortlet$UPDATES

        static final boolean setRoleMapForPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.setRoleMapForPortlet$UPDATES)

    -   ### getInheritedRoleMapForPortlet$UPDATES

        static final boolean getInheritedRoleMapForPortlet$UPDATES

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletService.getInheritedRoleMapForPortlet$UPDATES)

-   ## Method Details

    -   ### getAccessLevelForPortlet

        int getAccessLevelForPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the current user's access level for the specified portlet.

        Parameters:

        `portletId_` - The id of the portlet for which the user's access level is to be determined.

        Returns:

        The access level. This is one of the `PORTLET_ACCESS_LEVEL_XXX` constants in [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal")

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the specified portlet does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getAccessLevelForPortlets

        int\[\] getAccessLevelForPortlets([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets the current user's access level for the specified portlets.

        Parameters:

        `portletIds_` - The ids of the portlets for which the user's access level is to be determined.

        Returns:

        The access levels. Each access level is one of the `PORTLET_ACCESS_LEVEL_XXX` constants in [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal")

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the the specified portlets do not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### createPortlet

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") createPortlet([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal") p\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates a portlet. In order to create a portlet the fields following fields must be populated: `shareable`, `inheritsSecurity`, `portletType`, `name`, `frame`, `public`. Portlet types can be retrieved from [`AdministrationService.getPortletTypes()`](AdministrationService.html#getPortletTypes\(\))

        Parameters:

        `p_` - the new portlet

        Returns:

        the id of the newly created portlet

        Throws:

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet to be created would be sharable and would also inherit security

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet type specified is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `parameters` map of the portlet is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of the portlet already exists

    -   ### createPortlets

        [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] createPortlets([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\] ps\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Creates portlets in bulk. See [`createPortlet(Portlet)`](#createPortlet\(com.appiancorp.suiteapi.portal.Portlet\)).

        Parameters:

        `ps_` - the new portlets

        Returns:

        the ids of the newly created portlets

        Throws:

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet to be created would be sharable and would also inherit security

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet type specified is invalid

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `parameters` map of any of the portlets is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[DuplicateUuidException](../common/exceptions/DuplicateUuidException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the UUID of any of the portlets already exists or if the same UUID is passed in for several portlets

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPortlet

        [Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal") getPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a portlet

        Parameters:

        `portletId_` - the id of the portlet

        Returns:

        the portlet

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, and portlets of this portlet type are denied to anonymous users. The portlet types that anonymous users cannot see are configurable. See application documentation for further details.

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPortletsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") getPortletsPaging([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a ResultPage containing a list of portlets as specified by the portlet ids

        Parameters:

        `portletIds_` - the list of portlet ids

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Use [`Constants.COUNT_ALL`](../common/Constants.html#COUNT_ALL) to return the entire collection, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing a list of `Portlet` objects

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, and any of the portlets is of a type that is denied to anonymous users. The portlet types that anonymous users cannot see are configurable. See application documentation for further details.

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPortletsList

        [ResultList](../common/ResultList.html "class in com.appiancorp.suiteapi.common") getPortletsList([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_)

        Deprecated.

        Returns a ResultList containing [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal") instances for valid ids and result codes for all ids. The result codes will be one of the `PORTLET_LIST_CODE_` constants on this interface.

        Parameters:

        `portletIds_` - the ids of the portlets to retrieve

        Returns:

        `ResultList` containing `Portlet` objects

        Throws:

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getPortlets

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\] getPortlets([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`getPortletsPaging(java.lang.Long[], int, int, java.lang.Integer, java.lang.Integer)`](#getPortletsPaging\(java.lang.Long%5B%5D,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets a list of portlets as specified by the portlet ids

        Parameters:

        `portletIds_` - the list of portlet ids

        Returns:

        an array of portlets

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user is anonymous, and any of the portlets is of a type that is denied to anonymous users. The portlet types that anonymous users cannot see are configurable. See application documentation for further details.

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any of the portlets is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findPortletsPaging

        [ResultPage](../common/ResultPage.html "class in com.appiancorp.suiteapi.common") findPortletsPaging([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sharedType\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state\_, int startIndex\_, int batchSize\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortProperty\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sortOrder\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Gets a ResultPage containing a list of portlets of the given type obtained by searching for a string in name/description. Only returns portlets that can be seen by the user calling the function. Portlets that are on page `p_` are excluded from the results returned (`p_` can be used to avoid returning portlets that could not be added to page `p` - since you can't put the same portlet on the same page twice). If `p_` is `NO_PAGE`, results are not excluded.

        Parameters:

        `type_` - the type of the portlet

        `searchTerms_` - the search string

        `p_` - exclude portlets that are on this page, unless the page is `NO_PAGE`

        `sharedType_` - whether portlet is shared or not. Valid values are:

        -   SHARED\_AND\_UNSHARED\_PORTLET
        -   SHARED\_PORTLET
        -   UNSHARED\_PORTLET

        `state_` - state of portlets being searched. Valid values are:

        -   ACTIVE\_AND\_DEACTIVATED\_PORTLET
        -   ACTIVE\_PORTLET
        -   DEACTIVATED\_PORTLET

        `startIndex_` - the index into the collection of total results at which to start. Negative numbers are treated as zeros.

        `batchSize_` - the number of results to return. Negative numbers will result in the entire collection being returned, but this is STRONGLY discouraged.

        `sortProperty_` - the property by which the results will be sorted. This is one of the `SORT_BY_XXX` constants in [`Portlet`](Portlet.html "class in com.appiancorp.suiteapi.portal")

        `sortOrder_` - The order in which to sort the results. This is either [`Constants.SORT_ORDER_ASCENDING`](../common/Constants.html#SORT_ORDER_ASCENDING) or [`Constants.SORT_ORDER_DESCENDING`](../common/Constants.html#SORT_ORDER_DESCENDING)

        Returns:

        a ResultPage containing a list of `Portlet` beans

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if page `p_` does not exist and `p_` is not `NO_PAGE`

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet type does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### findPortlets

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\] findPortlets([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") type\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") searchTerms\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") sharedType\_, [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") state\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        use [`findPortletsPaging(java.lang.String, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Integer, int, int, java.lang.Integer, java.lang.Integer)`](#findPortletsPaging\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer,int,int,java.lang.Integer,java.lang.Integer\)) instead

        Gets a list of shared portlets obtained by searching for a string in name/description. Only returns portlets that can be seen by the user calling the function. Portlets that are on page `p_` are excluded from the results returned (`p_` can be used to avoid returning portlets that could not be added to page `p` - since you can't put the same portlet on the same page twice). If `p_` is `NO_PAGE`, results are not excluded.

        Parameters:

        `type_` - the type of the portlet

        `searchTerms_` - the search string

        `p_` - exclude portlets that are on this page, unless the page is `NO_PAGE`

        `sharedType_` - whether portlet is shared or not. Valid values are:

        -   SHARED\_AND\_UNSHARED\_PORTLET
        -   SHARED\_PORTLET
        -   UNSHARED\_PORTLET

        `state_` - state of portlets being searched. Valid values are:

        -   ACTIVE\_AND\_DEACTIVATED\_PORTLET
        -   ACTIVE\_PORTLET
        -   DEACTIVATED\_PORTLET

        Returns:

        a list of portlet beans

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if page `p_` does not exist and `p_` is not `NO_PAGE`

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet type does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updatePortlet

        void updatePortlet([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal") portlet\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update a portlet In order to update a portlet the fields following fields must be populated: `id`, `shareable`, `inheritsSecurity`, `portletType`, `name`, `frame`, `public`. Portlet types can be retrieved from [`AdministrationService.getPortletTypes()`](AdministrationService.html#getPortletTypes\(\))

        Parameters:

        `portlet_` - the portlet to update

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have editor privileges or greater for the portlet

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet to be updated would be sharable and would also inherit security

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if one attempts to unshare a sharable portlet from this method (use [`unsharePortlet(java.lang.Long, java.lang.Long, boolean)`](#unsharePortlet\(java.lang.Long,java.lang.Long,boolean\)) for this purpose) or if the `parameters` map of the portlet is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet is invalid

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the portlet type is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updatePortlets

        void updatePortlets([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\] portlets\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update portlets in bulk. See [`updatePortlet(Portlet)`](#updatePortlet\(com.appiancorp.suiteapi.portal.Portlet\))

        Parameters:

        `portlets_` - the portlets to update

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have editor privileges or greater for the portlet

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet to be updated would be sharable and would also inherit security

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if one attempts to unshare a sharable portlet from this method (use [`unsharePortlet(java.lang.Long, java.lang.Long, boolean)`](#unsharePortlet\(java.lang.Long,java.lang.Long,boolean\)) for this purpose) or if the `parameters` map of any portlet is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet is invalid

        `[InvalidPortletTypeException](../common/exceptions/InvalidPortletTypeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet type is invalid

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updatePortletParameters

        void updatePortletParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") parameterValueMap\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the portlet's name/value pairs of its parameters

        Parameters:

        `portletId_` - the id of the portlet

        `parameterValueMap_` - a map containing name/value pairs. Names must be single words, starting with a letter and containing only \_, numbers and letters in the basic US character set. Values should be of type `String`, though future implementations (and experimentally, the current one) may allow other datatypes.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have editor privileges or greater for the portlet

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `parameters` map of the portlet is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### updatePortletsParameters

        void updatePortletsParameters([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] portletIds\_, [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")\[\] parameterValueMaps\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Update the portlets' name/value pairs of their parameters

        Parameters:

        `portletIds_` - the ids of the portlets

        `parameterValueMaps_` - maps containing name/value pairs. Names must be single words, starting with a letter and containing only \_, numbers and letters in the basic US character set. Values should be of type `String`, though future implementations (and experimentally, the current one) may allow other datatypes.

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have editor privileges or greater for the portlet

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if any portlet does not exist

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the `parameters` map of any portlet is not `null`, but does not meet the requirements specified by [`Portlet.getParameters()`](Portlet.html#getParameters\(\))

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### unsharePortlet

        void unsharePortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_, boolean force\_) throws [IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang"), [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Make a shared portlet non-shareable and clear it's uuid if it has one.

        Parameters:

        `portletId_` - the id of the portlet to unshare

        `pageId_` - the id of the page to keep the portlet on (`null` means don't keep on any page)

        `force_` - if `true`, delete from all pages other than `pageId_`; otherwise, throw PortletSharingException if portlet is on pages other than `pageId_`

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have editor privileges or greater for the portlet

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if `pageId_` is not `null`, and the specified portlet is not on the specified page

        `[PortletSharingException](../common/exceptions/PortletSharingException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if `force_` is `false` and the specified portlet is on pages other than the specified page

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet does not exist

        `[InvalidPageException](../common/exceptions/InvalidPageException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the page does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getRoleMapForPortlet

        [PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") getRoleMapForPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_) throws [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Get the role map for a portlet NOTE: This should not be used to verify the access level that the current user has on the portlet because the access level can depend on other properties of the portlet such as `inheritsSecurity` and `shareable`.

        Parameters:

        `portletId_` - the id of the portlet

        Returns:

        rolemap for the portlet

        Throws:

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### setRoleMapForPortlet

        void setRoleMapForPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") map\_) throws [InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions"), [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions"), [PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Set the role map for a portlet

        Parameters:

        `portletId_` - the id of the portlet

        `map_` - the new rolemap of the portlet

        Throws:

        `[InvalidAnonymousUserException](../common/exceptions/InvalidAnonymousUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user is anonymous, but anonymous access has not been enabled

        `[InvalidUserException](../common/exceptions/InvalidUserException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the user calling this method is invalid privileges or greater for the portlet

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet does not exist

        `[PrivilegeException](../common/exceptions/PrivilegeException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the current user does not have admin privileges or greater for the portlet

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs

    -   ### getInheritedRoleMapForPortlet

        [PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") getInheritedRoleMapForPortlet([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") portletId\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pageId\_) throws [InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Deprecated.

        Returns the role map that the portlet inherits from its page. If the portlet does not inherit security from its page, an empty role map is returned.

        Parameters:

        `portletId_` - the id of the portlet

        `pageId_` - the id of the page

        Returns:

        The role map for the portlet specified by the given id

        Throws:

        `[InvalidPortletException](../common/exceptions/InvalidPortletException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if portlet does not exist

        `[ServiceException](../../services/exceptions/ServiceException.html "class in com.appiancorp.services.exceptions")` - if any system-level error occurs