---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/MessageType.html
original_path: api/com/appiancorp/suiteapi/messaging/MessageType.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class MessageType

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.common.Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

com.appiancorp.suiteapi.messaging.MessageType

All Implemented Interfaces:

`[LocalId](../common/LocalId.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class MessageType extends [Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

Represents a schema (standard set of properties used for a particular purpose) for a JMS message.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.messaging.MessageType)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MessageType](#%3Cinit%3E\(\))()`

    `[MessageType](#%3Cinit%3E\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")[]`

    `[getPropertySchemas](#getPropertySchemas\(\))()`

    Gets the property schemas.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getXmlId](#getXmlId\(\))()`

    `boolean`

    `[isProcessesCanProduce](#isProcessesCanProduce\(\))()`

    Gets whether processes can produce this type of message (whether it shows up in the Send Message dialog in the Modeler).

    `boolean`

    `[isPropertyCustom](#isPropertyCustom\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") propertyName_)`

    Returns whether the specified property is a custom property (i.e., is not part of the message type).

    `void`

    `[setProcessesCanProduce](#setProcessesCanProduce\(boolean\))(boolean processesCanProduce_)`

    Sets whether processes can produce this type of message (whether it shows up in the Send Message dialog in the Modeler).

    `void`

    `[setPropertySchemas](#setPropertySchemas\(com.appiancorp.suiteapi.messaging.MessagePropertySchema%5B%5D\))([MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")[] propertySchemas_)`

    Sets the property schemas.

    `void`

    `[setXmlId](#setXmlId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") xmlId)`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Returns a string representation of the `Identity`.

    ### Methods inherited from class com.appiancorp.suiteapi.common.[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")

    `[equals](../common/Identity.html#equals\(java.lang.Object\)), [getId](../common/Identity.html#getId\(\)), [getName](../common/Identity.html#getName\(\)), [getUuid](../common/Identity.html#getUuid\(\)), [hashCode](../common/Identity.html#hashCode\(\)), [setId](../common/Identity.html#setId\(java.lang.Long\)), [setName](../common/Identity.html#setName\(java.lang.String\)), [setUuid](../common/Identity.html#setUuid\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### MessageType

        public MessageType()

    -   ### MessageType

        public MessageType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

-   ## Method Details

    -   ### getXmlId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getXmlId()

    -   ### setXmlId

        public void setXmlId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") xmlId)

    -   ### isProcessesCanProduce

        public boolean isProcessesCanProduce()

        Gets whether processes can produce this type of message (whether it shows up in the Send Message dialog in the Modeler).

        Returns:

        whether processes can produce this type of message

        See Also:

        -   [`setProcessesCanProduce(boolean)`](#setProcessesCanProduce\(boolean\))

    -   ### setProcessesCanProduce

        public void setProcessesCanProduce(boolean processesCanProduce\_)

        Sets whether processes can produce this type of message (whether it shows up in the Send Message dialog in the Modeler).

        Parameters:

        `processesCanProduce_` - whether processes can produce

        See Also:

        -   [`isProcessesCanProduce()`](#isProcessesCanProduce\(\))

    -   ### getPropertySchemas

        public [MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")\[\] getPropertySchemas()

        Gets the property schemas.

        Returns:

        the property schemas

        See Also:

        -   [`setPropertySchemas(MessagePropertySchema[])`](#setPropertySchemas\(com.appiancorp.suiteapi.messaging.MessagePropertySchema%5B%5D\))

    -   ### setPropertySchemas

        public void setPropertySchemas([MessagePropertySchema](MessagePropertySchema.html "class in com.appiancorp.suiteapi.messaging")\[\] propertySchemas\_)

        Sets the property schemas.

        Parameters:

        `propertySchemas_` - the property schemas

        See Also:

        -   [`getPropertySchemas()`](#getPropertySchemas\(\))

    -   ### isPropertyCustom

        public boolean isPropertyCustom([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") propertyName\_)

        Returns whether the specified property is a custom property (i.e., is not part of the message type).

        Parameters:

        `propertyName_` - the name of the property

        Returns:

        true if the property does not exist for this message type, false otherwise (also false for [`InternalMessage.JMS_TYPE_KEY`](InternalMessage.html#JMS_TYPE_KEY)

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[Identity](../common/Identity.html#toString\(\))`

        Returns a string representation of the `Identity`. In general, the toString method returns a string that "textually represents" this object.

        Overrides:

        `[toString](../common/Identity.html#toString\(\))` in class `[Identity](../common/Identity.html "class in com.appiancorp.suiteapi.common")`

        Returns:

        String representation of the object