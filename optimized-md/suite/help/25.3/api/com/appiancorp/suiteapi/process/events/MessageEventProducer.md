---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/MessageEventProducer.html
original_path: api/com/appiancorp/suiteapi/process/events/MessageEventProducer.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class MessageEventProducer

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

[com.appiancorp.suiteapi.process.events.EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.MessageEventProducer

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class MessageEventProducer extends [EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

Represents a send message event.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.MessageEventProducer)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `protected static final org.apache.log4j.Logger`

    `[LOG](#LOG)`

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[MessageEventProducer](#%3Cinit%3E\(\))()`

    Constructs a new MessageEventProducer.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getBody](#getBody\(\))()`

    Gets the body of the message that will be sent.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMessageType](#getMessageType\(\))()`

    Gets the message type (stored in the property mappings at key [`InternalMessage.JMS_TYPE_KEY`](../../messaging/InternalMessage.html#JMS_TYPE_KEY)).

    `[Mapping](../../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")[]`

    `[getPropertyMappings](#getPropertyMappings\(\))()`

    Gets the property mappings.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTopic](#getTopic\(\))()`

    Gets the JMS topic.

    `void`

    `[setBody](#setBody\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body_)`

    Sets the body of the message that will be sent.

    `void`

    `[setPropertyMappings](#setPropertyMappings\(com.appiancorp.suiteapi.messaging.Mapping%5B%5D\))([Mapping](../../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")[] propertyMappings_)`

    Sets the property mappings.

    `void`

    `[setTopic](#setTopic\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topic_)`

    Sets the JMS topic.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

    `[createEventProducer](EventProducer.html#createEventProducer\(java.lang.Long\)), [eventProducerClass](EventProducer.html#eventProducerClass\(java.lang.Long\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### LOG

        protected static final org.apache.log4j.Logger LOG

-   ## Constructor Details

    -   ### MessageEventProducer

        public MessageEventProducer()

        Constructs a new MessageEventProducer. If you do not know the specific event producer type, use [`EventProducer.createEventProducer(Long)`](EventProducer.html#createEventProducer\(java.lang.Long\)).

-   ## Method Details

    -   ### getBody

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getBody()

        Gets the body of the message that will be sent.

        Returns:

        the body

        See Also:

        -   [`setBody(String)`](#setBody\(java.lang.String\))

    -   ### setBody

        public void setBody([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") body\_)

        Sets the body of the message that will be sent.

        Parameters:

        `body_` - the body

        See Also:

        -   [`getBody()`](#getBody\(\))

    -   ### getPropertyMappings

        public [Mapping](../../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")\[\] getPropertyMappings()

        Gets the property mappings.

        Returns:

        the property mappings

        See Also:

        -   [`setPropertyMappings(Mapping[])`](#setPropertyMappings\(com.appiancorp.suiteapi.messaging.Mapping%5B%5D\))

    -   ### setPropertyMappings

        public void setPropertyMappings([Mapping](../../messaging/Mapping.html "class in com.appiancorp.suiteapi.messaging")\[\] propertyMappings\_)

        Sets the property mappings. If the Process Model UUID mapping or Process Model ID mapping is passed in and the value of either is `null`, both are set to empty arrays.

        Parameters:

        `propertyMappings_` - the property mappings

        See Also:

        -   [`getPropertyMappings()`](#getPropertyMappings\(\))

    -   ### getTopic

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTopic()

        Gets the JMS topic.

        Returns:

        the JMS topic

        See Also:

        -   [`setTopic(String)`](#setTopic\(java.lang.String\))

    -   ### setTopic

        public void setTopic([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") topic\_)

        Sets the JMS topic. Use the topic defined at `com.appiancorp.suiteapi.messaging.MessagingProperties#PROCESS_TOPIC` to send a message to Appian Process.

        Parameters:

        `topic_` - the JMS topic

        See Also:

        -   [`getTopic()`](#getTopic\(\))

    -   ### getMessageType

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMessageType()

        Gets the message type (stored in the property mappings at key [`InternalMessage.JMS_TYPE_KEY`](../../messaging/InternalMessage.html#JMS_TYPE_KEY)).

        Returns:

        the message type

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Overrides:

        `[toString](Event.html#toString\(\))` in class `[Event](Event.html "class in com.appiancorp.suiteapi.process.events")`

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](../AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of any Appian-typed objects that are used by the mapping of this node to the given cache.

        Parameters:

        `cache_` - the cache that will hold the values