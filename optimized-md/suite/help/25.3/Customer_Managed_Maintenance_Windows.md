---
source_url: https://docs.appian.com/suite/help/25.3/Customer_Managed_Maintenance_Windows.html
original_path: Customer_Managed_Maintenance_Windows.html
version: "25.3"
title: "Customer Managed Maintenance Windows"
page_id: "Customer_Managed_Maintenance_Windows"
section: "About your maintenance windows"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Customer Managed Maintenance Windows

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

Customer Managed Maintenance Windows allow you to view and manage when scheduled maintenance occurs in your Appian Cloud environments. From [Cloud Resources](Cloud_Insights.html) in MyAppian, you can view all scheduled maintenance windows, and even [reschedule maintenance](#how-to-reschedule-a-maintenance-window) as needed.

[![images/Customer_Managed_Maintenance_Windows/maintenance_grid.png](images/Customer_Managed_Maintenance_Windows/maintenance_grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img219)

[![](images/Customer_Managed_Maintenance_Windows/maintenance_grid.png)](#_)

## About your maintenance windows

From the **Maintenance For Your Environments** page, you can see a grid with the following information about your maintenance windows:

| Property | Description |
| --- | --- |
| **Environment** | The fully qualified domain name of your environment. |
| **Change** | The type of change being applied in the maintenance window. There are three types of changes: **New Appian Version**, **New Hotfix or Server Patches**, or **Apply Configuration**. |
| **Support Case** | A link to the support case associated with the change. This will display N/A if none are associated. |
| **Scheduled Maintenance Start** | The scheduled start time of the maintenance window. |
| **Scheduled Maintenance End** | The scheduled end time of the maintenance window. |
| **Created On** | The time the maintenance window was created or rescheduled. |
| **Created By** | Who was responsible for creating or rescheduling the maintenance window. |
| **Status** | The current state of your maintenance window. There are four possible statuses: **Scheduled**, **In Progress**, **Completed** and **Canceled**. |
| **Action** | The action that can be taken on the maintenance: **Reschedule Maintenance**. A reason is provided if no action can be taken. |

## Prerequisites

To use Customer Managed Maintenance Windows, you must:

-   Have a MyAppian account.
-   Have a support contact that can create support cases.

**Note:**  FedRAMP compliant environments cannot have their maintenance windows rescheduled.

## How to reschedule a maintenance window

To reschedule a maintenance window:

1.  In MyAppian, go to the [Health](https://forum.appian.com/suite/sites/myappian/page/health) tab.
2.  Click **CLOUD RESOURCES** > **MAINTENANCE**.
3.  Find the maintenance window that you want to reschedule, and click the **Reschedule Maintenance** link under the **Action** column.
4.  From **Reschedule Maintenance For mysite.appiancloud.com**, select a time slot to reschedule to.

    [![images/Customer_Managed_Maintenance_Windows/reschedule_action.png](images/Customer_Managed_Maintenance_Windows/reschedule_action.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img220)

    [![](images/Customer_Managed_Maintenance_Windows/reschedule_action.png)](#_)

5.  Click **RESCHEDULE MAINTENANCE**.

    **Note:**  Changes to the maintenance window will take a few minutes to reflect when returning to the grid view.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...