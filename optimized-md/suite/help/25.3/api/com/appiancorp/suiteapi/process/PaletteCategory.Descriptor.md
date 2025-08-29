---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PaletteCategory.Descriptor.html
original_path: api/com/appiancorp/suiteapi/process/PaletteCategory.Descriptor.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PaletteCategory.Descriptor

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.PaletteCategory.Descriptor

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[PaletteCategory](PaletteCategory.html "class in com.appiancorp.suiteapi.process")

* * *

public static class PaletteCategory.Descriptor extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

A descriptive object that can be used by the UI

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.PaletteCategory.Descriptor)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Descriptor](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDescription](#getDescription\(\))()`

    Returns the description of the palette

    `int`

    `[getNumChildren](#getNumChildren\(\))()`

    Returns the number of children the palette category contains

    `int`

    `[getNumPalettes](#getNumPalettes\(\))()`

    Returns the number of palettes the palette category contains

    `void`

    `[setDescription](#setDescription\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description_)`

    Sets the description of the palette category

    `void`

    `[setNumChildren](#setNumChildren\(int\))(int i_)`

    Sets the number of children the palette category contains

    `void`

    `[setNumPalettes](#setNumPalettes\(int\))(int i_)`

    Sets the number of palettes the palette category contains

    `void`

    `[toXML](#toXML\(java.lang.StringBuffer\))([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer_)`

    Not yet implemented

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Descriptor

        public Descriptor()

-   ## Method Details

    -   ### getDescription

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDescription()

        Returns the description of the palette

        Returns:

        the description of the palette

    -   ### setDescription

        public void setDescription([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") description\_)

        Sets the description of the palette category

        Parameters:

        `description_` - a description of the palette category

    -   ### getNumChildren

        public int getNumChildren()

        Returns the number of children the palette category contains

        Returns:

        the number of children of the palette category

    -   ### setNumChildren

        public void setNumChildren(int i\_)

        Sets the number of children the palette category contains

        Parameters:

        `i_` - the number of children the palette category contains

    -   ### getNumPalettes

        public int getNumPalettes()

        Returns the number of palettes the palette category contains

        Returns:

        the number of palettes the palette category contains

    -   ### setNumPalettes

        public void setNumPalettes(int i\_)

        Sets the number of palettes the palette category contains

        Parameters:

        `i_` - the number of palettes the palette category contains

    -   ### toXML

        public void toXML([StringBuffer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuffer.html "class or interface in java.lang") buffer\_)

        Not yet implemented

        Parameters:

        `buffer_` - not used