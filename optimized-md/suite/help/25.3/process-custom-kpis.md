---
source_url: https://docs.appian.com/suite/help/25.3/process-custom-kpis.html
original_path: process-custom-kpis.html
version: "25.3"
title: "Manage KPIs"
page_id: "process-custom-kpis"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage KPIs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to create and manage KPIs in a [process view](process-views.html).

## Overview

A key performance indicator (KPI) allows you to measure the success of your process and track the indicators that are most relevant to your business. A KPI can help you see at a glance if a process is performing to your expectations.

Each [view](process-views.html) you create starts off with system-provided KPIs that represent the most common ways of tracking process performance and efficiency. Learn more about [system-provided KPIs](#system-provided-kpis).

You can also [create your own KPIs](#create-a-kpi) based on your understanding of your business process. These KPIs are known as [user-created KPIs](#user-created-kpis). Learn more about [when you might want to create a KPI](#user-created-kpis).

You can [pin KPIs](#pin-and-unpin-a-kpi) to a view, so they display from the moment you open the view or process.

You can view all KPIs for an individual process view in the [**All KPIs** tab](process-view-page.html#elements) of that view.

Once you create a KPI, you can add it to a [dashboard](allow-users-to-build-reports.html#dashboards). You can give the KPI a custom name and time range when you use it in a dashboard.

As you're curating your KPIs, you can also [delete user-created KPIs](#delete-a-kpi) from your views as needed.

**Tip:**  You can drill down from certain KPIs to start building an insight. [Learn more](investigate.html#start-with-a-kpi).

## KPI elements

When [accessed in a view](#access-a-kpi), a KPI consists of the elements highlighted in the image below. When you view a pinned KPI on a [process page](process-page.html), the KPI displays only elements 1–4.

![An annotated image of a user-created KPI](images/process_insights/kpi-annotated.png)

These elements are described in the table below.

|
#

 |

Element

 |

Description

 |
| --- | --- | --- |
|

1

 |

Name

 |

The KPI name.

 |
|

2

 |

Value

 |

The current value of the KPI. In this example, the value displays a count of cases with the Financial Document Verification activity.

 |
|

3

 |

Percent of cases or occurrences

 |

What percent of total cases or occurrences in this view are affected by the characteristics in this KPI. In this example, this percentage is 100%, so it's clear that the characteristics in this KPI affect all the cases in the view.

 |
|

4

 |

Change indicator and change percent

 |

An arrow indicating whether the KPI value is increasing or decreasing recently, accompanied by the percentage of increase or decrease.

The direction of the arrow represents either an increase in the KPI value () or a decrease in the KPI value ().

The color of the indicator and percentage shows whether the change is positive (green) or negative (red). A change is classified as an improvement based on the KPI type.

Depending on the KPI type, the system determines the change percentage as follows:

-   **Duration (Time) and Aggregate KPIs**: The system compares the average of all values including the latest value to the average of all values except the latest value, and calculates the difference as a percentage.

-   **Duration (SLA) and Count KPIs**: The system compares the sum of all values including the latest value to the sum of all values except the latest value, and calculates the difference as a percentage.

 |
|

5

 |

Three-dot menu

 |

For any KPI type, this menu lets you perform the following actions:

-   [Start drilling down](investigate.html) on the KPI.
-   [Unpin a pinned KPI](#pin-and-unpin-a-kpi).

For user-created KPIs, this menu lets you perform the following additional actions:

-   [Edit the KPI definition.](#edit-kpi-definition)
-   [Edit thresholds and alerts](#edit-kpi-thresholds-and-alerts).
-   [Edit the KPI properties](#edit-kpi-properties).
-   [Delete the KPI](#delete-a-kpi).

 |
|

6

 |

Description

 |

(User-created KPIs only) Hover over this icon to see the KPI description.

 |
|

7

 |

Trend chart

 |

A chart showing changes in KPI values over the [selected time period](explore.html#set-the-time-period).

 |

## System-provided KPIs

The system-provided KPIs are described in the table below. The **Indicator of KPI Improvement** column shows the indicator of improvement for the KPI, and the **Location** column indicates where you can access the KPI.

|
KPI

 |

Description

 |

Indicator of KPI Improvement

 |

Location

 |
| --- | --- | --- | --- |
|

**Average Case Duration**

 |

The average duration of [cases](key-pi-terms.html#cases-activities-events) in the view that occur in the selected date range.

 |

decrease

 |

**PINNED KPIS** section (default) and **All KPIs** tab of a view

 |
|

**Median Case Duration**

 |

The median duration of cases in the view that occur in the selected date range.

 |

decrease

 |
|

**Automation Rate**

 |

The percentage of [activities](key-pi-terms.html#cases-activities-events) in the view that were performed by an automation in the selected date range.

This calculation is based on the number of events with an [**Automation** attribute](common-preparations.html#standardize-automation-type). This KPI is only present if your process data includes events with an **Automation** attribute.

 |

increase

 |
|

**Total Cost**

 |

The total cost of all activities in the view. This KPI is empty until you define the [activity costs](process-views.html#define-activity-costs) for the process.

 |

decrease

 |

**Conformance and Costs** tab of a view

 |
|

**Total Case Conformance**

 |

The percentage of cases in the view that are occurring in the expected order. This KPI is empty until you define the [expected activity order](process-views.html#define-the-expected-activity-order) for the process.

 |

increase

 |

## User-created KPIs

You should [create a KPI](#create-a-kpi) when the system-provided KPIs don't address all use cases for your business. Learn more about [common use cases for creating a KPI](#common-kpi-use-cases).

The table below lists KPI templates you can use to track the uses cases you need. The **Indicator of KPI Improvement** column shows the indicator of improvement for the KPI.

|
KPI

 |

Description

 |

Indicator of KPI Improvement

 |
| --- | --- | --- |
|

Count

 |

Shows the total number of activities, [sequences](key-pi-terms.html#sequences), or attributes.

 |

decrease

 |
|

Duration

 |

Measure by **Time** to show how long cases, activities, or sequences are taking.

 |

decrease

 |
|

Measure by **SLA** to show a count of fulfillments or violations of a Service Level Agreement (SLA) for a process, sequence, or activity.

 |

decrease in violations or increase in fulfillments

 |
|

Aggregation

 |

Shows an aggregated value based on a selected numeric attribute.

 |

decrease or increase depending on the tracked attribute

 |

## Common KPI use cases

Some examples of common use cases for the different KPI types can include, but are not limited to the following.

| Track | Example | KPI |
| --- | --- | --- |
| How many times a certain activity, sequence, or attribute occurs. | View the amount of review repetitions (review to review). | Count KPI |
| How many cases have an occurrence of a certain activity, sequence, or attribute. | View the percentage of cases with manual activities. | Count KPI |
| Different SLAs for sequences and repetitions. | Keep track of support tickets for different customer tiers. Premium support might only have 1 day of initial response time whereas you have 3 days time to respond to customers in the Standard support tier. | Duration KPI (SLA) |
| The percentage of conforming or violating executions. | Show the total percentage of contracts that are violating SLA. | Duration KPI (SLA) |
| The average or median duration of cases in the process. | See that the mean and median case durations are less than 1 week. | Duration KPI (time) |
| The average, median, or total duration of an activity. | See that reviews take an average of 3 hours. | Duration KPI (time) |
| The average, median, or total duration of a sequence. | See that there are an average of 83 days and 13 hours between requests for information (RFIs). | Duration KPI (time) |
| The minimum value for an attribute in the process. | Calculate the minimum distribution distance for delivery. | Aggregation KPI |
| The average value for an attribute in the process. | Calculate the average deal size. | Aggregation KPI |
| The maximum value for an attribute in the process. | Calculate the top user engagement by comment. | Aggregation KPI |
| The total value for an attribute in the process. | Calculate the total amount of shipping costs. | Aggregation KPI |

## KPI permissions

You can manage KPIs based on process permissions and whether the KPI is [system-provided](#system-provided-kpis) or [user-created](#create-a-kpi), as summarized in the table below.

|
Task

 |

System-provided KPIs

 |

User-created KPIs

 |
| --- | --- | --- |
|

[View a KPI](#access-a-kpi)

 |

🅐 Ⓥ

 |

🅐 Ⓥ

 |
|

View KPI definition

 |

–

 |

🅐 Ⓥ

 |
|

View KPI filters

 |

–

 |

🅐 Ⓥ

 |
|

View KPI thresholds and alerts

 |

–

 |

🅐 Ⓥ

 |
|

View KPI properties

 |

🅐 Ⓥ

 |

🅐 Ⓥ

 |
|

[Create a KPI](#create-a-kpi)

 |

🅐

 |

🅐

 |
|

[Pin/unpin KPI](#pin-and-unpin-a-kpi)

 |

🅐

 |

🅐

 |
|

[Edit KPI definition](#edit-kpi-definition)

 |

🅐

 |

🅐

 |
|

[Edit KPI filters](#edit-kpi-filters)

 |

🅐

 |

🅐

 |
|

[Edit KPI thresholds and alerts](#edit-kpi-thresholds-and-alerts)

 |

🅐

 |

🅐

 |
|

[Edit KPI properties](#edit-kpi-properties)

 |

🅐

 |

🅐

 |
|

[Subscribe to a KPI](#subscribe-to-a-kpi)

 |

–

 |

🅐 Ⓥ

 |
|

[Delete a KPI](#delete-a-kpi)

 |

🅐

 |

🅐

 |
|

[Start drilling down](investigate.html#start-with-a-kpi)

 |

🅐 (Average Case Duration only)

 |

🅐 (Count or Duration only)

 |

Legend: 🅐 = Process Analyst; Ⓥ = Process Viewer

## Create a KPI

A user-created KPI is associated with the view where you create it. Keep in mind that the KPI inherits the [filters](process-views.html#edit-view-filters) that define the associated view.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to create a KPI for that process.

To create a KPI:

1.  In the **PINNED KPIS** section of a [process view](process-views.html#access-a-view), click **CREATE KPI**.

    [![A process view with the CREATE KPI button highlighted by a green box](images/process_insights/process-view-create-kpi-button.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img732)

    [![](images/process_insights/process-view-create-kpi-button.png)](#_)

    The **Create KPI** dialog displays, with the **Type** step active.

2.  Choose from the available lists to select a KPI type:

    [![The Type step of the Create KPI dialog](images/process_insights/create-kpi-select-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img733)

    [![](images/process_insights/create-kpi-select-type.png)](#_)

    -   **Browse Suggested KPIs**: Using your process data, AI Copilot suggests some KPIs you may find valuable. If you select a suggested KPI, you can edit the definition and properties in later steps. Suggested KPIs persist for you and your collaborators to select from. If you don't see any suggested KPIs that meet your needs, click **REGENERATE** to refresh the list of options.

        **Tip:**  Suggested KPIs are available in [select regions](security-compliance.html#ai-copilot-regional-availability).

    -   **Start from Scratch**: Choose to create and configure KPIs such as:

        -   **Count**
        -   **Duration**
        -   **Aggregation**

        **Note:**  The **Aggregation** KPI is only available if your process contains a numeric attribute.

3.  Click **NEXT**. The **Definition** step displays. This step displays options specific to the KPI type.

4.  Define or edit the calculation parameters for each KPI type:

    -   [Define the count KPI](#define-the-count-kpi)
    -   [Define the duration KPI](#define-the-duration-kpi)
    -   [Define the aggregation KPI](#define-the-aggregation-kpi)

    **Tip:**  As you define the KPI parameters, the KPI preview allows you to see how the system would calculate the KPI in the context of the current view.

5.  Click **NEXT**. The **Filters** step displays.

    For example:

    [![The Filters step of the Create KPI dialog](images/process_insights/kpi-filters-step.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img734)

    [![](images/process_insights/kpi-filters-step.png)](#_)

6.  (Optional) [Add one or more filters](#add-a-filter) to further refine the cases tracked by the KPI.

7.  Click **NEXT**. The **Thresholds and Alerts** step displays.

    For example:

    [![The Thresholds and Alerts step of the Create KPI dialog](images/process_insights/create-kpi-threshold-step.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img735)

    [![](images/process_insights/create-kpi-threshold-step.png)](#_)

8.  (Optional) [Add a threshold](#add-a-threshold) to support ongoing monitoring of KPI changes.
9.  Click **NEXT**. The **Properties** step displays.

    For example:

    [![The properties step of the Create KPI dialog](images/process_insights/create-kpi-properties-step.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img736)

    [![](images/process_insights/create-kpi-properties-step.png)](#_)

10.  Configure the properties for the KPI:
     1.  For **Name**, enter a name. KPI names must be unique.
     2.  (Optional) For **Description**, enter a brief description for the KPI.
     3.  (Optional) To [unpin the KPI](#pin-and-unpin-a-kpi) from the current view, clear the **Pin view** checkbox.

11.  Click **CREATE**. Process HQ creates the KPI and displays the [page](process-kpi-page.html) for that KPI.

### Define the count KPI

To define the count KPI, you must select what you want to count, select the kind of count KPI to create, and make the specific configurations for each.

[![The count KPI definition step in the Create KPI dialog](images/process_insights/kpi-count-definition-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img737)

[![](images/process_insights/kpi-count-definition-25_2.png)](#_)

To count activities, sequences, or case attributes:

1.  For **Select what you want to count**, select whether you want to count activities, sequences, or case attributes.
2.  Specify what you want the KPI to count:
    -   If you selected **Activities**, under **Activity**, select an activity.
    -   If you selected **Sequences**, select a **Sequence Type**, **Start Activity**, and **End Activity**. **Sequence Type** may be automatic if you started with a suggested KPI.
    -   If you selected **Attributes**, under **Cases with Attribute**, select an attribute type and value.
3.  If your KPI is counting activities or sequences, for **Count of**, select what you want to count:
    -   The number of occurrences.
    -   The number of cases with the activity or sequence.
4.  For **Display As**, select one or more options:

    -   **Number of occurrences** to display the KPI value as a number.
    -   **Percentage of occurrences in this view** to display the KPI value as a percentage.

    **Tip:**  Depending on the option you selected for **Count of** property, these options will reflect cases instead of occurrences.

5.  Click **NEXT**.
6.  Continue on with step 5 in the [Create a KPI](#create-a-kpi) section.

### Define the duration KPI

When you create a duration KPI, you can choose to measure one of the following:

-   **[Time](#measure-by-time)**: The amount of time it takes to complete [cases](key-pi-terms.html#cases-activities-events), [activities](key-pi-terms.html#cases-activities-events), or [sequences](key-pi-terms.html#sequences).
-   **[SLA](#measure-by-sla)**: The number of cases, activities, or sequences that are fulfilling or violating SLA.

**Note:**  The option to track activity duration is only available if you have both a start and end timestamp configured for your activities.

#### Measure by time

To define the duration KPI so it measures by time, select the duration to track and make the specific configurations.

[![The duration KPI definition step in the Create KPI dialog](images/process_insights/kpi-duration-definition-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img738)

[![](images/process_insights/kpi-duration-definition-25_2.png)](#_)

To measure how long it takes to complete cases, activities, or sequences:

1.  For **Select which duration you want to track**, select whether you want to track duration for activities, sequences, or cases.
2.  If you selected **Activity Duration**, under **Activity**, select the activity to track.
3.  If you selected **Sequence Duration**, select a **Start Activity** and an **End Activity**.
4.  For **Measurement**, select **Time**.
5.  For **Aggregation**, select how the KPI will aggregate durations.
6.  For **Unit**, keep the default **Detect automatically** to display appropriate unit of time based on the data, or select a specific unit of time.
7.  Continue on with step 5 in the [Create a KPI](#create-a-kpi) section.

#### Measure by SLA

To define the duration KPI so it measures SLA conformance, select what to track and make the specific configurations.

[![The SLA KPI definition step in the Create KPI dialog](images/process_insights/kpi-sla-definition-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img739)

[![](images/process_insights/kpi-sla-definition-25_2.png)](#_)

To measure the number of cases, activities, or sequences that are fulfilling or violating SLA:

1.  For **Select which duration you want to track**, select whether you want to track duration for activities, sequences, or cases.
2.  If you selected **Activity Duration**, under **Activity**, select the activity to track.
3.  If you selected **Sequence Duration**, select a **Start Activity** and an **End Activity**.
4.  For **Measurement**, select **SLA**.
5.  Use the **Duration** and **Unit** fields to set the target duration for the KPI.
6.  For **Count cases by**, select whether you want to count SLA violations or fulfillments.
7.  For **Display as**, choose whether to view the SLA count as **Number**, **Percentage**, or both.
8.  Continue on with step 5 in the [Create a KPI](#create-a-kpi) section.

### Define the aggregation KPI

**Note:**  The aggregation KPI is only available if your process contains a numeric attribute.

To define an aggregation KPI, specify what you want to aggregate and how you want to aggregate it.

[![The aggregation KPI definition step in the Create KPI dialog](images/process_insights/kpi-aggregation-definition.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img740)

[![](images/process_insights/kpi-aggregation-definition.png)](#_)

To define an aggregation KPI:

1.  For **Select a numeric attribute**, select one of the following ways to aggregate the numerical attribute:
    -   **Average**
    -   **Minimum**
    -   **Maximum**
    -   **Median**
    -   **Sum**
2.  (Optional) Click **ADD UNIT**, then enter a unit of measurement for the numeric values. For example, this might be a monetary symbol like the Euro (€).
3.  For **Numeric Attribute**, click **SELECT** to choose the numeric attribute to aggregate.
4.  Continue on at step 5 in the [Create a KPI](#create-a-kpi) section.

### Add a filter

To add a filter while creating a KPI:

1.  In the **Filters** step of the dialog, click **ADD FILTER**. The filter properties section displays.

    For example:

    [![Edit Filters dialog with filter properties displayed](images/process_insights/create-kpi-filters-add.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img741)

    [![](images/process_insights/create-kpi-filters-add.png)](#_)

2.  Configure the filter properties, as described in the following table. You can filter on cases with a specific [attribute](key-pi-terms.html#attributes), [activity](key-pi-terms.html#cases-activities-events), [sequence](key-pi-terms.html#sequences), or [duration](key-pi-terms.html#duration).

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **To filter on cases with a specific attribute value:**

     |
    |

    **Filter Type**

     |

    Select **Characteristic**.

     |
    |

    **Characteristic Type**

     |

    Select **Attribute**.

     |
    |

    **Attribute**

     |

    Select the name of the attribute you want to filter on.

     |
    |

    **Operator**

     |

    Select an appropriate operator:

    -   **Equals**: Cases related to the KPI must have the selected attribute value(s).
    -   **Does not equal**: Cases related to the KPI cannot have the selected attribute value(s).

     |
    |

    **Attribute Value**

     |

    Select any values for the attribute you want to filter on.

     |
    |

    For example, if you select `Country` as **Attribute**, `Equals` as **Operator**, and `Spain` and `Italy` as **Attribute Value**, the KPI would filter only cases from Spain or Italy.

     |
    |

    **To filter on cases with a specific activity:**

     |
    |

    **Filter Type**

     |

    Select **Characteristic**.

     |
    |

    **Characteristic Type**

     |

    Select **Activity**.

     |
    |

    **Operator**

     |

    Select the appropriate operator:

    -   **Includes all**: Cases related to the KPI must include all of the selected activities.
    -   **Does not include any**: Cases related to the KPI cannot include any of the selected activities.

     |
    |

    **Activities**

     |

    Select the activities you want to filter on.

     |
    |

    For example, if you select `Includes all` as **Operator** and `KYC Review` and `Financial Review` as **Activities**, the KPI would filter only cases that include both the KYC Review and Financial Review activities.

     |
    |

    **To filter on cases with a specific sequence:**

     |
    |

    **Filter Type**

     |

    Select **Characteristic**.

     |
    |

    **Characteristic Type**

     |

    Select **Sequence**.

     |
    |

    **Sequence Type**

     |

    Select one of the following:

    -   **Direct**: In the sequence, the end activity immediately follows the start activity. The KPI will filter cases with direct sequences only. For example, Action A to Action C.
    -   **Indirect**: In the sequence, the end activity follows the start activity but other activities can occur between them. The KPI will filter cases with both direct (Action A to Action C) and indirect (Action A to Action B to Action C) versions of the sequence.

     |
    |

    **Operator**

     |

    Select the appropriate operator:

    -   **Includes**: Cases related to the KPI must include the specified sequence.
    -   **Does not include**: Cases related to the KPI cannot include the specified sequence.

     |
    |

    **Start Activity**

     |

    Select the first activity in the sequence you want to filter on.

     |
    |

    **End Activity**

     |

    Select second activity in the sequence you want to filter on.

     |
    |

    For example, if you select `Direct` as **Sequence Type**, `Includes` as **Operator**, `KYC Review` as **Start Activity**, and `Financial Review` as **End Activity**, the KPI would filter only cases that include the KYC Review to Financial Review sequence.

     |
    |

    **To filter on cases with a specific duration:**

     |
    |

    **Filter Type**

     |

    Select **Duration**.

     |
    |

    **Duration Type**

     |

    Only **Case** is supported.

     |
    |

    **Operator**

     |

    Select the appropriate operator:

    -   **Is longer than**: Cases related to the KPI must be longer than the specified duration.
    -   **Is shorter than**: Cases related to the KPI must be shorter than the specified duration.
    -   **Is longer than or equal to**: Cases related to the KPI must be longer than or equal to the specified duration.
    -   **Is shorter than or equal to**: Cases related to the KPI must be shorter than or equal to the specified duration.

     |
    |

    **Duration**

     |

    Enter the duration to filter on. This value can only be an integer.

     |
    |

    **Unit**

     |

    Select the unit of time for the selected duration. **Days** is selected by default.

     |
    |

    For example, if you select `Is longer than` as **Operator**, `3` as **Duration**, and `Days` as **Unit**, the KPI would filter only cases that take longer than 3 days to complete.

     |

3.  Review the metrics and preview chart in the **KPI Preview** section, which update automatically as you make changes to the KPI configuration.

4.  Continue as appropriate:

    -   Click **SAVE FILTER** to save this filter and display the filters list.
    -   Click **SAVE AND ADD ANOTHER** to save this filter and refresh the filter options, so you can add another filter.
    -   Click **REMOVE** to cancel adding the filter.

    **Tip:**  In the filters list, you can edit or remove any filter by clicking the three-dot menu for the filter in the list, then selecting the relevant option.

5.  Repeat these steps to add more filters.
6.  Continue on at step 7 in the [Create a KPI](#create-a-kpi) section.

### Add a threshold

You can add a threshold to any [user-created](#user-created-kpis) count or duration KPIs.

The threshold appears as a line in the KPI trend graph and acts as the trigger for monthly alerts to users.

To add a threshold to a KPI:

1.  For **Threshold**, enter a target value. This value can specify the number of cases or occurrences, depending on the [unit of analysis](pi-calculations.html#unit-of-analysis) for the KPI.
2.  To allow users to [subscribe to email alerts](#subscribe-to-a-kpi) when this KPI exceeds the threshold, select **Enable Alerts**.

    **Note:**  The option to enable alerts is only available if [scheduled updates](add-process.html#schedule-process-updates) are configured for the process.

3.  (Optional) To unsubscribe from alerts on this threshold, clear **Subscribe to alerts for this KPI**.
4.  Continue on at Step 9 in the [Create a KPI](#create-a-kpi) section.

## Access a KPI

To access a KPI:

1.  [Access the view](process-views.html#access-a-view) associated with the KPI.
2.  Go to the **All KPIs** tab of the **EXPLORE DATA FOR THIS VIEW** section of the page.

    This tab contains a list of all KPIs associated with the current view.

    For example:

    [![All KPIs tab in a process view, listing three KPIs](images/process_insights/process-view-all-kpis-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img742)

    [![](images/process_insights/process-view-all-kpis-tab.png)](#_)

3.  (Optional) Search by KPI name or description.
4.  In the KPI list, click the name of the KPI you want to access. The [KPI page](process-kpi-page.html) displays.

**Tip:**  You can also go straight to a pinned KPI by clicking on the KPI in the **PINNED KPIS** section of the view page.

## Pin and unpin a KPI

Pinning KPIs to a view enables you to quickly see the most relevant or frequently used KPIs whenever you open the view. Pinned KPIs are pinned for all users accessing the view.

Pinned KPIs are listed in the **PINNED KPIS** section of the view and display in order of creation date. If a KPI is associated with a [pinned view](process-views.html#pin-or-unpin-a-view), a preview version of the KPI also displays with the view in the **PINNED VIEWS** section of the process page.

**Note:**  By default, both system-provided and user-created KPIs are pinned to the associated view. You can unpin them as needed.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to pin a KPI associated with that process.

To pin a KPI:

1.  [Access all KPIs](#access-a-kpi) for the view.
2.  Click the three-dot menu in the KPI.
3.  Select **Pin KPI**.

**Tip:**  You can also pin or unpin a KPI by clicking the icon in a KPI on the **All KPIs** tab.

To unpin a KPI:

1.  [Access the pinned KPIs](#access-a-kpi) for the view.
2.  Click the three-dot menu in the KPI.
3.  Select **Unpin KPI**.

**Tip:**  You can also unpin a KPI by clicking the icon in a pinned KPI on the **All KPIs** tab.

## Edit KPI definition

**Note:**  Editing a KPI definition may make [saved insights](investigate.html) related to the KPI inaccurate or read-only. For example, you can change the activity or sequence that a count KPI is tracking, but saved insights will reflect counts of the original activity or sequence.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to edit the definitions of [user-created KPIs](#create-a-kpi) associated with that process. You cannot edit the definitions of [system-provided KPIs](#system-provided-kpis).

To edit a KPI definition:

1.  [Access the KPI](#access-a-kpi) you want to edit.
2.  In the information pane, click the settings icon .
3.  Select **Edit Definition**.

    **Tip:**  This option is also available in the three-dot menu for a KPI in either the **PINNED KPIS** section or **All KPIS** tab of the [view page](process-view-page.html).

    The **Edit Definition** dialog displays.

    For example:

    [![Edit Properties dialog for a user-created KPI](images/process_insights/kpi-edit-definition.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img743)

    [![](images/process_insights/kpi-edit-definition.png)](#_)

4.  Edit the definition, as appropriate to the KPI type:
    -   [Define the count KPI](#define-the-count-kpi).
    -   [Define the duration KPI](#define-the-duration-kpi).
    -   [Define the aggregation KPI](#define-the-aggregation-kpi).
5.  Click **UPDATE**.

## Edit KPI filters

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to edit filters for [user-created KPIs](#create-a-kpi) associated with that process. You cannot edit the filters for [system-provided KPIs](#system-provided-kpis).

To edit filters for a KPI:

1.  [Access the KPI](#access-a-kpi) you want to edit.
2.  In the information pane, click the settings icon .
3.  Select **Edit Filters**.

    **Tip:**  This option is also available in the three-dot menu for a KPI in either the **PINNED KPIS** section or **All KPIS** tab of the [view page](process-view-page.html).

    The **Edit Filters** dialog displays.

    For example:

    [![Edit Properties dialog for a user-created KPI](images/process_insights/kpi-edit-filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img744)

    [![](images/process_insights/kpi-edit-filters.png)](#_)

4.  Add a new filter:
    1.  Click **ADD FILTER**. The filter properties section displays.

        For example:

        [![Edit Filters dialog](images/process_insights/edit-kpi-filters-add.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img745)

        [![](images/process_insights/edit-kpi-filters-add.png)](#_)

    2.  Configure the filter properties, as described in the following table. You can filter on cases with a specific [attribute](key-pi-terms.html#attributes), [activity](key-pi-terms.html#cases-activities-events), [sequence](key-pi-terms.html#sequences), or [duration](key-pi-terms.html#duration).

        |
        Property

         |

        Action

         |
        | --- | --- |
        |

        **To filter on cases with a specific attribute value:**

         |
        |

        **Filter Type**

         |

        Select **Characteristic**.

         |
        |

        **Characteristic Type**

         |

        Select **Attribute**.

         |
        |

        **Attribute**

         |

        Select the name of the attribute you want to filter on.

         |
        |

        **Operator**

         |

        Select an appropriate operator:

        -   **Equals**: Cases related to the KPI must have the selected attribute value(s).
        -   **Does not equal**: Cases related to the KPI cannot have the selected attribute value(s).

         |
        |

        **Attribute Value**

         |

        Select any values for the attribute you want to filter on.

         |
        |

        For example, if you select `Country` as **Attribute**, `Equals` as **Operator**, and `Spain` and `Italy` as **Attribute Value**, the KPI would filter only cases from Spain or Italy.

         |
        |

        **To filter on cases with a specific activity:**

         |
        |

        **Filter Type**

         |

        Select **Characteristic**.

         |
        |

        **Characteristic Type**

         |

        Select **Activity**.

         |
        |

        **Operator**

         |

        Select the appropriate operator:

        -   **Includes all**: Cases related to the KPI must include all of the selected activities.
        -   **Does not include any**: Cases related to the KPI cannot include any of the selected activities.

         |
        |

        **Activities**

         |

        Select the activities you want to filter on.

         |
        |

        For example, if you select `Includes all` as **Operator** and `KYC Review` and `Financial Review` as **Activities**, the KPI would filter only cases that include both the KYC Review and Financial Review activities.

         |
        |

        **To filter on cases with a specific sequence:**

         |
        |

        **Filter Type**

         |

        Select **Characteristic**.

         |
        |

        **Characteristic Type**

         |

        Select **Sequence**.

         |
        |

        **Sequence Type**

         |

        Select one of the following:

        -   **Direct**: In the sequence, the end activity immediately follows the start activity. The KPI will filter cases with direct sequences only. For example, Action A to Action C.
        -   **Indirect**: In the sequence, the end activity follows the start activity but other activities can occur between them. The KPI will filter cases with both direct (Action A to Action C) and indirect (Action A to Action B to Action C) versions of the sequence.

         |
        |

        **Operator**

         |

        Select the appropriate operator:

        -   **Includes**: Cases related to the KPI must include the specified sequence.
        -   **Does not include**: Cases related to the KPI cannot include the specified sequence.

         |
        |

        **Start Activity**

         |

        Select the first activity in the sequence you want to filter on.

         |
        |

        **End Activity**

         |

        Select second activity in the sequence you want to filter on.

         |
        |

        For example, if you select `Direct` as **Sequence Type**, `Includes` as **Operator**, `KYC Review` as **Start Activity**, and `Financial Review` as **End Activity**, the KPI would filter only cases that include the KYC Review to Financial Review sequence.

         |
        |

        **To filter on cases with a specific duration:**

         |
        |

        **Filter Type**

         |

        Select **Duration**.

         |
        |

        **Duration Type**

         |

        Only **Case** is supported.

         |
        |

        **Operator**

         |

        Select the appropriate operator:

        -   **Is longer than**: Cases related to the KPI must be longer than the specified duration.
        -   **Is shorter than**: Cases related to the KPI must be shorter than the specified duration.
        -   **Is longer than or equal to**: Cases related to the KPI must be longer than or equal to the specified duration.
        -   **Is shorter than or equal to**: Cases related to the KPI must be shorter than or equal to the specified duration.

         |
        |

        **Duration**

         |

        Enter the duration to filter on. This value can only be an integer.

         |
        |

        **Unit**

         |

        Select the unit of time for the selected duration. **Days** is selected by default.

         |
        |

        For example, if you select `Is longer than` as **Operator**, `3` as **Duration**, and `Days` as **Unit**, the KPI would filter only cases that take longer than 3 days to complete.

         |

    3.  Click **SAVE FILTER**.

        **Tip:**  To cancel adding the filter and return to the filters list, click **CANCEL**.

5.  Edit an existing filter:
    1.  Click the three-dot menu for the filter.
    2.  Select **Edit**. The filter properties section displays.
    3.  Edit the filter properties as appropriate.
    4.  Click **SAVE FILTER**.

        **Tip:**  To cancel the changes you made and return to the filters list, click **CANCEL**.

6.  Remove an existing filter:
    1.  Click the three-dot menu for the filter.
    2.  Click **Remove**.
7.  Review the metrics and preview chart in the **KPI Preview** section, which update automatically as you make changes to the KPI configuration.

8.  Click **SAVE**.

## Edit KPI thresholds and alerts

Thresholds and alerts are supported for [user-created](#user-created-kpis) count and duration KPI only. You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to edit thresholds and alerts for KPIs associated with that process.

To edit the threshold and alerts for a KPI:

1.  [Access the KPI](#access-a-kpi) you want to edit.
2.  In the information pane, click the settings icon .
3.  Select **Edit Thresholds and Alerts**.

    **Tip:**  This option is also available in the three-dot menu for a KPI in either the **PINNED KPIS** section or **All KPIS** tab of the [view page](process-view-page.html).

    The **Edit Thresholds and Alerts** dialog displays.

    For example:

    [![Edit Thresholds and Alerts dialog for a user-created KPI](images/process_insights/kpi-edit-threshold.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img746)

    [![](images/process_insights/kpi-edit-threshold.png)](#_)

4.  Edit the **Threshold** value to change the threshold line on the KPI trend graph.
5.  Select **Enable Alerts** to allow users to [subscribe to email alerts](#subscribe-to-a-kpi) when this KPI exceeds the threshold.
6.  Click **UPDATE**.

## Edit KPI properties

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to edit properties for [user-created KPIs](#create-a-kpi). You cannot edit properties for [system-provided KPIs](#system-provided-kpis).

To edit KPI properties:

1.  [Access the KPI](#access-a-kpi) you want to edit.
2.  In the information pane, click the settings icon .
3.  Select **Edit Properties**.

    **Tip:**  This option is also available in the three-dot menu for a KPI in either the **PINNED KPIS** section or **All KPIS** tab of the [view page](process-view-page.html).

    The **Edit Properties** dialog displays.

    For example:

    [![Edit Properties dialog for a user-created KPI](images/process_insights/kpi-edit-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img747)

    [![](images/process_insights/kpi-edit-properties.png)](#_)

4.  Configure the following properties:
    -   **Name:** Edit the KPI name.
    -   **Description:** Edit the KPI description.
5.  Click **UPDATE**.

## Subscribe to a KPI

You can subscribe to [duration KPIs](#define-the-duration-kpi) and [count KPIs](#define-the-count-kpi) to receive email alerts about your business processes.

-   For duration KPIs measuring [time](#measure-by-time), subscribers will receive alerts if the average or median duration exceeded the target threshold in the previous month.
-   For duration KPIs measuring [SLA](#measure-by-sla), subscribers will receive alerts if there are any SLA violations in the previous month.
-   For count KPIs, subscribers will receive alerts if the count has exceeded the target threshold in the previous month.

Email alerts are sent monthly and are based on new data since the last related process update. For example, if your process updates on May 6, you will receive alerts based on process data from the full month of April. Subscribers will not receive more than one email alert per month for each KPI they're subscribed to.

Any user with at least Viewer permissions for a process can subscribe to KPIs for that process. Email alerts are only available for user-created duration KPIs and count KPIs with alerts enabled.

To subscribe to a KPI:

1.  In the [view page](process-view-page.html), go to either the **PINNED KPIS** section or the **All KPIs** tab.
2.  Click the bell icon for the KPI you want to subscribe to.

**Note:**  In order for Process HQ to send alert emails, the **[Outbound Email Toggle](Appian_Administration_Console.html#outbound-email-toggle)** must be enabled in the Admin Console.

## Delete a KPI

When you delete a KPI, you also delete any [insights](collaborate-on-insight.html) related to that KPI.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to delete a KPI associated with the process. You cannot delete [system-provided KPIs](#system-provided-kpis).

To delete a KPI:

1.  [Access the view](process-views.html#access-a-view) associated with the KPI you want to delete.
2.  Go to the **All KPIs** tab in the **EXPLORE DATA FOR THIS VIEW** section.
3.  Click the three-dot menu in the KPI.
4.  Click **Delete KPI**.

    **Tip:**  This option is also available from the three-dot menu of any KPIs in the **PINNED KPIS** section of the view page.

    A confirmation dialog displays.

5.  Click **DELETE** to confirm the deletion.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...