---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AbstractEscalation.html
original_path: api/com/appiancorp/suiteapi/process/AbstractEscalation.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AbstractEscalation

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.AbstractEscalation

All Implemented Interfaces:

`[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Escalation](Escalation.html "class in com.appiancorp.suiteapi.process")`, `[EscalationInstance](EscalationInstance.html "class in com.appiancorp.suiteapi.process")`

* * *

public class AbstractEscalation extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")

An escalation of an activity, such as notify my supervisor if I haven't accepted in 2 days. Basically, an escalation is just an event trigger and either an activity class or an event producer that gets activated if the event trigger fires.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AbstractEscalation)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AC_NOTIFY_NAME](#AC_NOTIFY_NAME)`

    The name of the ActivityClass to send a notification.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AC_PRIORITY_NAME](#AC_PRIORITY_NAME)`

    The name of the ActivityClass to change priority.

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[AC_REASSIGN_NAME](#AC_REASSIGN_NAME)`

    The name of the ActivityClass to do a reassignment.

    `static final int`

    `[PRIORITY_SET](#PRIORITY_SET)`

    `static final int`

    `[TYPE_EVENT_PRODUCER](#TYPE_EVENT_PRODUCER)`

    Escalation that produces an event.

    `static final int`

    `[TYPE_NOTIFY](#TYPE_NOTIFY)`

    Escalation that sends a notification.

    `static final int`

    `[TYPE_PRIORITY](#TYPE_PRIORITY)`

    Escalation that changes the task priority.

    `static final int`

    `[TYPE_REASSIGN](#TYPE_REASSIGN)`

    Escalation that reassigns the task.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractEscalation](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `void`

    `[fillInAppianTypes](#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache_)`

    Adds the primary keys of an Appian-typed objects used by this `Escalation` to the given cache.

    `[ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process")`

    `[getActivityClass](#getActivityClass\(\))()`

    Gets the activity class [`ActivityClass`](ActivityClass.html "class in com.appiancorp.suiteapi.process") that will execute when this `Schedule` fires.

    `[EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events")`

    `[getEventProducer](#getEventProducer\(\))()`

    `[EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events")`

    `[getEventTrigger](#getEventTrigger\(\))()`

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getType](#getType\(\))()`

    Gets the type of this `Escalation`, as one of the TYPE\_XXX constants: [`TYPE_NOTIFY`](#TYPE_NOTIFY), [`TYPE_PRIORITY`](#TYPE_PRIORITY), [`TYPE_REASSIGN`](#TYPE_REASSIGN).

    `void`

    `[setActivityClass](#setActivityClass\(com.appiancorp.suiteapi.process.ActivityClass\))([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") activityClass_)`

    Sets the activity class [`ActivityClass`](ActivityClass.html "class in com.appiancorp.suiteapi.process") to be executed when this `Schedule` fires.

    `void`

    `[setEventProducer](#setEventProducer\(com.appiancorp.suiteapi.process.events.EventProducer\))([EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") eventProducer_)`

    `void`

    `[setEventTrigger](#setEventTrigger\(com.appiancorp.suiteapi.process.events.EventTrigger\))([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") eventTrigger_)`

    `void`

    `[setType](#setType\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type_)`

    Sets the type for this `Escalation`, as one of the TYPE\_XXX constants: [`TYPE_NOTIFY`](#TYPE_NOTIFY), [`TYPE_PRIORITY`](#TYPE_PRIORITY), [`TYPE_REASSIGN`](#TYPE_REASSIGN).

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### TYPE\_REASSIGN

        public static final int TYPE\_REASSIGN

        Escalation that reassigns the task.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_REASSIGN)

    -   ### TYPE\_NOTIFY

        public static final int TYPE\_NOTIFY

        Escalation that sends a notification.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_NOTIFY)

    -   ### TYPE\_PRIORITY

        public static final int TYPE\_PRIORITY

        Escalation that changes the task priority.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_PRIORITY)

    -   ### TYPE\_EVENT\_PRODUCER

        public static final int TYPE\_EVENT\_PRODUCER

        Escalation that produces an event.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_EVENT_PRODUCER)

    -   ### AC\_REASSIGN\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AC\_REASSIGN\_NAME

        The name of the ActivityClass to do a reassignment.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.AC_REASSIGN_NAME)

    -   ### AC\_PRIORITY\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AC\_PRIORITY\_NAME

        The name of the ActivityClass to change priority.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.AC_PRIORITY_NAME)

    -   ### AC\_NOTIFY\_NAME

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") AC\_NOTIFY\_NAME

        The name of the ActivityClass to send a notification.

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.AC_NOTIFY_NAME)

    -   ### PRIORITY\_SET

        public static final int PRIORITY\_SET

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.AbstractEscalation.PRIORITY_SET)

-   ## Constructor Details

    -   ### AbstractEscalation

        public AbstractEscalation()

-   ## Method Details

    -   ### getEventTrigger

        public [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") getEventTrigger()

    -   ### setEventTrigger

        public void setEventTrigger([EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") eventTrigger\_)

    -   ### getType

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getType()

        Gets the type of this `Escalation`, as one of the TYPE\_XXX constants: [`TYPE_NOTIFY`](#TYPE_NOTIFY), [`TYPE_PRIORITY`](#TYPE_PRIORITY), [`TYPE_REASSIGN`](#TYPE_REASSIGN).

    -   ### setType

        public void setType([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type\_)

        Sets the type for this `Escalation`, as one of the TYPE\_XXX constants: [`TYPE_NOTIFY`](#TYPE_NOTIFY), [`TYPE_PRIORITY`](#TYPE_PRIORITY), [`TYPE_REASSIGN`](#TYPE_REASSIGN).

        Parameters:

        `type_` - the type to set for this process variable

    -   ### fillInAppianTypes

        public void fillInAppianTypes([AppianTypeCache](AppianTypeCache.html "class in com.appiancorp.suiteapi.process") cache\_)

        Adds the primary keys of an Appian-typed objects used by this `Escalation` to the given cache.

        Specified by:

        `[fillInAppianTypes](AppianTypeHolder.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\))` in interface `[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`

        Parameters:

        `cache_` - cache of Appian-typed objects.

    -   ### getActivityClass

        public [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") getActivityClass()

        Gets the activity class [`ActivityClass`](ActivityClass.html "class in com.appiancorp.suiteapi.process") that will execute when this `Schedule` fires.

    -   ### setActivityClass

        public void setActivityClass([ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") activityClass\_)

        Sets the activity class [`ActivityClass`](ActivityClass.html "class in com.appiancorp.suiteapi.process") to be executed when this `Schedule` fires.

    -   ### getEventProducer

        public [EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") getEventProducer()

    -   ### setEventProducer

        public void setEventProducer([EventProducer](events/EventProducer.html "class in com.appiancorp.suiteapi.process.events") eventProducer\_)