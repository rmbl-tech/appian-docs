---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurrenceInstance.html
original_path: api/com/appiancorp/suiteapi/process/RecurrenceInstance.html
version: "25.3"
title: "Class RecurrenceInstance"
page_id: "api/com/appiancorp/suiteapi/process/RecurrenceInstance"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurrenceInstance

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

com.appiancorp.suiteapi.process.RecurrenceInstance

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RecurrenceInstance extends [Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

This class is used to specify properties for a particular node instance that is set to re-execute after every configurable interval of time. The class also provides a way to specify the end condition on which the recurrence should stop.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurrenceInstance)

-   ## Nested Class Summary

    ## Nested classes/interfaces inherited from class com.appiancorp.suiteapi.process.[Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

    `[Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process")`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RecurrenceInstance](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Retrieves the unique id of this RecurrenceInstance.

    `[Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql")`

    `[getTimeStampScheduled](#getTimeStampScheduled\(\))()`

    Retrieves the timestamp at which next instance of the node is created.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id_)`

    Sets the id of the recurrence instance.

    `void`

    `[setTimeStampScheduled](#setTimeStampScheduled\(java.sql.Timestamp\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") stampScheduled_)`

    Sets the timestamp at which the next instance of the node is created.

    ### Methods inherited from class com.appiancorp.suiteapi.process.[Recurrence](Recurrence.html "class in com.appiancorp.suiteapi.process")

    `[getEnd](Recurrence.html#getEnd\(\)), [getRecurringInterval](Recurrence.html#getRecurringInterval\(\)), [getTimeZoneId](Recurrence.html#getTimeZoneId\(\)), [getTimeZoneIdExpr](Recurrence.html#getTimeZoneIdExpr\(\)), [setEnd](Recurrence.html#setEnd\(com.appiancorp.suiteapi.process.Recurrence.End\)), [setRecurringInterval](Recurrence.html#setRecurringInterval\(com.appiancorp.suiteapi.process.RecurringInterval\)), [setTimeZoneId](Recurrence.html#setTimeZoneId\(java.lang.String\)), [setTimeZoneIdExpr](Recurrence.html#setTimeZoneIdExpr\(java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### RecurrenceInstance

        public RecurrenceInstance()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Retrieves the unique id of this RecurrenceInstance. This id is unique across all Recurrences instances in all the processes

        Returns:

        unique id of this recurrence instance

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id\_)

        Sets the id of the recurrence instance. This should be unique across all processes

        Parameters:

        `id_` -

    -   ### getTimeStampScheduled

        public [Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") getTimeStampScheduled()

        Retrieves the timestamp at which next instance of the node is created.

        Returns:

        timestamp of the time at which next node instance is created

    -   ### setTimeStampScheduled

        public void setTimeStampScheduled([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") stampScheduled\_)

        Sets the timestamp at which the next instance of the node is created.

        Parameters:

        `stampScheduled_` - timestamp of the time at which new instance of node is created.