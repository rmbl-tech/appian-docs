---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/MessageEventTrigger.html
original_path: api/com/appiancorp/suiteapi/process/events/MessageEventTrigger.html
version: "25.3"
title: "Class MessageEventTrigger"
page_id: "api/com/appiancorp/suiteapi/process/events/MessageEventTrigger"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class MessageEventTrigger

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

[com.appiancorp.suiteapi.process.events.EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.MessageEventTrigger

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class MessageEventTrigger extends [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents a receive message event. This type of event waits for a message to come in directed to the process model, the process, or the event, and then evaluates the rules in the context of the message (i.e., you can use message properties in the rules with the syntax "msg!properties.XXX"; see [`InternalMessage`](../../messaging/InternalMessage.html "class in com.appiancorp.suiteapi.messaging")).

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.MessageEventTrigger)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MessageEventTrigger](#%3Cinit%3E\(\))()`

    Constructs a new MessageEventTrigger.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[getActiveForLifeOfProcess](#getActiveForLifeOfProcess\(\))()`

    Gets whether the trigger, once activated, should remain active for the life of the process, even if it is fired.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageType](#getMessageType\(\))()`

    Gets the message type (this corresponds with the JMSType message property for incoming messages; see `InternalMessage#getMessageType()`).

    `void`

    `[setActiveForLifeOfProcess](#setActiveForLifeOfProcess\(boolean\))(boolean activeForLifeOfProcess_)`

    Sets whether the trigger, once activated, should remain active for the life of the process, even if it is fired.

    `void`

    `[setMessageType](#setMessageType\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") messageType_)`

    Sets the message type (this corresponds with the JMSType message property for incoming messages; see `InternalMessage#getMessageType()`).

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    `[createEventTrigger](EventTrigger.html#createEventTrigger\(java.lang.Long\)), [getOutputs](EventTrigger.html#getOutputs\(\)), [getRules](EventTrigger.html#getRules\(\)), [setOutputs](EventTrigger.html#setOutputs\(java.lang.String%5B%5D\)), [setRules](EventTrigger.html#setRules\(com.appiancorp.suiteapi.process.events.Rule%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### MessageEventTrigger

        public MessageEventTrigger()

        Constructs a new MessageEventTrigger. If you do not know the specific event producer type, use [`EventProducer.createEventProducer(Long)`](EventProducer.html#createEventProducer\(java.lang.Long\)).

-   ## Method Details

    -   ### getActiveForLifeOfProcess

        public boolean getActiveForLifeOfProcess()

        Gets whether the trigger, once activated, should remain active for the life of the process, even if it is fired.

        Returns:

        whether it should remain active for the life of the process

        See Also:

        -   [`setActiveForLifeOfProcess(boolean)`](#setActiveForLifeOfProcess\(boolean\))

    -   ### setActiveForLifeOfProcess

        public void setActiveForLifeOfProcess(boolean activeForLifeOfProcess\_)

        Sets whether the trigger, once activated, should remain active for the life of the process, even if it is fired.

        Parameters:

        `activeForLifeOfProcess_` - whether it should remain active for the life of the process

        See Also:

        -   [`getActiveForLifeOfProcess()`](#getActiveForLifeOfProcess\(\))

    -   ### getMessageType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageType()

        Gets the message type (this corresponds with the JMSType message property for incoming messages; see `InternalMessage#getMessageType()`). Message types are registered in /process/conf/message-types.xml.

        Returns:

        the message type

        See Also:

        -   [`setMessageType(String)`](#setMessageType\(java.lang.String\))

    -   ### setMessageType

        public void setMessageType([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") messageType\_)

        Sets the message type (this corresponds with the JMSType message property for incoming messages; see `InternalMessage#getMessageType()`).

        Parameters:

        `messageType_` - the message type

        See Also:

        -   [`getMessageType()`](#getMessageType\(\))