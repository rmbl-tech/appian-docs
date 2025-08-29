---
source_url: https://docs.appian.com/suite/help/25.3/Time_Zone_Context.html
original_path: Time_Zone_Context.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Time Zone Context

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In Appian, date and time (or **datetime**) data is adjusted to display in the correct time zone for the user who is viewing the data. A **date and time** is displayed in your preferred time zone, in a system-wide timezone setting, or in a process designer-specified time zone.

See also: [Data and Time](Appian_Data_Types.html#date-and-time) and [Internationalization Settings](Internationalization_Settings.html).

When designing an application, you can set a process time zone context for the `date and time` data or date and time functions used in a process from the **Process Model Properties** dialog on the [**General** tab](process-model-object.html#general-tab).

This setting can be referenced in your process models using the `pp!timezone` property which is listed as the default time zone for recurring activity schedules.

Reports, rules, and dashboards take the context of the current user as shown in the table below.

| Context | Time Zone used |
| --- | --- |
| Non-User-Initiated Process | As Configured |
| User-Initiated Process | As Configured (OR) Initiator's Time Zone |
| Subprocess | Parent Process' Time Zone |

_As Configured_ refers to the fact that the time zone can be specified by the developer in the **Process Model Properties** dialog on the **General** tab. Programmatically launched processes always use the configured time zone. Subprocesses always use the parent process' time zone.

## When the time zone context is used

The [Date and Time functions](Date_and_Time_Functions.html) `gmt()`, `local()`, `now()`, and `today()` and functions that cast a date and time value to a string of text (such as the `tostring()` and `text()` functions) use one of the process time zone contexts and take the user's time zone when the functions are evaluated in a process.

The `timeZone` [process property](Process_and_Report_Data.html#process-model-properties) returns the time zone ID currently used by a process instance (its context).

The **Due Today** filter (on the **Filter** tab of the Reports view) uses the context time zone to determine `today` and whether the deadlines for tasks and processes fall within that day for the user viewing the report.

Notifications with expressions evaluated in the body have those expressions evaluated as part of the context flow before the data is sent to notifications. These expressions are evaluated using the context time zone.

Calendar expression functions (`a!addDateTime()`, `a!subtractDateTime()`, and functions starting with `cal*`) _do not_ use the time zone context. They operate based on the [calendar time zone](Process_Calendar_Settings.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...