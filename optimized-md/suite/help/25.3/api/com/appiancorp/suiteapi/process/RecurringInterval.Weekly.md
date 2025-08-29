---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurringInterval.Weekly.html
original_path: api/com/appiancorp/suiteapi/process/RecurringInterval.Weekly.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurringInterval.Weekly

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.RecurringInterval.Weekly

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

* * *

public static class RecurringInterval.Weekly extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class that defines time interval for events that occur on a Weekly basis.

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurringInterval.Weekly)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Weekly](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[]`

    `[getDaysOfWeek](#getDaysOfWeek\(\))()`

    Returns an array of integer containing the days of the Week on which the event occurs.

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getWeekInterval](#getWeekInterval\(\))()`

    Return interval in number of weeks between two consecutive weeks on which event occurs.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getWeekIntervalExpr](#getWeekIntervalExpr\(\))()`

    Gets interval in number of weeks between two consecutive weeks on which event occurs.

    `void`

    `[setDaysOfWeek](#setDaysOfWeek\(java.lang.Integer%5B%5D\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")[] daysOfWeek_)`

    Sets days of week on which the event occurs.

    `void`

    `[setWeekInterval](#setWeekInterval\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") weekInterval_)`

    Sets interval in number of weeks between two consecutive weeks on which event occurs.

    `void`

    `[setWeekIntervalExpr](#setWeekIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") weekIntervalExpr_)`

    Sets interval in number of weeks between two consecutive weeks on which event occurs.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Weekly

        public Weekly()

-   ## Method Details

    -   ### getDaysOfWeek

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] getDaysOfWeek()

        Returns an array of integer containing the days of the Week on which the event occurs. Weekdays are represented by integers in the following way: SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7. Hence if the event should occur every Monday and Thursday, it will represented by the following int\[\] = new int{2, 5}

        Returns:

        integer array containing days of the week on which event occurs

    -   ### setDaysOfWeek

        public void setDaysOfWeek([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")\[\] daysOfWeek\_)

        Sets days of week on which the event occurs. The parameter is an array of integer containing the days of the Week on which the event occurs. Weekdays are represented by integers in the following way: SUNDAY = 1, MONDAY = 2, TUESDAY = 3, WEDNESDAY = 4, THURSDAY = 5, FRIDAY = 6, SATURDAY = 7. So if the event should occur every Monday and Thursday, it will represented by the following int\[\] = new int{2, 5}

    -   ### getWeekInterval

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getWeekInterval()

        Return interval in number of weeks between two consecutive weeks on which event occurs.

    -   ### setWeekInterval

        public void setWeekInterval([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") weekInterval\_)

        Sets interval in number of weeks between two consecutive weeks on which event occurs.

    -   ### getWeekIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getWeekIntervalExpr()

        Gets interval in number of weeks between two consecutive weeks on which event occurs.

        Returns:

        an expression that resolves to a number (integer)

    -   ### setWeekIntervalExpr

        public void setWeekIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") weekIntervalExpr\_)

        Sets interval in number of weeks between two consecutive weeks on which event occurs.

        Parameters:

        `weekIntervalExpr_` - an expression that resolves to a number (integer)