---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/PaletteItem.html
original_path: api/com/appiancorp/suiteapi/process/PaletteItem.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class PaletteItem

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.process.PaletteItem

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class PaletteItem extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

A node that appears in a palette in the process designer, and can be dropped onto the canvas to add an activity to a process model. There are two icons that must be configured for every Smart Node.

-   Palette Icon: The graphical representation of the Smart Node on a Palette.
-   Canvas Icon: The graphical representation of the Smart Node on the Process Model Design Area.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.PaletteItem)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[PaletteItem](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAcSchemaId](#getAcSchemaId\(\))()`

    Returns the ID of the activity class schema associated with this palette item

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAcSchemaLocalId](#getAcSchemaLocalId\(\))()`

    Returns the local ID of the activity class schema associated with this palette item (specified by the local-id attribute in the XML file)

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getAppianType](#getAppianType\(\))()`

    Gets the related Appian type ID.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getCanvasIcon](#getCanvasIcon\(\))()`

    Returns the ID of the canvas icon

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getEventProducer](#getEventProducer\(\))()`

    Gets the type code for the event producer

    `boolean`

    `[getIsCustomPlugin](#getIsCustomPlugin\(\))()`

    Returns whether this palette item is a custom plugin Returns: whether this palette item is a custom plugin

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPaletteIcon](#getPaletteIcon\(\))()`

    Returns the ID of the palette icon

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPostTrigger](#getPostTrigger\(\))()`

    Gets the type code for the post-trigger

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getPreTrigger](#getPreTrigger\(\))()`

    Gets the type code for the pre-trigger

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getStaticResourcePrefix](#getStaticResourcePrefix\(\))()`

    Returns the relative URL prefix for all static web resources.

    `boolean`

    `[isEnabled](#isEnabled\(\))()`

    `void`

    `[setAcSchemaId](#setAcSchemaId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acSchemaId_)`

    Sets the associated activity class schema ID

    `void`

    `[setAcSchemaLocalId](#setAcSchemaLocalId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acSchemaLocalId_)`

    Sets the local ID of the activity class schema associated with this palette item

    `void`

    `[setAppianType](#setAppianType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianType_)`

    Sets the related Appian type ID.

    `void`

    `[setCanvasIcon](#setCanvasIcon\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") canvasIcon_)`

    Sets the ID of the canvas icon

    `void`

    `[setEnabled](#setEnabled\(boolean\))(boolean enabled)`

    `void`

    `[setEventProducer](#setEventProducer\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") eventProducer_)`

    Sets the type code for the event producer

    `void`

    `[setIsCustomPlugin](#setIsCustomPlugin\(boolean\))(boolean isCustomPlugin)`

    Sets whether this palette item is a custom plugin

    `void`

    `[setPaletteIcon](#setPaletteIcon\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") paletteIcon_)`

    Sets the ID of the palette icon

    `void`

    `[setPostTrigger](#setPostTrigger\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") postTrigger_)`

    Sets the type code for the post-trigger

    `void`

    `[setPreTrigger](#setPreTrigger\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") preTrigger_)`

    Sets the type code for the pre-trigger

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Converts this palette item to xml and returns it as a string.

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Converts the palette item to XML and stores it in a StringBuffer

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\)), [toString](../common/Identity.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### PaletteItem

        public PaletteItem()

-   ## Method Details

    -   ### getStaticResourcePrefix

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getStaticResourcePrefix()

        Returns the relative URL prefix for all static web resources. The URL prefix does not contain the application server context. Example, if the absolute URL prefix would be: "http://www.acme.com/suite/s/1268848383871/1/\_" Then this method will return the prefix in a format like "/s/1268848383871/1/\_"

        Returns:

        The relative URL prefix for static web resources without the application server context.

    -   ### isEnabled

        public boolean isEnabled()

    -   ### setEnabled

        public void setEnabled(boolean enabled)

    -   ### getEventProducer

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getEventProducer()

        Gets the type code for the event producer

        Returns:

        the type code for the event producer

    -   ### setEventProducer

        public void setEventProducer([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") eventProducer\_)

        Sets the type code for the event producer

        Parameters:

        `eventProducer_` - the type code for the event producer

    -   ### getPreTrigger

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPreTrigger()

        Gets the type code for the pre-trigger

        Returns:

        the type code for the pre-trigger

    -   ### setPreTrigger

        public void setPreTrigger([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") preTrigger\_)

        Sets the type code for the pre-trigger

        Parameters:

        `preTrigger_` - the type code for the pre-trigger

    -   ### getPostTrigger

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPostTrigger()

        Gets the type code for the post-trigger

        Returns:

        the type code for the post-trigger

    -   ### setPostTrigger

        public void setPostTrigger([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") postTrigger\_)

        Sets the type code for the post-trigger

        Parameters:

        `postTrigger_` - the type code for the post-trigger

    -   ### getAppianType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAppianType()

        Gets the related Appian type ID.

        Returns:

        the related Appian type ID.

    -   ### setAppianType

        public void setAppianType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") appianType\_)

        Sets the related Appian type ID.

        Parameters:

        `appianType_` - the related Appian type ID.

    -   ### getAcSchemaId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getAcSchemaId()

        Returns the ID of the activity class schema associated with this palette item

        Returns:

        the unique ID of the activity class schema

    -   ### setAcSchemaId

        public void setAcSchemaId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") acSchemaId\_)

        Sets the associated activity class schema ID

        Parameters:

        `acSchemaId_` - the ID of the activity class schema

    -   ### getCanvasIcon

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getCanvasIcon()

        Returns the ID of the canvas icon

        Returns:

        the id of the canvas icon

    -   ### setCanvasIcon

        public void setCanvasIcon([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") canvasIcon\_)

        Sets the ID of the canvas icon

        Parameters:

        `canvasIcon_` - the ID of the canvas icon

    -   ### getPaletteIcon

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getPaletteIcon()

        Returns the ID of the palette icon

        Returns:

        the ID of the palette icon

    -   ### setPaletteIcon

        public void setPaletteIcon([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") paletteIcon\_)

        Sets the ID of the palette icon

        Parameters:

        `paletteIcon_` - the ID of the palette icon

    -   ### getIsCustomPlugin

        public boolean getIsCustomPlugin()

        Returns whether this palette item is a custom plugin Returns: whether this palette item is a custom plugin

    -   ### setIsCustomPlugin

        public void setIsCustomPlugin(boolean isCustomPlugin)

        Sets whether this palette item is a custom plugin

        Parameters:

        `isCustomPlugin` - - whether this palette item is a custom plugin

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Converts this palette item to xml and returns it as a string.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        a `String` containing the XML serialization of this palette item

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Converts the palette item to XML and stores it in a StringBuffer

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - the `StringBuffer` to append the XML to

    -   ### getAcSchemaLocalId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAcSchemaLocalId()

        Returns the local ID of the activity class schema associated with this palette item (specified by the local-id attribute in the XML file)

        Returns:

        the local ID of the activity class schema

    -   ### setAcSchemaLocalId

        public void setAcSchemaLocalId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") acSchemaLocalId\_)

        Sets the local ID of the activity class schema associated with this palette item

        Parameters:

        `acSchemaLocalId_` - The acSchemaLocalId to set.