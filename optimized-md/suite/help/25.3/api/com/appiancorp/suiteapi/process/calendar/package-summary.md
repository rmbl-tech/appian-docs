---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/calendar/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/calendar/package-summary.html
version: "25.3"
---

# Package com.appiancorp.suiteapi.process.calendar

* * *

package com.appiancorp.suiteapi.process.calendar

Contains classes handling the start and ent times for each day of the week..

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

-   All Classes and InterfacesClassesExceptions

    Class

    Description

    [CalendarDateElement](CalendarDateElement.html "class in com.appiancorp.suiteapi.process.calendar")

    The `CalendarDateElement` is similar to the [`CalendarElement`](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar") but it has an additional field which specifies the specific day to which this element is applied.

    [CalendarElement](CalendarElement.html "class in com.appiancorp.suiteapi.process.calendar")

    The CalendarElement stores a start and end time, which is used by the WorkingCalendar to specify all start and end times per day.

    [InvalidCalendarException](InvalidCalendarException.html "class in com.appiancorp.suiteapi.process.calendar")

    This exception is thrown if an API method is called that acts on a calendar (or calendar Id) and that calendar does not exist.

    [SystemCalendar](SystemCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    Deprecated.

    use [`WorkingCalendar`](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    [WorkingCalendar](WorkingCalendar.html "class in com.appiancorp.suiteapi.process.calendar")

    A bean representing a calendar.

    [WorkingCalendarSerializationUtils](WorkingCalendarSerializationUtils.html "class in com.appiancorp.suiteapi.process.calendar")

    This class is used as a helper to output a JSON String containing the calendar information inside of a Calendar Service