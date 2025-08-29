---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Escalation.html
original_path: api/com/appiancorp/suiteapi/process/Escalation.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Escalation

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.Escalation

All Implemented Interfaces:

`[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Escalation extends [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

An escalation is an action that occurs if the task has not been completed before the configured [`TimerEventTrigger`](events/TimerEventTrigger.html "class in com.appiancorp.suiteapi.process.events") triggers. It is similar to a [`Schedule`](Schedule.html "class in com.appiancorp.suiteapi.process"). The type is one of

-   `com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_REASSIGN`
-   `com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_NOTIFY`
-   `com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_PRIORITY`
-   `com.appiancorp.suiteapi.process.AbstractEscalation.TYPE_EVENT_PRODUCER`

See Also:

-   [`Schedule`](Schedule.html "class in com.appiancorp.suiteapi.process")
-   [`EscalationInstance`](EscalationInstance.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Escalation)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

    `[AC_NOTIFY_NAME](AbstractEscalation.html#AC_NOTIFY_NAME), [AC_PRIORITY_NAME](AbstractEscalation.html#AC_PRIORITY_NAME), [AC_REASSIGN_NAME](AbstractEscalation.html#AC_REASSIGN_NAME), [PRIORITY_SET](AbstractEscalation.html#PRIORITY_SET), [TYPE_EVENT_PRODUCER](AbstractEscalation.html#TYPE_EVENT_PRODUCER), [TYPE_NOTIFY](AbstractEscalation.html#TYPE_NOTIFY), [TYPE_PRIORITY](AbstractEscalation.html#TYPE_PRIORITY), [TYPE_REASSIGN](AbstractEscalation.html#TYPE_REASSIGN)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Escalation](#%3Cinit%3E\(\))()`

    `[Escalation](#%3Cinit%3E\(java.lang.Long,com.appiancorp.suiteapi.process.ActivityClass,com.appiancorp.suiteapi.process.events.EventTrigger\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") escalationAC, [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") trigger)`

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

    `[fillInAppianTypes](AbstractEscalation.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActivityClass](AbstractEscalation.html#getActivityClass\(\)), [getEventProducer](AbstractEscalation.html#getEventProducer\(\)), [getEventTrigger](AbstractEscalation.html#getEventTrigger\(\)), [getType](AbstractEscalation.html#getType\(\)), [setActivityClass](AbstractEscalation.html#setActivityClass\(com.appiancorp.suiteapi.process.ActivityClass\)), [setEventProducer](AbstractEscalation.html#setEventProducer\(com.appiancorp.suiteapi.process.events.EventProducer\)), [setEventTrigger](AbstractEscalation.html#setEventTrigger\(com.appiancorp.suiteapi.process.events.EventTrigger\)), [setType](AbstractEscalation.html#setType\(java.lang.Long\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Escalation

        public Escalation()

    -   ### Escalation

        public Escalation([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") type, [ActivityClass](ActivityClass.html "class in com.appiancorp.suiteapi.process") escalationAC, [EventTrigger](events/EventTrigger.html "class in com.appiancorp.suiteapi.process.events") trigger)