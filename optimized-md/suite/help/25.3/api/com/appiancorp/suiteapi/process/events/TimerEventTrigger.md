---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/events/TimerEventTrigger.html
original_path: api/com/appiancorp/suiteapi/process/events/TimerEventTrigger.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.events](package-summary.html)

# Class TimerEventTrigger

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.events.Event](Event.html "class in com.appiancorp.suiteapi.process.events")

[com.appiancorp.suiteapi.process.events.EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

com.appiancorp.suiteapi.process.events.TimerEventTrigger

All Implemented Interfaces:

`[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")`, `[JSONCacheable](../../common/JSONCacheable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class TimerEventTrigger extends [EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

Represents the trigger for a timer event. The timer event has an initial delay and/or a recurrence interval. Each time the timer goes off, it evaluates any rules, and if all of the rules are true, the trigger fires.

See Also:

-   [Serialized Form](../../../../../serialized-form.html#com.appiancorp.suiteapi.process.events.TimerEventTrigger)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[ERROR_EVENT_TRIGGER](Event.html#ERROR_EVENT_TRIGGER), [MESSAGE_EVENT_PRODUCER](Event.html#MESSAGE_EVENT_PRODUCER), [MESSAGE_EVENT_TRIGGER](Event.html#MESSAGE_EVENT_TRIGGER), [RULE_EVENT_TRIGGER](Event.html#RULE_EVENT_TRIGGER), [SORT_BY_DESC](Event.html#SORT_BY_DESC), [SORT_BY_ID](Event.html#SORT_BY_ID), [SORT_BY_NAME](Event.html#SORT_BY_NAME), [TERMINATE_EVENT_PRODUCER](Event.html#TERMINATE_EVENT_PRODUCER), [TIMER_EVENT_TRIGGER](Event.html#TIMER_EVENT_TRIGGER)`

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[JSONable](../../common/JSONable.html "interface in com.appiancorp.suiteapi.common")

    `[hiddenAttributes$TRANSIENT](../../common/JSONable.html#hiddenAttributes$TRANSIENT)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[TimerEventTrigger](#%3Cinit%3E\(\))()`

    Constructs a new TimerEventTrigger.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Recurrence](../Recurrence.html "class in com.appiancorp.suiteapi.process")`

    `[getRecurrence](#getRecurrence\(\))()`

    Gets the recurrence that the timer fires on.

    `[Schedule](../Schedule.html "class in com.appiancorp.suiteapi.process")`

    `[getSchedule](#getSchedule\(\))()`

    Gets the schedule when the timer will fire.

    `void`

    `[setRecurrence](#setRecurrence\(com.appiancorp.suiteapi.process.Recurrence\))([Recurrence](../Recurrence.html "class in com.appiancorp.suiteapi.process") recurrence_)`

    Sets the recurrence that the timer fires on.

    `void`

    `[setSchedule](#setSchedule\(com.appiancorp.suiteapi.process.Schedule\))([Schedule](../Schedule.html "class in com.appiancorp.suiteapi.process") schedule_)`

    Sets the schedule when the timer will fire.

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[EventTrigger](EventTrigger.html "class in com.appiancorp.suiteapi.process.events")

    `[createEventTrigger](EventTrigger.html#createEventTrigger\(java.lang.Long\)), [getOutputs](EventTrigger.html#getOutputs\(\)), [getRules](EventTrigger.html#getRules\(\)), [setOutputs](EventTrigger.html#setOutputs\(java.lang.String%5B%5D\)), [setRules](EventTrigger.html#setRules\(com.appiancorp.suiteapi.process.events.Rule%5B%5D\))`

    ### Methods inherited from class com.appiancorp.suiteapi.process.events.[Event](Event.html "class in com.appiancorp.suiteapi.process.events")

    `[getDesc](Event.html#getDesc\(\)), [getHiddenAttributes](Event.html#getHiddenAttributes\(\)), [getId](Event.html#getId\(\)), [getName](Event.html#getName\(\)), [getPersistentId](Event.html#getPersistentId\(\)), [getType](Event.html#getType\(\)), [isProducerType](Event.html#isProducerType\(java.lang.Long\)), [isTriggerType](Event.html#isTriggerType\(java.lang.Long\)), [setDesc](Event.html#setDesc\(java.lang.String\)), [setId](Event.html#setId\(java.lang.Long\)), [setName](Event.html#setName\(java.lang.String\)), [setPersistentId](Event.html#setPersistentId\(java.lang.String\)), [setType](Event.html#setType\(java.lang.Long\)), [toString](Event.html#toString\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### TimerEventTrigger

        public TimerEventTrigger()

        Constructs a new TimerEventTrigger.

-   ## Method Details

    -   ### getRecurrence

        public [Recurrence](../Recurrence.html "class in com.appiancorp.suiteapi.process") getRecurrence()

        Gets the recurrence that the timer fires on.

        Returns:

        the recurrence

        See Also:

        -   [`setRecurrence(Recurrence)`](#setRecurrence\(com.appiancorp.suiteapi.process.Recurrence\))

    -   ### setRecurrence

        public void setRecurrence([Recurrence](../Recurrence.html "class in com.appiancorp.suiteapi.process") recurrence\_)

        Sets the recurrence that the timer fires on.

        Parameters:

        `recurrence_` - the recurrence

        See Also:

        -   [`getRecurrence()`](#getRecurrence\(\))

    -   ### getSchedule

        public [Schedule](../Schedule.html "class in com.appiancorp.suiteapi.process") getSchedule()

        Gets the schedule when the timer will fire.

        Returns:

        the schedule

        See Also:

        -   [`setSchedule(Schedule)`](#setSchedule\(com.appiancorp.suiteapi.process.Schedule\))

    -   ### setSchedule

        public void setSchedule([Schedule](../Schedule.html "class in com.appiancorp.suiteapi.process") schedule\_)

        Sets the schedule when the timer will fire.

        Parameters:

        `schedule_` - the schedule

        See Also:

        -   [`getSchedule()`](#getSchedule\(\))