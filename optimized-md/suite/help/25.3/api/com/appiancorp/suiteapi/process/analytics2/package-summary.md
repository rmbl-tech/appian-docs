---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/process/analytics2/package-summary.html
original_path: api/com/appiancorp/suiteapi/process/analytics2/package-summary.html
version: "25.3"
title: "Package com.appiancorp.suiteapi.process.analytics2"
page_id: "api/com/appiancorp/suiteapi/process/analytics2/package-summary"
tags: ["appian","docs","v25.3"]
---


# Package com.appiancorp.suiteapi.process.analytics2

* * *

package com.appiancorp.suiteapi.process.analytics2

Provides functionality for querying the process engine for data about process models, processes, and tasks.

The most important classes are [`ProcessAnalyticsService`](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2") and [`ProcessAnalyticsServiceUtils`](ProcessAnalyticsServiceUtils.html "class in com.appiancorp.suiteapi.process.analytics2"), which provide methods for interacting with the engine, and [`ProcessReport`](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2"), which is the top-level bean for specifying a report format.

-   Related Packages

    Package

    Description

    [com.appiancorp.suiteapi.process](../package-summary.html)

-   All Classes and InterfacesInterfacesClassesEnum Classes

    Class

    Description

    [AheadOfScheduleFilter](AheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for tasks/processes that are ahead of schedule: when this filter is added, only completed tasks/processes that are ahead of schedule will be returned in the report.

    [BaseFilter](BaseFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Base class for all analytics filters.

    [BehindScheduleFilter](BehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for tasks/processes that are behind schedule: when this filter is added, only the incomplete and completed tasks/processes that are behind schedule will be returned in the report.

    [Column](Column.html "class in com.appiancorp.suiteapi.process.analytics2")

    The `Column` bean contains information necessary to retrieve a column of data from the backend and display it properly.

    [Comparisons](Comparisons.html "class in com.appiancorp.suiteapi.process.analytics2")

    Defines constants for logical comparisons between values.

    [CompletedAheadOfScheduleFilter](CompletedAheadOfScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Deprecated.

    this unused filter will be removed in a future release

    [CompletedBehindScheduleFilter](CompletedBehindScheduleFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Deprecated.

    this unused filter will be removed in a future release; use instead [`DueTodayFilter`](DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2") as it returns the same results

    [CompletedFilter](CompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for completed tasks/processes: when this filter is added, only completed tasks/processes will be returned in the report.

    [DrillPath](DrillPath.html "class in com.appiancorp.suiteapi.process.analytics2")

    The `DrillPath` bean describes how data in a report `Column` links to more information.

    [DueTodayFilter](DueTodayFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for tasks/processes that are due today.

    [Filter](Filter.html "interface in com.appiancorp.suiteapi.process.analytics2")

    The base interface for all filters in analytics.

    [LastNCompletedFilter](LastNCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    This analytics filter will return the last N processes/tasks to have been completed.

    [LastNDaysFilter](LastNDaysFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for processes/tasks which have been started in the last N days.

    [NotYetCompletedFilter](NotYetCompletedFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Deprecated.

    this unused filter will be removed in a future release

    [OutsideNStandardDeviationsFilter](OutsideNStandardDeviationsFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    The `OutsideNStandardDeviationsFilter` returns processes/tasks whose completion duration is more than the specified number of standard deviations above or below the average completion duration.

    [PerformanceAttributes](PerformanceAttributes.html "class in com.appiancorp.suiteapi.process.analytics2")

    This object represents the attribute that was executed while generating the report.

    [PerformanceMetrics](PerformanceMetrics.html "class in com.appiancorp.suiteapi.process.analytics2")

    This object represents the metrics for the generated report.

    [ProcessAnalyticsService](ProcessAnalyticsService.html "interface in com.appiancorp.suiteapi.process.analytics2")

    ProcessAnalyticsService provides access to reports on entities and events throughout the process application.

    [ProcessAnalyticsServiceUtils](ProcessAnalyticsServiceUtils.html "class in com.appiancorp.suiteapi.process.analytics2")

    This class supplements the `ProcessAnalyticsService` with additional methods.

    [ProcessReport](ProcessReport.html "class in com.appiancorp.suiteapi.process.analytics2")

    Bean detailing an analytics report specification.

    [QuickFilter](QuickFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    A QuickFilter is a set of QuickFilterItems.

    [QuickFilterItem](QuickFilterItem.html "class in com.appiancorp.suiteapi.process.analytics2")

    A QuickFilterItem is a set of Filters.

    [ReportData](ReportData.html "class in com.appiancorp.suiteapi.process.analytics2")

    Bean defining the type of data contained in an analytics report.

    [ReportDisplay](ReportDisplay.html "class in com.appiancorp.suiteapi.process.analytics2")

    Bean detailing how an analytics report is to be displayed.

    [ReportResultPage](ReportResultPage.html "class in com.appiancorp.suiteapi.process.analytics2")

    Contains the results of an Analytics query.

    [ReportValidator](ReportValidator.html "class in com.appiancorp.suiteapi.process.analytics2")

    Validator for `ProcessReport`s.

    [RunningFilter](RunningFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Filter for running processes and tasks.

    [SimpleColumnFilter](SimpleColumnFilter.html "class in com.appiancorp.suiteapi.process.analytics2")

    Simple column filter which allows you to filter on any column in the report.

    [SimpleColumnFilter.ComparisonType](SimpleColumnFilter.ComparisonType.html "enum class in com.appiancorp.suiteapi.process.analytics2")

    [Threshold](Threshold.html "class in com.appiancorp.suiteapi.process.analytics2")

    Bean detailing analytics threshold object.