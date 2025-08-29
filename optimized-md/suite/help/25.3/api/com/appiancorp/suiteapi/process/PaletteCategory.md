---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PaletteCategory.html
original_path: api/com/appiancorp/suiteapi/process/PaletteCategory.html
version: "25.3"
title: "Class PaletteCategory"
page_id: "api/com/appiancorp/suiteapi/process/PaletteCategory"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PaletteCategory

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.PaletteCategory

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class PaletteCategory extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

A category that holds palettes and/or other palette categories in a hierarchy.

See Also:

-   [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.PaletteCategory)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[PaletteCategory.AllCategories](PaletteCategory.AllCategories.html "class in com.appiancorp.suiteapi.process")`

    This bean is used to represent the top level of all categories in the hierarchy component

    `static class` 

    `[PaletteCategory.Descriptor](PaletteCategory.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    A descriptive object that can be used by the UI

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PaletteCategory](#%3Cinit%3E\(\))()`

    `[PaletteCategory](#%3Cinit%3E\(com.appiancorp.suiteapi.process.PaletteCategory\))([PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process") pc)`

    Copy constructor; note that the nested Palette and SubCategories are not copied.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Palette](Palette.html "class in com.appiancorp.suiteapi.process")[]`

    `[getPalettes](#getPalettes\(\))()`

    Returns the palettes contained within this palette category

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getParent](#getParent\(\))()`

    Returns the parent palette category of this palette category

    `[PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")[]`

    `[getSubCategories](#getSubCategories\(\))()`

    Returns the subcategories of this palette category

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    `void`

    `[removePalettes](#removePalettes\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Palette](Palette.html "class in com.appiancorp.suiteapi.process")> palettesToRemove)`

    Removes the given palettes

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled)`

    `void`

    `[setPalettes](#setPalettes\(com.appiancorp.suiteapi.process.Palette%5B%5D\))([Palette](Palette.html "class in com.appiancorp.suiteapi.process")[] palettes)`

    Sets the palette contained within the palette category

    `void`

    `[setParent](#setParent\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent_)`

    Sets the parent category of this palette category

    `void`

    `[setSubCategories](#setSubCategories\(com.appiancorp.suiteapi.process.PaletteCategory%5B%5D\))([PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")[] pc_)`

    Sets the subcategories of this palette category

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Not yet implemented

    `void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Not yet implemented

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### PaletteCategory

        public PaletteCategory()

    -   ### PaletteCategory

        public PaletteCategory([PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process") pc)

        Copy constructor; note that the nested Palette and SubCategories are not copied.

        Parameters:

        `pc` - the `PaletteCategory` on which to base this `PaletteCategory`

-   ## Method Details

    -   ### isEnabled

        public boolean isEnabled()

    -   ### setEnabled

        public void setEnabled(boolean enabled)

    -   ### getParent

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getParent()

        Returns the parent palette category of this palette category

        Returns:

        the ID of this parent category, or `null` if this category has no parent

    -   ### setParent

        public void setParent([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") parent\_)

        Sets the parent category of this palette category

        Parameters:

        `parent_` - the id of this parent category

    -   ### getPalettes

        public [Palette](Palette.html "class in com.appiancorp.suiteapi.process")\[\] getPalettes()

        Returns the palettes contained within this palette category

        Returns:

        an `Array` of the [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process")s contained within this palette category

    -   ### setPalettes

        public void setPalettes([Palette](Palette.html "class in com.appiancorp.suiteapi.process")\[\] palettes)

        Sets the palette contained within the palette category

        Parameters:

        `p_` - an `Array` of the [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process")s to be contained within this palette category

    -   ### removePalettes

        public void removePalettes([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Palette](Palette.html "class in com.appiancorp.suiteapi.process")\> palettesToRemove)

        Removes the given palettes

        Parameters:

        `palettesToRemove` - the list of [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process")s to remove from this category

    -   ### getSubCategories

        public [PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")\[\] getSubCategories()

        Returns the subcategories of this palette category

        Returns:

        an `Array` of the `PaletteCategory`s that are subcategories of this palette category

    -   ### setSubCategories

        public void setSubCategories([PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")\[\] pc\_)

        Sets the subcategories of this palette category

        Parameters:

        `pc_` - an `Array` of the `PaletteCategory`s to make subcategories of this palette category

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Not yet implemented

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        an empty string

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Not yet implemented

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - not used

    -   ### toXML

        public void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - The buffer on which to append the XML representation.