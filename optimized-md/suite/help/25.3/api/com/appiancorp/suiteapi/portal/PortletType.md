---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/PortletType.html
original_path: api/com/appiancorp/suiteapi/portal/PortletType.html
version: "25.3"
title: "Class PortletType"
page_id: "api/com/appiancorp/suiteapi/portal/PortletType"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class PortletType

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.PortletType

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class PortletType extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

Holds information about a portlet type.

See Also:

-   [`Portlet.getPortletType()`](Portlet.html#getPortletType\(\))
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.PortletType)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEFINITION_JSR168](#DEFINITION_JSR168)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DEFINITION_WSRP](#DEFINITION_WSRP)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_ADDED_THROUGH_CONSOLE](#EXTENSION_ADDED_THROUGH_CONSOLE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_JSR168_PORTLET_NAME](#EXTENSION_JSR168_PORTLET_NAME)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_JSR168_PORTLET_WEB_APP_CONTEXT_PATH](#EXTENSION_JSR168_PORTLET_WEB_APP_CONTEXT_PATH)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_PORTLET_IX_HELPER_CLASS](#EXTENSION_PORTLET_IX_HELPER_CLASS)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_WSRP_PORTLET_HANDLE](#EXTENSION_WSRP_PORTLET_HANDLE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTENSION_WSRP_PRODUCER_ID](#EXTENSION_WSRP_PRODUCER_ID)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FILTER_JSR168](#FILTER_JSR168)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[FILTER_WSRP](#FILTER_WSRP)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DEFINITION](#SORT_BY_DEFINITION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_DESCRIPTION](#SORT_BY_DESCRIPTION)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    Deprecated.

     

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_STATE](#SORT_BY_STATE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STATE_ACTIVE](#STATE_ACTIVE)`

    Deprecated.

     

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[STATE_INACTIVE](#STATE_INACTIVE)`

    Deprecated.

     

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PortletType](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDefinition](#getDefinition\(\))()`

    Deprecated.

    A unique key name that is used by the application to define how this type of portlet is rendered.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Deprecated.

    A text description for this type of portlet.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getEditable](#getEditable\(\))()`

    Deprecated.

    Method to check if the portlet type is editable or not.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getExtension](#getExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey_)`

    Deprecated.

    Convenience method to retrieve an individual extension.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")>`

    `[getExtensions](#getExtensions\(\))()`

    Deprecated.

    Method to retrieve the extensions map which contains key value pairs <String,String> which save additional information for the portlet type.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Deprecated.

    The displayable name of this type of portlet.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getState](#getState\(\))()`

    Deprecated.

    A string value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStringExtension](#getStringExtension\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey_)`

    Deprecated.

    Convenience method to retrieve an individual string extension.

    `boolean`

    `[isJsr168](#isJsr168\(\))()`

    Deprecated.

    Returns true if the current Portlet type's definition is a JSR-168 portlet type

    `static boolean`

    `[isJsr168](#isJsr168\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition_)`

    Deprecated.

    Returns true if the definition provided is a JSR-168 portlet type

    `boolean`

    `[isWsrp](#isWsrp\(\))()`

    Deprecated.

    Returns true if the current Portlet type's definition is a WSRP portlet type

    `static boolean`

    `[isWsrp](#isWsrp\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition_)`

    Deprecated.

    Returns true if the definition provided is a WSRP portlet type

    `void`

    `[setDefinition](#setDefinition\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") definition_)`

    Deprecated.

    Set the definition for this portlet.

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Deprecated.

    See [`getDescription()`](#getDescription\(\))

    `void`

    `[setEditable](#setEditable\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") editable_)`

    Deprecated.

    Method to set if the portlet type is editable or not.

    `void`

    `[setExtension](#setExtension\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Deprecated.

    Convenience method to set an individual extension.

    `void`

    `[setExtensions](#setExtensions\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")> extensions_)`

    Deprecated.

    Method to set the Extensions map in the Portlet Type bean

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Deprecated.

    Sets the displayable name of this type of portlet.

    `void`

    `[setState](#setState\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") state_)`

    Deprecated.

    A string value.

    `void`

    `[setStringExtension](#setStringExtension\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value_)`

    Deprecated.

    Convenience method to set an individual string extension.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

        Deprecated.

    -   ### SORT\_BY\_DEFINITION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DEFINITION

        Deprecated.

    -   ### SORT\_BY\_DESCRIPTION

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_DESCRIPTION

        Deprecated.

    -   ### SORT\_BY\_STATE

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_STATE

        Deprecated.

    -   ### STATE\_ACTIVE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STATE\_ACTIVE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.STATE_ACTIVE)

    -   ### STATE\_INACTIVE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") STATE\_INACTIVE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.STATE_INACTIVE)

    -   ### DEFINITION\_JSR168

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEFINITION\_JSR168

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.DEFINITION_JSR168)

    -   ### DEFINITION\_WSRP

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DEFINITION\_WSRP

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.DEFINITION_WSRP)

    -   ### FILTER\_JSR168

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FILTER\_JSR168

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.FILTER_JSR168)

    -   ### FILTER\_WSRP

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") FILTER\_WSRP

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.FILTER_WSRP)

    -   ### EXTENSION\_ADDED\_THROUGH\_CONSOLE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_ADDED\_THROUGH\_CONSOLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_ADDED_THROUGH_CONSOLE)

    -   ### EXTENSION\_JSR168\_PORTLET\_WEB\_APP\_CONTEXT\_PATH

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_JSR168\_PORTLET\_WEB\_APP\_CONTEXT\_PATH

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_JSR168_PORTLET_WEB_APP_CONTEXT_PATH)

    -   ### EXTENSION\_JSR168\_PORTLET\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_JSR168\_PORTLET\_NAME

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_JSR168_PORTLET_NAME)

    -   ### EXTENSION\_WSRP\_PRODUCER\_ID

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_WSRP\_PRODUCER\_ID

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_WSRP_PRODUCER_ID)

    -   ### EXTENSION\_WSRP\_PORTLET\_HANDLE

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_WSRP\_PORTLET\_HANDLE

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_WSRP_PORTLET_HANDLE)

    -   ### EXTENSION\_PORTLET\_IX\_HELPER\_CLASS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTENSION\_PORTLET\_IX\_HELPER\_CLASS

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.PortletType.EXTENSION_PORTLET_IX_HELPER_CLASS)

