---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/RuleEventTrigger.html
original_path: api/com/appiancorp/suiteapi/process/events/RuleEventTrigger.html
version: "25.3"
title: "Class RuleEventTrigger"
page_id: "api/com/appiancorp/suiteapi/process/events/RuleEventTrigger"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class RuleEventTrigger

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

[com.appiancorp.suiteapi.process.events.EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.RuleEventTrigger

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RuleEventTrigger extends [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents the trigger for a rule event. A rule event waits until a set of rules are all true before firing. Any time a process variable referenced by a rule is modified, the set of rules is re-evaluated.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.RuleEventTrigger)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RuleEventTrigger](#%3Cinit%3E\(\))()`

    Constructs a new RuleEventTrigger.

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    `[createEventTrigger](EventTrigger.html#createEventTrigger\(java.lang.Long\)), [getOutputs](EventTrigger.html#getOutputs\(\)), [getRules](EventTrigger.html#getRules\(\)), [setOutputs](EventTrigger.html#setOutputs\(java.lang.String%5B%5D\)), [setRules](EventTrigger.html#setRules\(com.appiancorp.suiteapi.process.events.Rule%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RuleEventTrigger

        public RuleEventTrigger()

        Constructs a new RuleEventTrigger.