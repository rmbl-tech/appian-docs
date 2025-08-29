---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/AbstractSchedule.html
original_path: api/com/appiancorp/suiteapi/process/AbstractSchedule.html
version: "25.3"
title: "Class AbstractSchedule"
page_id: "api/com/appiancorp/suiteapi/process/AbstractSchedule"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class AbstractSchedule

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.AbstractSchedule

All Implemented Interfaces:

`[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`, `[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[Schedule](Schedule.html "class in com.appiancorp.suiteapi.process")`, `[ScheduleInstance](ScheduleInstance.html "class in com.appiancorp.suiteapi.process")`

* * *

public class AbstractSchedule extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common"), [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

A Schedule is used to define a time for an event based either on an absolute Timestamp or relative to some other event. If the delay is absolute then the timer expires at an exact time, i.e. 12:52AM on 12/18/2007. A relative delay occurs at some offset to another event, such as the activation of a node or process, such as 2 hours and 18 minutes afterwards.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.AbstractSchedule)

-   ## Field Summary

    ### Fields inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[DEFAULT_BUFFER_SIZE](../common/XMLable.html#DEFAULT_BUFFER_SIZE)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[AbstractSchedule](#%3Cinit%3E\(\))()`

    Creates a new instance of Schedule

    `[AbstractSchedule](#%3Cinit%3E\(boolean\))(boolean absoluteDelay_)`

    Creates a new instance of Schedule

-   ## Method Summary

    All MethodsInstance MethodsConcrete MethodsDeprecated Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getAbsoluteExpression](#getAbsoluteExpression\(\))()`

    Returns an expression to be evaluated to the Timestamp of the scheduled event.

    `boolean`

    `[getAbsoluteOrRelative](#getAbsoluteOrRelative\(\))()`

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getAbsoluteTime](#getAbsoluteTime\(\))()`

    Deprecated.

    use [`getAbsoluteExpression()`](#getAbsoluteExpression\(\))

    `boolean`

    `[getRecurring](#getRecurring\(\))()`

    `[Interval](Interval.html "class in com.appiancorp.suiteapi.process")`

    `[getRelativeInterval](#getRelativeInterval\(\))()`

    Returns the Interval object representing the time delay with respect to the previous event

    `boolean`

    `[isAbsoluteDelay](#isAbsoluteDelay\(\))()`

    Returns true if the event is schedule for a specific time i.e. 12:52AM on 12/18/2007 else its relative to some other event like 5 mins or 2 hrs after the event.

    `void`

    `[setAbsoluteDelay](#setAbsoluteDelay\(boolean\))(boolean absoluteDealy_)`

    If true sets the Schedule to a specific time like 12:52AM on 12/18/2007, else to an interval of time relative to some other event.

    `void`

    `[setAbsoluteExpression](#setAbsoluteExpression\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") absoluteExpression_)`

    Sets an expression to be evaluated to the Timestamp of the scheduled event.

    `void`

    `[setAbsoluteOrRelative](#setAbsoluteOrRelative\(boolean\))(boolean isAbsoluteOrRelative_)`

    `void`

    `[setAbsoluteTime](#setAbsoluteTime\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") absoluteTime_)`

    Deprecated.

    use {@link #setAbsoluteExpression(String))}

    `void`

    `[setRecurring](#setRecurring\(boolean\))(boolean isRecurring_)`

    `void`

    `[setRelativeInterval](#setRelativeInterval\(com.appiancorp.suiteapi.process.Interval\))([Interval](Interval.html "class in com.appiancorp.suiteapi.process") relativeInterval_)`

    Schedules an event relative to some other event.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toXML](#toXML\(\))()`

    Generates an XML representation of this object (including all child objects).

    `void`

    `[toXML](#toXML\(java.lang.StringBuilder\))([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer_)`

    Appends an XML representation of this object (including all child objects) to the given buffer.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.suiteapi.common.[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")

    `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuffer\))`

-   ## Constructor Details

    -   ### AbstractSchedule

        public AbstractSchedule(boolean absoluteDelay\_)

        Creates a new instance of Schedule

        Parameters:

        `absoluteDealy_` - true if the event is not relative to other event, else false

    -   ### AbstractSchedule

        public AbstractSchedule()

        Creates a new instance of Schedule

-   ## Method Details

    -   ### getAbsoluteExpression

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getAbsoluteExpression()

        Returns an expression to be evaluated to the Timestamp of the scheduled event.

        Returns:

        a string Expression

    -   ### setAbsoluteExpression

        public void setAbsoluteExpression([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") absoluteExpression\_)

        Sets an expression to be evaluated to the Timestamp of the scheduled event.

        Parameters:

        `absoluteExpression_` - a string Expression

    -   ### isAbsoluteDelay

        public boolean isAbsoluteDelay()

        Returns true if the event is schedule for a specific time i.e. 12:52AM on 12/18/2007 else its relative to some other event like 5 mins or 2 hrs after the event.

        Returns:

        true if the Schedule is not relative to some other event.

    -   ### setAbsoluteDelay

        public void setAbsoluteDelay(boolean absoluteDealy\_)

        If true sets the Schedule to a specific time like 12:52AM on 12/18/2007, else to an interval of time relative to some other event.

        Parameters:

        `absoluteDealy_` - true if the event is not relative to other event, else false

    -   ### getAbsoluteTime

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getAbsoluteTime()

        Deprecated.

        use [`getAbsoluteExpression()`](#getAbsoluteExpression\(\))

        Returns `null`

    -   ### setAbsoluteTime

        [@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public void setAbsoluteTime([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") absoluteTime\_)

        Deprecated.

        use {@link #setAbsoluteExpression(String))}

        Sets the time at which the event is scheduled

        Parameters:

        `absoluteTime_` - Timestamp of the exact time of the event.

    -   ### getRelativeInterval

        public [Interval](Interval.html "class in com.appiancorp.suiteapi.process") getRelativeInterval()

        Returns the Interval object representing the time delay with respect to the previous event

        Returns:

        Interval object specifying delay in terms of mins, hrs, days, weeks, months and/or years.

    -   ### setRelativeInterval

        public void setRelativeInterval([Interval](Interval.html "class in com.appiancorp.suiteapi.process") relativeInterval\_)

        Schedules an event relative to some other event.

        Parameters:

        `relativeInterval_` - Interval object representing time delay after some other event.

    -   ### toXML

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toXML()

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(\))`

        Generates an XML representation of this object (including all child objects). A typical implementation is to create a new `StringBuilder` and call `toXML( StringBuilder )` on it.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Returns:

        XML representation of the Schedule object

    -   ### toXML

        public void toXML([StringBuilder](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/StringBuilder.html "class or interface in java.lang") buffer\_)

        Description copied from interface: `[XMLable](../common/XMLable.html#toXML\(java.lang.StringBuilder\))`

        Appends an XML representation of this object (including all child objects) to the given buffer. Override for performance.

        Specified by:

        `[toXML](../common/XMLable.html#toXML\(java.lang.StringBuilder\))` in interface `[XMLable](../common/XMLable.html "interface in com.appiancorp.suiteapi.common")`

        Parameters:

        `buffer_` - Stringbuffer that's populated with the XML representation of the Schedule object

    -   ### getAbsoluteOrRelative

        public boolean getAbsoluteOrRelative()

    -   ### setAbsoluteOrRelative

        public void setAbsoluteOrRelative(boolean isAbsoluteOrRelative\_)

    -   ### getRecurring

        public boolean getRecurring()

    -   ### setRecurring

        public void setRecurring(boolean isRecurring\_)