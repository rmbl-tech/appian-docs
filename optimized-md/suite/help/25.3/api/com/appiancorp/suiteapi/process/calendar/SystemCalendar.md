---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/SystemCalendar.html
original_path: api/com/appiancorp/suiteapi/process/calendar/SystemCalendar.html
version: "25.3"
---

Package [com.appiancorp.suiteapi.process.calendar](package-summary.html)

# Class SystemCalendar

[java.lang.Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

com.appiancorp.core.expr.calendar.PortableWorkingCalendar

[com.appiancorp.suiteapi.process.calendar.WorkingCalendar](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

com.appiancorp.suiteapi.process.calendar.SystemCalendar

* * *

[@Deprecated](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Deprecated.html "class or interface in java.lang") public class SystemCalendar extends [WorkingCalendar](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

Deprecated.

use [`WorkingCalendar`](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

A bean representing the system wide calendar. It contains the default start and end times for each day of the week, and start and end times for specific days. It also stores which days are working and non-working days.

-   ## Field Summary

    ### Fields inherited from class com.appiancorp.suiteapi.process.calendar.[WorkingCalendar](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    `[DEFAULT_CALENDAR_ID](WorkingCalendar.html#DEFAULT_CALENDAR_ID), [SORT_BY_ID](WorkingCalendar.html#SORT_BY_ID), [SORT_BY_NAME](WorkingCalendar.html#SORT_BY_NAME)`

    ### Fields inherited from class com.appiancorp.core.expr.calendar.PortableWorkingCalendar

    `timeZoneId, TOO_MANY_ITERATIONS_BEFORE_RESULT_OR_LIMIT`

-   ## Constructor Summary

    Constructors

    Constructor

    Description

    `[SystemCalendar](#%3Cinit%3E\(\))()`

    Deprecated.

     

-   ## Method Summary

    ### Methods inherited from class com.appiancorp.suiteapi.process.calendar.[WorkingCalendar](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    `[addDays](WorkingCalendar.html#addDays\(java.util.Calendar,int\)), [addHours](WorkingCalendar.html#addHours\(java.util.Calendar,int\)), [addMinutes](WorkingCalendar.html#addMinutes\(java.util.Calendar,int\)), [calendarFromTimestamp](WorkingCalendar.html#calendarFromTimestamp\(java.sql.Timestamp,java.util.TimeZone\)), [getDefaultDayOfWeek](WorkingCalendar.html#getDefaultDayOfWeek\(\)), [getDisallowDelete](WorkingCalendar.html#getDisallowDelete\(\)), [getId](WorkingCalendar.html#getId\(\)), [getName](WorkingCalendar.html#getName\(\)), [getSpecific](WorkingCalendar.html#getSpecific\(\)), [getSystem](WorkingCalendar.html#getSystem\(\)), [getTimeZone](WorkingCalendar.html#getTimeZone\(\)), [getTimeZoneId](WorkingCalendar.html#getTimeZoneId\(\)), [isNonWorking](WorkingCalendar.html#isNonWorking\(com.appiancorp.suiteapi.process.calendar.CalendarElement%5B%5D\)), [isWorkingDay](WorkingCalendar.html#isWorkingDay\(java.util.Calendar\)), [isWorkTime](WorkingCalendar.html#isWorkTime\(java.util.Calendar\)), [setDefaultDayOfWeek](WorkingCalendar.html#setDefaultDayOfWeek\(com.appiancorp.suiteapi.process.calendar.CalendarElement%5B%5D%5B%5D\)), [setDisallowDelete](WorkingCalendar.html#setDisallowDelete\(java.lang.Boolean\)), [setId](WorkingCalendar.html#setId\(java.lang.Long\)), [setName](WorkingCalendar.html#setName\(java.lang.String\)), [setSpecific](WorkingCalendar.html#setSpecific\(com.appiancorp.suiteapi.process.calendar.CalendarDateElement%5B%5D\)), [setSystem](WorkingCalendar.html#setSystem\(java.lang.Boolean\)), [setTimeZoneId](WorkingCalendar.html#setTimeZoneId\(java.lang.String\)), [toString](WorkingCalendar.html#toString\(\)), [workingDaysInRange](WorkingCalendar.html#workingDaysInRange\(java.util.Calendar,java.util.Calendar\)), [workingHoursInRange](WorkingCalendar.html#workingHoursInRange\(java.util.Calendar,java.util.Calendar\)), [workingMinutesInRange](WorkingCalendar.html#workingMinutesInRange\(java.util.Calendar,java.util.Calendar\))`

    ### Methods inherited from class com.appiancorp.core.expr.calendar.PortableWorkingCalendar

    `addDaysNoGmtAdjustment, addHoursNoGmtAdjustment, addMinutesNoGmtAdjustment, addMonthsNoGmtAdjustment, addSecondsNoGmtAdjustment, addYearsNoGmtAdjustment, adjustAddFinal, subtractDaysNoGmtAdjustment, subtractHoursNoGmtAdjustment, subtractMinutesNoGmtAdjustment, subtractMonthsNoGmtAdjustment, subtractSecondsNoGmtAdjustment, subtractYearsNoGmtAdjustment`

    ### Methods inherited from class java.lang.[Object](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html "class or interface in java.lang")

    `[clone](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#clone\(\) "class or interface in java.lang"), [equals](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#equals\(java.lang.Object\) "class or interface in java.lang"), [finalize](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#finalize\(\) "class or interface in java.lang"), [getClass](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#getClass\(\) "class or interface in java.lang"), [hashCode](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#hashCode\(\) "class or interface in java.lang"), [notify](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notify\(\) "class or interface in java.lang"), [notifyAll](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#notifyAll\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long\) "class or interface in java.lang"), [wait](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/Object.html#wait\(long,int\) "class or interface in java.lang")`

-   ## Constructor Details

    -   ### SystemCalendar

        public SystemCalendar()

        Deprecated.