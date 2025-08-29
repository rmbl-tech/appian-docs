---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/EscalationInstance.html
original_path: api/com/appiancorp/suiteapi/process/EscalationInstance.html
version: "25.3"
title: "Class EscalationInstance"
page_id: "api/com/appiancorp/suiteapi/process/EscalationInstance"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class EscalationInstance

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.EscalationInstance

All Implemented Interfaces:

`[AppianTypeHolder](AppianTypeHolder.html "interface in com.appiancorp.suiteapi.process")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class EscalationInstance extends [AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

This class is used to specify escalation properties for a particular node instance. This is particularly important as escalation properties of a node can be modified at execution time.

See Also:

-   [`Escalation`](Escalation.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.EscalationInstance)

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.[AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

    `[AC_NOTIFY_NAME](AbstractEscalation.html#AC_NOTIFY_NAME), [AC_PRIORITY_NAME](AbstractEscalation.html#AC_PRIORITY_NAME), [AC_REASSIGN_NAME](AbstractEscalation.html#AC_REASSIGN_NAME), [PRIORITY_SET](AbstractEscalation.html#PRIORITY_SET), [TYPE_EVENT_PRODUCER](AbstractEscalation.html#TYPE_EVENT_PRODUCER), [TYPE_NOTIFY](AbstractEscalation.html#TYPE_NOTIFY), [TYPE_PRIORITY](AbstractEscalation.html#TYPE_PRIORITY), [TYPE_REASSIGN](AbstractEscalation.html#TYPE_REASSIGN)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[EscalationInstance](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Returns the ID of the escalation

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampScheduled](#getTimeStampScheduled\(\))()`

    Returns the timestamp when the escalation is set to trigger

    `boolean`

    `[isHasTriggered](#isHasTriggered\(\))()`

    Returns whether this escalation for the node has already been triggered.

    `void`

    `[setHasTriggered](#setHasTriggered\(boolean\))(boolean hasTriggered_)`

    Sets whether this escalation has already been triggered.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the ID of Escalation

    `void`

    `[setTimeStampScheduled](#setTimeStampScheduled\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampScheduled_)`

    Sets the timestamp when the escalation will trigger

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractEscalation](AbstractEscalation.html "class in com.appiancorp.suiteapi.process")

    `[fillInAppianTypes](AbstractEscalation.html#fillInAppianTypes\(com.appiancorp.suiteapi.process.AppianTypeCache\)), [getActivityClass](AbstractEscalation.html#getActivityClass\(\)), [getEventProducer](AbstractEscalation.html#getEventProducer\(\)), [getEventTrigger](AbstractEscalation.html#getEventTrigger\(\)), [getType](AbstractEscalation.html#getType\(\)), [setActivityClass](AbstractEscalation.html#setActivityClass\(com.appiancorp.suiteapi.process.ActivityClass\)), [setEventProducer](AbstractEscalation.html#setEventProducer\(com.appiancorp.suiteapi.process.events.EventProducer\)), [setEventTrigger](AbstractEscalation.html#setEventTrigger\(com.appiancorp.suiteapi.process.events.EventTrigger\)), [setType](AbstractEscalation.html#setType\(java.lang.Long\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### EscalationInstance

        public EscalationInstance()

-   ## Method Details

    -   ### isHasTriggered

        public boolean isHasTriggered()

        Returns whether this escalation for the node has already been triggered.

        Returns:

        `true` if the escalation has triggered, otherwise `false`

    -   ### setHasTriggered

        public void setHasTriggered(boolean hasTriggered\_)

        Sets whether this escalation has already been triggered.

        Parameters:

        `hasTriggered_` - `true` if the escalation is to be triggered, otherwise `false`

        See Also:

        -   [`isHasTriggered()`](#isHasTriggered\(\))

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Returns the ID of the escalation

        Returns:

        Escaltion ID

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the ID of Escalation

        Parameters:

        `id_` - Escaltion ID

        See Also:

        -   [`getId()`](#getId\(\))

    -   ### getTimeStampScheduled

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampScheduled()

        Returns the timestamp when the escalation is set to trigger

        Returns:

        Timestamp when escalation is scheduled will trigger

    -   ### setTimeStampScheduled

        public void setTimeStampScheduled([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timeStampScheduled\_)

        Sets the timestamp when the escalation will trigger

        Parameters:

        `timeStampScheduled_` - Escalation timestamp

        See Also:

        -   [`setTimeStampScheduled(Timestamp)`](#setTimeStampScheduled\(java.sql.Timestamp\))