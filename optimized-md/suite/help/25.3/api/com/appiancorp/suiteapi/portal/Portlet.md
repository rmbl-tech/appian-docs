---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/Portlet.html
original_path: api/com/appiancorp/suiteapi/portal/Portlet.html
version: "25.3"
title: "Class Portlet"
page_id: "api/com/appiancorp/suiteapi/portal/Portlet"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class Portlet

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.Portlet

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Portlet extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Holds all the information about a portlet necessary for rendering.

See Also:

-   [`PortletService`](PortletService.html "interface in com.appiancorp.suiteapi.portal")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.Portlet)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[PORTLET_ACCESS_LEVEL_ADMIN](#PORTLET_ACCESS_LEVEL_ADMIN)`

    Deprecated.

    A constant indicating that the current user has administrative access to a particular portlet

    `static final int`

    `[PORTLET_ACCESS_LEVEL_EDIT](#PORTLET_ACCESS_LEVEL_EDIT)`

    Deprecated.

    A constant indicating that the current user has editor access to a particular portlet

    `static final int`

    `[PORTLET_ACCESS_LEVEL_NONE](#PORTLET_ACCESS_LEVEL_NONE)`

    Deprecated.

    A constant indicating that the current user has no access to view to a particular portlet

    `static final int`

    `[PORTLET_ACCESS_LEVEL_VIEW](#PORTLET_ACCESS_LEVEL_VIEW)`

    Deprecated.

    A constant indicating that the current user has view access to a particular portlet

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_CREATOR](#SORT_BY_CREATOR)`

    Deprecated.

    A constant for sorting portlets by the portlet's Creator

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DATE_CREATED](#SORT_BY_DATE_CREATED)`

    Deprecated.

    A constant for sorting portlets by the dates they were created

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_FRAME](#SORT_BY_FRAME)`

    Deprecated.

    A constant for sorting portlets by Frame

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    Deprecated.

    A constant for sorting portlets by unique Id

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_INHERITS_SECURITY](#SORT_BY_INHERITS_SECURITY)`

    Deprecated.

    A constant for sorting portlets by whether or not they inherit security from their parent portal page

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

    A constant for sorting portlets by Name

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PORTLET_TYPE](#SORT_BY_PORTLET_TYPE)`

    Deprecated.

    A constant for sorting portlets by Portlet Type

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_PUBLIC](#SORT_BY_PUBLIC)`

    Deprecated.

    A constant for sorting portlets by whther or not they are public

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_SHAREABLE](#SORT_BY_SHAREABLE)`

    Deprecated.

    A constant for sorting portlets by whether or not the portlet allowed to be shared on other pages.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Portlet](#%3Cinit%3E\(\))()`

    Deprecated.

     

    `[Portlet](#%3Cinit%3E\(java.lang.String,java.lang.String,java.lang.String,boolean,boolean,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") frame, boolean isShared, boolean isPublic, boolean inheritSecurity)`

    Deprecated.

    Instantiate a portlet with the fields that must be populated in order to create the portlet in the database.

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `int`

    `[getAccessLevel](#getAccessLevel\(\))()`

    Deprecated.

    The current user's access level with respect to this portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getCreator](#getCreator\(\))()`

    Deprecated.

    The user id of the creator of this portlet.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getDateCreated](#getDateCreated\(\))()`

    Deprecated.

    The timestamp indicating when this portlet was created.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getFrame](#getFrame\(\))()`

    Deprecated.

    The unique identifier of the frame that this portlet should be displayed in.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    The unique identifier of this portlet.

    `boolean`

    `[getInheritsSecurity](#getInheritsSecurity\(\))()`

    Deprecated.

    Indicates whether the security of this portlet is determined based on the page this portlet is in, or based on its own role map.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    The displayable name of this portlet.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[getParameters](#getParameters\(\))()`

    Deprecated.

    The map of name-value pair parameters for this portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPortletType](#getPortletType\(\))()`

    Deprecated.

    The unique identifier of the type of this portlet: [`PortletType.getDefinition()`](PortletType.html#getDefinition\(\))

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getPortletTypeEditable](#getPortletTypeEditable\(\))()`

    Deprecated.

    Returns the editable setting ([`PortletType.getEditable()`](PortletType.html#getEditable\(\))) of this portlet's type ([`getPortletType()`](#getPortletType\(\))).

    `[PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal")`

    `[getRoleMap](#getRoleMap\(\))()`

    Deprecated.

    The portlet role map.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUuid](#getUuid\(\))()`

    Deprecated.

    Returns the UUID of this Portlet.

    `boolean`

    `[isPublic](#isPublic\(\))()`

    Deprecated.

    Indicates whether this portlet can be seen by everybody.

    `boolean`

    `[isShareable](#isShareable\(\))()`

    Deprecated.

    Indicates whether this portlet can be shared between pages.

    `void`

    `[setAccessLevel](#setAccessLevel\(int\))(int p_)`

    Deprecated.

    See [`getAccessLevel()`](#getAccessLevel\(\))

    `void`

    `[setCreator](#setCreator\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getCreator()`](#getCreator\(\))

    `void`

    `[setDateCreated](#setDateCreated\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p_)`

    Deprecated.

    See [`getDateCreated()`](#getDateCreated\(\))

    `void`

    `[setFrame](#setFrame\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getFrame()`](#getFrame\(\))

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    See [`getId()`](#getId\(\))

    `void`

    `[setInheritsSecurity](#setInheritsSecurity\(boolean\))(boolean p_)`

    Deprecated.

    See [`getInheritsSecurity()`](#getInheritsSecurity\(\))

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") string_)`

    Deprecated.

    See [`getName()`](#getName\(\))

    `void`

    `[setParameters](#setParameters\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> p_)`

    Deprecated.

    See [`getParameters()`](#getParameters\(\))

    `void`

    `[setPortletType](#setPortletType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p_)`

    Deprecated.

    See [`getPortletType()`](#getPortletType\(\))

    `void`

    `[setPortletTypeEditable](#setPortletTypeEditable\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") typeEditable_)`

    Deprecated.

    See [`getPortletTypeEditable()`](#getPortletTypeEditable\(\)).

    `void`

    `[setPublic](#setPublic\(boolean\))(boolean p_)`

    Deprecated.

    See [`isPublic()`](#isPublic\(\))

    `void`

    `[setRoleMap](#setRoleMap\(com.appiancorp.suiteapi.portal.PortalRoleMap\))([PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") p_)`

    Deprecated.

    See [`getRoleMap()`](#getRoleMap\(\))

    `void`

    `[setShareable](#setShareable\(boolean\))(boolean p_)`

    Deprecated.

    See [`isShareable()`](#isShareable\(\))

    `void`

    `[setUuid](#setUuid\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Deprecated.

    Set the UUID of this Portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

        A constant for sorting portlets by Name

    -   ### SORT\_BY\_PORTLET\_TYPE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PORTLET\_TYPE

        Deprecated.

        A constant for sorting portlets by Portlet Type

    -   ### SORT\_BY\_FRAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_FRAME

        Deprecated.

        A constant for sorting portlets by Frame

    -   ### SORT\_BY\_CREATOR

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_CREATOR

        Deprecated.

        A constant for sorting portlets by the portlet's Creator

    -   ### SORT\_BY\_DATE\_CREATED

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DATE\_CREATED

        Deprecated.

        A constant for sorting portlets by the dates they were created

    -   ### SORT\_BY\_INHERITS\_SECURITY

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_INHERITS\_SECURITY

        Deprecated.

        A constant for sorting portlets by whether or not they inherit security from their parent portal page

    -   ### SORT\_BY\_SHAREABLE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_SHAREABLE

        Deprecated.

        A constant for sorting portlets by whether or not the portlet allowed to be shared on other pages.

    -   ### SORT\_BY\_PUBLIC

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_PUBLIC

        Deprecated.

        A constant for sorting portlets by whther or not they are public

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

        Deprecated.

        A constant for sorting portlets by unique Id

    -   ### PORTLET\_ACCESS\_LEVEL\_NONE

        public static final int PORTLET\_ACCESS\_LEVEL\_NONE

        Deprecated.

        A constant indicating that the current user has no access to view to a particular portlet

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Portlet.PORTLET_ACCESS_LEVEL_NONE)

    -   ### PORTLET\_ACCESS\_LEVEL\_VIEW

        public static final int PORTLET\_ACCESS\_LEVEL\_VIEW

        Deprecated.

        A constant indicating that the current user has view access to a particular portlet

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Portlet.PORTLET_ACCESS_LEVEL_VIEW)

    -   ### PORTLET\_ACCESS\_LEVEL\_EDIT

        public static final int PORTLET\_ACCESS\_LEVEL\_EDIT

        Deprecated.

        A constant indicating that the current user has editor access to a particular portlet

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Portlet.PORTLET_ACCESS_LEVEL_EDIT)

    -   ### PORTLET\_ACCESS\_LEVEL\_ADMIN

        public static final int PORTLET\_ACCESS\_LEVEL\_ADMIN

        Deprecated.

        A constant indicating that the current user has administrative access to a particular portlet

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.Portlet.PORTLET_ACCESS_LEVEL_ADMIN)

-   ## Constructor Details

    -   ### Portlet

        public Portlet()

        Deprecated.

    -   ### Portlet

        public Portlet([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletType, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") frame, boolean isShared, boolean isPublic, boolean inheritSecurity)

        Deprecated.

        Instantiate a portlet with the fields that must be populated in order to create the portlet in the database.

        Parameters:

        `portletType` - [`getPortletType()`](#getPortletType\(\))

        `name` - [`getName()`](#getName\(\))

        `frame` - [`getFrame()`](#getFrame\(\))

        `isShared` - [`isShareable()`](#isShareable\(\))

        `isPublic` - [`isPublic()`](#isPublic\(\))

        `inheritSecurity` - [`getInheritsSecurity()`](#getInheritsSecurity\(\))

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        The unique identifier of this portlet.

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

    -   ### getUuid

        @ConvertWith(com.appiancorp.kougar.mapper.parameters.UuidParameterConverter.class) public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUuid()

        Deprecated.

        Returns the UUID of this Portlet. This field is not populated unless:

        -   the portlet has previously been exported
        -   the portlet was assigned a UUID when it was created
        -   the portlet was assigned a UUID using the Import/Export API

    -   ### setUuid

        public void setUuid([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Deprecated.

        Set the UUID of this Portlet. This value is ignored, except when the Portlet is being created.

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        The displayable name of this portlet.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") string\_)

        Deprecated.

        See [`getName()`](#getName\(\))

    -   ### getInheritsSecurity

        public boolean getInheritsSecurity()

        Deprecated.

        Indicates whether the security of this portlet is determined based on the page this portlet is in, or based on its own role map. This property should be ignored if the portlet is shareable.

        Returns:

        `true` if the security settings of this portlet are the same as the security settings of the page that contains it; `false` if the security is based on this portlet's role map.

        See Also:

        -   [`PortletService.getRoleMapForPortlet(java.lang.Long)`](PortletService.html#getRoleMapForPortlet\(java.lang.Long\))
        -   [`isShareable()`](#isShareable\(\))

    -   ### setInheritsSecurity

        public void setInheritsSecurity(boolean p\_)

        Deprecated.

        See [`getInheritsSecurity()`](#getInheritsSecurity\(\))

    -   ### isShareable

        public boolean isShareable()

        Deprecated.

        Indicates whether this portlet can be shared between pages. The security of shareable portlets is enforced through their role map.

        See Also:

        -   [`PortletService.findPortlets(java.lang.String, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Integer)`](PortletService.html#findPortlets\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer\))

    -   ### setShareable

        public void setShareable(boolean p\_)

        Deprecated.

        See [`isShareable()`](#isShareable\(\))

    -   ### isPublic

        public boolean isPublic()

        Deprecated.

        Indicates whether this portlet can be seen by everybody. Non public portlets are considered "targeted".

        See Also:

        -   [`PortletService.findPortlets(java.lang.String, java.lang.String, java.lang.Long, java.lang.Integer, java.lang.Integer)`](PortletService.html#findPortlets\(java.lang.String,java.lang.String,java.lang.Long,java.lang.Integer,java.lang.Integer\))

    -   ### setPublic

        public void setPublic(boolean p\_)

        Deprecated.

        See [`isPublic()`](#isPublic\(\))

    -   ### getPortletType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPortletType()

        Deprecated.

        The unique identifier of the type of this portlet: [`PortletType.getDefinition()`](PortletType.html#getDefinition\(\))

    -   ### setPortletType

        public void setPortletType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getPortletType()`](#getPortletType\(\))

    -   ### getFrame

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getFrame()

        Deprecated.

        The unique identifier of the frame that this portlet should be displayed in. This must be the name of the tile definition to be used to surround the portlet content when rendering the portlet within a page. The built-in portlet frame tiles are in `tiles-portal-base.xml`. The portlet frame is also sometimes referred to as the "portlet template".

    -   ### setFrame

        public void setFrame([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getFrame()`](#getFrame\(\))

    -   ### getCreator

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getCreator()

        Deprecated.

        The user id of the creator of this portlet. The creator of a page has complete ownership (i.e. ADMIN access level) on the page.

    -   ### setCreator

        public void setCreator([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") p\_)

        Deprecated.

        See [`getCreator()`](#getCreator\(\))

    -   ### getDateCreated

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getDateCreated()

        Deprecated.

        The timestamp indicating when this portlet was created.

    -   ### setDateCreated

        public void setDateCreated([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") p\_)

        Deprecated.

        See [`getDateCreated()`](#getDateCreated\(\))

    -   ### getParameters

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> getParameters()

        Deprecated.

        The map of name-value pair parameters for this portlet. Names must be single words, starting with a letter and containing only \_, numbers and letters in the basic US character set. Values should be of type String, though future implementations (and experimentally, the current one) may allow other datatypes.

        See Also:

        -   [`PortletService.updatePortletParameters(java.lang.Long, java.util.Map)`](PortletService.html#updatePortletParameters\(java.lang.Long,java.util.Map\))

    -   ### setParameters

        public void setParameters([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> p\_)

        Deprecated.

        See [`getParameters()`](#getParameters\(\))

    -   ### getAccessLevel

        public int getAccessLevel()

        Deprecated.

        The current user's access level with respect to this portlet.

        Returns:

        The access level, see constants on this class.

    -   ### setAccessLevel

        public void setAccessLevel(int p\_)

        Deprecated.

        See [`getAccessLevel()`](#getAccessLevel\(\))

    -   ### getRoleMap

        public [PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") getRoleMap()

        Deprecated.

        The portlet role map.

    -   ### setRoleMap

        public void setRoleMap([PortalRoleMap](PortalRoleMap.html "class in com.appiancorp.suiteapi.portal") p\_)

        Deprecated.

        See [`getRoleMap()`](#getRoleMap\(\))

    -   ### getPortletTypeEditable

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getPortletTypeEditable()

        Deprecated.

        Returns the editable setting ([`PortletType.getEditable()`](PortletType.html#getEditable\(\))) of this portlet's type ([`getPortletType()`](#getPortletType\(\))).

    -   ### setPortletTypeEditable

        public void setPortletTypeEditable([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") typeEditable\_)

        Deprecated.

        See [`getPortletTypeEditable()`](#getPortletTypeEditable\(\)).

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`