-   ## Constructor Details

    -   ### PortletType

        public PortletType()

        Deprecated.

-   ## Method Details

    -   ### setDefinition

        public void setDefinition([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") definition\_)

        Deprecated.

        Set the definition for this portlet. The definition is a unique key which holds information about how this portlet is rendered. See [`getDefinition()`](#getDefinition\(\))

    -   ### getDefinition

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDefinition()

        Deprecated.

        A unique key name that is used by the application to define how this type of portlet is rendered. In the current implementation, this is a tiles definition stated in the portal tiles configuration xml file which is mapped in the `portlet-type-config.xml` file.

        Returns:

        Returns the portlet type definition

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Deprecated.

        Sets the displayable name of this type of portlet. See [`getName()`](#getName\(\))

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Deprecated.

        The displayable name of this type of portlet.

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Deprecated.

        See [`getDescription()`](#getDescription\(\))

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Deprecated.

        A text description for this type of portlet.

    -   ### setState

        public void setState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") state\_)

        Deprecated.

        A string value. There are two options: "active" or "inactive". These options are used to establish whether or not it is permitted to create portlets of this type.

    -   ### getState

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getState()

        Deprecated.

        A string value. There are two options: "active" or "inactive". These options are used to establish whether or not it is possible to create portlets of this type.

        Returns:

        Returns "active" if is possible to create portlets of this type, or "inactive" if is not possible.

    -   ### getEditable

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getEditable()

        Deprecated.

        Method to check if the portlet type is editable or not.

        Returns:

        Returns true if portlet type is editable and false if not.

    -   ### setEditable

        public void setEditable([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") editable\_)

        Deprecated.

        Method to set if the portlet type is editable or not.

        Parameters:

        `editable_` - The \_editable to set.

    -   ### getExtensions

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> getExtensions()

        Deprecated.

        Method to retrieve the extensions map which contains key value pairs <String,String> which save additional information for the portlet type.

        Returns:

        the extensions map

    -   ### setExtensions

        public void setExtensions([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang"),[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")\> extensions\_)

        Deprecated.

        Method to set the Extensions map in the Portlet Type bean

        Parameters:

        `extensions_` - the extensions map that will be set for the current Portlet Type; if null is passed in, the extensions will be set to an empty map

    -   ### getStringExtension

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStringExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey\_)

        Deprecated.

        Convenience method to retrieve an individual string extension.

        Parameters:

        `extensionKey_` - The key of the string extension to retrieve.

        Returns:

        The value of the target string extension.

        See Also:

        -   [`getExtensions()`](#getExtensions\(\))

    -   ### setStringExtension

        public void setStringExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") value\_)

        Deprecated.

        Convenience method to set an individual string extension.

        Parameters:

        `extensionKey_` - The key of the string extension to set.

        `value_` - The value to set for the target string extension.

    -   ### getExtension

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey\_)

        Deprecated.

        Convenience method to retrieve an individual extension.

        Parameters:

        `extensionKey_` - The key of the extension to retrieve.

        Returns:

        The value of the target extension.

        See Also:

        -   [`getExtensions()`](#getExtensions\(\))

    -   ### setExtension

        public void setExtension([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") extensionKey\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Deprecated.

        Convenience method to set an individual extension.

        Parameters:

        `extensionKey_` - The key of the extenstion to set.

        `value_` - The value to set for the target extension.

    -   ### isJsr168

        public static boolean isJsr168([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition\_)

        Deprecated.

        Returns true if the definition provided is a JSR-168 portlet type

        Parameters:

        `portletTypeDefinition_` - the definition to check

        Returns:

        true if the definition is a JSR-168 portlet

    -   ### isJsr168

        public boolean isJsr168()

        Deprecated.

        Returns true if the current Portlet type's definition is a JSR-168 portlet type

        Returns:

        true if the definition is a JSR-168 portlet

    -   ### isWsrp

        public static boolean isWsrp([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") portletTypeDefinition\_)

        Deprecated.

        Returns true if the definition provided is a WSRP portlet type

        Parameters:

        `portletTypeDefinition_` - the definition to check

        Returns:

        true if the definition is a WSRP portlet

    -   ### isWsrp

        public boolean isWsrp()

        Deprecated.

        Returns true if the current Portlet type's definition is a WSRP portlet type

        Returns:

        true if type is a WSRP portlet