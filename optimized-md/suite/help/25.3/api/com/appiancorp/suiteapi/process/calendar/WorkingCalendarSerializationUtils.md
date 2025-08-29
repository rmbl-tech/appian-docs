---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/WorkingCalendarSerializationUtils.html
original_path: api/com/appiancorp/suiteapi/process/calendar/WorkingCalendarSerializationUtils.html
version: "25.3"
title: "Class WorkingCalendarSerializationUtils"
page_id: "api/com/appiancorp/suiteapi/process/calendar/WorkingCalendarSerializationUtils"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.calendar](package-summary.html)

# Class WorkingCalendarSerializationUtils

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.suiteapi.process.calendar.WorkingCalendarSerializationUtils

* * *

public final class WorkingCalendarSerializationUtils extends [Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

This class is used as a helper to output a JSON String containing the calendar information inside of a Calendar Service

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[NAME_KEY](#NAME_KEY)`

-   ## Method Summary

    All MethodsStatic MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `static com.appiancorp.core.expr.portable.Value<com.appiancorp.core.data.ImmutableDictionary[]>`

    `[generateCustomCalendarDictionaries](#generateCustomCalendarDictionaries\(com.appiancorp.suiteapi.process.CalendarService\))([CalendarService](../CalendarService.html "interface in com.appiancorp.suiteapi.process") calendarService)`

    Returns a Value object of type ImmutableDictionary containing the information inside of a calendar service

    `static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getWorkingCalendarsJson](#getWorkingCalendarsJson\(com.appiancorp.suiteapi.process.CalendarService\))([CalendarService](../CalendarService.html "interface in com.appiancorp.suiteapi.process") calendarService)`

    Returns the calendar data inside of calendarService as JSON

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### NAME\_KEY

        public static final [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") NAME\_KEY

        See Also:

        -   [Constant Field Values](../../../../../constant-values.html#com.appiancorp.suiteapi.process.calendar.WorkingCalendarSerializationUtils.NAME_KEY)

-   ## Method Details

    -   ### getWorkingCalendarsJson

        public static [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getWorkingCalendarsJson([CalendarService](../CalendarService.html "interface in com.appiancorp.suiteapi.process") calendarService)

        Returns the calendar data inside of calendarService as JSON

        Parameters:

        `calendarService` -

        Returns:

    -   ### generateCustomCalendarDictionaries

        public static com.appiancorp.core.expr.portable.Value<com.appiancorp.core.data.ImmutableDictionary\[\]> generateCustomCalendarDictionaries([CalendarService](../CalendarService.html "interface in com.appiancorp.suiteapi.process") calendarService)

        Returns a Value object of type ImmutableDictionary containing the information inside of a calendar service

        Parameters:

        `calendarService` -

        Returns: