---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/portal/NavigationButton.html
original_path: api/com/appiancorp/suiteapi/portal/NavigationButton.html
version: "25.3"
title: "Class NavigationButton"
page_id: "api/com/appiancorp/suiteapi/portal/NavigationButton"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.portal](package-summary.html)

# Class NavigationButton

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.portal.NavigationButton

All Implemented Interfaces:

`[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class NavigationButton extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [JSONCacheable](../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common"), [AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Deprecated.

The Portal functionality will be removed in a future release. Use the Tempo Interface for similar functionality.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.portal.NavigationButton)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[LINK_TYPE_DIALOG](#LINK_TYPE_DIALOG)`

    Deprecated.

     

    `static final int`

    `[LINK_TYPE_ENTIRE_WINDOW](#LINK_TYPE_ENTIRE_WINDOW)`

    Deprecated.

     

    `static final int`

    `[LINK_TYPE_NEW_WINDOW](#LINK_TYPE_NEW_WINDOW)`

    Deprecated.

     

    `static final int`

    `[LINK_TYPE_PORTAL_CONTENT](#LINK_TYPE_PORTAL_CONTENT)`

    Deprecated.

     

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[NavigationButton](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)`

    Deprecated.

    Compares two `NavigationButton` objects for equality.

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache)`

    Deprecated.

    If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache.

    `boolean`

    `[getCounter](#getCounter\(\))()`

    Deprecated.

     

    `[Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[getCounterImplementation](#getCounterImplementation\(\))()`

    Deprecated.

     

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getExcludedPeople](#getExcludedPeople\(\))()`

    Deprecated.

     

    `[HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util")`

    `[getHiddenAttributes](#getHiddenAttributes\(\))()`

    Deprecated.

    Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getIcon](#getIcon\(\))()`

    Deprecated.

     

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getKey](#getKey\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getLabel](#getLabel\(\))()`

    Deprecated.

     

    `boolean`

    `[getLabelLocalized](#getLabelLocalized\(\))()`

    Deprecated.

     

    `int`

    `[getLinkType](#getLinkType\(\))()`

    Deprecated.

     

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getPath](#getPath\(\))()`

    Deprecated.

     

    `boolean`

    `[getTargeted](#getTargeted\(\))()`

    Deprecated.

     

    `[LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[]`

    `[getTargetedPeople](#getTargetedPeople\(\))()`

    Deprecated.

     

    `int`

    `[hashCode](#hashCode\(\))()`

    Deprecated.

    Returns the hashcode for this `NavigationButton`.

    `void`

    `[setCounter](#setCounter\(boolean\))(boolean counter)`

    Deprecated.

     

    `void`

    `[setCounterImplementation](#setCounterImplementation\(java.lang.Class\))([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") counterImplementation)`

    Deprecated.

     

    `void`

    `[setExcludedGroups](#setExcludedGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] excludedGroups)`

    Deprecated.

     

    `void`

    `[setExcludedPeople](#setExcludedPeople\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] excludedPeople)`

    Deprecated.

     

    `void`

    `[setExcludedUsers](#setExcludedUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] excludedUsers)`

    Deprecated.

     

    `void`

    `[setIcon](#setIcon\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") icon)`

    Deprecated.

     

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Deprecated.

     

    `void`

    `[setKey](#setKey\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)`

    Deprecated.

     

    `void`

    `[setLabel](#setLabel\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label)`

    Deprecated.

     

    `void`

    `[setLabelLocalized](#setLabelLocalized\(boolean\))(boolean labelLocalized)`

    Deprecated.

     

    `void`

    `[setLinkType](#setLinkType\(int\))(int linkType)`

    Deprecated.

     

    `void`

    `[setPath](#setPath\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path)`

    Deprecated.

     

    `void`

    `[setTargeted](#setTargeted\(boolean\))(boolean targeted)`

    Deprecated.

     

    `void`

    `[setTargetedGroups](#setTargetedGroups\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] targetedGroups)`

    Deprecated.

     

    `void`

    `[setTargetedPeople](#setTargetedPeople\(com.appiancorp.suiteapi.common.LocalObject%5B%5D\))([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")[] targetedPeople)`

    Deprecated.

     

    `void`

    `[setTargetedUsers](#setTargetedUsers\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] targetedUsers)`

    Deprecated.

     

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LINK\_TYPE\_PORTAL\_CONTENT

        public static final int LINK\_TYPE\_PORTAL\_CONTENT

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NavigationButton.LINK_TYPE_PORTAL_CONTENT)

    -   ### LINK\_TYPE\_NEW\_WINDOW

        public static final int LINK\_TYPE\_NEW\_WINDOW

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NavigationButton.LINK_TYPE_NEW_WINDOW)

    -   ### LINK\_TYPE\_DIALOG

        public static final int LINK\_TYPE\_DIALOG

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NavigationButton.LINK_TYPE_DIALOG)

    -   ### LINK\_TYPE\_ENTIRE\_WINDOW

        public static final int LINK\_TYPE\_ENTIRE\_WINDOW

        Deprecated.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.portal.NavigationButton.LINK_TYPE_ENTIRE_WINDOW)

