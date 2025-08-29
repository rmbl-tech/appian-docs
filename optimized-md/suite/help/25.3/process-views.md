---
source_url: https://docs.appian.com/suite/help/25.3/process-views.html
original_path: process-views.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Process Views

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to manage process views in process insights.

## Overview

A process view is a subset of cases that is defined by a set of filters. By default, the system-provided **All Cases** view is available for all processes. You can create custom views to focus on specific types of cases.

Creating a view helps you [explore](explore.html) how similar cases or parts of processes are performing. A view represents a meaningful segment of your cases that you want to focus your exploration on. For example, in a Financial Customer Onboarding process, you may want to create a view of cases involving corporate accounts only.

[![diagram of three views filtered on account type](images/process_insights/process-view-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img750)

[![](images/process_insights/process-view-diagram.png)](#_)

Each view includes key metrics and charts, in addition to the process diagram for the cases represented in the view. Learn more about the [elements of a process view](process-view-page.html).

Once you've familiarized yourself with the data in a process view, you can start [drilling down](investigate.html) on specific activities, sequences, or attributes that might be slowing the process down.

**Tip:**  By default, a view shows you process data without date restrictions. To set a specific date range for the data, [use the **Time Period** option](explore.html#set-the-time-period).

## View permissions

You can manage views based on [process permissions](configure-security.html#grant-access-to-processes) and whether the view is the system-provided **All Cases** view or is created by users, as summarized in the table below.

|
Task

 |

All Cases View

 |

User-created Views

 |
| --- | --- | --- |
|

[Access a view](#access-a-view)

 |

🅐 Ⓥ

 |

🅐 Ⓥ

 |
|

Access view filters

 |

–

 |

🅐

 |
|

[Create a view](#create-a-view)

 |

🅐

 |

🅐

 |
|

[Pin or unpin a view](#pin-or-unpin-a-view)

 |

🅐

 |

🅐

 |
|

[Pin or unpin a view](#pin-or-unpin-a-view)

 |

🅐

 |

🅐

 |
|

[Rename a view](#rename-a-view)

 |

🅐

 |

🅐

 |
|

[Edit view filters](#edit-view-filters)

 |

🅐

 |

🅐

 |
|

[Define the expected activity order](#define-the-expected-activity-order)

 |

🅐

 |

🅐

 |
|

[Define activity costs](#define-activity-costs)

 |

🅐

 |

🅐

 |
|

[Delete a view](#delete-a-view)

 |

🅐

 |

🅐

 |
|

[Drill down to insights](investigate.html#start-with-a-kpi)

 |

🅐 (Average Case Duration KPI only)

 |

🅐 (Count or Duration KPIs only)

 |

Legend: 🅐 = Process Analyst; Ⓥ = Process Viewer

## When to create a view

When you decide to create a view, keep in mind that you can compare data for cases within a view, but not between views.

|
DO create a view based on...

 |

DON'T create a view based on...

 |
| --- | --- |
|

-   **Case status**. For example, creating a view that focuses on closed cases means you'll be reviewing a historical analysis of complete flows, rather than partial, in-progress flows.

-   **Intended flow**. Depending on how your data is stored, a single process data might track intentionally different flows. For example, in a process that tracks sales deals, closing a software deal might have different steps than closing a training deal. You wouldn't gather meaningful insights by comparing software deals to training deals. Instead, explore the different flows as different views.

-   **Part of a process**. You might want to create a view based on a specific phase or part of a process. For example, in a process that includes activities that must be completed by external partners, you may want to focus on only the activities that your organization controls.

 |

-   **A single region**. Performance for a specific region is typically only meaningful in comparison to other regions. Instead of creating views for each region, explore performance across different values of a region attribute within a single view.

-   **A single attribute, sequence, or activity you've got a hunch about**. Instead, explore the attribute or activity in an existing view, then create a KPI to validate your hunch. Narrowing your focus down too quickly can limit the insights you might uncover.

 |

## Create a view

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to create a view.

To create a view:

1.  Go to the [process page](process-page.html).

2.  In the header of the **PINNED VIEWS** section, click **CREATE VIEW**.

    The **CREATE VIEW** dialog displays, with the **Start Your View** step active.

    [![Start Your View step in the Create View workflow](images/process_insights/create-view-start-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img751)

    [![](images/process_insights/create-view-start-view.png)](#_)

3.  Continue as appropriate:

    -   By default, the **Browse Suggested Views** option is selected, and a list of suggested views displays. The suggested views are generated per process, rather than per user, so all users will see the same suggested views. To start with a suggested view, select the view that looks most relevant to you, and proceed through the steps. You can edit all of the details in a suggested view.

        **Tip:**  Suggested views are available in [select regions](security-compliance.html#ai-copilot-regional-availability).

    -   To start from an existing view, select **Start From Existing View**, then select the view you want to use as the basis for the new view.
    -   To start from scratch, select **Start From Scratch**.

4.  Click **NEXT**. The **Filters** step displays.

    [![Filters step in the Create View workflow](images/process_insights/create-view-filters-step.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img752)

    [![](images/process_insights/create-view-filters-step.png)](#_)

    If you started with a suggested or existing view, the **Filters** section displays the suggested or existing filters. If you started from scratch, the section is empty.

5.  Click **ADD FILTER**.

    [![Add Filter highlighted on the Filters step in the Create View workflow](images/process_insights/create-view-add-filter.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img753)

    [![](images/process_insights/create-view-add-filter.png)](#_)

    The filter properties section displays.

    For example:

    [![Filter properties pane highlighted on the Filters step in the Create View workflow](images/process_insights/filter-properties-pane.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img754)

    [![](images/process_insights/filter-properties-pane.png)](#_)

6.  Configure the filter properties, as described in the following table. You can filter on cases with a specific [attribute](key-pi-terms.html#attributes), [activity](key-pi-terms.html#cases-activities-events), [sequence](key-pi-terms.html#sequences), or [duration](key-pi-terms.html#duration).

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

    -   **Equals**: Cases in the view must have the selected attribute value(s).
    -   **Does not equal**: Cases in the view cannot have the selected attribute value(s).

     |
    |

    **Attribute Value**

     |

    Select any values for the attribute you want to filter on.

     |
    |

    For example, if you select `Country` as **Attribute**, `Equals` as **Operator**, and `Spain` and `Italy` as **Attribute Value**, the view would include only cases from Spain or Italy.

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

    -   **Includes all**: Cases in the view must include all of the selected activities.
    -   **Does not include any**: Cases in the view cannot include any of the selected activities.
    -   **Starts with any**: Cases in the view can start with any of the selected activities.
    -   **Does not start with any**: Cases in the view cannot start with any of the selected activities.
    -   **Ends with any**: Cases in the view can end with any of the selected activities.
    -   **Does not end with any**: Cases in the view cannot end with any of the selected activities.

     |
    |

    **Activities**

     |

    Select the activities you want to filter on.

     |
    |

    For example, if you select `Includes all` as **Operator** and `KYC Review` and `Financial Review` as **Activities**, the view would include only cases that include both the KYC Review and Financial Review activities.

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

    -   **Direct**: In the sequence, the end activity immediately follows the start activity. The view will filter cases with direct sequences only. For example, Action A to Action C.
    -   **Indirect**: In the sequence, the end activity follows the start activity but other activities can occur between them. The view will filter cases with both direct (Action A to Action C) and indirect (Action A to Action B to Action C) versions of the sequence.

     |
    |

    **Operator**

     |

    Select the appropriate operator:

    -   **Includes**: Cases in the view must include the specified sequence.
    -   **Does not include**: Cases in the view cannot include the specified sequence.

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

    For example, if you select `Direct` as **Sequence Type**, `Includes` as **Operator**, `KYC Review` as **Start Activity**, and `Financial Review` as **End Activity**, the view would filter only cases that include the KYC Review to Financial Review sequence.

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

    -   **Is longer than**: Cases in the view must be longer than the specified duration.
    -   **Is shorter than**: Cases in the view must be shorter than the specified duration.
    -   **Is longer than or equal to**: Cases in the view must be longer than or equal to the specified duration.
    -   **Is shorter than or equal to**: Cases in the view must be shorter than or equal to the specified duration.

     |
    |

    **Duration**

     |

    Enter the duration to filter on. This value can only be an integer. For example, enter `3`, if you want to filter on cases longer than three days.

     |
    |

    **Unit**

     |

    Select the unit of time for the selected duration. **Days** is selected by default.

     |
    |

    For example, if you select `Is longer than` as **Operator**, `3` as **Duration**, and `Days` as **Unit**, the view would filter only cases that take longer than 3 days to complete.

     |

7.  Review the metrics and process diagram in the **View Preview** section, which update automatically as you make changes to the view configuration. You can also view a list of the cases that will be included in the view by clicking **Case List**.

8.  Continue as appropriate:

    -   Click **SAVE FILTER** to save this filter and display the filters list.
    -   Click **SAVE AND ADD ANOTHER** to save this filter and refresh the filter options, so you can add another filter.
    -   Click **REMOVE** to cancel adding the filter.

    **Tip:**  In the filters list, you can edit or remove any filter by clicking the three-dot menu for the filter in the list, then selecting the relevant option.

9.  Click **NEXT**. The **Properties** step displays.

    [![Properties step in the Create View workflow](images/process_insights/create-view-name-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img755)

    [![](images/process_insights/create-view-name-view.png)](#_)

10.  For **View Name**, enter a name. View names must be unique.

11.  For **Description**, enter a brief description.

12.  (Optional) To [pin the view](#pin-or-unpin-a-view) to the process page, select **Pin view**.

13.  Click **CREATE**. Process HQ creates and displays the new [view page](process-view-page.html).

## Access a view

To access a pinned view:

1.  Go to the [process page](process-page.html).
2.  In the **PINNED VIEWS** section, click the name of the view you want to access. The [view page](process-view-page.html) displays.

To access an unpinned view:

1.  In the [process page](process-page.html), go to the **All Views** tab. This tab contains a list of all views associated with the current process.

    For example:

    [![All Views tab of a process page listing four views including the All Cases view](images/process_insights/process-page-all-views-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img756)

    [![](images/process_insights/process-page-all-views-tab.png)](#_)

2.  (Optional) Search by view name.
3.  In the view list, click the name of the view. The [view page](process-view-page.html) displays.

## Pin or unpin a view

Pinnning a view to your process page allows you to access frequently-used views, so you can return to evaluating your process data even faster.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to pin or unpin a view. You cannot unpin the system-provided **All Cases** view.

To pin or unpin a view:

1.  In the [process page](process-page.html), go to the **All Views** tab.
2.  (Optional) Search by the view name.
3.  Click the three-dot menu in the view listing.
4.  Continue as appropriate:

    -   Select **Pin View** to add the view to the **PINNED VIEWS** section.

        **Tip:**  You can also access this option using the settings icon in the [view page](process-view-page.html).

    -   Select **Unpin View** to remove the view from the **PINNED VIEWS** section.

        **Tip:**  You can also access this option using the three-dot menu for a view in the **PINNED VIEWS** section of the process page or using the settings icon in the view page.

## Rename a view

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to rename a view associated with that process. You cannot rename the system-provided **All Cases** view.

To rename a view:

1.  [Access the view](#access-a-view).
2.  In the header pane, click the settings icon .
3.  Select **Rename View** from the dropdown list.

    **Tip:**  This option is also available in the three-dot menu for a view in either the **PINNED VIEWS** section or **All Views** tab of the process page.

    The **Rename View** dialog displays.

    [![Rename View dialog](images/process_insights/rename-view-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img757)

    [![](images/process_insights/rename-view-dialog.png)](#_)

4.  For **New Name**, enter the new name you'd like to use.

5.  Click **RENAME**.

## Edit view filters

Filters determine which cases are included in the view. You set these filters initially when [creating the view](#create-a-view). You can then edit the filters as needed.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to edit the filters for a view associated with that process. You cannot edit filters for the system-provided **All Cases** view.

To edit the filters for a view:

1.  [Access the view](#access-a-view).
2.  In the header pane, click the settings icon .
3.  Select **Edit Filters** from the dropdown list.

    **Tip:**  This option is also available in the three-dot menu for a view in either the **PINNED VIEWS** section or **All Views** tab of the process page.

    The **Edit Filters** dialog displays.

    [![Edit Filters dialog](images/process_insights/edit-view-filters-dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img758)

    [![](images/process_insights/edit-view-filters-dialog.png)](#_)

4.  Add a new filter:
    1.  Click **ADD FILTER**. The filter properties section displays.

        For example:

        [![Edit Filters dialog](images/process_insights/edit-view-filters-add.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img759)

        [![](images/process_insights/edit-view-filters-add.png)](#_)

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

        -   **Equals**: Cases in the view must have the selected attribute value(s).
        -   **Does not equal**: Cases in the view cannot have the selected attribute value(s).

         |
        |

        **Attribute Value**

         |

        Select any values for the attribute you want to filter on.

         |
        |

        For example, if you select `Country` as **Attribute**, `Equals` as **Operator**, and `Spain` and `Italy` as **Attribute Value**, the view would include only cases from Spain or Italy.

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

        -   **Includes all**: Cases in the view must include all of the selected activities.
        -   **Does not include any**: Cases in the view cannot include any of the selected activities.
        -   **Starts with any**: Cases in the view can start with any of the selected activities.
        -   **Does not start with any**: Cases in the view cannot start with any of the selected activities.
        -   **Ends with any**: Cases in the view can end with any of the selected activities.
        -   **Does not end with any**: Cases in the view cannot end with any of the selected activities.

         |
        |

        **Activities**

         |

        Select the activities you want to filter on.

         |
        |

        For example, if you select `Includes all` as **Operator** and `KYC Review` and `Financial Review` as **Activities**, the view would include only cases that include both the KYC Review and Financial Review activities.

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

        -   **Direct**: In the sequence, the end activity immediately follows the start activity. The view will filter cases with direct sequences only. For example, Action A to Action C.
        -   **Indirect**: In the sequence, the end activity follows the start activity but other activities can occur between them. The view will filter cases with both direct (Action A to Action C) and indirect (Action A to Action B to Action C) versions of the sequence.

         |
        |

        **Operator**

         |

        Select the appropriate operator:

        -   **Includes**: Cases in the view must include the specified sequence.
        -   **Does not include**: Cases in the view cannot include the specified sequence.

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

        For example, if you select `Direct` as **Sequence Type**, `Includes` as **Operator**, `KYC Review` as **Start Activity**, and `Financial Review` as **End Activity**, the view would filter only cases that include the KYC Review to Financial Review sequence.

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

        -   **Is longer than**: Cases in the view must be longer than the specified duration.
        -   **Is shorter than**: Cases in the view must be shorter than the specified duration.
        -   **Is longer than or equal to**: Cases in the view must be longer than or equal to the specified duration.
        -   **Is shorter than or equal to**: Cases in the view must be shorter than or equal to the specified duration.

         |
        |

        **Duration**

         |

        Enter the duration to filter on. This value can only be an integer. For example, enter `3`, if you want to filter on cases longer than three days.

         |
        |

        **Unit**

         |

        Select the unit of time for the selected duration. **Days** is selected by default.

         |
        |

        For example, if you select `Is longer than` as **Operator**, `3` as **Duration**, and `Days` as **Unit**, the view would filter only cases that take longer than 3 days to complete.

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

7.  Review the metrics and process diagram in the **View Preview** section, which update automatically as you make changes to the view configuration. You can also view a list of the cases that will be included in the view by clicking **Case List**.

8.  Click **SAVE**.

## Define the expected activity order

The order in which activities occur can lead to the best outcome for your process—or the worst. For example, repetitions of an activity can signal rework. To identify these undesirable business outcomes, process insights lets you define the order in which you expect activities to occur in your process. Once you've defined the right order of activities for your process, process insights can calculate [the rate at which activities in your process are conforming to your expectations](explore.html#review-conformance-and-costs).

**Note:**  You only need to define activity order once per process. You can add or change activity order within any view associated with the process, but keep in mind that any changes you make apply to all views of the process.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to define the expected activity order for that process.

To define the expected activity order for your process:

1.  [Access the view](#access-a-view).

2.  Go to the **Conformance and Costs** tab.

3.  Click the edit icon on the **Total Case Conformance** KPI.

    The **Define Expected Activity Order** dialog displays. This dialog lists each activity that occurs in cases in the current view.

    For example:

    [![Define Expected Activity Order dialog](images/process_insights/executive-dashboard-define-activity-order.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img760)

    [![](images/process_insights/executive-dashboard-define-activity-order.png)](#_)

4.  For each activity listed, select an expected sequence:

    |
    Expected Sequence

     |

    Description

     |
    | --- | --- |
    |

    Any activity can follow except for itself

     |

    Select this option if the activity should not immediately repeat. No action is needed on the **Specific Activities** list.

     |
    |

    Any activity can follow

     |

    Select this option if any activity can follow this activity. No action is needed on the **Specific Activities** list. This option is the equivalent of setting no expected order; select it if you want to return to that default behavior.

     |
    |

    No activity should follow

     |

    Select this option for the activity that represents the end of the business process. No action is needed on the **Specific Activities** list.

     |
    |

    Only specific activities should follow

     |

    Select this option to set the expected sequence order. Then, from the **Specific Activities** list, select one or more activities that can appropriately follow the activity.

     |

5.  Click **SAVE**.

**Tip:**  You can also define the expected order for an individual activity when [drilling down on conformance](investigate.html#start-with-the-conformance-rate) for that activity.

## Define activity costs

Your organization spends money each time an activity occurs in a process. Once you've estimated what each activity costs to complete, process insights can calculate the [total cost](explore.html#review-conformance-and-costs) for all activity occurrences in the current view.

**Note:**  You only need to define activity costs once per process. You can add or change costs within any view associated with the process, but keep in mind that any changes you make apply to all views of the process.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to define activity costs for that process.

To define activity costs for a process:

1.  [Access the view](#access-a-view).
2.  Go to the **Conformance and Costs** tab.
3.  Click the edit icon on the **Total Cost** KPI.

    The **Define Activity Costs** dialog displays. This dialog lists each activity that occurs in cases in the current view.

    For example:

    [![Define Activity Costs dialog](images/process_insights/executive-dashboard-define-activity-costs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img761)

    [![](images/process_insights/executive-dashboard-define-activity-costs.png)](#_)

4.  From the **Currency** dropdown, select the currency to use when displaying costs.
5.  For each activity listed, enter an estimated cost for a single occurrence of the activity. Process HQ calculates cost based on each occurrence of the activity, not on the duration of the activity.
6.  Click **SAVE**.

## Delete a view

When you delete a view, you delete the filters that define the view, as well as any KPIs and insights associated with that view.

You must have [Analyst permissions](configure-security.html#grant-access-to-processes) for a process to delete a view. You cannot delete the system-provided **All Cases** view.

To delete a view:

1.  Go to the [process page](process-page.html).
2.  Go to the **All Views** tab.
3.  (Optional) Search by view name.
4.  Click the three-dot menu in the view.
5.  Select **Delete View**.
6.  Click **DELETE VIEW** to confirm. Process HQ deletes the view and refreshes the list of views.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...