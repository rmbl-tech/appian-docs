---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Schedule.html
original_path: api/com/appiancorp/suiteapi/process/Schedule.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Schedule

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.Schedule

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class Schedule extends [AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event. If the delay is absolute then the timer expires at an exact time, i.e. 12:52AM on 12/18/2007. A relative delay occurs at some offset to another event, such as the activation of a node or process, such as 2 hours and 18 minutes afterwards.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Schedule)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Schedule](#%3Cinit%3E\(\))()`

    `[Schedule](#%3Cinit%3E\(boolean\))(boolean absoluteDelay_)`

    Creates a new instance of Schedule

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.[AbstractSchedule](AbstractSchedule.html "class in com.appiancorp.suiteapi.process")

    `[getAbsoluteExpression](AbstractSchedule.html#getAbsoluteExpression\(\)), [getAbsoluteOrRelative](AbstractSchedule.html#getAbsoluteOrRelative\(\)), [getAbsoluteTime](AbstractSchedule.html#getAbsoluteTime\(\)), [getRecurring](AbstractSchedule.html#getRecurring\(\)), [getRelativeInterval](AbstractSchedule.html#getRelativeInterval\(\)), [isAbsoluteDelay](AbstractSchedule.html#isAbsoluteDelay\(\)), [setAbsoluteDelay](AbstractSchedule.html#setAbsoluteDelay\(boolean\)), [setAbsoluteExpression](AbstractSchedule.html#setAbsoluteExpression\(java.lang.String\)), [setAbsoluteOrRelative](AbstractSchedule.html#setAbsoluteOrRelative\(boolean\)), [setAbsoluteTime](AbstractSchedule.html#setAbsoluteTime\(java.sql.Timestamp\)), [setRecurring](AbstractSchedule.html#setRecurring\(boolean\)), [setRelativeInterval](AbstractSchedule.html#setRelativeInterval\(com.appiancorp.suiteapi.process.Interval\)), [toXML](AbstractSchedule.html#toXML\(\)), [toXML](AbstractSchedule.html#toXML\(java.lang.StringBuilder\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### Schedule

        public Schedule(boolean absoluteDelay\_)

        Creates a new instance of Schedule

        Parameters:

        `absoluteDelay_` - true if the event is not relative to other event, else false

    -   ### Schedule

        public Schedule()