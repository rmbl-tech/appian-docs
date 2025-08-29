---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/EventProducer.html
original_path: api/com/appiancorp/suiteapi/process/events/EventProducer.html
version: "25.3"
title: "Class EventProducer"
page_id: "api/com/appiancorp/suiteapi/process/events/EventProducer"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class EventProducer

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.EventProducer

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[MessageEventProducer](MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events")`, `[TerminateEventProducer](TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events")`

* * *

public abstract class EventProducer extends [Event](Event.html "class in com.appiancorp.suiteapi.process.events")

Represents an event producer (an event that performs an action immediately when it is reached in flow). Event producers include [`MessageEventProducer`](MessageEventProducer.html "class in com.appiancorp.suiteapi.process.events") and [`TerminateEventProducer`](TerminateEventProducer.html "class in com.appiancorp.suiteapi.process.events"). They can occur in a Process Model as intermediate nodes (except terminate) or end nodes (including terminate).

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.EventProducer)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[EventProducer](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static final [EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")`

    `[createEventProducer](#createEventProducer\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Creates a new `EventProducer` object of the type corresponding with the type code passed in.

    `static final [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang")`

    `[eventProducerClass](#eventProducerClass\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### EventProducer

        public EventProducer()

-   ## Method Details

    -   ### createEventProducer

        public static final [EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events") createEventProducer([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Creates a new `EventProducer` object of the type corresponding with the type code passed in. Type codes can be found in the [`Event`](Event.html "class in com.appiancorp.suiteapi.process.events") class. Possible types include [`Event.MESSAGE_EVENT_PRODUCER`](Event.html#MESSAGE_EVENT_PRODUCER) and [`Event.TERMINATE_EVENT_PRODUCER`](Event.html#TERMINATE_EVENT_PRODUCER).

        Parameters:

        `type_` - the type code

        Returns:

        the `EventProducer` object

    -   ### eventProducerClass

        public static final [Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Class.html "class or interface in java.lang") eventProducerClass([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)