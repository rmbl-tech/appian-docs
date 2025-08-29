---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/CalendarElement.html
original_path: api/com/appiancorp/suiteapi/process/calendar/CalendarElement.html
version: "25.3"
title: "Class CalendarElement"
page_id: "api/com/appiancorp/suiteapi/process/calendar/CalendarElement"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.calendar](package-summary.html)

# Class CalendarElement

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.calendar.CalendarElement

All Implemented Interfaces:

`com.appiancorp.core.expr.calendar.PortableCalendarElement`

Direct Known Subclasses:

`[CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")`

* * *

public class CalendarElement extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") implements com.appiancorp.core.expr.calendar.PortableCalendarElement

The CalendarElement stores a start and end time, which is used by the WorkingCalendar to specify all start and end times per day. The start and end times are stored by specifying the minute of the day which will be the start time, and a duration which will define the end time.

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[CalendarElement](#%3Cinit%3E\(\))()`

    Constructs an empty CalendarElement (0 for both values).

    `[CalendarElement](#%3Cinit%3E\(int,int\))(int minuteOfDay_, int lengthInMinutes_)`

    Constructs a CalendarElement with default values for the start minute and number of duration minutes.

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `boolean`

    `[equals](#equals\(java.lang.Object\))([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)`

    `int`

    `[getLengthInMinutes](#getLengthInMinutes\(\))()`

    Get the duration of this start-end period in minutes.

    `int`

    `[getMinuteOfDay](#getMinuteOfDay\(\))()`

    Get the minute of the day on which this start-end period will start. 0 minutes corresponds to midnight.

    `int`

    `[hashCode](#hashCode\(\))()`

    `protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[minuteString](#minuteString\(int\))(int minutes)`

    `void`

    `[setLengthInMinutes](#setLengthInMinutes\(int\))(int lengthInMinutes_)`

    Set the duration of this start-end period in minutes.

    `void`

    `[setMinuteOfDay](#setMinuteOfDay\(int\))(int minuteOfDay_)`

    Set the minute of the day on which this start-end period will start.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")[]`

    `[startEndToString](#startEndToString\(javax.servlet.http.HttpSession\))(javax.servlet.http.HttpSession hs_)`

    Returns the string respresentation of the Start and End time of this element.

    `static [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")`

    `[stringToCalendarElement](#stringToCalendarElement\(java.lang.String,java.lang.String,java.util.Locale,java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") startTime, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endTime, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarId)`

    Given the start time and end time as strings, returns a calendar element.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Simple toString method.

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### CalendarElement

        public CalendarElement()

        Constructs an empty CalendarElement (0 for both values).

    -   ### CalendarElement

        public CalendarElement(int minuteOfDay\_, int lengthInMinutes\_)

        Constructs a CalendarElement with default values for the start minute and number of duration minutes.

        Parameters:

        `minuteOfDay_` - The starting minute of the day.

        `lengthInMinutes_` - The duration of this element in minutes.

-   ## Method Details

    -   ### getLengthInMinutes

        public int getLengthInMinutes()

        Get the duration of this start-end period in minutes. The end time in minutes is determined by adding this duration to the start time in minutes.

        Specified by:

        `getLengthInMinutes` in interface `com.appiancorp.core.expr.calendar.PortableCalendarElement`

        Returns:

        The duration of the start-end period in minutes.

        See Also:

        -   [`setLengthInMinutes(int)`](#setLengthInMinutes\(int\))

    -   ### setLengthInMinutes

        public void setLengthInMinutes(int lengthInMinutes\_)

        Set the duration of this start-end period in minutes.

        Parameters:

        `lengthInMinutes_` - The duration of the start-end period in minutes to set.

        See Also:

        -   [`getLengthInMinutes()`](#getLengthInMinutes\(\))

    -   ### getMinuteOfDay

        public int getMinuteOfDay()

        Get the minute of the day on which this start-end period will start. 0 minutes corresponds to midnight.

        Specified by:

        `getMinuteOfDay` in interface `com.appiancorp.core.expr.calendar.PortableCalendarElement`

        Returns:

        Returns the minuteOfDay.

        See Also:

        -   [`setMinuteOfDay(int)`](#setMinuteOfDay\(int\))

    -   ### setMinuteOfDay

        public void setMinuteOfDay(int minuteOfDay\_)

        Set the minute of the day on which this start-end period will start.

        Parameters:

        `minuteOfDay_` - The minuteOfDay to set.

        See Also:

        -   [`getMinuteOfDay()`](#getMinuteOfDay\(\))

    -   ### startEndToString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")\[\] startEndToString(javax.servlet.http.HttpSession hs\_)

        Returns the string respresentation of the Start and End time of this element.

        Parameters:

        `hs_` - the http session, needed to format the entries according to the locale.

        Returns:

        an array of two elements, the first entry is the start time, the second entry is the end time.

    -   ### stringToCalendarElement

        public static [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") stringToCalendarElement([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") startTime, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") endTime, [Locale](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Locale.html "class or interface in java.util") locale, [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") calendarId) throws [ParseException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/text/ParseException.html "class or interface in java.text")

        Given the start time and end time as strings, returns a calendar element. The strings must be formatted according to the picker format for times. If both entries are blank, a blank CalendarElement will be returned.

        Parameters:

        `startTime` - The start time as a string.

        `endTime` - The end time as a string.

        `locale` - The locale under which the passed strings where generated.

        `calendarId` - The Id of the calendar under which the passed strings where generated.

        Returns:

        a `CalendarElement`

        Throws:

        `[ParseException](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/text/ParseException.html "class or interface in java.text")` - If the startTime and/or endTime cannot be parsed into an actual time value.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Simple toString method. The format of this is allowed to change.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### minuteString

        protected [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") minuteString(int minutes)

    -   ### equals

        public boolean equals([Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang") o)

        Overrides:

        `[equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

    -   ### hashCode

        public int hashCode()

        Overrides:

        `[hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`