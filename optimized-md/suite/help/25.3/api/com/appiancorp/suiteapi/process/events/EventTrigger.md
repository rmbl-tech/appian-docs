---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/EventTrigger.html
original_path: api/com/appiancorp/suiteapi/process/events/EventTrigger.html
version: "25.3"
title: "Class EventTrigger"
page_id: "api/com/appiancorp/suiteapi/process/events/EventTrigger"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class EventTrigger

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.EventTrigger

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[MessageEventTrigger](MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[RuleEventTrigger](RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`, `[TimerEventTrigger](TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events")`

* * *

public abstract class EventTrigger extends [Event](Event.html "class in com.appiancorp.suiteapi.process.events")

Represents an event trigger (an event that waits for something to occur before continuing flow). Event triggers include [`MessageEventTrigger`](MessageEventTrigger.html "class in com.appiancorp.suiteapi.process.events"), [`TimerEventTrigger`](TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events"), and [`RuleEventTrigger`](RuleEventTrigger.html "class in com.appiancorp.suiteapi.process.events"). An event trigger can occur on a start node (in which case it kicks off a new instance of the process), an intermediate node (in which case it stops flow until the condition is met), or attached to an activity as an exception trigger (in which case it is active while the activity is active, and it causes the exception flow to be taken if/when the condition is met).

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.EventTrigger)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[EventTrigger](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static final [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")`

    `[createEventTrigger](#createEventTrigger\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Creates a new `EventTrigger` object of the type coresponding with the type code passed in.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[getOutputs](#getOutputs\(\))()`

    Gets the output expressions for the event.

    `[Rule](Rule.html "class in com.appiancorp.suiteapi.process.events")[]`

    `[getRules](#getRules\(\))()`

    Gets the firing rules for the event.

    `void`

    `[setOutputs](#setOutputs\(java.lang.String%5B%5D\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[] outputs_)`

    Sets the output expressions for the event.

    `void`

    `[setRules](#setRules\(com.appiancorp.suiteapi.process.events.Rule%5B%5D\))([Rule](Rule.html "class in com.appiancorp.suiteapi.process.events")[] rules_)`

    Sets the firing rules for the event.

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### EventTrigger

        public EventTrigger()

-   ## Method Details

    -   ### createEventTrigger

        public static final [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events") createEventTrigger([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Creates a new `EventTrigger` object of the type coresponding with the type code passed in. Type codes can be found in the [`Event`](Event.html "class in com.appiancorp.suiteapi.process.events") class. Possible types include [`Event.MESSAGE_EVENT_TRIGGER`](Event.html#MESSAGE_EVENT_TRIGGER), [`Event.TIMER_EVENT_TRIGGER`](Event.html#TIMER_EVENT_TRIGGER), and [`Event.RULE_EVENT_TRIGGER`](Event.html#RULE_EVENT_TRIGGER).

        Parameters:

        `type_` - the type code for the message type to create

        Returns:

        the new `EventTrigger` object

    -   ### getOutputs

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] getOutputs()

        Gets the output expressions for the event.

        Returns:

        array of output expressions

        See Also:

        -   [`setOutputs(String[])`](#setOutputs\(java.lang.String%5B%5D\))

    -   ### setOutputs

        public void setOutputs([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] outputs\_)

        Sets the output expressions for the event.

        Parameters:

        `outputs_` - array of output expressions to set

        See Also:

        -   [`getOutputs()`](#getOutputs\(\))

    -   ### getRules

        public [Rule](Rule.html "class in com.appiancorp.suiteapi.process.events")\[\] getRules()

        Gets the firing rules for the event.

        Returns:

        array of rules

        See Also:

        -   [`setRules(Rule[])`](#setRules\(com.appiancorp.suiteapi.process.events.Rule%5B%5D\))
        -   [`Rule`](Rule.html "class in com.appiancorp.suiteapi.process.events")

    -   ### setRules

        public void setRules([Rule](Rule.html "class in com.appiancorp.suiteapi.process.events")\[\] rules\_)

        Sets the firing rules for the event.

        Parameters:

        `rules_` - array of firing rules to set

        See Also:

        -   [`getRules()`](#getRules\(\))
        -   [`Rule`](Rule.html "class in com.appiancorp.suiteapi.process.events")