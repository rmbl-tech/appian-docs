---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html
original_path: api/com/appiancorp/suiteapi/process/calendar/CalendarDateElement.html
version: "25.3"
title: "Class CalendarDateElement"
page_id: "api/com/appiancorp/suiteapi/process/calendar/CalendarDateElement"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.calendar](package-summary.html)

# Class CalendarDateElement

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

[com.appiancorp.suiteapi.process.calendar.CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

com.appiancorp.suiteapi.process.calendar.CalendarDateElement

All Implemented Interfaces:

`com.appiancorp.core.expr.calendar.PortableCalendarDateElement`, `com.appiancorp.core.expr.calendar.PortableCalendarElement`

* * *

public class CalendarDateElement extends [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") implements com.appiancorp.core.expr.calendar.PortableCalendarDateElement

The `CalendarDateElement` is similar to the [`CalendarElement`](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") but it has an additional field which specifies the specific day to which this element is applied.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CalendarDateElement](#%3Cinit%3E\(\))()`

    Default constructor for a `CalendarDateElement`.

    `[CalendarDateElement](#%3Cinit%3E\(java.sql.Date,int,int\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date_, int minuteOfDay_, int lengthInMinutes_)`

    `CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes.

    `[CalendarDateElement](#%3Cinit%3E\(java.sql.Date,com.appiancorp.suiteapi.process.calendar.CalendarElement\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date_, [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") tempElement_)`

    `CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes.

-   ## Method Summary

    All MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql")`

    `[getDate](#getDate\(\))()`

    Get the date to which this `CalendarDateElement` is applied.

    `void`

    `[setDate](#setDate\(java.sql.Date\))([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date_)`

    Set the date to which this `CalendarDateElement` is applied.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Simple toString method.

    ### Methods inherited from class com.appiancorp.suiteapi.process.calendar.[CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

    `[equals](CalendarElement.html#equals\(java.lang.Object\)), [getLengthInMinutes](CalendarElement.html#getLengthInMinutes\(\)), [getMinuteOfDay](CalendarElement.html#getMinuteOfDay\(\)), [hashCode](CalendarElement.html#hashCode\(\)), [minuteString](CalendarElement.html#minuteString\(int\)), [setLengthInMinutes](CalendarElement.html#setLengthInMinutes\(int\)), [setMinuteOfDay](CalendarElement.html#setMinuteOfDay\(int\)), [startEndToString](CalendarElement.html#startEndToString\(javax.servlet.http.HttpSession\)), [stringToCalendarElement](CalendarElement.html#stringToCalendarElement\(java.lang.String,java.lang.String,java.util.Locale,java.lang.String\))`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

    ### Methods inherited from interface com.appiancorp.core.expr.calendar.PortableCalendarElement

    `getLengthInMinutes, getMinuteOfDay`

-   ## Constructor Details

    -   ### CalendarDateElement

        public CalendarDateElement()

        Default constructor for a `CalendarDateElement`.

    -   ### CalendarDateElement

        public CalendarDateElement([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date\_, int minuteOfDay\_, int lengthInMinutes\_)

        `CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes.

        Parameters:

        `date_` - The date to which this element applies.

        `minuteOfDay_` - The start minute for this start-end pair.

        `lengthInMinutes_` - The duration in minutes for this start-end pair.

    -   ### CalendarDateElement

        public CalendarDateElement([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date\_, [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") tempElement\_)

        `CalendarDateElement` constructor which initializes the date of this element as well as the starting minute and duration in minutes. The starting minute and duration should be provided in tempElement\_

        Parameters:

        `date_` - The date to which this element applies.

        `tempElement_` - An instance of `CalendarElement` containing starting minute and the duration.

-   ## Method Details

    -   ### getDate

        public [Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") getDate()

        Get the date to which this `CalendarDateElement` is applied.

        Specified by:

        `getDate` in interface `com.appiancorp.core.expr.calendar.PortableCalendarDateElement`

        Returns:

        The date to which this element is applied.

        See Also:

        -   [`setDate(Date)`](#setDate\(java.sql.Date\))

    -   ### setDate

        public void setDate([Date](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Date.html "class or interface in java.sql") date\_)

        Set the date to which this `CalendarDateElement` is applied.

        Parameters:

        `date_` - The date to which this element is applied to set.

        See Also:

        -   [`getDate()`](#getDate\(\))

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Simple toString method. The format of this is allowed to change.

        Overrides:

        `[toString](CalendarElement.html#toString\(\))` in class `[CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")`