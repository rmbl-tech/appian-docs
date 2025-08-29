---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/TerminateEventProducer.html
original_path: api/com/appiancorp/suiteapi/process/events/TerminateEventProducer.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class TerminateEventProducer

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

[com.appiancorp.suiteapi.process.events.EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.TerminateEventProducer

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class TerminateEventProducer extends [EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

Represents a terminate event producer. When this event is fired, all active flows in the process will be stopped

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.TerminateEventProducer)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TerminateEventProducer](#%3Cinit%3E\(\))()`

    Constructs a new TerminateEventProducer.

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[EventProducer](EventProducer.html "class in com.appiancorp.suiteapi.process.events")

    `[createEventProducer](EventProducer.html#createEventProducer\(java.lang.Long\)), [eventProducerClass](EventProducer.html#eventProducerClass\(java.lang.Long\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TerminateEventProducer

        public TerminateEventProducer()

        Constructs a new TerminateEventProducer. If you do not know the specific event producer type, use [`EventProducer.createEventProducer(Long)`](EventProducer.html#createEventProducer\(java.lang.Long\)).