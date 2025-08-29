---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/Page.html
original_path: api/com/appiancorp/suiteapi/portal/Page.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class Page

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.portal.PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")

com.appiancorp.suiteapi.portal.Page

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") [@PageDataType](PageDataType.html "annotation interface in com.appiancorp.suiteapi.portal") public class Page extends [PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Holds all the information about a portal page necessary for rendering. A Portal page has no contingent information (thus it can be cached across users and time) except for its state (see [`getState()`](#getState\(\))), which depends on the method used to retrieve the page object and the user. If a caching mechanism is implemented for page rendering, the state field should be ignored when the page object is retrieved from the cache.

See Also:

-   [`PageService`](PageService.html "interface in com.appiancorp.suiteapi.portal")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.Page)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ACCESS_LEVEL](#SORT_BY_ACCESS_LEVEL)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_APPROVAL_REQUIRED](#SORT_BY_APPROVAL_REQUIRED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CATEGORY_ID](#SORT_BY_CATEGORY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_MODIFIED](#SORT_BY_DATE_MODIFIED)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DRAFT_OWNER](#SORT_BY_DRAFT_OWNER)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP](#SORT_BY_GROUP)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MODIFIER](#SORT_BY_MODIFIER)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PUBLIC](#SORT_BY_PUBLIC)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STATE](#SORT_BY_STATE)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TEMPLATE](#SORT_BY_TEMPLATE)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_URL](#SORT_BY_URL)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ZONE_COUNT](#SORT_BY_ZONE_COUNT)`

    Deprecated.

     

    `static final int`

    `[STATE_DRAFT](#STATE_DRAFT)`

    Deprecated.

     

    `static final int`

    `[STATE_LOCKED](#STATE_LOCKED)`

    Deprecated.

     

    `static final int`

    `[STATE_NEW_DRAFT](#STATE_NEW_DRAFT)`

    Deprecated.

     

    `static final int`

    `[STATE_NEW_SUBMITTED](#STATE_NEW_SUBMITTED)`

    Deprecated.

     

    `static final int`

    `[STATE_PUBLISHED](#STATE_PUBLISHED)`

    Deprecated.

     

    `static final int`

    `[STATE_SUBMITTED](#STATE_SUBMITTED)`

    Deprecated.

     

    ### Fields inherited from class com.appiancorp.suiteapi.portal.[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")

    `[PAGE_ACCESS_LEVEL_ADMIN](PageInfo.html#PAGE_ACCESS_LEVEL_ADMIN), [PAGE_ACCESS_LEVEL_EDIT](PageInfo.html#PAGE_ACCESS_LEVEL_EDIT), [PAGE_ACCESS_LEVEL_NONE](PageInfo.html#PAGE_ACCESS_LEVEL_NONE), [PAGE_ACCESS_LEVEL_VIEW](PageInfo.html#PAGE_ACCESS_LEVEL_VIEW), [TYPE_CUSTOM](PageInfo.html#TYPE_CUSTOM), [TYPE_DASHBOARD](PageInfo.html#TYPE_DASHBOARD), [TYPE_PORTAL_PAGE](PageInfo.html#TYPE_PORTAL_PAGE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Page](#%3Cinit%3E\(\))()`

    Deprecated.

     

    `[Page](#%3Cinit%3E\(java.lang.String,java.lang.String,int\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template, int zoneCount)`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getAccessLevel](#getAccessLevel\(\))()`

    Deprecated.

    The current user's access level with respect to this page.

    `com.appiancorp.type.TypeRef`

    `[getDataContextType](#getDataContextType\(\))()`

    Deprecated.

    Returns the id of the data type that defines the structure of this page's data context.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDraftOwner](#getDraftOwner\(\))()`

    Deprecated.

    The id of the user who holds the lock on the draft of this page, or an empty string if it is not locked.

    `[Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[][]`

    `[getPortlets](#getPortlets\(\))()`

    Deprecated.

    The portlets that must be rendered in this page.

    `[PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal")`

    `[getRoleMap](#getRoleMap\(\))()`

    Deprecated.

    The role map.

    `int`

    `[getState](#getState\(\))()`

    Deprecated.

    Holds the current state of this portal page.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTemplate](#getTemplate\(\))()`

    Deprecated.

    The name of the template that must be used to render this page.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Deprecated.

    Returns the UUID of this page.

    `int`

    `[getZoneCount](#getZoneCount\(\))()`

    Deprecated.

    Indicates the number of zones in this page's template.

    `boolean`

    `[isApprovalRequired](#isApprovalRequired\(\))()`

    Deprecated.

    Indicates whether changes to this page require approval or not.

    `void`

    `[setAccessLevel](#setAccessLevel\(int\))(int p_)`

    Deprecated.

    See [`getAccessLevel()`](#getAccessLevel\(\))

    `void`

    `[setApprovalRequired](#setApprovalRequired\(boolean\))(boolean p_)`

    Deprecated.

    See [`isApprovalRequired()`](#isApprovalRequired\(\))

    `void`

    `[setDataContextType](#setDataContextType\(com.appiancorp.type.TypeRef\))(com.appiancorp.type.TypeRef dataContextType)`

    Deprecated.

    Sets the data type id of this page's data context.

    `void`

    `[setDraftOwner](#setDraftOwner\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getDraftOwner()`](#getDraftOwner\(\))

    `void`

    `[setPortlets](#setPortlets\(com.appiancorp.suiteapi.portal.Portlet%5B%5D%5B%5D\))([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")[][] p_)`

    Deprecated.

    See [`getPortlets()`](#getPortlets\(\))

    `void`

    `[setRoleMap](#setRoleMap\(com.appiancorp.suiteapi.portal.PageRoleMap\))([PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") role_)`

    Deprecated.

    See [`getRoleMap()`](#getRoleMap\(\))

    `void`

    `[setState](#setState\(int\))(int p_)`

    Deprecated.

    See [`getState()`](#getState\(\))

    `void`

    `[setTemplate](#setTemplate\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getTemplate()`](#getTemplate\(\))

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Deprecated.

    Set the UUID of this page.

    `void`

    `[setZoneCount](#setZoneCount\(int\))(int p_)`

    Deprecated.

    See [`getZoneCount()`](#getZoneCount\(\))

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class com.appiancorp.suiteapi.portal.[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")

    `[getCategoryId](PageInfo.html#getCategoryId\(\)), [getCreator](PageInfo.html#getCreator\(\)), [getDateCreated](PageInfo.html#getDateCreated\(\)), [getDateModified](PageInfo.html#getDateModified\(\)), [getDescription](PageInfo.html#getDescription\(\)), [getGroup](PageInfo.html#getGroup\(\)), [getId](PageInfo.html#getId\(\)), [getIds](PageInfo.html#getIds\(com.appiancorp.suiteapi.portal.PageInfo%5B%5D\)), [getModifier](PageInfo.html#getModifier\(\)), [getName](PageInfo.html#getName\(\)), [getType](PageInfo.html#getType\(\)), [getUrl](PageInfo.html#getUrl\(\)), [isPublic](PageInfo.html#isPublic\(\)), [setCategoryId](PageInfo.html#setCategoryId\(java.lang.Long\)), [setCreator](PageInfo.html#setCreator\(java.lang.String\)), [setDateCreated](PageInfo.html#setDateCreated\(java.sql.Timestamp\)), [setDateModified](PageInfo.html#setDateModified\(java.sql.Timestamp\)), [setDescription](PageInfo.html#setDescription\(java.lang.String\)), [setGroup](PageInfo.html#setGroup\(java.lang.Long\)), [setId](PageInfo.html#setId\(java.lang.Long\)), [setModifier](PageInfo.html#setModifier\(java.lang.String\)), [setName](PageInfo.html#setName\(java.lang.String\)), [setPublic](PageInfo.html#setPublic\(boolean\)), [setType](PageInfo.html#setType\(int\)), [setUrl](PageInfo.html#setUrl\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### STATE\_NEW\_DRAFT

        public static final int STATE\_NEW\_DRAFT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_NEW_DRAFT)

    -   ### STATE\_NEW\_SUBMITTED

        public static final int STATE\_NEW\_SUBMITTED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_NEW_SUBMITTED)

    -   ### STATE\_PUBLISHED

        public static final int STATE\_PUBLISHED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_PUBLISHED)

    -   ### STATE\_DRAFT

        public static final int STATE\_DRAFT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_DRAFT)

    -   ### STATE\_SUBMITTED

        public static final int STATE\_SUBMITTED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_SUBMITTED)

    -   ### STATE\_LOCKED

        public static final int STATE\_LOCKED

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Page.STATE_LOCKED)

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

    -   ### SORT\_BY\_STATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STATE

        Deprecated.

    -   ### SORT\_BY\_DRAFT\_OWNER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DRAFT\_OWNER

        Deprecated.

    -   ### SORT\_BY\_APPROVAL\_REQUIRED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_APPROVAL\_REQUIRED

        Deprecated.

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

    -   ### SORT\_BY\_DATE\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_MODIFIED

        Deprecated.

    -   ### SORT\_BY\_CATEGORY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CATEGORY\_ID

        Deprecated.

    -   ### SORT\_BY\_TEMPLATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TEMPLATE

        Deprecated.

    -   ### SORT\_BY\_MODIFIER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MODIFIER

        Deprecated.

    -   ### SORT\_BY\_PUBLIC

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PUBLIC

        Deprecated.

    -   ### SORT\_BY\_ZONE\_COUNT

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ZONE\_COUNT

        Deprecated.

    -   ### SORT\_BY\_URL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_URL

        Deprecated.

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Deprecated.

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

    -   ### SORT\_BY\_GROUP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP

        Deprecated.

    -   ### SORT\_BY\_ACCESS\_LEVEL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ACCESS\_LEVEL

        Deprecated.

-   ## Constructor Details

    -   ### Page

        public Page()

        Deprecated.

    -   ### Page

        public Page([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") template, int zoneCount)

        Deprecated.

-   ## Method Details

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Deprecated.

        Returns the UUID of this page. This field is not populated unless:

        -   the page has previously been exported
        -   the page was assigned a UUID when it was created
        -   the page was assigned a UUID using the Import/Export API

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Deprecated.

        Set the UUID of this page. This value is ignored, except when the page is being created.

    -   ### getZoneCount

        public int getZoneCount()

        Deprecated.

        Indicates the number of zones in this page's template. Must be between 1 and 20, inclusive. Out of the box templates provided are tightly coupled with the zone count and don't allow customizing the zone count; modifying this attribute for a page could result in broken UI.

        See Also:

        -   [`getTemplate()`](#getTemplate\(\))

    -   ### setZoneCount

        public void setZoneCount(int p\_)

        Deprecated.

        See [`getZoneCount()`](#getZoneCount\(\))

    -   ### getState

        public int getState()

        Deprecated.

        Holds the current state of this portal page. Possible values are the [STATE](#field_summary) constants defined in this class. NOTE: page state is determined by the database, and cannot be modified by calling setState.

    -   ### setState

        public void setState(int p\_)

        Deprecated.

        See [`getState()`](#getState\(\))

    -   ### getDraftOwner

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDraftOwner()

        Deprecated.

        The id of the user who holds the lock on the draft of this page, or an empty string if it is not locked.

    -   ### setDraftOwner

        public void setDraftOwner([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getDraftOwner()`](#getDraftOwner\(\))

    -   ### isApprovalRequired

        public boolean isApprovalRequired()

        Deprecated.

        Indicates whether changes to this page require approval or not. If `true` only portal administrators (see [`AdministrationService.setAdministratorGroup(java.lang.Long)`](AdministrationService.html#setAdministratorGroup\(java.lang.Long\))) and approvers in this page's role map are allowed to push the current draft to production.

    -   ### setApprovalRequired

        public void setApprovalRequired(boolean p\_)

        Deprecated.

        See [`isApprovalRequired()`](#isApprovalRequired\(\))

    -   ### getTemplate

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTemplate()

        Deprecated.

        The name of the template that must be used to render this page. In the default implementation of the portal application, the template is a tiles definition. However implemented, the template must make available at least one "zone". Zones contain each a list of portlets, and display them in a template-specific manner. Out of the box templates we procie

        See Also:

        -   [`getZoneCount()`](#getZoneCount\(\))

    -   ### setTemplate

        public void setTemplate([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getTemplate()`](#getTemplate\(\))

    -   ### getPortlets

        public [Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\]\[\] getPortlets()

        Deprecated.

        The portlets that must be rendered in this page. The first dimension of the array contains one item per zone in this page's template. Each item is a list of portlets that must be rendered in the corresponding zone.

    -   ### setPortlets

        public void setPortlets([Portlet](Portlet.html "class in com.appiancorp.suiteapi.portal")\[\]\[\] p\_)

        Deprecated.

        See [`getPortlets()`](#getPortlets\(\))

    -   ### getAccessLevel

        public int getAccessLevel()

        Deprecated.

        The current user's access level with respect to this page. This field is calculated based on the [`PageRoleMap`](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") and the user making the call.

        Returns:

        The access level, see constants on [`PageInfo`](PageInfo.html "class in com.appiancorp.suiteapi.portal").

    -   ### setAccessLevel

        public void setAccessLevel(int p\_)

        Deprecated.

        See [`getAccessLevel()`](#getAccessLevel\(\))

    -   ### getRoleMap

        public [PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") getRoleMap()

        Deprecated.

        The role map. See [`PageRoleMap`](PageRoleMap.html "class in com.appiancorp.suiteapi.portal").

        Returns:

        The role map.

    -   ### setRoleMap

        public void setRoleMap([PageRoleMap](PageRoleMap.html "class in com.appiancorp.suiteapi.portal") role\_)

        Deprecated.

        See [`getRoleMap()`](#getRoleMap\(\))

    -   ### getDataContextType

        public com.appiancorp.type.TypeRef getDataContextType()

        Deprecated.

        Returns the id of the data type that defines the structure of this page's data context. If a context type is configured at design time, an instance of the data type -a value- is expected at runtime.

        Returns:

        data type id of this page's data context

    -   ### setDataContextType

        public void setDataContextType(com.appiancorp.type.TypeRef dataContextType)

        Deprecated.

        Sets the data type id of this page's data context. See `#getDataContext()`

        Parameters:

        `dataContextType` - data type id of this page's data context

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](PageInfo.html#toString\(\))` in class `[PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")`