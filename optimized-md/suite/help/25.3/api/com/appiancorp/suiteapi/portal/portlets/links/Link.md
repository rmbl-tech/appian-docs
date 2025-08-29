---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/portlets/links/Link.html
original_path: api/com/appiancorp/suiteapi/portal/portlets/links/Link.html
version: "25.3"
title: "Class Link"
page_id: "api/com/appiancorp/suiteapi/portal/portlets/links/Link"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal.portlets.links](package-summary.html)

# Class Link

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.portlets.links.Link

All Implemented Interfaces:

`[DeepCloneable](../../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`, `[Cloneable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Cloneable.html "class or interface in java.lang")`

Direct Known Subclasses:

`[GroupMessageLink](../groupmessage/GroupMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.groupmessage")`, `[LeaderMessageLink](../leadermessage/LeaderMessageLink.html "class in com.appiancorp.suiteapi.portal.portlets.leadermessage")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class Link extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io"), [DeepCloneable](../../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

This class represents a link which provides access either to a first-class object within the application, or to a url or address. If a link is intended to access a url or address, then the `url` field should be populated; if a link is intended to access a suite first-class object, then the `linkTarget` field should be populated

See Also:

-   [Serialized Form](../../../../../../serialized-form.html#com.appiancorp.suiteapi.portal.portlets.links.Link)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_COMM](#LINK_TYPE_ID_COMM)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_DOCUMENT](#LINK_TYPE_ID_DOCUMENT)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_EMAIL](#LINK_TYPE_ID_EMAIL)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_EXTPAGE](#LINK_TYPE_ID_EXTPAGE)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_EXTPAGESECURE](#LINK_TYPE_ID_EXTPAGESECURE)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_FOLDER](#LINK_TYPE_ID_FOLDER)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_FORUM](#LINK_TYPE_ID_FORUM)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_KC](#LINK_TYPE_ID_KC)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_PAGE](#LINK_TYPE_ID_PAGE)`

    Deprecated.

     

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[LINK_TYPE_ID_THREAD](#LINK_TYPE_ID_THREAD)`

    Deprecated.

     

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Link](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[clone](#clone\(\))()`

    Deprecated.

    Creates and returns a copy of this object.

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj_)`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    Get the link description.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

    Get the link id.

    `[LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common")`

    `[getLinkTarget](#getLinkTarget\(\))()`

    Deprecated.

    Get the link's target `LocalObject`.

    `[LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links")`

    `[getLinkType](#getLinkType\(\))()`

    Deprecated.

    Get the link's link type.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getLinkTypeId](#getLinkTypeId\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    Get the name of the link.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUrl](#getUrl\(\))()`

    Deprecated.

    Get the link's url.

    `int`

    `[hashCode](#hashCode\(\))()`

    Deprecated.

     

    `boolean`

    `[isNewWindow](#isNewWindow\(\))()`

    Deprecated.

    Determine whether the link should open in a new window.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Deprecated.

    Set the link description.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Deprecated.

    Set the link id.

    `void`

    `[setLinkTarget](#setLinkTarget\(com.appiancorp.suiteapi.common.LocalObject\))([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") linkTarget_)`

    Deprecated.

    Set the link's target `LocalObject`.

    `void`

    `[setLinkType](#setLinkType\(com.appiancorp.suiteapi.portal.portlets.links.LinkType\))([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") linkType_)`

    Deprecated.

    Set the link's link type.

    `void`

    `[setLinkTypeId](#setLinkTypeId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId_)`

    Deprecated.

     

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Set the name of the link.

    `void`

    `[setNewWindow](#setNewWindow\(boolean\))(boolean newWindow_)`

    Deprecated.

    Set whether the link should open in a new window.

    `void`

    `[setUrl](#setUrl\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url_)`

    Deprecated.

    Set the link's url.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

        Deprecated.

    -   ### LINK\_TYPE\_ID\_EXTPAGE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_EXTPAGE

        Deprecated.

    -   ### LINK\_TYPE\_ID\_EMAIL

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_EMAIL

        Deprecated.

    -   ### LINK\_TYPE\_ID\_PAGE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_PAGE

        Deprecated.

    -   ### LINK\_TYPE\_ID\_DOCUMENT

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_DOCUMENT

        Deprecated.

    -   ### LINK\_TYPE\_ID\_FOLDER

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_FOLDER

        Deprecated.

    -   ### LINK\_TYPE\_ID\_KC

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_KC

        Deprecated.

    -   ### LINK\_TYPE\_ID\_COMM

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_COMM

        Deprecated.

    -   ### LINK\_TYPE\_ID\_THREAD

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_THREAD

        Deprecated.

    -   ### LINK\_TYPE\_ID\_FORUM

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_FORUM

        Deprecated.

    -   ### LINK\_TYPE\_ID\_EXTPAGESECURE

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") LINK\_TYPE\_ID\_EXTPAGESECURE

        Deprecated.

-   ## Constructor Details

    -   ### Link

        public Link()

        Deprecated.

-   ## Method Details

    -   ### clone

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") clone()

        Deprecated.

        Creates and returns a copy of this object.

        Specified by:

        `[clone](../../../common/DeepCloneable.html#clone\(\))` in interface `[DeepCloneable](../../../common/DeepCloneable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        Get the link description.

        Returns:

        The description.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Deprecated.

        Set the link description.

        Parameters:

        `description_` - The description.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

        Get the link id.

        Returns:

        The link id.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Deprecated.

        Set the link id.

        Parameters:

        `id_` - The link id.

    -   ### getLinkTarget

        public [LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") getLinkTarget()

        Deprecated.

        Get the link's target `LocalObject`. If the link is a link to a first-class object in the suite, then this field is used instead of `url`.

    -   ### setLinkTarget

        public void setLinkTarget([LocalObject](../../../common/LocalObject.html "class in com.appiancorp.suiteapi.common") linkTarget\_)

        Deprecated.

        Set the link's target `LocalObject`. If the link is a link to a first-class object in the suite, then this field is used instead of `url`.

        Parameters:

        `linkTarget_` - The link target.

    -   ### getLinkType

        public [LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") getLinkType()

        Deprecated.

        Get the link's link type.

        Returns:

        The link type

    -   ### setLinkType

        public void setLinkType([LinkType](LinkType.html "class in com.appiancorp.suiteapi.portal.portlets.links") linkType\_)

        Deprecated.

        Set the link's link type.

        Parameters:

        `linkType_` - The link type

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        Get the name of the link.

        Returns:

        The name.

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Set the name of the link.

        Parameters:

        `name_` - The name.

    -   ### isNewWindow

        public boolean isNewWindow()

        Deprecated.

        Determine whether the link should open in a new window.

        Returns:

        `true` if the link will open in a new window; `false` if not.

    -   ### setNewWindow

        public void setNewWindow(boolean newWindow\_)

        Deprecated.

        Set whether the link should open in a new window.

        Parameters:

        `newWindow_` - Set to `true` to have the link open in a new window; `false` to not.

    -   ### getUrl

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUrl()

        Deprecated.

        Get the link's url. Only one of the properties `url` and `linkTarget` will be used.

        Returns:

        The url.

    -   ### setUrl

        public void setUrl([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") url\_)

        Deprecated.

        Set the link's url. Only one of the properties `url` and `linkTarget` will be used.

        Parameters:

        `url_` - The url.

    -   ### getLinkTypeId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getLinkTypeId()

        Deprecated.

        Returns:

        Returns the linkTypeId.

    -   ### setLinkTypeId

        public void setLinkTypeId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") linkTypeId\_)

        Deprecated.

        Parameters:

        `linkTypeId_` - The linkTypeId to set.

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj\_)

        Deprecated.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Deprecated.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Deprecated.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`