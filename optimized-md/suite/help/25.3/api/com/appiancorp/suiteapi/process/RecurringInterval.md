---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurringInterval.html
original_path: api/com/appiancorp/suiteapi/process/RecurringInterval.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurringInterval

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.RecurringInterval

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

* * *

public class RecurringInterval extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Defines a time interval for an event that repeats after a fixed delay. The delay can be specified as Daily, Weekly, Monthly, Yearly or `Interval`. This class is mainly used to specify the `Recurrence` property of a node.

See Also:

-   [`Recurrence`](Recurrence.html "class in com.appiancorp.suiteapi.process")
-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurringInterval)

-   ## Nested Class Summary

    Nested Classes

    Modifier and Type

    Class

    Description

    `static class` 

    `[RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process")`

    Class defines Daily recurring interval

    `static class` 

    `[RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")`

    Class defines time interval for Monthly events.

    `static class` 

    `[RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")`

    Class that defines time interval for events that occur on a Weekly basis.

    `static class` 

    `[RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")`

    Class defines time interval for Yearly events.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[RECURRING_TYPE_DAILY](#RECURRING_TYPE_DAILY)`

    `static final int`

    `[RECURRING_TYPE_INTERVAL](#RECURRING_TYPE_INTERVAL)`

    `static final int`

    `[RECURRING_TYPE_MONTHLY](#RECURRING_TYPE_MONTHLY)`

    `static final int`

    `[RECURRING_TYPE_WEEKLY](#RECURRING_TYPE_WEEKLY)`

    `static final int`

    `[RECURRING_TYPE_YEARLY](#RECURRING_TYPE_YEARLY)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[RecurringInterval](#%3Cinit%3E\(\))()`

    Creates a RecurringInterval object, without setting the RecurringInterval type.

    `[RecurringInterval](#%3Cinit%3E\(int\))(int intervalType_)`

    Creates a RecurringInterval object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process")`

    `[getDaily](#getDaily\(\))()`

    Returns the recurring daily interval

    `[Interval](Interval.html "class in com.appiancorp.suiteapi.process")`

    `[getInterval](#getInterval\(\))()`

    Returns the `Interval` object.

    `int`

    `[getIntervalType](#getIntervalType\(\))()`

    Returns the type of the RecurringInterval

    `[RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")`

    `[getMonthly](#getMonthly\(\))()`

    Gets the Monthly delay

    `[Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql")`

    `[getTime](#getTime\(\))()`

    Gets the time of the day which the event occures.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeExpr](#getTimeExpr\(\))()`

    Gets the time of the day at which the event occurs.

    `[RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")`

    `[getWeekly](#getWeekly\(\))()`

    Gets the Weekly delay

    `[RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")`

    `[getYearly](#getYearly\(\))()`

    Gets the Yearly delay

    `void`

    `[setDaily](#setDaily\(com.appiancorp.suiteapi.process.RecurringInterval.Daily\))([RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process") daily_)`

    Sets the Daily interval

    `void`

    `[setInterval](#setInterval\(com.appiancorp.suiteapi.process.Interval\))([Interval](Interval.html "class in com.appiancorp.suiteapi.process") interval_)`

    Sets the delay with an `Interval` object

    `void`

    `[setIntervalType](#setIntervalType\(int\))(int intervalType_)`

    Sets the type of the RecurringInterval

    `void`

    `[setMonthly](#setMonthly\(com.appiancorp.suiteapi.process.RecurringInterval.Monthly\))([RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process") monthly_)`

    Sets the Monthly delay

    `void`

    `[setTime](#setTime\(java.sql.Time\))([Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") time_)`

    Sets the time of the day, at which the event occurs.

    `void`

    `[setTimeExpr](#setTimeExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeExpr_)`

    Sets the time of the day at which the event occurs.

    `void`

    `[setWeekly](#setWeekly\(com.appiancorp.suiteapi.process.RecurringInterval.Weekly\))([RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process") weekly_)`

    Sets the Weekly delay

    `void`

    `[setYearly](#setYearly\(com.appiancorp.suiteapi.process.RecurringInterval.Yearly\))([RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process") yearly_)`

    Sets the Yearly delay

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### RECURRING\_TYPE\_INTERVAL

        public static final int RECURRING\_TYPE\_INTERVAL

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.RECURRING_TYPE_INTERVAL)

    -   ### RECURRING\_TYPE\_DAILY

        public static final int RECURRING\_TYPE\_DAILY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.RECURRING_TYPE_DAILY)

    -   ### RECURRING\_TYPE\_WEEKLY

        public static final int RECURRING\_TYPE\_WEEKLY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.RECURRING_TYPE_WEEKLY)

    -   ### RECURRING\_TYPE\_MONTHLY

        public static final int RECURRING\_TYPE\_MONTHLY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.RECURRING_TYPE_MONTHLY)

    -   ### RECURRING\_TYPE\_YEARLY

        public static final int RECURRING\_TYPE\_YEARLY

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.RECURRING_TYPE_YEARLY)

