---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/messaging/InternalMessage.html
original_path: api/com/appiancorp/suiteapi/messaging/InternalMessage.html
version: "25.3"
title: "Class InternalMessage"
page_id: "api/com/appiancorp/suiteapi/messaging/InternalMessage"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.messaging](package-summary.html)

# Class InternalMessage

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.messaging.InternalMessage

Direct Known Subclasses:

`[InternalJmsMessage](InternalJmsMessage.html "class in com.appiancorp.suiteapi.messaging")`

* * *

public class InternalMessage extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

Represents a message in the Appian Messaging framework. Messages can be easily converted from a `javax.jms.Message` object to an `InternalMessage` object by constructing the `InternalMessage` using [`InternalMessage(Message)`](#%3Cinit%3E\(javax.jms.Message\)), and from an `InternalMessage` object to a `javax.jms.Message` using [`populateJavaxJmsMessage(Message)`](#populateJavaxJmsMessage\(javax.jms.Message\)).

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DESTINATION_EVENT_PERSISTENT_ID_KEY](#DESTINATION_EVENT_PERSISTENT_ID_KEY)`

    Property name for the message property containing the persistent IDs for destination events.

    `static final int`

    `[DESTINATION_NOT_PROVIDED_CODE](#DESTINATION_NOT_PROVIDED_CODE)`

    Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because none of the destination fields were not filled in.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DESTINATION_PMUUID_KEY](#DESTINATION_PMUUID_KEY)`

    Property name for the message property containing the UUIDs for destination process models.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DESTINATION_PROCESS_ID_KEY](#DESTINATION_PROCESS_ID_KEY)`

    Property name for the message property containing the IDs for destination processes.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[DESTINATION_PROCESS_MODEL_ID_KEY](#DESTINATION_PROCESS_MODEL_ID_KEY)`

    Property name for the message property containing the IDs for destination process models.

    `static final int`

    `[DUPLICATE_MESSAGE_CODE](#DUPLICATE_MESSAGE_CODE)`

    Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message was not sent because a message with the same ID had previously been sent.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[EXTERNAL_TO_PROCESS](#EXTERNAL_TO_PROCESS)`

    Message type name for a message sent from a non-Appian Process application to Appian Process (e.g., a message sent from PeopleSoft to a Receive Message event).

    `static final int`

    `[INVALID_USERNAME_CODE](#INVALID_USERNAME_CODE)`

    Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because the username provided was invalid.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[JMS_TYPE_KEY](#JMS_TYPE_KEY)`

    Property name for the message property containing the message type.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[JMS_TYPE_KEY_BC](#JMS_TYPE_KEY_BC)`

    `static final int`

    `[JMS_TYPE_NOT_PROVIDED_CODE](#JMS_TYPE_NOT_PROVIDED_CODE)`

    Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because the JMS type was not provided.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MAIL](#MAIL)`

    Message type name for a message sent via e-mail to Appian Process.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MAIL_ATTACHMENTS_KEY](#MAIL_ATTACHMENTS_KEY)`

    (Email message types only) Property name for the message property containing the document IDs of any e-mail attachments that were saved into Appian Content.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MAIL_KEY_KEY](#MAIL_KEY_KEY)`

    (Email message types only) Property name for the message property containing the key from the subject of the e-mail.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[MAIL_SUBJECT_KEY](#MAIL_SUBJECT_KEY)`

    (Email message types only) Property name for the message property containing subject of the e-mail, in its original form.

    `static final int`

    `[MESSAGE_UNDELIVERED_CODE](#MESSAGE_UNDELIVERED_CODE)`

    Result code to indicate the message was not delivered to the server as the server was down.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[PROCESS_TO_PROCESS](#PROCESS_TO_PROCESS)`

    Message type name for a message sent from Appian Process to Appian Process (e.g., a Send Message event would send this type of message to a Receive Message event).

    `static final int`

    `[SUCCESS_CODE](#SUCCESS_CODE)`

    Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message was successfully sent.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[USERNAME_KEY](#USERNAME_KEY)`

    Property name for the message property containing the username of the user that sent the message.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[InternalMessage](#%3Cinit%3E\(\))()`

    Default constructor.

    `[InternalMessage](#%3Cinit%3E\(javax.jms.Message\))(javax.jms.Message javaxJmsMessage_)`

    Constructs a new `InternalMessage` based on an existing JMS message ( `javax.jms.Message`).

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[eventPersistentUUID](#eventPersistentUUID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[eventPersistentUUIDs](#eventPersistentUUIDs\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[eventPersistentUUIDs](#eventPersistentUUIDs\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> listUuids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

    `void`

    `[externalizeBooleanProperties](#externalizeBooleanProperties\(\))()`

    Externalizes all Boolean properties so that they are handled correctly by Expression.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBody](#getBody\(\))()`

    Gets the message body.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDestinationEventPersistentID](#getDestinationEventPersistentID\(\))()`

    Gets the destination event persistent IDs (which events the message will be sent to).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDestinationPMID](#getDestinationPMID\(\))()`

    Gets the destination PM IDs (which process models the message will be sent to).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getDestinationPMUUID](#getDestinationPMUUID\(\))()`

    Gets the destination PM UUIDs (which process models the message will be sent to).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[]`

    `[getDestinationProcessID](#getDestinationProcessID\(\))()`

    Gets the destination process IDs (which processes the message will be sent to).

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the message ID.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getJMSType](#getJMSType\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageType](#getMessageType\(\))()`

    Gets the message type ([`JMS_TYPE_KEY`](#JMS_TYPE_KEY)).

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getProperties](#getProperties\(\))()`

    Gets the message properties.

    `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    `[getProperty](#getProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Gets the named property.

    `boolean`

    `[getPropertyExternalizationState](#getPropertyExternalizationState\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Gets the message property externalization state for the specified property.

    `[Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util")`

    `[getPropertyExternalizationStates](#getPropertyExternalizationStates\(\))()`

    Gets the message property externalization states.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getUserName](#getUserName\(\))()`

    Gets the UserName property.

    `[TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process")`

    `[internalizeExternalizedProperty](#internalizeExternalizedProperty\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_)`

    Returns the internalized version of the externalized property.

    `void`

    `[minimizeTypeSizes](#minimizeTypeSizes\(\))()`

    Makes the underlying storage for all of the properties the smallest it can be but still storing the data.

    `javax.jms.Message`

    `[populateJavaxJmsMessage](#populateJavaxJmsMessage\(javax.jms.Message\))(javax.jms.Message javaxJmsMessage_)`

    Populates the JMS message with the body and properties of this message.

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processId](#processId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pid)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processIds](#processIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processIds](#processIds\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> listPids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelId](#processModelId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmid)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelIds](#processModelIds\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] pmids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelIds](#processModelIds\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")> listPmids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelUUID](#processModelUUID\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelUUIDs](#processModelUUIDs\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] uuids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[processModelUUIDs](#processModelUUIDs\(java.util.List\))([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")> listUuids)`

    Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

    `static void`

    `[routeToEventPersistentId](#routeToEventPersistentId\(javax.jms.Message,java.lang.Long,java.lang.String,java.lang.String\))(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given event persistent id from the given username.

    `static void`

    `[routeToEventPersistentId](#routeToEventPersistentId\(javax.jms.Message,java.lang.String,java.lang.String\))(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given event persistent id from the given username.

    `static void`

    `[routeToEventPersistentId](#routeToEventPersistentId\(javax.jms.Message,java.lang.String,java.lang.String,java.lang.String\))(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given event persistent id from the given username.

    `static void`

    `[routeToProcess](#routeToProcess\(javax.jms.Message,java.lang.Long,java.lang.String\))(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given process from the given username.

    `static void`

    `[routeToProcessModel](#routeToProcessModel\(javax.jms.Message,java.lang.Long,java.lang.String\))(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given process model from the given username.

    `static void`

    `[routeToProcessModel](#routeToProcessModel\(javax.jms.Message,java.lang.String,java.lang.String\))(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username)`

    Populate the JMS Message with routing information to the given process model from the given username.

    `void`

    `[setBody](#setBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body_)`

    Sets the message body.

    `void`

    `[setDestinationEventPersistentID](#setDestinationEventPersistentID\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] eventPersistentIds_)`

    Sets the destination event persistent ID property (which events the message will be sent to).

    `void`

    `[setDestinationPMID](#setDestinationPMID\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processModelIds_)`

    Sets the destination PM ID property (which process models the message will be sent to).

    `void`

    `[setDestinationPMUUID](#setDestinationPMUUID\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] processModelUuids)`

    Sets the destination PM UUID property (which process models the message will be sent to).

    `void`

    `[setDestinationProcessID](#setDestinationProcessID\(java.lang.Long%5B%5D\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")[] processIds_)`

    Sets the destination process ID property (which processes the message will be sent to).

    `void`

    `[setExternalizedProperty](#setExternalizedProperty\(java.lang.String,java.lang.Object,long,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_, long type_, boolean multiple_)`

    Externalizes the value and sets the specified message property to the value provided.

    `void`

    `[setExternalizedProperty](#setExternalizedProperty\(java.lang.String,java.lang.Object,java.lang.Long,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_, boolean multiple_)`

    Externalizes the value and sets the specified message property to the value provided.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the message ID.

    `void`

    `[setJMSType](#setJMSType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsType_)`

    `void`

    `[setMessageType](#setMessageType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsType_)`

    Sets the message type ([`JMS_TYPE_KEY`](#JMS_TYPE_KEY)) to the type passed in.

    `void`

    `[setProperties](#setProperties\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") properties_)`

    Sets the message properties.

    `void`

    `[setProperty](#setProperty\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_)`

    Sets the specified message property to the given value.

    `void`

    `[setProperty](#setProperty\(java.lang.String,java.lang.Object,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value_, boolean externalized_)`

    Sets the specified message property to the value, and sets the externalized map entry for that property to the boolean passed in.

    `void`

    `[setPropertyBestType](#setPropertyBestType\(java.lang.String,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") strRep_)`

    Sets the specified message property using the "best fit" type.

    `void`

    `[setPropertyExternalizationState](#setPropertyExternalizationState\(java.lang.String,boolean\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name_, boolean isExternalized_)`

    Sets the message property externalization state for the specified property.

    `void`

    `[setPropertyExternalizationStates](#setPropertyExternalizationStates\(java.util.Map\))([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") propertyExternalizationStates_)`

    Sets the message property externalization states.

    `void`

    `[setSmartProperty](#setSmartProperty\(java.lang.String,java.lang.Object\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)`

    Determines if a value is plain, comma-delimited or externalized, and sets accordingly. 123 is an id destination (all digits) 0001d0c7-d9ae-8000-d9ae-57b76157b761 is a UUID destination (all hex-digits an -, 8-4-4-4-12) 01000000200000000000000003000000040000006162630001000000030000000100000002000000 is an externalized destination (>=80 hex-digits) 123,45,67890123 is a list of ids uuid, uuid, uuid is a list of uuids (list of externals is not allowed, and unnecessary, as it's embedded) Number (Integer, Long) values are allowed for ids.

    `void`

    `[setUserName](#setUserName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username_)`

    Sets the UserName property.

    `boolean`

    `[shouldGoToAllServers](#shouldGoToAllServers\(\))()`

    Checks whether the message should go to design and all execution servers.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    String representation of this object.

    `static boolean`

    `[validatePropertyName](#validatePropertyName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") propertyName_)`

    Checks if property name is valid.

    `static boolean`

    `[validatePropertyNameChar](#validatePropertyNameChar\(char\))(char c_)`

    Checks whether a character is allowed in a property name.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### PROCESS\_TO\_PROCESS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") PROCESS\_TO\_PROCESS

        Message type name for a message sent from Appian Process to Appian Process (e.g., a Send Message event would send this type of message to a Receive Message event).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.PROCESS_TO_PROCESS)

    -   ### EXTERNAL\_TO\_PROCESS

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") EXTERNAL\_TO\_PROCESS

        Message type name for a message sent from a non-Appian Process application to Appian Process (e.g., a message sent from PeopleSoft to a Receive Message event). This message type is not used for all messages from non-Appian Process applications. It should only be used as the default when no more suitable message type exists. For instance, e-mail messages will use the [`MAIL`](#MAIL) message type.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.EXTERNAL_TO_PROCESS)

    -   ### MAIL

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MAIL

        Message type name for a message sent via e-mail to Appian Process. E-mail messages are processed by Apache James and are then sent into Appian Process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.MAIL)

    -   ### SUCCESS\_CODE

        public static final int SUCCESS\_CODE

        Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message was successfully sent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.SUCCESS_CODE)

    -   ### JMS\_TYPE\_NOT\_PROVIDED\_CODE

        public static final int JMS\_TYPE\_NOT\_PROVIDED\_CODE

        Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because the JMS type was not provided.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.JMS_TYPE_NOT_PROVIDED_CODE)

    -   ### INVALID\_USERNAME\_CODE

        public static final int INVALID\_USERNAME\_CODE

        Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because the username provided was invalid.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.INVALID_USERNAME_CODE)

    -   ### DESTINATION\_NOT\_PROVIDED\_CODE

        public static final int DESTINATION\_NOT\_PROVIDED\_CODE

        Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message could not be sent because none of the destination fields were not filled in.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DESTINATION_NOT_PROVIDED_CODE)

    -   ### DUPLICATE\_MESSAGE\_CODE

        public static final int DUPLICATE\_MESSAGE\_CODE

        Result code returned from the [`MessagePublisherService`](MessagePublisherService.html "interface in com.appiancorp.suiteapi.messaging") or [`ProcessExecutionService.handleMessages(InternalMessage[])`](../process/ProcessExecutionService.html#handleMessages\(com.appiancorp.suiteapi.messaging.InternalMessage%5B%5D\)) indicating that the message was not sent because a message with the same ID had previously been sent.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DUPLICATE_MESSAGE_CODE)

    -   ### MESSAGE\_UNDELIVERED\_CODE

        public static final int MESSAGE\_UNDELIVERED\_CODE

        Result code to indicate the message was not delivered to the server as the server was down.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.MESSAGE_UNDELIVERED_CODE)

    -   ### DESTINATION\_PMUUID\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DESTINATION\_PMUUID\_KEY

        Property name for the message property containing the UUIDs for destination process models. The data stored in this property should be an externalized form of an array of strings ( [`AppianType.STRING`](../type/AppianType.html#STRING)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DESTINATION_PMUUID_KEY)

    -   ### DESTINATION\_PROCESS\_ID\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DESTINATION\_PROCESS\_ID\_KEY

        Property name for the message property containing the IDs for destination processes. The data stored in this property should be an externalized form of an array of longs ([`TypedVariableTypes.LONG`](../process/TypedVariableTypes.html#LONG)). Note that you can set this property by calling [`setDestinationProcessID(Long[])`](#setDestinationProcessID\(java.lang.Long%5B%5D\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DESTINATION_PROCESS_ID_KEY)

    -   ### DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Property name for the message property containing the IDs for destination process models. The data stored in this property should be an externalized form of an array of longs ([`TypedVariableTypes.LONG`](../process/TypedVariableTypes.html#LONG)). Note that you can set this property by calling [`setDestinationPMID(Long[])`](#setDestinationPMID\(java.lang.Long%5B%5D\)) .

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DESTINATION_PROCESS_MODEL_ID_KEY)

    -   ### DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

        Property name for the message property containing the persistent IDs for destination events. The data stored in this property should be an externalized form of an array of strings ( [`AppianType.STRING`](../type/AppianType.html#STRING)). Note that you can set this property by calling [`setDestinationEventPersistentID(String[])`](#setDestinationEventPersistentID\(java.lang.String%5B%5D\)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.DESTINATION_EVENT_PERSISTENT_ID_KEY)

    -   ### JMS\_TYPE\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") JMS\_TYPE\_KEY

        Property name for the message property containing the message type. Message types can be configured in message-types.xml. This property is required for all messages sent to Appian Process, and is automatically set for all messages sent from Appian Process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.JMS_TYPE_KEY)

    -   ### JMS\_TYPE\_KEY\_BC

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") JMS\_TYPE\_KEY\_BC

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.JMS_TYPE_KEY_BC)

    -   ### USERNAME\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") USERNAME\_KEY

        Property name for the message property containing the username of the user that sent the message. This property is required for all messages sent to Appian Process, and is automatically set for all messages sent from Appian Process.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.USERNAME_KEY)

    -   ### MAIL\_ATTACHMENTS\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MAIL\_ATTACHMENTS\_KEY

        (Email message types only) Property name for the message property containing the document IDs of any e-mail attachments that were saved into Appian Content. The data stored in this property should be an externalized form of an array of document IDs ([`AppianType.DOCUMENT`](../type/AppianType.html#DOCUMENT) ).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.MAIL_ATTACHMENTS_KEY)

    -   ### MAIL\_KEY\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MAIL\_KEY\_KEY

        (Email message types only) Property name for the message property containing the key from the subject of the e-mail. The data stored in this property should be a string ([`AppianType.STRING`](../type/AppianType.html#STRING)). Keys can be placed in the subject of an e-mail, and are enclosed between \[ and \] markers. For example, if the e-mail subject were "\[ticket-142\] My Ticket", the key would be "ticket-142".

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.MAIL_KEY_KEY)

    -   ### MAIL\_SUBJECT\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") MAIL\_SUBJECT\_KEY

        (Email message types only) Property name for the message property containing subject of the e-mail, in its original form. The key is not removed from the subject. The data stored in this property should be a string ( [`AppianType.STRING`](../type/AppianType.html#STRING)).

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.messaging.InternalMessage.MAIL_SUBJECT_KEY)

-   ## Constructor Details

    -   ### InternalMessage

        public InternalMessage()

        Default constructor. Required for return converters.

    -   ### InternalMessage

        public InternalMessage(javax.jms.Message javaxJmsMessage\_) throws javax.jms.JMSException

        Constructs a new `InternalMessage` based on an existing JMS message ( `javax.jms.Message`). All of the message properties with valid names are copied from the JMS message into the new `InternalMessage` (property name validity is determined by calling [`validatePropertyName(String)`](#validatePropertyName\(java.lang.String\))). In addition, if the JMS message is a `TextMessage`, the body is also copied from the JMS message into the new `InternalMessage`. A log4j message will be printed out with a log level of WARN if the message property has an invalid name.

        Parameters:

        `javaxJmsMessage_` - the JMS message to populate the newly constructed object from

        Throws:

        `javax.jms.JMSException` - if any exceptions are thrown from the JMS methods

-   ## Method Details

    -   ### processModelId

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pmid)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmid` -

        Returns:

    -   ### processModelIds

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pmids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmids` -

        Returns:

    -   ### processModelIds

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelIds([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> listPmids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmids` -

        Returns:

    -   ### processId

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") pid)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmid` -

        Returns:

    -   ### processIds

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processIds([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] pids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmids` -

        Returns:

    -   ### processIds

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processIds([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\> listPids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PROCESS\_MODEL\_ID\_KEY

        Parameters:

        `pmids` -

        Returns:

    -   ### processModelUUID

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUUID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

        Parameters:

        `uuid` -

        Returns:

    -   ### processModelUUIDs

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUUIDs([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

        Parameters:

        `uuids` -

        Returns:

    -   ### processModelUUIDs

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUUIDs([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> listUuids)

        Generate String suitable for setting InternalMessage.DESTINATION\_PMUUID\_KEY

        Parameters:

        `uuids` -

        Returns:

    -   ### eventPersistentUUID

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUUID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") uuid)

        Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

        Parameters:

        `uuid` -

        Returns:

    -   ### eventPersistentUUIDs

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUUIDs([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] uuids)

        Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

        Parameters:

        `uuids` -

        Returns:

    -   ### eventPersistentUUIDs

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUUIDs([List](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/List.html "class or interface in java.util")<[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\> listUuids)

        Generate String suitable for setting InternalMessage.DESTINATION\_EVENT\_PERSISTENT\_ID\_KEY

        Parameters:

        `uuids` -

        Returns:

    -   ### getBody

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBody()

        Gets the message body. If this value begins with an equals sign (=), it will be interpreted as an expression by the Appian Process engine.

        Returns:

        the message body

    -   ### setBody

        public void setBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body\_)

        Sets the message body. If this value begins with an equals sign (=), it will be interpreted as an expression by the Appian Process engine.

        Parameters:

        `body_` - the message body

        See Also:

        -   [`getBody()`](#getBody\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the message ID. In a Multiple Execution Server environment, each message ID has the source server's ID encoded into it. The message ID is also used to eliminate messages from being processed more than once by the same server.

        Returns:

        the message ID

        See Also:

        -   [`setId(Long)`](#setId\(java.lang.Long\))

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the message ID. This is set by the database server that sends the message, and should not be set from Java.

        Parameters:

        `id_` - the message ID

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getProperties

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getProperties()

        Gets the message properties. In the map returned, the keys are the property names, and the values are the property values.

        Returns:

        the message property map

        See Also:

        -   [`setProperties(Map)`](#setProperties\(java.util.Map\))

    -   ### setProperties

        public void setProperties([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") properties\_)

        Sets the message properties.

        Parameters:

        `properties_` - the message property map

        See Also:

        -   [`getProperties()`](#getProperties\(\))

    -   ### setProperty

        public void setProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_)

        Sets the specified message property to the given value. This is the equivalent of calling [`setProperty(String, Object, boolean)`](#setProperty\(java.lang.String,java.lang.Object,boolean\)) with the `externalized_` parameter set to false.

        Parameters:

        `name_` - the property name

        `value_` - the value

        See Also:

        -   [`getProperty(String)`](#getProperty\(java.lang.String\))

    -   ### setPropertyBestType

        public void setPropertyBestType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") strRep\_)

        Sets the specified message property using the "best fit" type. This means that it attempts to maximize the number of types it can be converted to in JMS messages via JMS's auto-conversion requirements (e.g., 123 would be set as a Byte, since JMS can automatically convert that to Byte, Short, Integer, Long, or String, depending on which getter is used). Uses `AppianBeanUtils.convertToBestFitType(java.lang.String, boolean)` . Note that this does not minimize the number of bytes necessary to represent a number, such as converting 125 from a Long into a Byte. The [`minimizeTypeSizes()`](#minimizeTypeSizes\(\)) method does that.

        Parameters:

        `name_` - the property name

        `strRep_` - the value

    -   ### setProperty

        public void setProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_, boolean externalized\_)

        Sets the specified message property to the value, and sets the externalized map entry for that property to the boolean passed in. Note that it does **not** automatically externalize the value passed in. It leaves the value passed in as is. If you want it to automatically externalize the value, call [`setExternalizedProperty(String, Object, Long, boolean)`](#setExternalizedProperty\(java.lang.String,java.lang.Object,java.lang.Long,boolean\))

        Parameters:

        `name_` - the property name

        `value_` - the value

        `externalized_` - whether the value has been externalized

        See Also:

        -   [`getProperty(String)`](#getProperty\(java.lang.String\))

    -   ### setSmartProperty

        public void setSmartProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value)

        Determines if a value is plain, comma-delimited or externalized, and sets accordingly. 123 is an id destination (all digits) 0001d0c7-d9ae-8000-d9ae-57b76157b761 is a UUID destination (all hex-digits an -, 8-4-4-4-12) 01000000200000000000000003000000040000006162630001000000030000000100000002000000 is an externalized destination (>=80 hex-digits) 123,45,67890123 is a list of ids uuid, uuid, uuid is a list of uuids (list of externals is not allowed, and unnecessary, as it's embedded) Number (Integer, Long) values are allowed for ids.

        Parameters:

        `name` -

        `value` -

    -   ### getProperty

        public [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") getProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Gets the named property.

        Parameters:

        `name_` - the name of the property

        Returns:

        the property value

        See Also:

        -   [`setProperty(String, Object, boolean)`](#setProperty\(java.lang.String,java.lang.Object,boolean\))

    -   ### setExternalizedProperty

        public void setExternalizedProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_, long type\_, boolean multiple\_)

        Externalizes the value and sets the specified message property to the value provided.

        Parameters:

        `name_` - the property name

        `value_` - the value

        `type_` - the type to convert (in TypedVariable)

        `multiple_` - whether it can contain multiple valuse

        See Also:

        -   [`setExternalizedProperty(String, Object, Long, boolean)`](#setExternalizedProperty\(java.lang.String,java.lang.Object,java.lang.Long,boolean\))

    -   ### setExternalizedProperty

        public void setExternalizedProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") value\_, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_, boolean multiple\_)

        Externalizes the value and sets the specified message property to the value provided.

        Parameters:

        `name_` - the property name

        `value_` - the value

        `type_` - the type to convert (in [`TypedVariable`](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process"))

        `multiple_` - whether it can contain multiple valuse

    -   ### internalizeExternalizedProperty

        public [TypedVariable](../process/TypedVariable.html "class in com.appiancorp.suiteapi.process") internalizeExternalizedProperty([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Returns the internalized version of the externalized property.

        Parameters:

        `name_` - the property name

        Returns:

        the `TypedVariable` representation

    -   ### setMessageType

        public void setMessageType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsType\_)

        Sets the message type ([`JMS_TYPE_KEY`](#JMS_TYPE_KEY)) to the type passed in.

        Parameters:

        `jmsType_` - the message type (one of [`PROCESS_TO_PROCESS`](#PROCESS_TO_PROCESS), [`EXTERNAL_TO_PROCESS`](#EXTERNAL_TO_PROCESS), [`MAIL`](#MAIL), or a custom type

        See Also:

        -   [`getMessageType()`](#getMessageType\(\))

    -   ### setJMSType

        public void setJMSType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") jmsType\_)

    -   ### getMessageType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageType()

        Gets the message type ([`JMS_TYPE_KEY`](#JMS_TYPE_KEY)).

        Returns:

        the message type

        See Also:

        -   [`setMessageType(String)`](#setMessageType\(java.lang.String\))

    -   ### getJMSType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getJMSType()

    -   ### getPropertyExternalizationStates

        public [Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") getPropertyExternalizationStates()

        Gets the message property externalization states. In this Map, the keys are the property names, and the values are whether the corresponding properties were externalized (1 or `Boolean.TRUE` for yes, 0 or `Boolean.FALSE` for no).

        Returns:

        the externalization states

        See Also:

        -   [`setPropertyExternalizationStates(Map)`](#setPropertyExternalizationStates\(java.util.Map\))
        -   [`setPropertyExternalizationState(String, boolean)`](#setPropertyExternalizationState\(java.lang.String,boolean\))

    -   ### setPropertyExternalizationStates

        public void setPropertyExternalizationStates([Map](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Map.html "class or interface in java.util") propertyExternalizationStates\_)

        Sets the message property externalization states.

        Parameters:

        `propertyExternalizationStates_` - the property externalization states map. The keys must be the property names, and the values must be Booleans.

        See Also:

        -   [`getPropertyExternalizationStates()`](#getPropertyExternalizationStates\(\))

    -   ### setPropertyExternalizationState

        public void setPropertyExternalizationState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_, boolean isExternalized\_)

        Sets the message property externalization state for the specified property.

        Parameters:

        `name_` - the name of the property

        `isExternalized_` - whether the property is externalized

        See Also:

        -   [`getPropertyExternalizationState(String)`](#getPropertyExternalizationState\(java.lang.String\))

    -   ### getPropertyExternalizationState

        public boolean getPropertyExternalizationState([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name\_)

        Gets the message property externalization state for the specified property.

        Parameters:

        `name_` - the name of the property

        Returns:

        the externalization state

        See Also:

        -   [`setPropertyExternalizationState(String, boolean)`](#setPropertyExternalizationState\(java.lang.String,boolean\))

    -   ### populateJavaxJmsMessage

        public javax.jms.Message populateJavaxJmsMessage(javax.jms.Message javaxJmsMessage\_) throws javax.jms.JMSException

        Populates the JMS message with the body and properties of this message.

        Parameters:

        `javaxJmsMessage_` - the JMS message, generated by the JMS API

        Returns:

        the same JMS message, with the properties and body populated

        Throws:

        `javax.jms.JMSException` - if any errors occur in any JMS methods

    -   ### setDestinationPMID

        public void setDestinationPMID([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processModelIds\_)

        Sets the destination PM ID property (which process models the message will be sent to). Note that the PM ID is actually stored in externalized form.

        Parameters:

        `processModelIds_` - the PM IDs

        See Also:

        -   [`getDestinationPMID()`](#getDestinationPMID\(\))

    -   ### setDestinationPMUUID

        public void setDestinationPMUUID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] processModelUuids)

        Sets the destination PM UUID property (which process models the message will be sent to). Note that the PM UUID is actually stored in externalized form.

        Parameters:

        `processModelUuids` -

    -   ### getDestinationPMID

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDestinationPMID()

        Gets the destination PM IDs (which process models the message will be sent to). Note that the PM ID is actually stored in externalized form. Therefore, if you call [`getProperty(String)`](#getProperty\(java.lang.String\)), it will return the externalized string.

        Returns:

        the destination PM IDs

        See Also:

        -   [`setDestinationPMID(Long[])`](#setDestinationPMID\(java.lang.Long%5B%5D\))

    -   ### getDestinationPMUUID

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDestinationPMUUID()

        Gets the destination PM UUIDs (which process models the message will be sent to). Note that the PM ID is actually stored in externalized form. Therefore, if you call [`getProperty(String)`](#getProperty\(java.lang.String\)), it will return the externalized string.

        Returns:

        the destination PM IDs

        See Also:

        -   `#setDestinationPMUUID(Long[])`

    -   ### setDestinationEventPersistentID

        public void setDestinationEventPersistentID([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] eventPersistentIds\_)

        Sets the destination event persistent ID property (which events the message will be sent to). Note that the event persistent ID is actually stored in externalized form.

        Parameters:

        `eventPersistentIds_` - the event persistent IDs

        See Also:

        -   [`getDestinationEventPersistentID()`](#getDestinationEventPersistentID\(\))

    -   ### getDestinationEventPersistentID

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getDestinationEventPersistentID()

        Gets the destination event persistent IDs (which events the message will be sent to). Note that the event persistent ID is actually stored in externalized form. Therefore, if you call [`getProperty(String)`](#getProperty\(java.lang.String\)), it will return the externalized string.

        Returns:

        the destination PM IDs

        See Also:

        -   [`setDestinationEventPersistentID(String[])`](#setDestinationEventPersistentID\(java.lang.String%5B%5D\))

    -   ### setDestinationProcessID

        public void setDestinationProcessID([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] processIds\_)

        Sets the destination process ID property (which processes the message will be sent to). Note that the process ID is actually stored in externalized form.

        Parameters:

        `processIds_` - the process IDs

        See Also:

        -   [`getDestinationProcessID()`](#getDestinationProcessID\(\))

    -   ### getDestinationProcessID

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")\[\] getDestinationProcessID()

        Gets the destination process IDs (which processes the message will be sent to). Note that the process ID is actually stored in externalized form. Therefore, if you call [`getProperty(String)`](#getProperty\(java.lang.String\)), it will return the externalized string.

        Returns:

        the destination PM IDs

        See Also:

        -   [`setDestinationProcessID(Long[])`](#setDestinationProcessID\(java.lang.Long%5B%5D\))

    -   ### setUserName

        public void setUserName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username\_)

        Sets the UserName property. When the message is sent to Appian Process, it will be considered to have come from this user.

        Parameters:

        `username_` - the username

        See Also:

        -   [`getUserName()`](#getUserName\(\))

    -   ### getUserName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getUserName()

        Gets the UserName property.

        Returns:

        the username

        See Also:

        -   [`setUserName(String)`](#setUserName\(java.lang.String\))

    -   ### minimizeTypeSizes

        public void minimizeTypeSizes()

        Makes the underlying storage for all of the properties the smallest it can be but still storing the data. For instance, the number 20 will be stored in a byte rather than in an integer. This is important for interoperability with JMS because the JMS message supports getting the long representation of a byte, but cannot get the byte representation of a long.

    -   ### validatePropertyName

        public static boolean validatePropertyName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") propertyName\_)

        Checks if property name is valid. Valid characters for the first position include numeric digits (0..9), upper-case (A..Z) and lower-case (a..z) letters. Valid characters for other positions also include underscore (\_). This calls [`validatePropertyNameChar(char)`](#validatePropertyNameChar\(char\)) on each character other than first.

        Parameters:

        `propertyName_` - the property name to validate

        Returns:

        true if the name passed in contains only valid characters

    -   ### validatePropertyNameChar

        public static boolean validatePropertyNameChar(char c\_)

        Checks whether a character is allowed in a property name. Valid characters for the first position include numeric digits (0..9), upper-case (A..Z) and lower-case (a..z) letters. Valid characters for other positions also include underscore (\_).

        Parameters:

        `c_` - the character to validate

        Returns:

        true if the character passed in is valid

    -   ### shouldGoToAllServers

        public boolean shouldGoToAllServers()

        Checks whether the message should go to design and all execution servers. It should go to all servers if any process model or event destinations are specified. If only process destinations are specified, it should only be sent to the appropriate execution servers.

        Returns:

        true if it should go to all servers

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        String representation of this object. Currently only displays the Id and Body of the message.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### externalizeBooleanProperties

        public void externalizeBooleanProperties()

        Externalizes all Boolean properties so that they are handled correctly by Expression. This should only occur immediately before sending the message to Appian Process. Note that this modifies the actual property values in the `InternalMessage`.

    -   ### routeToProcessModel

        public static void routeToProcessModel(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given process model from the given username. This broadcasts to all instances of the process model, as well as the process model's start event. The process model UUID is shown under the process model properties. It will continue to be the same upon exporting and importing the process model. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `processModelUuid` -

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`

    -   ### routeToProcessModel

        public static void routeToProcessModel(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processModelId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given process model from the given username. This broadcasts to all instances of the process model, as well as the process model's start event. The process model ID is particular to an installation; it will not remain the same upon exporting and importing the process model. This method is useful particularly for sending messages to process models created programmatically. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `processModelId` -

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`

    -   ### routeToEventPersistentId

        public static void routeToEventPersistentId(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given event persistent id from the given username. This broadcasts to all nodes with the given UUID. This may be routed to either a process model's start node with receive event or a process node receive event. The event persistent id shows under Event Properties as Persistent ID. It is the form of a UUID particular to each receive node. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `uuid` - event persistent UUID

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`

    -   ### routeToEventPersistentId

        public static void routeToEventPersistentId(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given event persistent id from the given username. This broadcasts to all nodes with the given UUID. This may be routed to either a process model's start node with receive event or a process node receive event. The event persistent id shows under Event Properties as Persistent ID. It is the form of a UUID particular to each receive node. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `uuid` - event persistent UUID

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`

    -   ### routeToEventPersistentId

        public static void routeToEventPersistentId(javax.jms.Message message, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") processModelUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") eventPersistentUuid, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given event persistent id from the given username. This broadcasts to all nodes with the given UUID. This may be routed to either a process model's start node with receive event or a process node receive event. The event persistent id shows under Event Properties as Persistent ID. It is the form of a UUID particular to each receive node. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `uuid` - event persistent UUID

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`

    -   ### routeToProcess

        public static void routeToProcess(javax.jms.Message message, [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") processId, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") username) throws javax.jms.JMSException

        Populate the JMS Message with routing information to the given process from the given username. This broadcasts to all receives in the process. The process model UUID is shown under the process model properties. It will continue to be the same upon exporting and importing the process model. This does NOT actually send the message anywhere.

        Parameters:

        `message` - : this is the message to be populated

        `processId` -

        `username` - : this is the nominal source username

        Throws:

        `javax.jms.JMSException`