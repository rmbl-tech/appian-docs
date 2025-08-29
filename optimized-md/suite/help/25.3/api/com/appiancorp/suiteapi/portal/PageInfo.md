---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PageInfo.html
original_path: api/com/appiancorp/suiteapi/portal/PageInfo.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class PageInfo

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.PageInfo

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Page](Page.html "class in com.appiancorp.suiteapi.portal")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class PageInfo extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Provides basic displayable information about pages. For details about the properties, see the documentation of [`Page`](Page.html "class in com.appiancorp.suiteapi.portal").

See Also:

-   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.PageInfo)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[PAGE_ACCESS_LEVEL_ADMIN](#PAGE_ACCESS_LEVEL_ADMIN)`

    Deprecated.

     

    `static final int`

    `[PAGE_ACCESS_LEVEL_EDIT](#PAGE_ACCESS_LEVEL_EDIT)`

    Deprecated.

     

    `static final int`

    `[PAGE_ACCESS_LEVEL_NONE](#PAGE_ACCESS_LEVEL_NONE)`

    Deprecated.

     

    `static final int`

    `[PAGE_ACCESS_LEVEL_VIEW](#PAGE_ACCESS_LEVEL_VIEW)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ACCESS_LEVEL](#SORT_BY_ACCESS_LEVEL)`

    Deprecated.

    A constant for sorting portal pages by the access level

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CATEGORY_ID](#SORT_BY_CATEGORY_ID)`

    Deprecated.

    A constant for sorting portal pages by the Id of the page Category

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

    A constant for sorting portal pages by the creator of the page

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

    A constant for sorting portal pages by the date that the page was created

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_MODIFIED](#SORT_BY_DATE_MODIFIED)`

    Deprecated.

    A constant for sorting portal pages by the date that the page was last modified

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

    A constant for sorting portal pages by description

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_GROUP](#SORT_BY_GROUP)`

    Deprecated.

    A constant for sorting portal pages by the group to which the page is associated.

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    A constant for sorting portal pages by the ID

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_MODIFIER](#SORT_BY_MODIFIER)`

    Deprecated.

    A constant for sorting portal pages by the last user to modify the page

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

    A constant for sorting portal pages by name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PUBLIC](#SORT_BY_PUBLIC)`

    Deprecated.

    A constant for sorting portal pages by whether the page is public or not

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_TYPE](#SORT_BY_TYPE)`

    Deprecated.

    A constant for sorting portal pages by the page type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_URL](#SORT_BY_URL)`

    Deprecated.

    A constant for sorting portal pages by URL (This only applies to custom pages)

    `static final int`

    `[TYPE_CUSTOM](#TYPE_CUSTOM)`

    Deprecated.

     

    `static final int`

    `[TYPE_DASHBOARD](#TYPE_DASHBOARD)`

    Deprecated.

     

    `static final int`

    `[TYPE_PORTAL_PAGE](#TYPE_PORTAL_PAGE)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PageInfo](#%3Cinit%3E\(\))()`

    Deprecated.

     

    `[PageInfo](#%3Cinit%3E\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCategoryId](#getCategoryId\(\))()`

    Deprecated.

    The category that this page is associated to, if any.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Deprecated.

    The user id of the creator of this page.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    The timestamp indicating when this page was created.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateModified](#getDateModified\(\))()`

    Deprecated.

    The timestamp indicating when this page was last modified.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    A text description of this page

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getGroup](#getGroup\(\))()`

    Deprecated.

    The group associated to this page.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    The unique identifier of this page

    `static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getIds](#getIds\(com.appiancorp.suiteapi.portal.PageInfo%5B%5D\))([PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")[] pages)`

    Deprecated.

    Get the ids (as a Long array) from an array of page objects.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getModifier](#getModifier\(\))()`

    Deprecated.

    The user id of the last person who has modified this page.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    The display name/title of this page

    `int`

    `[getType](#getType\(\))()`

    Deprecated.

    Returns the page type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUrl](#getUrl\(\))()`

    Deprecated.

    Returns the URL of a Custom Page.

    `boolean`

    `[isPublic](#isPublic\(\))()`

    Deprecated.

    Indicates whether this page is publicly viewable or it has viewer rights determined by the role map.

    `void`

    `[setCategoryId](#setCategoryId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getCategoryId()`](#getCategoryId\(\))

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getCreator()`](#getCreator\(\))

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p_)`

    Deprecated.

    See [`getDateCreated()`](#getDateCreated\(\))

    `void`

    `[setDateModified](#setDateModified\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p_)`

    Deprecated.

    See [`getDateModified()`](#getDateModified\(\))

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getDescription()`](#getDescription\(\))

    `void`

    `[setGroup](#setGroup\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getGroup()`](#getGroup\(\))

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    See [`getId()`](#getId\(\))

    `void`

    `[setModifier](#setModifier\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getModifier()`](#getModifier\(\))

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    See [`getName()`](#getName\(\))

    `void`

    `[setPublic](#setPublic\(boolean\))(boolean p_)`

    Deprecated.

    See [`isPublic()`](#isPublic\(\))

    `void`

    `[setType](#setType\(int\))(int type_)`

    Deprecated.

    Sets the page type.

    `void`

    `[setUrl](#setUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url_)`

    Deprecated.

    Sets the URL of a Custom Page.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

        A constant for sorting portal pages by name

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

        A constant for sorting portal pages by description

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

        A constant for sorting portal pages by the creator of the page

    -   ### SORT\_BY\_MODIFIER

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_MODIFIER

        Deprecated.

        A constant for sorting portal pages by the last user to modify the page

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

        A constant for sorting portal pages by the date that the page was created

    -   ### SORT\_BY\_DATE\_MODIFIED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_MODIFIED

        Deprecated.

        A constant for sorting portal pages by the date that the page was last modified

    -   ### SORT\_BY\_CATEGORY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CATEGORY\_ID

        Deprecated.

        A constant for sorting portal pages by the Id of the page Category

    -   ### SORT\_BY\_PUBLIC

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PUBLIC

        Deprecated.

        A constant for sorting portal pages by whether the page is public or not

    -   ### SORT\_BY\_URL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_URL

        Deprecated.

        A constant for sorting portal pages by URL (This only applies to custom pages)

    -   ### SORT\_BY\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_TYPE

        Deprecated.

        A constant for sorting portal pages by the page type

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        A constant for sorting portal pages by the ID

    -   ### SORT\_BY\_GROUP

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_GROUP

        Deprecated.

        A constant for sorting portal pages by the group to which the page is associated.

    -   ### SORT\_BY\_ACCESS\_LEVEL

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ACCESS\_LEVEL

        Deprecated.

        A constant for sorting portal pages by the access level

    -   ### PAGE\_ACCESS\_LEVEL\_NONE

        public static final int PAGE\_ACCESS\_LEVEL\_NONE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.PAGE_ACCESS_LEVEL_NONE)

    -   ### PAGE\_ACCESS\_LEVEL\_VIEW

        public static final int PAGE\_ACCESS\_LEVEL\_VIEW

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.PAGE_ACCESS_LEVEL_VIEW)

    -   ### PAGE\_ACCESS\_LEVEL\_EDIT

        public static final int PAGE\_ACCESS\_LEVEL\_EDIT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.PAGE_ACCESS_LEVEL_EDIT)

    -   ### PAGE\_ACCESS\_LEVEL\_ADMIN

        public static final int PAGE\_ACCESS\_LEVEL\_ADMIN

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.PAGE_ACCESS_LEVEL_ADMIN)

    -   ### TYPE\_PORTAL\_PAGE

        public static final int TYPE\_PORTAL\_PAGE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.TYPE_PORTAL_PAGE)

    -   ### TYPE\_CUSTOM

        public static final int TYPE\_CUSTOM

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.TYPE_CUSTOM)

    -   ### TYPE\_DASHBOARD

        public static final int TYPE\_DASHBOARD

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PageInfo.TYPE_DASHBOARD)