-   ## Constructor Details

    -   ### NavigationButton

        public NavigationButton()

        Deprecated.

-   ## Method Details

    -   ### getHiddenAttributes

        public [HashSet](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/HashSet.html "class or interface in java.util") getHiddenAttributes()

        Deprecated.

        Description copied from interface: `[JSONable](../common/JSONable.html#getHiddenAttributes\(\))`

        Returns the set of attributes (properties) that should not be included in the JSON representation of the object.

        Specified by:

        `[getHiddenAttributes](../common/JSONable.html#getHiddenAttributes\(\))` in interface `[JSONable](../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        the set of hidden attributes

    -   ### getLabelLocalized

        public boolean getLabelLocalized()

        Deprecated.

    -   ### setLabelLocalized

        public void setLabelLocalized(boolean labelLocalized)

        Deprecated.

    -   ### getCounter

        public boolean getCounter()

        Deprecated.

    -   ### setCounter

        public void setCounter(boolean counter)

        Deprecated.

    -   ### getCounterImplementation

        public [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") getCounterImplementation()

        Deprecated.

    -   ### setCounterImplementation

        public void setCounterImplementation([Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") counterImplementation)

        Deprecated.

    -   ### getIcon

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getIcon()

        Deprecated.

    -   ### setIcon

        public void setIcon([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") icon)

        Deprecated.

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Deprecated.

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Deprecated.

    -   ### getKey

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getKey()

        Deprecated.

    -   ### setKey

        public void setKey([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") key)

        Deprecated.

    -   ### getLabel

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getLabel()

        Deprecated.

    -   ### setLabel

        public void setLabel([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") label)

        Deprecated.

    -   ### getLinkType

        public int getLinkType()

        Deprecated.

    -   ### setLinkType

        public void setLinkType(int linkType)

        Deprecated.

    -   ### getPath

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getPath()

        Deprecated.

    -   ### setPath

        public void setPath([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") path)

        Deprecated.

    -   ### getTargeted

        public boolean getTargeted()

        Deprecated.

    -   ### setTargeted

        public void setTargeted(boolean targeted)

        Deprecated.

    -   ### setTargetedGroups

        public void setTargetedGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] targetedGroups)

        Deprecated.

    -   ### setTargetedUsers

        public void setTargetedUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] targetedUsers)

        Deprecated.

    -   ### setExcludedGroups

        public void setExcludedGroups([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] excludedGroups)

        Deprecated.

    -   ### setExcludedUsers

        public void setExcludedUsers([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] excludedUsers)

        Deprecated.

    -   ### getExcludedPeople

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getExcludedPeople()

        Deprecated.

    -   ### setExcludedPeople

        public void setExcludedPeople([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] excludedPeople)

        Deprecated.

    -   ### getTargetedPeople

        public [LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] getTargetedPeople()

        Deprecated.

    -   ### setTargetedPeople

        public void setTargetedPeople([LocalObject](../common/LocalObject.html "class in com.appiancorp.suiteapi.common")\[\] targetedPeople)

        Deprecated.

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../process/AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache)

        Deprecated.

        Description copied from interface: `[AppianTypeHolder](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))`

        If the implementing class references any Appian-typed objects (such as User, Group, Folder), this method should be implemented to put the primary keys of these objects in the given cache. Later, the cache will populate itself with the display strings that correspond to all of its ids, such as "Human Resources" for group 9.

        Specified by:

        `[fillInAppianTypes](../process/AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](../process/AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache` - cache of Appian-typed objects.

    -   ### hashCode

        public int hashCode()

        Deprecated.

        Returns the hashcode for this `NavigationButton`. Two `NavigationButton` objects that have the same key will have the same hashcode.

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") obj)

        Deprecated.

        Compares two `NavigationButton` objects for equality. Two objects are equal if they have the same key.

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`