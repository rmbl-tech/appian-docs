---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/ScheduleInstance.html
original_path: api/com/appiancorp/suiteapi/process/ScheduleInstance.html
version: "25.3"
title: "Class ScheduleInstance"
page_id: "api/com/appiancorp/suiteapi/process/ScheduleInstance"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class ScheduleInstance

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.ScheduleInstance

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class ScheduleInstance extends [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event. If the delay is absolute then the timer expires at an exact time, i.e. 12:52AM on 12/18/2007. A relative delay occurs at some offset to another event, such as the activation of a node or process, such as 2 hours and 18 minutes afterwards.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.ScheduleInstance)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[ScheduleInstance](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getHasTriggered](#getHasTriggered\(\))()`

    Informs if the scheduled event has triggered in the past.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampScheduled](#getTimeStampScheduled\(\))()`

    Retrieves the timestamp of the time at which the event is scheduled

    `void`

    `[setHasTriggered](#setHasTriggered\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") triggered_)`

    Sets if the scheduled event has triggered

    `void`

    `[setTimeStampScheduled](#setTimeStampScheduled\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") stampTriggered_)`

    Sets the timestamp of the time

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Adds the XML representation of the object to the buffer

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

    `[getAbsoluteExpression](AbstractSchedule.html#getAbsoluteExpression\(\)), [getAbsoluteOrRelative](AbstractSchedule.html#getAbsoluteOrRelative\(\)), [getAbsoluteTime](AbstractSchedule.html#getAbsoluteTime\(\)), [getRecurring](AbstractSchedule.html#getRecurring\(\)), [getRelativeInterval](AbstractSchedule.html#getRelativeInterval\(\)), [isAbsoluteDelay](AbstractSchedule.html#isAbsoluteDelay\(\)), [setAbsoluteDelay](AbstractSchedule.html#setAbsoluteDelay\(boolean\)), [setAbsoluteExpression](AbstractSchedule.html#setAbsoluteExpression\(java.lang.String\)), [setAbsoluteOrRelative](AbstractSchedule.html#setAbsoluteOrRelative\(boolean\)), [setAbsoluteTime](AbstractSchedule.html#setAbsoluteTime\(java.sql.Timestamp\)), [setRecurring](AbstractSchedule.html#setRecurring\(boolean\)), [setRelativeInterval](AbstractSchedule.html#setRelativeInterval\(com.appiancorp.suiteapi.process.Interval\)), [toXML](AbstractSchedule.html#toXML\(\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### ScheduleInstance

        public ScheduleInstance()

-   ## Method Details

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Adds the XML representation of the object to the buffer

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Overrides:

        `[toXML](AbstractSchedule.html#toXML\(java.lang.StringBuilder\))` in class `[AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")`

        Parameters:

        `buffer_` - StringBuilder that's populated with the XML representation of the Schedule object

    -   ### getHasTriggered

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getHasTriggered()

        Informs if the scheduled event has triggered in the past.

        Returns:

        true if the scheduled event is over else false

    -   ### setHasTriggered

        public void setHasTriggered([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") triggered\_)

        Sets if the scheduled event has triggered

        Parameters:

        `triggered_` -

    -   ### getTimeStampScheduled

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampScheduled()

        Retrieves the timestamp of the time at which the event is scheduled

        Returns:

        timestamp of the event

    -   ### setTimeStampScheduled

        public void setTimeStampScheduled([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") stampTriggered\_)

        Sets the timestamp of the time

        Parameters:

        `stampTriggered_` - timestamp of the time