-   ## Constructor Details

    -   ### PageInfo

        public PageInfo()

        Deprecated.

    -   ### PageInfo

        public PageInfo([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Deprecated.

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        The unique identifier of this page

        Specified by:

        `[getId](../common/LocalId.html#getId\(\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        Object's Id

        See Also:

        -   [`LocalId.setId(Long)`](../common/LocalId.html#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        See [`getId()`](#getId\(\))

        Specified by:

        `[setId](../common/LocalId.html#setId\(java.lang.Long\))` in interface `[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `id_` - Id to set

        See Also:

        -   [`LocalId.getId()`](../common/LocalId.html#getId\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        The display name/title of this page

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        See [`getName()`](#getName\(\))

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        A text description of this page

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getDescription()`](#getDescription\(\))

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        The user id of the creator of this page. The creator of a page has complete ownership (i.e. ADMIN access level) on the page.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getCreator()`](#getCreator\(\))

    -   ### getModifier

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getModifier()

        Deprecated.

        The user id of the last person who has modified this page.

    -   ### setModifier

        public void setModifier([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getModifier()`](#getModifier\(\))

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        The timestamp indicating when this page was created.

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p\_)

        Deprecated.

        See [`getDateCreated()`](#getDateCreated\(\))

    -   ### getDateModified

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateModified()

        Deprecated.

        The timestamp indicating when this page was last modified.

    -   ### setDateModified

        public void setDateModified([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p\_)

        Deprecated.

        See [`getDateModified()`](#getDateModified\(\))

    -   ### getGroup

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getGroup()

        Deprecated.

        The group associated to this page. Administrators of this group retain complete ownership (i.e. ADMIN access level) on the page. The group can be `null`.

    -   ### setGroup

        public void setGroup([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getGroup()`](#getGroup\(\))

    -   ### getCategoryId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCategoryId()

        Deprecated.

        The category that this page is associated to, if any.

        See Also:

        -   [`PageNavigationService`](PageNavigationService.html "interface in com.appiancorp.suiteapi.portal")

    -   ### setCategoryId

        public void setCategoryId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getCategoryId()`](#getCategoryId\(\))

    -   ### isPublic

        public boolean isPublic()

        Deprecated.

        Indicates whether this page is publicly viewable or it has viewer rights determined by the role map.

    -   ### setPublic

        public void setPublic(boolean p\_)

        Deprecated.

        See [`isPublic()`](#isPublic\(\))

    -   ### getType

        public int getType()

        Deprecated.

        Returns the page type. Current types: Portal Page and Custom Page

        Returns:

        the page type.

    -   ### setType

        public void setType(int type\_)

        Deprecated.

        Sets the page type.

        Parameters:

        `type_` - The new type of page.

    -   ### getUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUrl()

        Deprecated.

        Returns the URL of a Custom Page.

        Returns:

        The URL of a Custom Page.

    -   ### setUrl

        public void setUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url\_)

        Deprecated.

        Sets the URL of a Custom Page.

        Parameters:

        `url_` - the new URL of the Custom Page.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### getIds

        public static [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getIds([PageInfo](PageInfo.html "class in com.appiancorp.suiteapi.portal")\[\] pages)

        Deprecated.

        Get the ids (as a Long array) from an array of page objects.

        Parameters:

        `pages` - an array of pages

        Returns:

        an array of the same size as the given array, containing the ids of the given pages; if given array is null, returns null