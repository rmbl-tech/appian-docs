---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Palette.html
original_path: api/com/appiancorp/suiteapi/process/Palette.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Palette

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.Palette

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Palette extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Holds a collection of nodes that can be dropped onto a canvas in the designer to create a process. Each node is represented as a `PaletteItem`, and the activity class schema the node represents is stored as an `ActivityClassSchema`

See Also:

-   [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")
-   [`PaletteCategory`](PaletteCategory.html "class in com.appiancorp.suiteapi.process")
-   [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Palette)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Palette.Descriptor](Palette.Descriptor.html "class in com.appiancorp.suiteapi.process")`

    A name/id object that can be used by the UI

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Palette](#%3Cinit%3E\(\))()`

    `[Palette](#%3Cinit%3E\(com.appiancorp.suiteapi.process.Palette\))([Palette](Palette.html "class in com.appiancorp.suiteapi.process") palette)`

    Creates a new Palette as a deep copy of a given one.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[addActivityClassSchema](#addActivityClassSchema\(com.appiancorp.suiteapi.process.ActivityClassSchema\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") acs)`

    Adds an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") to the existing schemas for this palette.

    `void`

    `[addItem](#addItem\(com.appiancorp.suiteapi.process.PaletteItem\))([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItem)`

    Adds a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") to the existing items for this palette.

    `boolean`

    `[containsPaletteItem](#containsPaletteItem\(com.appiancorp.suiteapi.process.PaletteItem\))([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItem)`

    Returns `true` if this palette contains the specified [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process").

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCategory](#getCategory\(\))()`

    Returns the palette's category

    `[PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")[]`

    `[getItems](#getItems\(\))()`

    Returns the [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")s on the palette

    `[ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[]`

    `[getSchemas](#getSchemas\(\))()`

    Returns the activity class schemas associated with the palette

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    `boolean`

    `[isSystem](#isSystem\(\))()`

    Whether the palette is provided by the system or is a custom one.

    `void`

    `[removePaletteItem](#removePaletteItem\(com.appiancorp.suiteapi.process.PaletteItem\))([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItemToRemove)`

    Removes the provided [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") from the palette.

    `void`

    `[removePaletteItems](#removePaletteItems\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")> paletteItemsToRemove)`

    Removes the provided [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")s from the palette.

    `void`

    `[setCategory](#setCategory\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") category_)`

    Sets the palette's category

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled)`

    `void`

    `[setItems](#setItems\(com.appiancorp.suiteapi.process.PaletteItem%5B%5D\))([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")[] items)`

    Sets the items in the palette.

    `void`

    `[setSchemas](#setSchemas\(com.appiancorp.suiteapi.process.ActivityClassSchema%5B%5D\))([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")[] newSchemas)`

    Sets the activity class schemas to be associated with this palette (removing the existing ones).

    `void`

    `[setSystem](#setSystem\(boolean\))(boolean system)`

    Sets the palette's system property which marks it as a system-provided palette.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts the palette to XML and returns it as as string

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer)`

    Converts the palette to XML and stores it in a StringBuffer

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### Palette

        public Palette()

    -   ### Palette

        public Palette([Palette](Palette.html "class in com.appiancorp.suiteapi.process") palette)

        Creates a new Palette as a deep copy of a given one.

        Parameters:

        `palette` - The [`Palette`](Palette.html "class in com.appiancorp.suiteapi.process") on which this instance should be based.

-   ## Method Details

    -   ### isEnabled

        public boolean isEnabled()

    -   ### setEnabled

        public void setEnabled(boolean enabled)

    -   ### isSystem

        public boolean isSystem()

        Whether the palette is provided by the system or is a custom one.

        Returns:

        true if the palette has been provided by the system or false otherwise.

    -   ### setSystem

        public void setSystem(boolean system)

        Sets the palette's system property which marks it as a system-provided palette.

        Parameters:

        `system` - whether the palette is provided by the system or is a custom one.

    -   ### getCategory

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCategory()

        Returns the palette's category

        Returns:

        the ID of the category containing this palette

    -   ### setCategory

        public void setCategory([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") category\_)

        Sets the palette's category

        Parameters:

        `category_` - the ID of the category in which to place this palette

    -   ### getItems

        public [PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")\[\] getItems()

        Returns the [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")s on the palette

        Returns:

        an `Array` containing the `PaletteItem`s on this palette

    -   ### setItems

        public void setItems([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")\[\] items)

        Sets the items in the palette. Removes the items previously in the palette.

        Parameters:

        `items_` - the [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")s to place in this palette

    -   ### getSchemas

        public [ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] getSchemas()

        Returns the activity class schemas associated with the palette

        Returns:

        the [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")s associated with the palette

    -   ### setSchemas

        public void setSchemas([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")\[\] newSchemas)

        Sets the activity class schemas to be associated with this palette (removing the existing ones). Those schemas that are not mapped to an existing [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") in the palette then it will not be added.

        Parameters:

        `newSchemas` - The [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")s to be associated with this palette.

    -   ### addActivityClassSchema

        public void addActivityClassSchema([ActivityClassSchema](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") acs)

        Adds an [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") to the existing schemas for this palette. If the schema is not mapped to an existing [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") in the palette then it will not be added. If the schema already exists in the palette then it will not overwrite the existing one.

        Parameters:

        `acs` - the schema to add to the list

    -   ### addItem

        public void addItem([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItem)

        Adds a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") to the existing items for this palette. If the palette already contains a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") with the same name then the existing [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") is replaced with this new one.

        Parameters:

        `paletteItem` - The [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") to add to the palette

    -   ### removePaletteItem

        public void removePaletteItem([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItemToRemove)

        Removes the provided [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") from the palette. The [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process") associated with the palette item is also removed.

        Parameters:

        `paletteItemToRemove` - The palette item to remove

    -   ### removePaletteItems

        public void removePaletteItems([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process")\> paletteItemsToRemove)

        Removes the provided [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")s from the palette. The [`ActivityClassSchema`](ActivityClassSchema.html "class in com.appiancorp.suiteapi.process")s associated with the palette items are also removed.

        Parameters:

        `paletteItemsToRemove` - The list of palette items to remove

    -   ### containsPaletteItem

        public boolean containsPaletteItem([PaletteItem](PaletteItem.html "class in com.appiancorp.suiteapi.process") paletteItem)

        Returns `true` if this palette contains the specified [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process"). Specifically, returns `true` if there is a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") with the same name as the one of the provided [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process").

        Parameters:

        `paletteItem` - [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") to look for

        Returns:

        `true` if there is a [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process") with the given [`PaletteItem`](PaletteItem.html "class in com.appiancorp.suiteapi.process")'s name

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts the palette to XML and returns it as as string

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        a `String` containing the XML serialization of this palette

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer)

        Converts the palette to XML and stores it in a StringBuffer

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer` - the `StringBuffer` to append the XML to