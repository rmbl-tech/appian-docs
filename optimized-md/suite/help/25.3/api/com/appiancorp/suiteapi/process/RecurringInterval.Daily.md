---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/RecurringInterval.Daily.html
original_path: api/com/appiancorp/suiteapi/process/RecurringInterval.Daily.html
version: "25.3"
title: "Class RecurringInterval.Daily"
page_id: "api/com/appiancorp/suiteapi/process/RecurringInterval.Daily"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process](package-summary.html)

# Class RecurringInterval.Daily

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.RecurringInterval.Daily

All Implemented Interfaces:

`[Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")`

Enclosing class:

[RecurringInterval](RecurringInterval.html "class in com.appiancorp.suiteapi.process")

* * *

public static class RecurringInterval.Daily extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements [Serializable](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/Serializable.html "class or interface in java.io")

Class defines Daily recurring interval

See Also:

-   [Serialized Form](../../../../serialized-form.html#com.appiancorp.suiteapi.process.RecurringInterval.Daily)

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[Daily](#%3Cinit%3E\(\))()`

    `[Daily](#%3Cinit%3E\(boolean\))(boolean everyWeekday_)`

    Creates a new Daily Object.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[getDayInterval](#getDayInterval\(\))()`

    Returns the interval in terms of number of days.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getDayIntervalExpr](#getDayIntervalExpr\(\))()`

    Gets the interval in terms of number of days.

    `boolean`

    `[getEveryWeekday](#getEveryWeekday\(\))()`

    Returns true if the event occurs every weekday, else false.

    `void`

    `[setDayInterval](#setDayInterval\(java.lang.Integer\))([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayInterval_)`

    Sets the interval in terms of number of days.

    `void`

    `[setDayIntervalExpr](#setDayIntervalExpr\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayIntervalExpr_)`

    Sets the interval in terms of number of days.

    `void`

    `[setEveryWeekday](#setEveryWeekday\(boolean\))(boolean everyWeekday_)`

    Sets if the Daily object should throw an even every weekday.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### Daily

        public Daily()

    -   ### Daily

        public Daily(boolean everyWeekday\_)

        Creates a new Daily Object.

        Parameters:

        `everyWeekday_` - if true the event occurs every weekday. The day interval property is ignored in this case.

-   ## Method Details

    -   ### getDayInterval

        public [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") getDayInterval()

        Returns the interval in terms of number of days. This property is ignored if the everyWeekday property is set to true.

    -   ### setDayInterval

        public void setDayInterval([Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") dayInterval\_)

        Sets the interval in terms of number of days. This property is ignored if the everyWeekday property is set to true.

        Throws:

        `[IllegalArgumentException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/IllegalArgumentException.html "class or interface in java.lang")` - if the dayInterval is not a positive integer.

    -   ### getEveryWeekday

        public boolean getEveryWeekday()

        Returns true if the event occurs every weekday, else false.

    -   ### setEveryWeekday

        public void setEveryWeekday(boolean everyWeekday\_)

        Sets if the Daily object should throw an even every weekday.

        Parameters:

        `everyWeekday_` - true if the event should occur every weekday, else false.

    -   ### getDayIntervalExpr

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getDayIntervalExpr()

        Gets the interval in terms of number of days. This property is ignored if the everyWeekday property is set to true.

        Returns:

        an expression that evaluates to a number (integer)

    -   ### setDayIntervalExpr

        public void setDayIntervalExpr([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") dayIntervalExpr\_)

        Sets the interval in terms of number of days. This property is ignored if the everyWeekday property is set to true.

        Parameters:

        `dayIntervalExpr_` - an expression that evaluates to a number (integer)