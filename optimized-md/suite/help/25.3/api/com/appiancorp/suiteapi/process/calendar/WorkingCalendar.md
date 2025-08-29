---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html
original_path: api/com/appiancorp/suiteapi/process/calendar/WorkingCalendar.html
version: "25.3"
title: "Class WorkingCalendar"
page_id: "api/com/appiancorp/suiteapi/process/calendar/WorkingCalendar"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.process.calendar](package-summary.html)

# Class WorkingCalendar

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.core.expr.calendar.PortableWorkingCalendar

com.appiancorp.suiteapi.process.calendar.WorkingCalendar

Direct Known Subclasses:

`[SystemCalendar](SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")`

* * *

public class WorkingCalendar extends com.appiancorp.core.expr.calendar.PortableWorkingCalendar

A bean representing a calendar. It contains the default start and end times for each day of the week, and start and end times for specific days. It also stores which days are working and non-working days.

-   ## Field Summary

    Fields

    Modifier and Type

    Field

    Description

    `static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[DEFAULT_CALENDAR_ID](#DEFAULT_CALENDAR_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_ID](#SORT_BY_ID)`

    `static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang")`

    `[SORT_BY_NAME](#SORT_BY_NAME)`

    ### Fields inherited from class com.appiancorp.core.expr.calendar.PortableWorkingCalendar

    `timeZoneId, TOO_MANY_ITERATIONS_BEFORE_RESULT_OR_LIMIT`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[WorkingCalendar](#%3Cinit%3E\(\))()`

-   ## Method Summary

    All MethodsStatic MethodsInstance MethodsConcrete Methods

    Modifier and Type

    Method

    Description

    `[Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util")`

    `[addDays](#addDays\(java.util.Calendar,int\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") base, int numberOfDays)`

    Add given number of working days to the given Calendar, yielding another Calendar that is also a working time.

    `[Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util")`

    `[addHours](#addHours\(java.util.Calendar,int\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") startDateTime, int numberOfHours)`

    Add given number of working hours to the given Calendar, yielding another Calendar that is also a working time.

    `[Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util")`

    `[addMinutes](#addMinutes\(java.util.Calendar,int\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") startDateTime, int numberOfMinutes)`

    Add given number of working minutes to the given Calendar, yielding another Calendar that is also a working time.

    `[Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util")`

    `[calendarFromTimestamp](#calendarFromTimestamp\(java.sql.Timestamp,java.util.TimeZone\))([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp, [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") defaultTimeZone)`

    Create a Calendar from the given `java.sql.Timestamp`, adjusted for the configured TimeZone of the WorkingCalendar, or defaultTimeZone if none.

    `[CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")[][]`

    `[getDefaultDayOfWeek](#getDefaultDayOfWeek\(\))()`

    Get the default start and end times for the days of the week.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getDisallowDelete](#getDisallowDelete\(\))()`

    Get whether or not deleting this calendar is enabled or disabled.

    `[Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang")`

    `[getId](#getId\(\))()`

    Gets the id of this calendar

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getName](#getName\(\))()`

    Gets the calendar's name

    `[CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")[]`

    `[getSpecific](#getSpecific\(\))()`

    Get the start and end times for specific days.

    `[Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang")`

    `[getSystem](#getSystem\(\))()`

    Get whether or not this is a system calendar.

    `[TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util")`

    `[getTimeZone](#getTimeZone\(\))()`

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[getTimeZoneId](#getTimeZoneId\(\))()`

    Get the id of the time zone for this calendar.

    `static boolean`

    `[isNonWorking](#isNonWorking\(com.appiancorp.suiteapi.process.calendar.CalendarElement%5B%5D\))([CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")[] day)`

    Tells if the given day is a non working day or not.

    `boolean`

    `[isWorkingDay](#isWorkingDay\(java.util.Calendar\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") calendar)`

    Is the day represented by this Calendar object a working day according to this working calendar?

    `boolean`

    `[isWorkTime](#isWorkTime\(java.util.Calendar\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") calendar)`

    Does this Calendar represent a working time?

    `void`

    `[setDefaultDayOfWeek](#setDefaultDayOfWeek\(com.appiancorp.suiteapi.process.calendar.CalendarElement%5B%5D%5B%5D\))([CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")[][] defaultDayOfWeek)`

    Set the default start and end times for the days of the week.

    `void`

    `[setDisallowDelete](#setDisallowDelete\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") disallowDelete)`

    Set whether or not deleting this calendar is enabled or disabled.

    `void`

    `[setId](#setId\(java.lang.Long\))([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)`

    Sets the id of this calendar

    `void`

    `[setName](#setName\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)`

    Sets the calendars name

    `void`

    `[setSpecific](#setSpecific\(com.appiancorp.suiteapi.process.calendar.CalendarDateElement%5B%5D\))([CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")[] specific)`

    Sets the start and end times for specific days.

    `void`

    `[setSystem](#setSystem\(java.lang.Boolean\))([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") system)`

    Set whether or not this is a system calendar.

    `void`

    `[setTimeZoneId](#setTimeZoneId\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)`

    Set the name of the time zone for this calendar.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[toString](#toString\(\))()`

    Simple toString method.

    `int`

    `[workingDaysInRange](#workingDaysInRange\(java.util.Calendar,java.util.Calendar\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)`

    Count the number of working days in given range.

    `int`

    `[workingHoursInRange](#workingHoursInRange\(java.util.Calendar,java.util.Calendar\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)`

    Count the number of working hours in given range.

    `int`

    `[workingMinutesInRange](#workingMinutesInRange\(java.util.Calendar,java.util.Calendar\))([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)`

    Count the number of working minutes in given range.

    ### Methods inherited from class com.appiancorp.core.expr.calendar.PortableWorkingCalendar

    `addDaysNoGmtAdjustment, addHoursNoGmtAdjustment, addMinutesNoGmtAdjustment, addMonthsNoGmtAdjustment, addSecondsNoGmtAdjustment, addYearsNoGmtAdjustment, adjustAddFinal, subtractDaysNoGmtAdjustment, subtractHoursNoGmtAdjustment, subtractMinutesNoGmtAdjustment, subtractMonthsNoGmtAdjustment, subtractSecondsNoGmtAdjustment, subtractYearsNoGmtAdjustment`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Field Details

    -   ### DEFAULT\_CALENDAR\_ID

        public static final [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") DEFAULT\_CALENDAR\_ID

    -   ### SORT\_BY\_ID

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_ID

    -   ### SORT\_BY\_NAME

        public static final [Integer](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Integer.html "class or interface in java.lang") SORT\_BY\_NAME

-   ## Constructor Details

    -   ### WorkingCalendar

        public WorkingCalendar()

-   ## Method Details

    -   ### getId

        public [Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") getId()

        Gets the id of this calendar

        Returns:

        the id

    -   ### setId

        public void setId([Long](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Long.html "class or interface in java.lang") id)

        Sets the id of this calendar

        Parameters:

        `id` -

    -   ### getName

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getName()

        Gets the calendar's name

        Returns:

        the name

    -   ### setName

        public void setName([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") name)

        Sets the calendars name

        Parameters:

        `name` -

    -   ### getDefaultDayOfWeek

        public [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")\[\]\[\] getDefaultDayOfWeek()

        Get the default start and end times for the days of the week. These `CalendarElement`s define the default start and end times for the days of the week. The first dimension of the array is the day of the week where 0 = Sunday, 1 = Monday, ... , and 6 = Saturday. The second dimension is equal to the number of start-end pairs that can be defined for a day (currently four).

        Specified by:

        `getDefaultDayOfWeek` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Returns:

        Returns the defaultDayOfWeek.

        See Also:

        -   [`CalendarElement`](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")
        -   [`setDefaultDayOfWeek(CalendarElement[][])`](#setDefaultDayOfWeek\(com.appiancorp.suiteapi.process.calendar.CalendarElement%5B%5D%5B%5D\))

    -   ### setDefaultDayOfWeek

        public void setDefaultDayOfWeek([CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")\[\]\[\] defaultDayOfWeek)

        Set the default start and end times for the days of the week.

        Parameters:

        `defaultDayOfWeek` - The defaultDayOfWeek to set.

        See Also:

        -   [`getDefaultDayOfWeek()`](#getDefaultDayOfWeek\(\))

    -   ### getDisallowDelete

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getDisallowDelete()

        Get whether or not deleting this calendar is enabled or disabled. A value of `true` means that deleting the calendar is not allowed.

        Returns:

        Whether or not deleting is allowed for this calendar.

        See Also:

        -   [`setDisallowDelete(Boolean)`](#setDisallowDelete\(java.lang.Boolean\))

    -   ### setDisallowDelete

        public void setDisallowDelete([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") disallowDelete)

        Set whether or not deleting this calendar is enabled or disabled.

        Parameters:

        `disallowDelete` - Whether or not deleting is allowed for this calendar.

        See Also:

        -   [`getDisallowDelete()`](#getDisallowDelete\(\))

    -   ### getSpecific

        public [CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")\[\] getSpecific()

        Get the start and end times for specific days. This array of `CalendarDateElement`s defines start and end time pairs for specific dates. The size of the array is unbounded, and order does not matter. Therefore separate start and end pairs can be defined for the same date anywhere in the array.

        Specified by:

        `getSpecific` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Returns:

        The start and end times for specific days.

        See Also:

        -   [`CalendarDateElement`](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")
        -   [`setSpecific(CalendarDateElement[])`](#setSpecific\(com.appiancorp.suiteapi.process.calendar.CalendarDateElement%5B%5D\))

    -   ### setSpecific

        public void setSpecific([CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")\[\] specific)

        Sets the start and end times for specific days.

        Parameters:

        `specific` - The start and end times to set for specific days.

    -   ### getSystem

        public [Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") getSystem()

        Get whether or not this is a system calendar.

        Returns:

        Whether or not this is a system calendar.

        See Also:

        -   [`setSystem(Boolean)`](#setSystem\(java.lang.Boolean\))

    -   ### setSystem

        public void setSystem([Boolean](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Boolean.html "class or interface in java.lang") system)

        Set whether or not this is a system calendar.

        Parameters:

        `system` - Whether or not this is a system calendar.

        See Also:

        -   [`getSystem()`](#getSystem\(\))

    -   ### isNonWorking

        public static boolean isNonWorking([CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")\[\] day)

        Tells if the given day is a non working day or not.

        Parameters:

        `day` - The day to find out if it's a non working day

        Returns:

        true if the day is a non working day.

    -   ### toString

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") toString()

        Simple toString method. Use for informational purposes, as the format may change in the future.

        Overrides:

        `[toString](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#toString\(\) "class or interface in java.lang")` in class `[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")`

        Returns:

        a string representation of this working calendar

    -   ### calendarFromTimestamp

        public [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") calendarFromTimestamp([Timestamp](https://docs.oracle.com/en/java/javase/17/docs/api/java.sql/java/sql/Timestamp.html "class or interface in java.sql") timestamp, [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") defaultTimeZone)

        Create a Calendar from the given `java.sql.Timestamp`, adjusted for the configured TimeZone of the WorkingCalendar, or defaultTimeZone if none.

        Parameters:

        `timestamp` -

        `defaultTimeZone` -

        Returns:

        adjusted Calendar, suitable for passing to other WorkingCalendar informational methods expecting a Calendar

    -   ### setTimeZoneId

        public void setTimeZoneId([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") timeZoneId)

        Set the name of the time zone for this calendar.

        Overrides:

        `setTimeZoneId` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `timeZoneId` - The time zone id to set for this calendar.

        See Also:

        -   [`getTimeZoneId()`](#getTimeZoneId\(\))

    -   ### getTimeZoneId

        public [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") getTimeZoneId()

        Get the id of the time zone for this calendar.

        Overrides:

        `getTimeZoneId` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Returns:

        The time zone for this calendar.

        See Also:

        -   [`setTimeZoneId(String)`](#setTimeZoneId\(java.lang.String\))

    -   ### getTimeZone

        public [TimeZone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/TimeZone.html "class or interface in java.util") getTimeZone()

        Overrides:

        `getTimeZone` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Returns:

    -   ### workingDaysInRange

        public int workingDaysInRange([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)

        Count the number of working days in given range.

        Overrides:

        `workingDaysInRange` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `start` -

        `end` -

        Returns:

        count of working days in given range, negative if start is after end.

    -   ### workingHoursInRange

        public int workingHoursInRange([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)

        Count the number of working hours in given range.

        Overrides:

        `workingHoursInRange` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `start` -

        `end` -

        Returns:

        count of working days in given range, negative if start is after end.

    -   ### workingMinutesInRange

        public int workingMinutesInRange([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") start, [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") end)

        Count the number of working minutes in given range.

        Overrides:

        `workingMinutesInRange` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `start` -

        `end` -

        Returns:

        count of working days in given range, negative if start is after end.

    -   ### isWorkTime

        public boolean isWorkTime([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") calendar)

        Does this Calendar represent a working time?

        Overrides:

        `isWorkTime` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `calendar` -

        Returns:

        true if the given Calendar object represents a working time in this working calendar

    -   ### isWorkingDay

        public boolean isWorkingDay([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") calendar)

        Is the day represented by this Calendar object a working day according to this working calendar? A day is a working day if any minute of that day is a working minute. Specific dates override day of week information.

        Overrides:

        `isWorkingDay` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `calendar` -

        Returns:

        true if the given Calendar object represents a working day in this working calendar

    -   ### addDays

        public [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") addDays([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") base, int numberOfDays)

        Add given number of working days to the given Calendar, yielding another Calendar that is also a working time. Will throw an IllegalArgumentException if the number to analyze exceeds 365 days of no working time, or is negative.

        Overrides:

        `addDays` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `base` -

        `numberOfDays` - ; non-negative

        Returns:

        a Calendar object representing the date and time of the next working time the given number of days in the future

    -   ### addHours

        public [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") addHours([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") startDateTime, int numberOfHours)

        Add given number of working hours to the given Calendar, yielding another Calendar that is also a working time. Will throw an IllegalArgumentException if the number to analyze exceeds 365 days of no working time, or is negative.

        Overrides:

        `addHours` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `startDateTime` -

        `numberOfHours` - ; non-negative

        Returns:

        a Calendar object representing the date and time of the next working time the given number of hours in the future

    -   ### addMinutes

        public [Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") addMinutes([Calendar](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Calendar.html "class or interface in java.util") startDateTime, int numberOfMinutes)

        Add given number of working minutes to the given Calendar, yielding another Calendar that is also a working time. Will throw an IllegalArgumentException if the number to analyze exceeds 365 days of no working time, or is negative.

        Overrides:

        `addMinutes` in class `com.appiancorp.core.expr.calendar.PortableWorkingCalendar`

        Parameters:

        `startDateTime` -

        `numberOfMinutes` - ; non-negative

        Returns:

        a Calendar object representing the date and time of the next working time the given number of minutes in the future