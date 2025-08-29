---
source_url: https://docs.appian.com/suite/help/25.3/explore.html
original_path: explore.html
version: "25.3"
title: "Explore a Process"
page_id: "explore"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Explore a Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to gain a deeper understanding of an individual [business process](key-pi-terms.html#business-process).

## Overview

In Process HQ, exploring a process helps you get familiar with how the process actually operates before you start drilling down into specific patterns and issues in the workflow.

### How to explore

To start exploring, simply click the name of the process in the [process list](process-insights-page.html#elements).

Business processes can be complex, so we initially present you with your data at the highest level.

For example, here's a process page, showing you all data associated with the process:

[![Example of process page](images/process_insights/process-page.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img693)

[![](images/process_insights/process-page.png)](#_)

Here we recommend that you:

-   [Review the process diagram](#review-the-process-diagram) to get a sense of the process structure.
-   [Review the list of case attributes](#review-case-attributes) to acquaint yourself with the common characteristics of the process.
-   [Review the list of cases](#review-the-case-list) to see the specific cases that underpin the analysis you're viewing.

By default, we present your process data unrestricted by time period, but as you identify what you want to focus on, [set the time period](#set-the-time-period) accordingly.

Next, take a look at what the system is automatically highlighting about this process by [reviewing the system-provided **All Cases** view](#review-views-and-kpis) and its pinned KPIs.

You can also check out what your fellow analysts have identified as important:

-   [Views and KPIs](#review-views-and-kpis) pinned to process and view pages.
-   [Conformance and cost analysis](#review-conformance-and-costs) configured in view pages.
-   [Saved insights](#review-saved-insights) in view and KPI pages.

Exploring starts at the process level, but as you understand your process better, you can start to create your own [views](process-views.html#create-a-view) and [KPIs](process-custom-kpis.html#create-a-kpi) and continue exploring at those levels.

The [common elements](#where-to-explore) of the [process](process-page.html), [view](process-view-page.html), and [KPI](process-kpi-page.html) pages mean you can easily compare data at different levels.

You can also start looking closer at specific characteristics by viewing details about a [process part](#view-process-part-details) or a [case attribute value](#view-attribute-value-details).

Then, at the view and KPI levels, you can also take the next step in improving your process: [drilling down](investigate.html) on those specific characteristics of the process to take advantage of the advanced analysis Process HQ offers.

### Where to explore

The table below summarizes elements that are common to each level you can explore—[process](process-page.html), [view](process-view-page.html), and [KPI](process-kpi-page.html) pages. The table also calls out elements that are only available at a specific level.

|
Element

 |

Process

 |

View

 |

KPI

 |
| --- | --- | --- | --- |
|

**Section: EXPLORE DATA**

 |
|

[Process Diagram](#review-the-process-diagram)

 |

 |

 |

 |
|

[Case Attributes](#review-case-attributes)

 |

 |

 |

 |
|

[Case List](#review-the-case-list)

 |

 |

 |

 |
|

[All Views](#review-views-and-kpis)

 |

 |

 |

 |
|

[Conformance and Costs](#review-conformance-and-costs)

 |

 |

 |

 |
|

[All KPIs](#review-views-and-kpis)

 |

 |

 |

 |
|

[All Insights/Insights](#review-saved-insights)

 |

 |

 |

 |
|

[Trend](pi-visualizations.html)

 |

 |

 |

 |
|

**Section: PINNED VIEWS**

 |
|

Views

 |

 |  |  |
|

**Section: PINNED KPIS**

 |
|

KPIs

 |  |

 |  |

### Current context

As you're exploring, keep in mind that the data you see depends on the _current context_.

The current context consists of the [filters inherited from higher-level pages](investigate.html#remember-the-inherited-filters), including the [time period](#set-the-time-period) that's currently set.

The context changes automatically as you move from process page to view page to KPI page, showing you an increasingly filtered set of data.

## Set the time period

By default, the time period for the data you see as you explore is **All Time**.

As you identify specific periods of time to focus on, you can use the **Time Period** option to set a more relevant period. This option is present in the header of any [process page](process-page.html), [view page](process-view-page.html), or [KPI page](process-kpi-page.html).

The time period you select lasts for the current session of the process, even when you switch pages within the process. At the end of your session, the time period returns to the default range of **All Time**.

The time period you have selected when you save an insight helps to define the insight. [Learn more about insights](investigate.html).

To set the time period for data displaying on a page:

1.  In the page header, click the **Time Period** value. A dropdown list of time periods displays.

    [![Header pane with time period highlighted](images/process_insights/set-time-period.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img694)

    [![](images/process_insights/set-time-period.png)](#_)

2.  Select one of the predefined time periods, or select **Custom Date Range** and specify **From** and **To** dates.

    Data in the current page updates to reflect the selected range.

    As you're reviewing the updated data, keep in mind the following:

    -   You will see only as much process data as is currently available. Under certain conditions, this might make data in a specific time period look incomplete. For example, if you select **Last Month** but data is only available for the first two weeks of the month, you will see only two weeks of data.
    -   You might see data for activities that occur prior to the start date selected for the time period. A case is included in the time period if the last activity in that case takes place before the time period's end date. However, activities associated with that case can occur prior to the time period's start date.

        ![illustration of cases with various start and end dates in relation to the time period's start and end date](images/process_insights/pi-time-period-illustration.png)

        For example, in the illustration above, Case 1 is included in the time period, because it ends before the time period's end date. However, Case 1 includes activities occuring prior to the time period's start date, so you will see data about those earlier activities.

## Review the process diagram

The **Process Diagram** tab in the **EXPLORE DATA FOR THIS PROCESS** section allows you to see how the process actually operates. This tool allows you to understand the standard flow of your process and, importantly, identify where the process occurs in atypical or alternative ways.

[![The process diagram for a Financial Onboarding process](images/process_insights/process-diagram-all-colors.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img695)

[![](images/process_insights/process-diagram-all-colors.png)](#_)

As you're reviewing the process diagram, look at:

-   **Activities**: Does Activity A occur in your process when you know it represents an unwanted outcome?
-   **Sequences:** Did Activity A follow Activity B, when B should follow A?
-   **Loops**: Did the process continue through Activity A, B, and C, but then loop back to Activity B again?
-   **Repetitions:** Did Activity A happen twice in a row?

In the process diagram, [activities](key-pi-terms.html#cases-activities-events) are shown as nodes, and [sequences, loops, and repetitions](key-pi-terms.html#sequences) are shown as the connectors between them.

Each connector and node is accompanied by relevant [metrics](#metrics), so you can easily compare parts of the process to each other. The [size](#size) and [color](#color) of the connector or node can also indicate helpful information.

You can adjust the [complexity](#complexity) of the process diagram to see the less common paths your process might take.

You can also click on a connector or node to [view additional details](#view-process-part-details) about the sequence or activity.

### Metrics

[![Metrics highlighted in a process diagram](images/process_insights/process-diagram-connector-metrics-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img696)

[![](images/process_insights/process-diagram-connector-metrics-annotated.png)](#_)

The following table describes the metrics that display beside connectors and nodes in the process diagram. Keep in mind that these metrics always reflect the [current context](#current-context).

|
Metric

 |

Description

 |

Connector

 |

Node

 |
| --- | --- | --- | --- |
|

Sequence occurrence count

 |

How many times the sequence occurs in the current context.

 |

 |

 |
|

Average duration of the sequence

 |

How long (on average) the sequence takes to complete in the current context.

 |

 |

 |
|

Occurrence or case count

 |

How many times the sequence or activity occurs in the current context, or how many times cases with the sequence or activity occur in the current context. This metric is only present for count KPIs, and the count you see depends on whether the KPI tracks occurrences or cases.

 |

 |

 |
|

Activity occurrence count

 |

How many times the activity occurs in the current context.

 |

 |

 |
|

Average duration of the activity

 |

How long (on average) the activity takes to complete in the current context. This metric is only present if your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp.

 |

 |

 |
|

Automation percentage

 |

What percent of occurrences of the activity was performed by an automation. This metric is only present when viewing the process diagram on the Automation Rate KPI page, which is only available if your process data includes events with an [**Automation** attribute](common-preparations.html#standardize-automation-type).

 |

 |

 |

### Size

[![Activity sequency and sequence frequency legends from process diagram](images/process_insights/process-diagram-size.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img697)

[![](images/process_insights/process-diagram-size.png)](#_)

The size of the nodes and the connectors between them represent how frequently the activity or sequence occurred. This helps you quickly see how often activities occur in relation to one another.

For example:

-   **Activity Frequency**: If one activity occurs 200 times and another occurs 100 times, the radius of the activity node that occurs 200 times is twice as large as the radius of the activity node that occurs 100 times.
-   **Sequence Frequency**: If 500 cases follow the sequence between one activity node and another, the connector for that sequence is 5 times thicker than a connector that only 100 cases follow.

### Color

The color of connectors and nodes are a neutral grey when you view the process diagrams for [count](process-custom-kpis.html#define-the-count-kpi) and [aggregation](process-custom-kpis.html#define-the-aggregation-kpi) KPIs.

Everywhere else, the color of these elements can indicate additional information:

-   **Relative duration:** The process diagram shows duration data when viewed in a process page, a view page, or the KPI page for Average Case Duration, Median Case Duration, and user-created duration KPIs.

    In these locations, the connector color represents the average duration of the sequence based on the minimum and maximum values in the process data. Connectors with an average duration closer to the minimum are blue, and connectors with an average duration closer to the maximum are red.

    For example:

    [![The process diagram for a Financial Onboarding process](images/process_insights/process-diagram-all-colors.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img698)

    [![](images/process_insights/process-diagram-all-colors.png)](#_)

    The color of activity nodes follows this same pattern if your [event data](record-events.html#capture-the-right-timestamps) includes start and end timestamps, but is uniformly grey if your event data includes a single timestamp.

-   **Relative automation:** If your process data contains events with an [**Automation** attribute](common-preparations.html#standardize-automation-type), the process diagram shows automation data in addition to duration data when you view it on the Automation Rate KPI page.

    In a diagram showing automation data, connectors are uniformly grey, but node colors signal whether the automation percentage is higher or lower for occurrences of that activity in comparison to the other activities in the diagram. Nodes with a higher automation percentage are blue, and nodes with a lower automation percentage are red.

    For example:

    [![Process diagram with red and blue nodes indicating relative automation percentage](images/process_insights/process-diagram-automation-rate.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img699)

    [![](images/process_insights/process-diagram-automation-rate.png)](#_)

### Complexity

![Tabs for adjusting diagram complexity](images/process_insights/process-diagram-complexity.png)

The process diagram can be very complex for certain processes, so you can progressively show more detail.

**Overview** displays only the most common activities and sequences in your business process. For example:

[![Overview version of a process diagram](images/process_insights/process-diagram-overview-version.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img700)

[![](images/process_insights/process-diagram-overview-version.png)](#_)

As you navigate from **Basic** through **Advanced**, the diagram includes more sequences where activities were skipped, looped, or repeated.

**Full** displays all sequences in your business process. For example:

[![Full version of a process diagram](images/process_insights/process-diagram-full-version.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img701)

[![](images/process_insights/process-diagram-full-version.png)](#_)

By default, the **Basic** version of the diagram is active when you open a process view. When you're ready to look closer at a specific sequence, click that connector in the diagram in the diagram to view additional details—and even [start drilling down](investigate.html#start-with-the-process-diagram). If your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp, you can also click on any node

### View process part details

To view details for a sequence or activity, click the connector or node in the process diagram. You can only click on nodes if your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp.

These details give you the key information you need to understand how the selected sequence or activity affects the process and decide if you need to drill down on attributes for the related cases.

The data you see in the details dialog depends on the [current context](#current-context).

For example:

[![images/process_insights/activity-details-dialog.png](images/process_insights/activity-details-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img702)

[![](images/process_insights/activity-details-dialog.png)](#_)

The process part details dialog includes the following elements:

-   **Metrics:** Relevant statistics for this part of the process within the current context:

    |
    Metric

     |

    Description

     |
    | --- | --- |
    |

    **Cases with occurrences**

     |

    The total number of cases that include this activity or sequence, along with what percent those cases are of all cases in the current context. In the image above, for example, 6,374 cases include a financial review and make up 100% of cases in the current view.

     |
    |

    **Occurrences**

     |

    The total number of times the activity or sequence occurs in the cases in the current context. In the above image, for example, the Financial Review activity occurs 8,465 times in cases associated with this view.

    Because activities and sequences can occur multiple times in a single case, occurrences are typically a higher number than the associated case count. Depending on the expected structure of your process, a higher occurrence count may indicate rework and a process inefficiency you can work to improve.

     |
    |

    **Avg. occurrences per case**

     |

    The average number of times the activity or sequence occurs in each case in the current context. In the image above, for example, the Financial Review activity occurred an average of 1.32 times in cases associated with this view.

     |
    |

    **Duration (Average)**

     |

    The average duration of this activity or sequence when it occurs in cases in the current context. In the image above, for example, the Financial Review activity takes an average of 29 minutes and 57 seconds.

     |
    |

    **Total Duration**

     |

    The total duration of all occurrences of this part in cases in the current context. In the image above, for example, it took your organization a total of 5 months and 3 weeks to handle all occurrences of the Financial Review activity.

     |

-   **Duration visualizations**: Visualizations to help you understand important aspects of the process data. These include:

    -   [Duration Comparison](pi-visualizations.html#duration-comparison)
    -   [Duration Distribution](pi-visualizations.html#duration-distribution)
    -   [Duration Trend](pi-visualizations.html#duration-trend)

    You can also view a [list of cases](#review-the-case-list) with the selected process part in the **Cases** tab.

-   **KPI Preview**: (View page only) A preview version of a KPI for this process part, including an initial KPI value and trend chart based on all occurrences of the process part in cases associated with the current context.

-   **START DRILLING DOWN**: Click this button to [start drilling down](investigate.html#start-with-the-process-diagram) on the process part. This button is only present if you're viewing details in a view page.

## Review case attributes

The **Case Attributes** tab of the **EXPLORE DATA FOR THIS PROCESS** section lists attributes for cases in this view in the [selected date range](explore.html#set-the-time-period).

If you have a lot of attributes and want to narrow down what you see, select the checkboxes next to specific attributes in the **Search** pane. The table will update to display only the attribute values that match your selection.

For example:

[![A list of case attributes for a Financial Onboarding process](images/process_insights/process-view-case-attributes-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img703)

[![](images/process_insights/process-view-case-attributes-tab.png)](#_)

This table includes the following columns:

|
Column

 |

Description

 |
| --- | --- |
|

**Attribute Value**

 |

The value of the attribute.

 |
|

**Attribute Name**

 |

The name of the attribute.

 |
|

**Case Count**

 |

A count of the cases with the attribute value in the current context.

If you're viewing the table in a count KPI page, this column also includes a bar graph showing how the case count for this attribute value compares to the case count of other attribute values in the list. The longer the bar, the higher the case count in comparison to other values.

 |
|

**Duration**

 |

(Process page, view page, and Duration KPI pages only) The average duration of cases with the attribute value in the current context, and a bar graph that shows how the duration for this attribute value compares to the duration of other attribute values in the list. The longer the bar, the higher the duration in comparison to other values.

 |

### View attribute value details

In the case attributes list, click an attribute value to view a details dialog for that value. These details give you the key information you need to understand how the selected attribute affects the process and decide if you need to drill down further.

The data you see in the details dialog depends on the [current context](#current-context).

The details dialog includes the following elements:

[![Details for the Account Type attribute](images/process_insights/kpi-page-attribute-details-dialog-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img704)

[![](images/process_insights/kpi-page-attribute-details-dialog-annotated.png)](#_)

|
Element

 |

Description

 |
| --- | --- |
|

1

 |

**Potential Reduction** section

 |

(KPI page only) Estimates the potential time saved each year if cases with the selected attribute were improved to meet the target duration in the current context. [Learn more about this calculation](pi-calculations.html#potential-reduction).

 |
|

2

 |

**Metrics** section

 |

Displays relevant data points to aid in assessment, including:

-   **Cases with this characteristic**: Number and percentage of cases with the selected attribute.
-   **Duration (Average)**: The average time to close cases with the selected attribute.

 |
|

3

 |

**Visualizations** tabs

 |

Offers new perspectives on the attribute data in the following tabs:

-   **[Duration Comparison](pi-visualizations.html#duration-comparison)**
-   **[Duration Distribution](pi-visualizations.html#duration-distribution)**
-   **[Duration Trend](pi-visualizations.html#duration-trend)**
-   **[Case List](#review-the-case-list)**

 |
|

4

 |

**START DRILLING DOWN** button

 |

(KPI page only) [Start drilling down](investigate.html#start-with-a-case-attribute) on the case attribute. This button is only present if you're viewing details in a KPI page.

 |

## Review the case list

To view a list of cases, go to the **Case List** tab in any process, view, or KPI page.

The cases you see in the list depend on the [current context](#current-context).

Use the search box to search the list by case ID.

For example:

[![The case list tab in a process page](images/process_insights/process-page-case-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img705)

[![](images/process_insights/process-page-case-list.png)](#_)

The case list consists of the following standard columns:

|
Column

 |

Description

 |
| --- | --- |
|

**Case ID**

 |

The unique identifier of the case.

 |
|

**Start**

 |

The timestamp of the first activity in the case.

 |
|

**End**

 |

The timestamp of the last activity in the case.

 |
|

**Duration**

 |

The time the case took to complete; that is, the length of time between the first activity in the case and the last activity in the case.

 |
|

**Total Activity Duration**

 |

The total time spent completing activities in this case. This value is only available if your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp. Otherwise, this value cannot be calculated and appears as zero.

 |
|

**Total Sequence Duration**

 |

The total amount of process time spent moving between activities. For example, in a Customer Onboarding process, this total would include the time spent between the end of one activity (a Know Your Customer review) and the start of the next activity (Financial Document Verification). This value can only be meaningfully calculated if your [event data](record-events.html#capture-the-right-timestamps) includes a start timestamp and an end timestamp. Otherwise, this value is equal to the case duration.

 |

Additional columns appear in the list for [each attribute included in the process](add-process.html).

## Review views and KPIs

On the [process page](process-page.html), the **PINNED VIEWS** section displays the system-provided **All Cases view** and any views that you or your colleagues pinned to the process page.

For each pinned view, you'll see previews of the [KPIs](process-custom-kpis.html) pinned to that view.

For example:

[![The PINNED VIEWS section of a process page, highlighted by a green box](images/process_insights/process-page-pinned-views.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img706)

[![](images/process_insights/process-page-pinned-views.png)](#_)

Early on in your organization's exploration of this process, the **PINNED VIEWS** section is likely to contain only the default **All Cases** view with previews of the [system-provided KPIs](process-custom-kpis.html#system-provided-kpis).

As you get to know your process better, it will become clearer how you want to divide your cases into segments for deeper analysis. For each useful segment, you can [create a custom view](process-views.html#create-a-view) and [pin it](process-views.html#pin-or-unpin-a-view) to the **Process** page for easy access. You can also see all views associated with a process by going to the **All Views** tab of a process page.

As you identify characteristics of your cases that you want to track, you can also [create your own KPIs](process-custom-kpis.html#create-a-kpi) and [customize which KPIs display](process-custom-kpis.html#pin-and-unpin-a-kpi) for each view.

**Tip:**  To review all KPIs in a process, [access the **All Cases** view](process-views.html#access-a-view), then go to the **All KPIs** tab of the **EXPLORE DATA FOR THIS PROCESS** section.

## Review conformance and costs

If your organization has defined the [expected activity order](process-views.html#define-the-expected-activity-order) and [activity costs](process-views.html#define-activity-costs) for a process, the **Conformance and Costs** tab on each view page provides the following information:

-   **Conformance rate**: How often activities occur in the order you expect.
-   **Cost**: How much money those activities collectively cost your organization.

If your process contains events with an [**Automation** attribute](common-preparations.html#standardize-automation-type), this tab also includes information about how often activities were performed by an automation, known as the automation rate.

At the top of the tab, you'll see the following system-provided KPIs:

-   [Total Cost](process-custom-kpis.html#system-provided-kpis)
-   [Total Case Conformance](process-custom-kpis.html#system-provided-kpis)

Next, you'll see a breakdown of conformance rate, cost, and automation rate by activity.

This breakdown can display as either a [grid](#grid-display) or a [chart](#chart-display). To toggle between displays, click the icon in the top right corner of the tab.

[![display toggle highlighted in the Conformance and Costs tab](images/process_insights/conformance-and-costs-toggle.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img707)

[![](images/process_insights/conformance-and-costs-toggle.png)](#_)

The toggle is only available if [activity costs](process-views.html#define-activity-costs) and the [expected activity order](process-views.html#define-the-expected-activity-order) are defined for the process.

**Tip:**  Once you're ready to look closer, you can easily [drill down from conformance rate](investigate.html#start-with-the-conformance-rate) to build insights.

### Grid display

The grid display consists of a list of the unique activities in your process, along with activity-related statistics.

For example:

[![Activities grid](images/process_insights/conformance-and-costs-grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img708)

[![](images/process_insights/conformance-and-costs-grid.png)](#_)

This grid contains the following columns:

|
Column

 |

Description

 |
| --- | --- |
|

**Activity**

 |

The [activity](key-pi-terms.html#cases-activities-events) for which the statistics are calculated. Click the name to [drill down](investigate.html#start-with-the-conformance-rate) on the conformance rate for this activity.

 |
|

**Duration**

 |

How long (on average) the activity takes when it occurs in cases in this view.

 |
|

**Activity Count**

 |

The number of times the activity occurs in cases in this view.

 |
|

**Cost**

 |

The total cost of all occurrences of the activity in the current view. This calculation is based on the [individual activity costs](process-views.html#define-activity-costs) defined for the process.

 |
|

**Occurrence Conformance**

 |

The percentage of activities in the view that are occurring in the expected order. This calculation is based on the [expected activity order](process-views.html#define-the-expected-activity-order) defined for the process.

 |
|

**Automation Rate**

 |

The percentage of activities in the view that were performed by an automation. This calculation is based on the number of events with an [**Automation** attribute](common-preparations.html#standardize-automation-type).

 |

### Chart display

The bubble chart format allows you to identify activities that could benefit from improvement at a glance.

The chart displays information about the total cost of activities in relation to the percentage of activities that did not follow the expected sequence order.

The bubble chart is only available if [activity costs](process-views.html#define-activity-costs) and the [expected activity order](process-views.html#define-the-expected-activity-order) are defined for the process.

For example:

[![Activity statistics displayed in bubble chart format](images/process_insights/conformance-and-costs-chart.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img709)

[![](images/process_insights/conformance-and-costs-chart.png)](#_)

This chart contains the following elements:

-   **Total Cost** (Y-axis): The total cost of the activity.
-   **Conformance Rate** (X-axis): The conformance rate of the activity.
-   **Bubble**: Each bubble represents an activity. An icon in the bubble represents the automation type based on Automation Type attributes. The size of the bubble reflects how often the activity occurred in all cases in this view.

Hover over a bubble to see:

-   The name of the activity.
-   The percentage of activities that conform to the expected sequence order in this view.
-   The total cost of all occurrences of this activity.
-   The number of times the activity occurred in all cases in this view.

For example:

[![A tooltip displaying details about the activity represented by the bubble](images/process_insights/executive-dashboard-bubble-chart-hover-menu.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img710)

[![](images/process_insights/executive-dashboard-bubble-chart-hover-menu.png)](#_)

## Review saved insights

Reviewing insights related to your process can help you understand aspects of the process that your colleagues may already be focusing on. These insights can highlight characteristics you might want to [continue drilling down](collaborate-on-insight.html#continue-a-saved-insight) on or [start collaborating on right away](collaborate-on-insight.html#add-a-comment-to-a-saved-insight).

To review insights, [access a view](process-views.html#access-a-view), then go to the **All Insights** tab in the **EXPLORE DATA FOR THIS VIEW** section of the view page.

This tab lists [saved insights](insight-page.html) for all KPIs in that view, displaying in order of the insight creation date.

For example:

[![All Insights tab in a process view, displaying four saved insights](images/process_insights/saved-insights-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img711)

[![](images/process_insights/saved-insights-tab.png)](#_)

By default, the list is sorted by date modified from newest to oldest. You can also sort by oldest to newest.

On the **All Insights** tab, you can use the search box to search for an insight by name. The results of your search replace the current insights list.

**Tip:**  To view saved insights for a specific KPI, access the KPI, then go to the **Insights** tab of the KPI page. That tab contains saved insights related to just that KPI in the same list format as the **All Insights** tab.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...