-   ## Constructor Details

    -   ### RecurringInterval

        public RecurringInterval(int intervalType\_)

        Creates a RecurringInterval object.

        Parameters:

        `intervalType_` - type of the RecurringInterval

        See Also:

        -   [`RECURRING_TYPE_INTERVAL`](#RECURRING_TYPE_INTERVAL)
        -   [`RECURRING_TYPE_DAILY`](#RECURRING_TYPE_DAILY)
        -   [`RECURRING_TYPE_WEEKLY`](#RECURRING_TYPE_WEEKLY)
        -   [`RECURRING_TYPE_MONTHLY`](#RECURRING_TYPE_MONTHLY)
        -   [`RECURRING_TYPE_YEARLY`](#RECURRING_TYPE_YEARLY)

    -   ### RecurringInterval

        public RecurringInterval()

        Creates a RecurringInterval object, without setting the RecurringInterval type.

-   ## Method Details

    -   ### getIntervalType

        public int getIntervalType()

        Returns the type of the RecurringInterval

        See Also:

        -   [`RECURRING_TYPE_INTERVAL`](#RECURRING_TYPE_INTERVAL)
        -   [`RECURRING_TYPE_DAILY`](#RECURRING_TYPE_DAILY)
        -   [`RECURRING_TYPE_WEEKLY`](#RECURRING_TYPE_WEEKLY)
        -   [`RECURRING_TYPE_MONTHLY`](#RECURRING_TYPE_MONTHLY)
        -   [`RECURRING_TYPE_YEARLY`](#RECURRING_TYPE_YEARLY)

    -   ### setIntervalType

        public void setIntervalType(int intervalType\_)

        Sets the type of the RecurringInterval

        Parameters:

        `intervalType_` - one of the following: RECURRING\_TYPE\_INTERVAL, RECURRING\_TYPE\_DAILY, RECURRING\_TYPE\_WEEKLY, RECURRING\_TYPE\_MONTHLY, RECURRING\_TYPE\_YEARLY

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if param is not one of the supported types.

    -   ### getDaily

        public [RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process") getDaily()

        Returns the recurring daily interval

        Returns:

        Daily object or null

    -   ### setDaily

        public void setDaily([RecurringInterval.Daily](RecurringInterval.Daily.html "class in com.appiancorp.suiteapi.process") daily\_)

        Sets the Daily interval

    -   ### getInterval

        public [Interval](Interval.html "class in com.appiancorp.suiteapi.process") getInterval()

        Returns the `Interval` object.

        See Also:

        -   [`Interval`](Interval.html "class in com.appiancorp.suiteapi.process")

    -   ### setInterval

        public void setInterval([Interval](Interval.html "class in com.appiancorp.suiteapi.process") interval\_)

        Sets the delay with an `Interval` object

        See Also:

        -   [`Interval`](Interval.html "class in com.appiancorp.suiteapi.process")

    -   ### getMonthly

        public [RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process") getMonthly()

        Gets the Monthly delay

        See Also:

        -   [`RecurringInterval.Monthly`](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")

    -   ### setMonthly

        public void setMonthly([RecurringInterval.Monthly](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process") monthly\_)

        Sets the Monthly delay

        See Also:

        -   [`RecurringInterval.Monthly`](RecurringInterval.Monthly.html "class in com.appiancorp.suiteapi.process")

    -   ### getWeekly

        public [RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process") getWeekly()

        Gets the Weekly delay

        See Also:

        -   [`RecurringInterval.Weekly`](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")

    -   ### setWeekly

        public void setWeekly([RecurringInterval.Weekly](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process") weekly\_)

        Sets the Weekly delay

        See Also:

        -   [`RecurringInterval.Weekly`](RecurringInterval.Weekly.html "class in com.appiancorp.suiteapi.process")

    -   ### getYearly

        public [RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process") getYearly()

        Gets the Yearly delay

        See Also:

        -   [`RecurringInterval.Yearly`](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")

    -   ### setYearly

        public void setYearly([RecurringInterval.Yearly](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process") yearly\_)

        Sets the Yearly delay

        See Also:

        -   [`RecurringInterval.Yearly`](RecurringInterval.Yearly.html "class in com.appiancorp.suiteapi.process")

    -   ### getTime

        public [Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") getTime()

        Gets the time of the day which the event occures. This time is significant only when the `RecurringInterval` is of type RECURRING\_TYPE\_DAILY, RECURRING\_TYPE\_WEEKLY, RECURRING\_TYPE\_MONTHLY, RECURRING\_TYPE\_YEARLY.

        Returns:

        Time used to fire the event. The actual time is calculated based on an specific TimeZone

    -   ### setTime

        public void setTime([Time](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Time.html "class or interface in java.sql") time\_)

        Sets the time of the day, at which the event occurs. This time is significant only when the `RecurringInterval` is of type RECURRING\_TYPE\_DAILY, RECURRING\_TYPE\_WEEKLY, RECURRING\_TYPE\_MONTHLY, RECURRING\_TYPE\_YEARLY.

        Parameters:

        `Time` - used to fire the event

    -   ### getTimeExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeExpr()

        Gets the time of the day at which the event occurs. This time is significant only when the `RecurringInterval` is of type RECURRING\_TYPE\_DAILY, RECURRING\_TYPE\_WEEKLY, RECURRING\_TYPE\_MONTHLY, RECURRING\_TYPE\_YEARLY.

        Returns:

        a String expression that resolves to a time. The actual time is calculated based on an specific TimeZone

    -   ### setTimeExpr

        public void setTimeExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeExpr\_)

        Sets the time of the day at which the event occurs. This time is significant only when the `RecurringInterval` is of type RECURRING\_TYPE\_DAILY, RECURRING\_TYPE\_WEEKLY, RECURRING\_TYPE\_MONTHLY, RECURRING\_TYPE\_YEARLY.

        Parameters:

        `time_` - String expression that resolves to a time