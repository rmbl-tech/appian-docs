---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurringInterval.Yearly.html
original_path: api/com/appiancorp/suiteapi/process/RecurringInterval.Yearly.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurringInterval.Yearly

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.RecurringInterval.Yearly

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

* * *

public static class RecurringInterval.Yearly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class defines time interval for Yearly events. Yearly events can occur on a specific day of the month i.e. on "10th day of Jan" or on a specific week day of the month i.e. on "SECOND Friday of March".

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurringInterval.Yearly)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Yearly](#%3Cinit%3E\(\))()`

    `[Yearly](#%3Cinit%3E\(boolean\))(boolean weekdayBased_)`

    Create a new yearly object

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayOfMonth](#getDayOfMonth\(\))()`

    Returns the day of the month on which the event occurs

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDayOfMonthExpr](#getDayOfMonthExpr\(\))()`

    Gets the day of the month on which the event occurs

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayOfWeek](#getDayOfWeek\(\))()`

    Returns the day of the day of the week on which event occurs.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getMonth](#getMonth\(\))()`

    Gets the month of the year on which Yearly event occurs.

    `boolean`

    `[getWeekdayBased](#getWeekdayBased\(\))()`

    Returns true if the Yearly events occur on a particular day of a week of month like "Third Wednesday of Jan", else false.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getWeekType](#getWeekType\(\))()`

    Gets the Week of the month on which the Yearly event occurs.

    `void`

    `[setDayOfMonth](#setDayOfMonth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfMonth_)`

    Sets the day of the month on which event occurs

    `void`

    `[setDayOfMonthExpr](#setDayOfMonthExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayOfMonthExpr_)`

    Sets the day of the month on which the event occurs

    `void`

    `[setDayOfWeek](#setDayOfWeek\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek_)`

    Sets the day of the week on which the day of the week on which event occurs.

    `void`

    `[setMonth](#setMonth\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") month_)`

    Set the month of the year on which Yearly event occurs.

    `void`

    `[setWeekdayBased](#setWeekdayBased\(boolean\))(boolean weekdayBased_)`

    Set tp true if the Yearly events occur on a particular day of a week of month like "Third Wednesday of Jan", else false.

    `void`

    `[setWeekType](#setWeekType\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayType_)`

    Sets the Week of the month on which the Yearly event occurs.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Yearly

        public Yearly()

    -   ### Yearly

        public Yearly(boolean weekdayBased\_)

        Create a new yearly object

        Parameters:

        `weekdayBased_` - true if the Yearly events occur on a specific day of a week of month like R"SECOND Friday of March".

-   ## Method Details

    -   ### getDayOfMonth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayOfMonth()

        Returns the day of the month on which the event occurs

        Returns:

        1 - 31

    -   ### setDayOfMonth

        public void setDayOfMonth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfMonth\_)

        Sets the day of the month on which event occurs

        Parameters:

        `dayOfMonth_` - 1 - 31

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the parameters is not between 1 - 31

    -   ### getDayOfWeek

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayOfWeek()

        Returns the day of the day of the week on which event occurs. SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7

        Returns:

        1 - 7

    -   ### setDayOfWeek

        public void setDayOfWeek([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayOfWeek\_)

        Sets the day of the week on which the day of the week on which event occurs. SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7

        Parameters:

        `dayOfWeek_` - between 1 - 7

    -   ### getWeekType

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getWeekType()

        Gets the Week of the month on which the Yearly event occurs. This property is used to specify monthly event like "Third Wednesday of Jan".

        See Also:

        -   [`RecurringInterval.Monthly.WEEK_FIRST`](RecurringInterval.Monthly.html#WEEK_FIRST)
        -   [`RecurringInterval.Monthly.WEEK_SECOND`](RecurringInterval.Monthly.html#WEEK_SECOND)
        -   [`RecurringInterval.Monthly.WEEK_THIRD`](RecurringInterval.Monthly.html#WEEK_THIRD)
        -   [`RecurringInterval.Monthly.WEEK_FOURTH`](RecurringInterval.Monthly.html#WEEK_FOURTH)
        -   [`RecurringInterval.Monthly.WEEK_LAST`](RecurringInterval.Monthly.html#WEEK_LAST)

    -   ### setWeekType

        public void setWeekType([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayType\_)

        Sets the Week of the month on which the Yearly event occurs. This property is used to specify monthly event like "Third Wednesday of Jan".

        See Also:

        -   [`RecurringInterval.Monthly.WEEK_FIRST`](RecurringInterval.Monthly.html#WEEK_FIRST)
        -   [`RecurringInterval.Monthly.WEEK_SECOND`](RecurringInterval.Monthly.html#WEEK_SECOND)
        -   [`RecurringInterval.Monthly.WEEK_THIRD`](RecurringInterval.Monthly.html#WEEK_THIRD)
        -   [`RecurringInterval.Monthly.WEEK_FOURTH`](RecurringInterval.Monthly.html#WEEK_FOURTH)
        -   [`RecurringInterval.Monthly.WEEK_LAST`](RecurringInterval.Monthly.html#WEEK_LAST)

    -   ### getWeekdayBased

        public boolean getWeekdayBased()

        Returns true if the Yearly events occur on a particular day of a week of month like "Third Wednesday of Jan", else false.

    -   ### setWeekdayBased

        public void setWeekdayBased(boolean weekdayBased\_)

        Set tp true if the Yearly events occur on a particular day of a week of month like "Third Wednesday of Jan", else false.

    -   ### getMonth

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getMonth()

        Gets the month of the year on which Yearly event occurs. Jan = 0, Feb = 1 ..... Dec = 11

    -   ### setMonth

        public void setMonth([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") month\_)

        Set the month of the year on which Yearly event occurs.

        Parameters:

        `month_` - integer representing month of the year: Jan = 0, Feb = 1 -- Dec = 11

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