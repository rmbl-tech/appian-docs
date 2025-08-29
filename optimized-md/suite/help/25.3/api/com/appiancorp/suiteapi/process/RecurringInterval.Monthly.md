---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurringInterval.Monthly.html
original_path: api/com/appiancorp/suiteapi/process/RecurringInterval.Monthly.html
version: "25.3"
title: "Class RecurringInterval.Monthly"
page_id: "api/com/appiancorp/suiteapi/process/RecurringInterval.Monthly"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurringInterval.Monthly

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.RecurringInterval.Monthly

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

* * *

public static class RecurringInterval.Monthly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class defines time interval for Monthly events. Monthly events can occur on a specific day of the month i.e. on "10th day of every 2 months" or Monthly events can occur on a specific weekday of the month i.e. on "SECOND Friday of every 2 months".

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly)

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final int`

    `[WEEK_FIRST](#WEEK_FIRST)`

    `static final int`

    `[WEEK_FOURTH](#WEEK_FOURTH)`

    `static final int`

    `[WEEK_LAST](#WEEK_LAST)`

    `static final int`

    `[WEEK_SECOND](#WEEK_SECOND)`

    `static final int`

    `[WEEK_THIRD](#WEEK_THIRD)`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Monthly](#%3Cinit%3E\(\))()`

    Creates a new object of type Monthly

    `[Monthly](#%3Cinit%3E\(boolean\))(boolean weekdayBased_)`

    Creates a new Object of type Monthly.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayOfMonth](#getDayOfMonth\(\))()`

    Returns the day of the month on which event occurs

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDayOfMonthExpr](#getDayOfMonthExpr\(\))()`

    Gets the day of the month on which the event occurs

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayOfWeek](#getDayOfWeek\(\))()`

    Returns the day of the week on which event occurs.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getMonthInterval](#getMonthInterval\(\))()`

    Returns the interval in terms on number of months between two consecutive monthly events.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getMonthIntervalExpr](#getMonthIntervalExpr\(\))()`

    Returns the interval in terms on number of months between two consecutive monthly events as an expression

    `boolean`

    `[getWeekdayBased](#getWeekdayBased\(\))()`

    Returns true if the Monthly events occur on a particular day of a week of month like "Third Wednesday of every month", else false.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getWeekType](#getWeekType\(\))()`

    Returns the Week of the month on which the Monthly event occurs.

    `void`

    `[setDayOfMonth](#setDayOfMonth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfMonth_)`

    sets the day of the month on which the event occurs

    `void`

    `[setDayOfMonthExpr](#setDayOfMonthExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayOfMonthExpr_)`

    Sets the day of the month on which the event occurs

    `void`

    `[setDayOfWeek](#setDayOfWeek\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek_)`

    Sets the day of the day of the week on which event occurs.

    `void`

    `[setMonthInterval](#setMonthInterval\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") monthInterval_)`

    Sets the interval in terms on number of months between two consecutive monthly events.

    `void`

    `[setMonthIntervalExpr](#setMonthIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") monthIntervalExpr_)`

    Sets the interval in terms on number of months between two consecutive monthly events as an expression

    `void`

    `[setWeekdayBased](#setWeekdayBased\(boolean\))(boolean weekdayBased_)`

    Set to true if the Monthly events occur on a particular day of a week of month like "Third Wednesday of every month", else false.

    `void`

    `[setWeekType](#setWeekType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayType_)`

    Sets the Week of the month on which the Monthly event occurs.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### WEEK\_FIRST

        public static final int WEEK\_FIRST

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly.WEEK_FIRST)

    -   ### WEEK\_SECOND

        public static final int WEEK\_SECOND

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly.WEEK_SECOND)

    -   ### WEEK\_THIRD

        public static final int WEEK\_THIRD

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly.WEEK_THIRD)

    -   ### WEEK\_FOURTH

        public static final int WEEK\_FOURTH

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly.WEEK_FOURTH)

    -   ### WEEK\_LAST

        public static final int WEEK\_LAST

        See Also:

        -   [Constant Field Values](../../../../constant-values.html#com.appiancorp.suiteapi.process.RecurringInterval.Monthly.WEEK_LAST)

-   ## Constructor Details

    -   ### Monthly

        public Monthly()

        Creates a new object of type Monthly

    -   ### Monthly

        public Monthly(boolean weekdayBased\_)

        Creates a new Object of type Monthly.

        Parameters:

        `weekdayBased_` - if true then the monthly events are of like "SECOND Friday of every 2 months" else the monthly events are like "10th day of every 2 months".

-   ## Method Details

    -   ### getDayOfMonth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayOfMonth()

        Returns the day of the month on which event occurs

        Returns:

        1 - 31

    -   ### setDayOfMonth

        public void setDayOfMonth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfMonth\_)

        sets the day of the month on which the event occurs

        Parameters:

        `dayOfMonth_` - 1 - 31

    -   ### getDayOfWeek

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayOfWeek()

        Returns the day of the week on which event occurs. SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7

        Returns:

        1 - 7

    -   ### setDayOfWeek

        public void setDayOfWeek([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek\_)

        Sets the day of the day of the week on which event occurs. SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7

        Parameters:

        `dayOfWeek_` - between 1 - 7

    -   ### getWeekType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getWeekType()

        Returns the Week of the month on which the Monthly event occurs. This property is used to specify monthly event like "Third Wednesday of every month".

        See Also:

        -   [`WEEK_FIRST`](#WEEK_FIRST)
        -   [`WEEK_SECOND`](#WEEK_SECOND)
        -   [`WEEK_THIRD`](#WEEK_THIRD)
        -   [`WEEK_FOURTH`](#WEEK_FOURTH)
        -   [`WEEK_LAST`](#WEEK_LAST)

    -   ### setWeekType

        public void setWeekType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayType\_)

        Sets the Week of the month on which the Monthly event occurs. This property is used to specify monthly event like "Third Wednesday of every month".

        See Also:

        -   [`WEEK_FIRST`](#WEEK_FIRST)
        -   [`WEEK_SECOND`](#WEEK_SECOND)
        -   [`WEEK_THIRD`](#WEEK_THIRD)
        -   [`WEEK_FOURTH`](#WEEK_FOURTH)
        -   [`WEEK_LAST`](#WEEK_LAST)

    -   ### getMonthInterval

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getMonthInterval()

        Returns the interval in terms on number of months between two consecutive monthly events.

    -   ### setMonthInterval

        public void setMonthInterval([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") monthInterval\_)

        Sets the interval in terms on number of months between two consecutive monthly events.

    -   ### getWeekdayBased

        public boolean getWeekdayBased()

        Returns true if the Monthly events occur on a particular day of a week of month like "Third Wednesday of every month", else false.

    -   ### setWeekdayBased

        public void setWeekdayBased(boolean weekdayBased\_)

        Set to true if the Monthly events occur on a particular day of a week of month like "Third Wednesday of every month", else false.

    -   ### getDayOfMonthExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDayOfMonthExpr()

        Gets the day of the month on which the event occurs

        Returns:

        an expression resolving to a number (integer) between 1 and 31

    -   ### setDayOfMonthExpr

        public void setDayOfMonthExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayOfMonthExpr\_)

        Sets the day of the month on which the event occurs

        Parameters:

        `dayOfMonth_` - an expression resolving to a number (integer) between 1 and 31

    -   ### getMonthIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getMonthIntervalExpr()

        Returns the interval in terms on number of months between two consecutive monthly events as an expression

        Returns:

        an expression that evaluates to a number (integer)

    -   ### setMonthIntervalExpr

        public void setMonthIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") monthIntervalExpr\_)

        Sets the interval in terms on number of months between two consecutive monthly events as an expression

        Parameters:

        `monthIntervalExpr_` - an expression that evaluates to a number (integer)