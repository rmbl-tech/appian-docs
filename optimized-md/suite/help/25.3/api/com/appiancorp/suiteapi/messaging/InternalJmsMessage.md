---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/InternalJmsMessage.html
original_path: api/com/appiancorp/suiteapi/messaging/InternalJmsMessage.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class InternalJmsMessage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.messaging.InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

com.appiancorp.suiteapi.messaging.InternalJmsMessage

* * *

public class InternalJmsMessage extends [InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

Represents a JMS message to be posted to JMS.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.messaging.[InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

    `[DESTINATION_EVENT_PERSISTENT_ID_KEY](InternalMessage.html#DESTINATION_EVENT_PERSISTENT_ID_KEY), [DESTINATION_NOT_PROVIDED_CODE](InternalMessage.html#DESTINATION_NOT_PROVIDED_CODE), [DESTINATION_PMUUID_KEY](InternalMessage.html#DESTINATION_PMUUID_KEY), [DESTINATION_PROCESS_ID_KEY](InternalMessage.html#DESTINATION_PROCESS_ID_KEY), [DESTINATION_PROCESS_MODEL_ID_KEY](InternalMessage.html#DESTINATION_PROCESS_MODEL_ID_KEY), [DUPLICATE_MESSAGE_CODE](InternalMessage.html#DUPLICATE_MESSAGE_CODE), [EXTERNAL_TO_PROCESS](InternalMessage.html#EXTERNAL_TO_PROCESS), [INVALID_USERNAME_CODE](InternalMessage.html#INVALID_USERNAME_CODE), [JMS_TYPE_KEY](InternalMessage.html#JMS_TYPE_KEY), [JMS_TYPE_KEY_BC](InternalMessage.html#JMS_TYPE_KEY_BC), [JMS_TYPE_NOT_PROVIDED_CODE](InternalMessage.html#JMS_TYPE_NOT_PROVIDED_CODE), [MAIL](InternalMessage.html#MAIL), [MAIL_ATTACHMENTS_KEY](InternalMessage.html#MAIL_ATTACHMENTS_KEY), [MAIL_KEY_KEY](InternalMessage.html#MAIL_KEY_KEY), [MAIL_SUBJECT_KEY](InternalMessage.html#MAIL_SUBJECT_KEY), [MESSAGE_UNDELIVERED_CODE](InternalMessage.html#MESSAGE_UNDELIVERED_CODE), [PROCESS_TO_PROCESS](InternalMessage.html#PROCESS_TO_PROCESS), [SUCCESS_CODE](InternalMessage.html#SUCCESS_CODE), [USERNAME_KEY](InternalMessage.html#USERNAME_KEY)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InternalJmsMessage](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTopic](#getTopic\(\))()`

    Gets the destination message topic (JMS).

    `void`

    `[setTopic](#setTopic\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topic_)`

    Sets the destination message topic (JMS).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    String representation of this object.

    ### Methods inherited from class com.appiancorp.suiteapi.messaging.[InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")

    `[eventPersistentUUID](InternalMessage.html#eventPersistentUUID\(java.lang.String\)), [eventPersistentUUIDs](InternalMessage.html#eventPersistentUUIDs\(java.lang.String%5B%5D\)), [eventPersistentUUIDs](InternalMessage.html#eventPersistentUUIDs\(java.util.List\)), [externalizeBooleanProperties](InternalMessage.html#externalizeBooleanProperties\(\)), [getBody](InternalMessage.html#getBody\(\)), [getDestinationEventPersistentID](InternalMessage.html#getDestinationEventPersistentID\(\)), [getDestinationPMID](InternalMessage.html#getDestinationPMID\(\)), [getDestinationPMUUID](InternalMessage.html#getDestinationPMUUID\(\)), [getDestinationProcessID](InternalMessage.html#getDestinationProcessID\(\)), [getId](InternalMessage.html#getId\(\)), [getJMSType](InternalMessage.html#getJMSType\(\)), [getMessageType](InternalMessage.html#getMessageType\(\)), [getProperties](InternalMessage.html#getProperties\(\)), [getProperty](InternalMessage.html#getProperty\(java.lang.String\)), [getPropertyExternalizationState](InternalMessage.html#getPropertyExternalizationState\(java.lang.String\)), [getPropertyExternalizationStates](InternalMessage.html#getPropertyExternalizationStates\(\)), [getUserName](InternalMessage.html#getUserName\(\)), [internalizeExternalizedProperty](InternalMessage.html#internalizeExternalizedProperty\(java.lang.String\)), [minimizeTypeSizes](InternalMessage.html#minimizeTypeSizes\(\)), [populateJavaxJmsMessage](InternalMessage.html#populateJavaxJmsMessage\(javax.jms.Message\)), [processId](InternalMessage.html#processId\(java.lang.Long\)), [processIds](InternalMessage.html#processIds\(java.lang.Long%5B%5D\)), [processIds](InternalMessage.html#processIds\(java.util.List\)), [processModelId](InternalMessage.html#processModelId\(java.lang.Long\)), [processModelIds](InternalMessage.html#processModelIds\(java.lang.Long%5B%5D\)), [processModelIds](InternalMessage.html#processModelIds\(java.util.List\)), [processModelUUID](InternalMessage.html#processModelUUID\(java.lang.String\)), [processModelUUIDs](InternalMessage.html#processModelUUIDs\(java.lang.String%5B%5D\)), [processModelUUIDs](InternalMessage.html#processModelUUIDs\(java.util.List\)), [routeToEventPersistentId](InternalMessage.html#routeToEventPersistentId\(javax.jms.Message,java.lang.Long,java.lang.String,java.lang.String\)), [routeToEventPersistentId](InternalMessage.html#routeToEventPersistentId\(javax.jms.Message,java.lang.String,java.lang.String\)), [routeToEventPersistentId](InternalMessage.html#routeToEventPersistentId\(javax.jms.Message,java.lang.String,java.lang.String,java.lang.String\)), [routeToProcess](InternalMessage.html#routeToProcess\(javax.jms.Message,java.lang.Long,java.lang.String\)), [routeToProcessModel](InternalMessage.html#routeToProcessModel\(javax.jms.Message,java.lang.Long,java.lang.String\)), [routeToProcessModel](InternalMessage.html#routeToProcessModel\(javax.jms.Message,java.lang.String,java.lang.String\)), [setBody](InternalMessage.html#setBody\(java.lang.String\)), [setDestinationEventPersistentID](InternalMessage.html#setDestinationEventPersistentID\(java.lang.String%5B%5D\)), [setDestinationPMID](InternalMessage.html#setDestinationPMID\(java.lang.Long%5B%5D\)), [setDestinationPMUUID](InternalMessage.html#setDestinationPMUUID\(java.lang.String%5B%5D\)), [setDestinationProcessID](InternalMessage.html#setDestinationProcessID\(java.lang.Long%5B%5D\)), [setExternalizedProperty](InternalMessage.html#setExternalizedProperty\(java.lang.String,java.lang.Object,long,boolean\)), [setExternalizedProperty](InternalMessage.html#setExternalizedProperty\(java.lang.String,java.lang.Object,java.lang.Long,boolean\)), [setId](InternalMessage.html#setId\(java.lang.Long\)), [setJMSType](InternalMessage.html#setJMSType\(java.lang.String\)), [setMessageType](InternalMessage.html#setMessageType\(java.lang.String\)), [setProperties](InternalMessage.html#setProperties\(java.util.Map\)), [setProperty](InternalMessage.html#setProperty\(java.lang.String,java.lang.Object\)), [setProperty](InternalMessage.html#setProperty\(java.lang.String,java.lang.Object,boolean\)), [setPropertyBestType](InternalMessage.html#setPropertyBestType\(java.lang.String,java.lang.String\)), [setPropertyExternalizationState](InternalMessage.html#setPropertyExternalizationState\(java.lang.String,boolean\)), [setPropertyExternalizationStates](InternalMessage.html#setPropertyExternalizationStates\(java.util.Map\)), [setSmartProperty](InternalMessage.html#setSmartProperty\(java.lang.String,java.lang.Object\)), [setUserName](InternalMessage.html#setUserName\(java.lang.String\)), [shouldGoToAllServers](InternalMessage.html#shouldGoToAllServers\(\)), [validatePropertyName](InternalMessage.html#validatePropertyName\(java.lang.String\)), [validatePropertyNameChar](InternalMessage.html#validatePropertyNameChar\(char\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### InternalJmsMessage

        public InternalJmsMessage()

-   ## Method Details

    -   ### getTopic

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTopic()

        Gets the destination message topic (JMS). Note that when a JmsMessage is sent through the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") to the Process topic, it bypasses JMS entirely and is sent directly to the appropriate Process Execution Servers.

        Returns:

        the message topic

        See Also:

        -   [`setTopic(String)`](#setTopic\(java.lang.String\))

    -   ### setTopic

        public void setTopic([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topic\_)

        Sets the destination message topic (JMS).

        Parameters:

        `topic_` - the message topic

        See Also:

        -   [`getTopic()`](#getTopic\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Description copied from class: `[InternalMessage](InternalMessage.html#toString\(\))`

        String representation of this object. Currently only displays the Id and Body of the message.

        Overrides:

        `[toString](InternalMessage.html#toString\(\))` in class `[InternalMessage](InternalMessage.html "class in com.appiancorp.suiteapi.messaging")`