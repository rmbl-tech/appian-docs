---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/Recurrence.html
original_path: api/com/appiancorp/suiteapi/process/Recurrence.html
version: "25.3"
title: "Class Recurrence"
page_id: "api/com/appiancorp/suiteapi/process/Recurrence"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class Recurrence

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.Recurrence

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Direct Known Subclasses:

`[RecurrenceInstance](RecurrenceInstance.html "class in com.appiancorp.suiteapi.process")`

* * *

public class Recurrence extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Used to specify properties of a node that is set to re-execute after every configurable interval of time. The class also provides a way to specify the end condition on which the recurrence should stop.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.Recurrence)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process")`

    Class defines condition under which Recurrence stops for a node in process.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Recurrence](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process")`

    `[getEnd](#getEnd\(\))()`

    Returns End object that defines the end condition of the Recurrance of the node.

    `[RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")`

    `[getRecurringInterval](#getRecurringInterval\(\))()`

    Gets the time interval between two consecutive recurrences of a node.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeZoneId](#getTimeZoneId\(\))()`

    Gets the TimeZone ID used to calculate the Time at which the event occurs.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeZoneIdExpr](#getTimeZoneIdExpr\(\))()`

    Gets the TimeZone ID expression used to calculate the Time at which the event occurs.

    `void`

    `[setEnd](#setEnd\(com.appiancorp.suiteapi.process.Recurrence.End\))([Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process") end_)`

    Set the end condition for the Recurrence of a node to stop.

    `void`

    `[setRecurringInterval](#setRecurringInterval\(com.appiancorp.suiteapi.process.RecurringInterval\))([RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process") recurringInterval_)`

    Sets the time interval between two consecutive recurrences of a node.

    `void`

    `[setTimeZoneId](#setTimeZoneId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)`

    Sets the TimeZone ID used to calculate the Time at which the event occurs.

    `void`

    `[setTimeZoneIdExpr](#setTimeZoneIdExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneIdExpr)`

    Sets the TimeZone ID expression used to calculate the Time at which the event occurs.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Recurrence

        public Recurrence()

-   ## Method Details

    -   ### getEnd

        public [Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process") getEnd()

        Returns End object that defines the end condition of the Recurrance of the node.

        See Also:

        -   [`Recurrence.End`](Recurrence.End.html "class in com.appiancorp.suiteapi.process")

    -   ### setEnd

        public void setEnd([Recurrence.End](Recurrence.End.html "class in com.appiancorp.suiteapi.process") end\_)

        Set the end condition for the Recurrence of a node to stop.

        See Also:

        -   [`Recurrence.End`](Recurrence.End.html "class in com.appiancorp.suiteapi.process")

    -   ### getRecurringInterval

        public [RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process") getRecurringInterval()

        Gets the time interval between two consecutive recurrences of a node.

        See Also:

        -   [`RecurringInterval`](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

    -   ### setRecurringInterval

        public void setRecurringInterval([RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process") recurringInterval\_)

        Sets the time interval between two consecutive recurrences of a node.

        See Also:

        -   [`RecurringInterval`](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

    -   ### getTimeZoneId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeZoneId()

        Gets the TimeZone ID used to calculate the Time at which the event occurs.

        Returns:

        TimeZone ID

    -   ### setTimeZoneId

        public void setTimeZoneId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)

        Sets the TimeZone ID used to calculate the Time at which the event occurs.

        Parameters:

        `timeZoneId` - TimeZone ID

    -   ### getTimeZoneIdExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeZoneIdExpr()

        Gets the TimeZone ID expression used to calculate the Time at which the event occurs.

        Returns:

        String expression that resolves to a TimeZone ID

    -   ### setTimeZoneIdExpr

        public void setTimeZoneIdExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneIdExpr)

        Sets the TimeZone ID expression used to calculate the Time at which the event occurs.

        Parameters:

        `timeZoneIdExpr` - String expression that resolves to a TimeZone ID