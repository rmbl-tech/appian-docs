---
source_url: https://docs.appian.com/suite/help/25.3/Process_Calendar_Settings.html
original_path: Process_Calendar_Settings.html
version: "25.3"
title: "Process Calendar Settings"
page_id: "Process_Calendar_Settings"
section: "Viewing process calendar options"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Calendar Settings

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Process calendars define working and non-working time for use in processes and tasks.

## Viewing process calendar options

Process calendars can be viewed and configured by system administrators. Each environment can have one or more calendars. Calendars must be configured in each environment—they cannot be exported or imported.

To access the process calendars:

1.  Open Appian Designer.
2.  Navigate to the **Objects** view.
3.  Click the gear menu next to the search icon. ![Access Process Calendar](images/access_process_calendar.png)
4.  Select **Process Calendar** to view the calendar settings. ![Process Calendar](images/Admin_console_set_working_time.gif)

## Adding a calendar

1.  Click **New Calendar**. The **Create a New Calendar** dialog appears.
2.  Enter the name of the new calendar.
3.  Click **OK**.

The additional calendars you create can only be referenced when using the following [date and time functions](Date_and_Time_Functions.html):

-   [a!addDateTime()](fnc_date_and_time_adddatetime.html)
-   [a!subtractDateTime()](fnc_date_and_time_subtractdatetime.html)
-   [calisworkday()](fnc_date_and_time_calisworkday.html)
-   [calisworktime()](fnc_date_and_time_calisworktime.html)
-   [calworkdays()](fnc_date_and_time_calworkdays.html)
-   [calworkhours()](fnc_date_and_time_calworkhours.html)

### Selecting a calendar's time zone

To set up or change a calendar's time zone, use the dropdown to select the name of a time zone ID. When selecting a Continental US time zone, we recommend using the following standard time zone IDs:

| Time Zone | Time Zone ID |
| --- | --- |
| Eastern | America/New\_York |
| Central | America/Chicago |
| Mountain | America/Denver |
| Pacific | America/Los\_Angeles |

## Set working time

Administrators can setup the work time in the application so that various aspects of the application can account for non-working hours and company holidays.

For instance, reports for time taken by a user to complete a task will exclude non-working hours and company holidays as determined by the administrator. Administrators can also change non-working hours into working hours. "Standard Business Hours" are between 9 AM and 5 PM for a 5-day week without defined holidays. The default business day has 8 working hours and counts Saturdays and Sundays as non-working days.

### Selecting multiple days

You can set the working hours for all instances of a given day of the week by selecting the specific day at the top of the calendar. For example, clicking **M** in the calendar headings and then specifying the working hours will set the same working hours for every Monday.

You can also select multiple days on the calendar at the same time by holding down the `CTRL` key while selecting each day.

### Setting working hours

1.  Click the desired day or days you want to set for the calendar. The **Start Time** and **End Time** for the day are displayed.
2.  Select the desired **Start Time** and its accompanying **End Time**.

    **Note:**  You can specify up to four different start and end times for the same day, which allows you to specify breaks, meals, or other interruptions.

3.  Click **Save** to record your changes. The times you selected are checked for overlap when you click **Save**.

### Setting non-working days

To set a day as a non-working day,

1.  Select the day (or days).
2.  Select the **Mark as non-working day(s)** checkbox.
3.  Click **Save**.

Non-working days are shaded with a hashed background to distinguish them from working days. To switch a non-working day back to a working day, clear the **Mark as non-working day(s)** checkbox and save your changes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...