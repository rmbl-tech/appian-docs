---
source_url: https://docs.appian.com/suite/help/25.3/add-process.html
original_path: add-process.html
version: "25.3"
title: "Add a Process"
page_id: "add-process"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add a Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [data stewards](processhq.html#-data-stewards). It describes how to add, configure, and secure a process in process insights.

## Overview

In process insights, we organize and curate information about a [business process](key-pi-terms.html#business-process) into a unit of data that can be analyzed to uncover actionable insights. We call this unit of data a [_process_](#what-is-a-process).

As a data steward, you are responsible for adding, configuring, and securing processes, so business users can safely explore and uncover new insights to optimize the process.

### What is a process?

A process consists of a [case record type](key-pi-terms.html#case-record-type-and-event-history-record-type), an [event history record type](key-pi-terms.html#case-record-type-and-event-history-record-type), and any relevant related record types that contain data relevant to the case or its events.

For example, in a Financial Customer Onboarding app, the case record type would be Onboarding Case, and the event history record type would be Onboarding Event History. Related record types could include Customer, Region, and Onboarding Event Type.

[![Relationship diagram for Onboarding Case, Customer, Region, Onboarding Event History, and Onboarding Event Type Lookup record types](images/process_insights/example-record-types-in-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img631)

[![](images/process_insights/example-record-types-in-process.png)](#_)

As you configure your process, you must select record fields from these record types to include in your process.

Once these record fields are included in a process, they are known as [_attributes_](key-pi-terms.html#attributes). An attribute is a characteristic of a case or event that provides additional context for the process, such as the cost of an event, the user who performed the event, or the location of a related customer. For example, a Financial Customer Onboarding app, the customer's region might be a helpful attribute, so you can determine whether there are differences in how long a process takes for each region.

To help us better categorize data, analyze the process, and provide you with insights from it, you will need to [map record fields to the attribute names and attribute types](#map-attributes) they'll use in the process.

## Before you begin

Before you begin adding processes, make sure that:

-   [You have access to all record types needed for your process.](configure-security.html#assign-data-stewards-to-record-types)
-   [Your record data is prepped for process insights.](prepare-data.html)

## Add a process

To add a process for analysis:

1.  Go to the [**Process Insights** page](process-insights-page.html) in your production environment.

2.  In the header pane, click **ADD PROCESS**. The **Add Process** dialog displays.

    The first step, **Select a Case Record Type**, is active by default. The list displayed in this step includes all synced record types to which you have [permissions](configure-security.html#assign-data-stewards-to-record-types) in process insights.

    [![images/process-insights-select-case-record-type-scr.png](images/process-insights-select-case-record-type-scr.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img632)

    [![](images/process-insights-select-case-record-type-scr.png)](#_)

3.  Select the record type that represents the core aspect of the business process you want to analyze.

    For example, in a Financial Customer Onboarding app, you might want to track the process of evaluating an application for a customer account. To represent this process, you'd select the Accounts record type that stores information about the application.

    Record types with [record events](record-events.html) configured are shown by default, but you can deselect the **Configured** filter, search for, and choose any record type you have permission to.

    ![](images/process-insights-clear-filters.png)

4.  Click **NEXT**. The **Select an Event History Record Type** step displays.

    The list displayed in this step includes all record types to which the case record type has a one-to-many relationship.

    [![images/process-insights-select-event-history.png](images/process-insights-select-event-history.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img633)

    [![](images/process-insights-select-event-history.png)](#_)

5.  Select the record type that stores the event history for the case record type you selected.

    -   If [record events](record-events.html) are configured for your case record type, the event history record type related to your case record type will be suggested here for you to select.
    -   If record events are _not_ configured for your case record type, select a record type to associate with your case record type.

6.  Click **NEXT**. The **Configure Case Data** step displays.

7.  [Configure your process data](#configure-process-data).

    [![ configure case data page showing selected fields and a preview of process data](images/process_insights/process-insights-configure-case-data-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img634)

    [![](images/process_insights/process-insights-configure-case-data-25_2.png)](#_)

8.  Click **NEXT**. The **Configure Process Properties** step displays.

    [![images/process-insights-configure-process-properties.png](images/process-insights-configure-process-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img635)

    [![](images/process-insights-configure-process-properties.png)](#_)

9.  [Configure process properties](#configure-process-properties).

10.  [Schedule process updates](#schedule-process-updates).

11.  [Configure process security](#configure-process-security).

12.  Click **ADD PROCESS**.

You're all done! It may take a few minutes to complete the initial analysis of your process.

### Configure process data

Configuring your process data consists of selecting record fields to use as attributes and mapping those fields to the appropriate attribute names and types.

You can configure process data while both adding and editing a process. Initially, you'll configure process data when you [add a process](#add-a-process). You can later [edit a process](#edit-a-process) as needed to reconfigure process data and improve the clarity of the analytical results based on business user feedback.

[![ configure case data page showing selected fields and a preview of process data](images/process_insights/process-insights-configure-case-data-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img636)

[![](images/process_insights/process-insights-configure-case-data-25_2.png)](#_)

To configure process data:

1.  Start [adding](#add-a-process) or [editing](#edit-a-process) a process. The **Configure Case Data** step displays.

    This step lists fields from the case record type you selected and its related record types, and provides a sample of the data contained in those fields.

2.  Select the fields to analyze as case attributes.

    **Note:**  The **Case ID** field is required and cannot be deselected.

3.  (Optional) Apply filters to refine the data in your process. For example, you might want to [hide unneeded or sensitive data](common-preparations.html#hide-sensitive-data-with-a-process-filter).
    1.  Click **FILTER DATA**. The **Filter Data** dialog displays.
    2.  Click **Add Filter**.
    3.  Use the **Field**, **Operator**, and **Value** fields to specify your filter criteria.
    4.  Click **ADD** to save and apply all filters to your case data.

4.  (Optional) Add [custom attributes](process-custom-attributes.html) to enhance or secure data for use in analysis. For example, you can add custom attributes to:
    -   [Hide sensitive data](common-preparations.html#hide-sensitive-data).
    -   [Group the difference between two dates](common-preparations.html#group-the-difference-between-two-dates).
    -   [Use data from a one-to-many relationship](common-preparations.html#use-data-from-a-one-to-many-relationship).
    -   [Standardize field values](process-custom-attributes.html#find-and-replace).

5.  Click [**MAP ATTRIBUTES**](#map-attributes) to edit field names, edit field descriptions, and review or change what each field is mapped to.

    **Tip:**  You can edit fields individually using the menu beside each field or in bulk using **MAP ATTRIBUTES**.

6.  Click **NEXT**. The **Configure Event Data** step displays.

    This step lists fields from the event history record type you selected and its related record types, and provides a sample of the data contained in those fields.

    [![ configure event data page showing selected fields and a preview of process data](images/process_insights/process-insights-configure-event-data-25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img637)

    [![](images/process_insights/process-insights-configure-event-data-25_2.png)](#_)

7.  Select the fields to analyze as event attributes.

8.  (Optional) Apply filters to refine the data in your process. For example, you might want to [remove ad hoc events](record-events.html#decide-whether-to-track-ad-hoc-events) or [hide sensitive data](common-preparations.html#hide-sensitive-data-with-a-process-filter).
    1.  Click **FILTER DATA**. The **Filter Data** dialog displays.
    2.  Click **Add Filter**.
    3.  Use the **Field**, **Operator**, and **Value** fields to specify your filter criteria.
    4.  Click **ADD** to save and apply all filters to your event data.

9.  (Optional) Add [custom attributes](process-custom-attributes.html) to enhance or secure data for use in analysis. For example, you can add custom attributes to:
    -   [Hide sensitive data](common-preparations.html#hide-sensitive-data).
    -   [Group the difference between two dates](common-preparations.html#group-the-difference-between-two-dates).
    -   [Use data from a one-to-many relationship](common-preparations.html#use-data-from-a-one-to-many-relationship).
    -   [Standardize activities or event types](common-preparations.html#standardize-activities-\(event-types\)).

10.  Click [**MAP ATTRIBUTES**](#map-attributes) to edit field names, edit field descriptions, and review or change what each field is mapped to.

11.  Finish [adding](#add-a-process) or [editing](#edit-a-process) the process.

#### Map attributes

We automatically map fields for you based on the type for each field used in the record type, but you should always review our default mappings to make sure that each field is associated with the correct attribute type.

[![images/process-insights-map-attributes_24-4.png](images/process-insights-map-attributes_24-4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img638)

[![](images/process-insights-map-attributes_24-4.png)](#_)

Fields can be mapped to and described as the following:

|
Mapping

 |

Location

 |

Required

 |

Description

 |
| --- | --- | --- | --- |
|

**Required fields to map to attribute names**

 |
|

Case ID

 |

Event history data

 |

Required

 |

The identifier for the [specific occurrence of the business process](key-pi-terms.html#cases-activities-events).

This attribute corresponds to the `recordId` field and is automatically mapped for you.

 |
|

Activity

 |

Event history data

 |

Required

 |

The real-world action or task that occurs during the event, known as the [activity](key-pi-terms.html#cases-activities-events).

If you're mapping fields from a generated Event History record type, select the `name` field from the related Event Type Lookup record type. If you added a custom attribute to standardize activity names, select the new custom attribute.

 |
|

Start Timestamp

 |

Event history data

 |

Optional

 |

The timestamp when the event started. Process HQ uses this timestamp to determine the order in which activities appear in your process.

Certain data sources might provide a timestamp with date information but no time information; for example, `"2022-05-25 00:00:00"`. If events from such sources occur on the same date, Process HQ identifies another field to sort those events; for example, the primary key for the event in the event history record type.

 |
|

End Timestamp

 |

Event history data

 |

Required

 |

The timestamp when the event ended.

 |
|

**Optional fields to map to attribute names**

 |
|

Event User

 |

Event history data

 |

Optional

 |

Provides additional context about the users relevant to the event. You can map only one field to this attribute name per process.

 |
|

Automation Type

 |

Event history data

 |

Optional

 |

Provides additional context about the type of automation that executed the event. You can map only one field to this attribute name per process.

 |
|

**Optional fields to map to attribute types**

 |
|

Categorical attribute

 |

Both case and event history data

 |

Optional

 |

Attributes that can be used as categories for analyzing process data, such as "responsible department" or "office location". Categorical attributes can be used as characteristics when [drilling down to insights](investigate.html).

 |
|

Descriptive attribute

 |

Both case and event history data

 |

Optional

 |

Attributes that represent qualitative rather than quantitative data, such as fields for "description" or "notes". These attributes aren't analyzed.

 |
|

Numeric attribute

 |

Both case and event history data

 |

Optional

 |

Attributes that represent quantitative numeric data, like "total payment amount" or "total order items".

 |

### Configure process properties

When [adding](add-process.html#add-a-process) or [editing](#edit-a-process) a process, data stewards can configure the following process properties:

|
Property

 |

Action

 |
| --- | --- |
| **Name** | Enter a name for the process. This name must be unique in the environment. |
| **Description** | Enter a brief description of the process. |
| **Update Options** | [Schedule process updates](#schedule-process-updates). |

[![images/process-insights-process-props.png](images/process-insights-process-props.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img639)

[![](images/process-insights-process-props.png)](#_)

### Schedule process updates

To automatically keep your process data up-to-date, schedule updates from the case and event history record types for a time that best fits your organization's needs. You can also turn off the process update if you want to preserve a historical snapshot of data for a specific analysis of the process.

Scheduling process updates also allows you to enable alerts for [duration KPIs](process-custom-kpis.html#define-the-duration-kpi) and [count KPIs](process-custom-kpis.html#define-the-count-kpi), so users can [subscribe to email alerts](process-custom-kpis.html#subscribe-to-a-kpi) for those KPIs.

Data stewards can schedule process updates when [adding](#add-a-process) or [editing](#edit-a-process) a process.

To schedule process updates:

1.  Ensure the **Schedule process data updates** toggle is toggled on.
2.  In the **Every** field, select a frequency for the updates.
3.  In the **At** fields, select a time and timezone for the updates. By default, process data updates on the first day of the month at 3 AM GMT.

    **Note:**  Process updates may take some time, depending on the amount of process data involved. While the process is updating, you will not be able to [edit the process](#edit-a-process), and your business users may not be able to [access process views](process-views.html). To ensure that business users can access a process when they need it, we recommend scheduling updates during non-peak working hours.

[![images/process-insights-schedule-update.png](images/process-insights-schedule-update.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img640)

[![](images/process-insights-schedule-update.png)](#_)

### Configure process security

When [adding](add-process.html#add-a-process) or [editing](#edit-a-process) a process, data stewards can give users permission to access the process.

At least one user or group must be assigned **Analyst** permissions for each process. By default, **Analyst** permissions are assigned to the data steward who [added the process](add-process.html).

To assign permissions for a process:

1.  Click **Add User or Group**. A new row displays, with **Viewer** permissions selected by default.
2.  In the new row, enter the name of a user or group, then select the user or group from the dropdown list.
3.  Select a [permission level](configure-security.html#grant-access-to-processes) from the dropdown list next to the user or group.

To modify permissions for an existing user or group, select a new permission level from the dropdown list next to the user or group.

To remove permissions from an existing user or group, click the next to the row.

[![images/process-insights-process-security.png](images/process-insights-process-security.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img641)

[![](images/process-insights-process-security.png)](#_)

### Process analysis and cleanup

Once you add a new process (and any time the process updates), Process HQ analyzes your data, excludes records that contain null values in required fields, and identifies unique field values that may impact performance. It may take a few minutes to complete the initial analysis of your process.

If a field has too many unique values, Process HQ automatically [re-maps](#map-attributes) it to a descriptive attribute, which will not be analyzed. Process HQ automatically re-maps the following:

-   Event user attributes with more than 10,000 unique values.
-   Event attributes with more than 5,000 unique values.
-   Any categorical attributes with more than 5,000 unique values.

If the **Activity** field has more than 50 unique values, process creation fails. You will need to reduce the number of unique values in this field and try again.

## Edit a process

Once you've added and configured your process, you can edit the attributes included in the process, process properties, process update schedule, and process security. You cannot edit which record types are included in the process.

**Note:**  Only data stewards can perform the steps below. However, analysts can [rename the attributes of a process](#rename-attributes) to provide clear and meaningful names for business users.

To edit a process:

1.  Open the edit menu in either of the following ways:
    -   In the **PROCESSES** list, click the more menu for the process.
    -   In a process, click **PROCESS** in the header pane.
        ![process-insights-edit-process.png](images/process-insights-edit-process.png)
2.  Edit the case or event data:

    1.  In the menu, click **Edit Process**.
    2.  [Configure your process data](#configure-process-data).
    3.  Click **SAVE**.

3.  Edit process properties:
    1.  In the menu, click **Edit Properties**.
    2.  [Configure process properties](#configure-process-properties).
    3.  [Schedule process updates](#schedule-process-updates).
    4.  Click **SAVE**.

4.  Edit the process security:
    1.  In the menu, click **Configure Security**.
    2.  [Configure process security](#configure-process-security).
    3.  Click **SAVE**.

## Rename attributes

Users with Analyst permissions can rename attributes to ensure the names are clear and meaningful for business users.

To rename an attribute:

1.  In a [process view](process-views.html), click **PROCESS** in the header pane.
2.  Click **Rename Attributes**. The **Rename Attributes** dialog displays.
3.  In the **Attribute Names** column, enter a new attribute name.
4.  Click **SAVE**.

[![images/process-insights-rename-attributes.png](images/process-insights-rename-attributes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img642)

[![](images/process-insights-rename-attributes.png)](#_)

## Manually update a process

In addition to [scheduled process updates](#schedule-process-updates), you can also manually trigger process data updates from the **PROCESSES** list or in a process.

To update process data from the **PROCESSES** list:

1.  In the row for your process, click the more menu.
2.  Click **Update Process Data**.

To update process data in a process view:

1.  Click the **PROCESS** menu in the header pane.
2.  Click **Update Process Data**.

**Note:**  Your users may not be able to edit or a view a process while the process data is updating.

## Delete a process

Deleting a process deletes the data used for analysis, as well as any [custom attributes](process-custom-attributes.html), [views](process-views.html), [KPIs](process-custom-kpis.html), and [insights](investigate.html) associated with the process. It does not delete data in the source record types.

To delete a process:

1.  Open the edit menu in either of the following ways:
    -   In the **PROCESSES** list, click the menu for the process.
    -   In a process, click **PROCESS** in the header pane.
2.  Click **Delete Process**.
3.  Click **DELETE** to confirm.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...