---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-charts-reports.html
original_path: rpa-9.17/manage-charts-reports.html
version: "25.3"
title: "Monitor Performance"
page_id: "rpa-9.17/manage-charts-reports"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Monitor Performance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian RPA offers visualizations of data from multiple points with a dashboard as well as detailed charts and reports. Access real-time insights into execution outcomes directly within the Operations Console and the Appian RPA console.

## Robot statuses

The Robots screen in the Operations Console provides a real-time overview of your robots' statuses. Here's what each section indicates:

-   **Running**: Indicates robots that are actively executing robotic tasks.
-   **Online**: Shows robots that are connected and are available to execute robotic tasks.
-   **Standby**: Represents robots that are awaiting further instructions or robotic tasks.
-   **Offline**: Refers to the total number of robots that are offline and not available for robotic tasks.
-   **Disabled**: The total number of robots that are manually disabled and cannot run robotic tasks.

You can search for specific robots using the search bar, filter by status using the dropdown menu, or reset any filters applied by clicking the **RESET** button.

[![images/robot-kpis.png](images/robot-kpis.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1366)

[![](images/robot-kpis.png)](#_)

## Charts

Most commonly, you'll find the **Charts** icon in the toolbar when viewing details for a specific robotic task from the **Robotic tasks** tab.

![rpa-toolbar-charts.png](images/rpa-toolbar-charts.png)

The charts on this page summarize information for all executions for that robotic task: **Total items** processed, including the number of executions, count of items with **OK** and **Warnings** as the result, and the average **Execution time**.

![rpa-rp-charts.png](images/rpa-rp-charts.png)

You'll also find the **Charts** icon in the toolbar on the **Dashboard**. These charts show accumulated data for **Processed work items**, **Accumulated execution time**, and **Execution hours**, for all robotic tasks.

![rpa-dashboard-charts.png](images/rpa-dashboard-charts.png)

## Reports

On the **Download reports** page under the **Statistics** menu, you can access reports that were generated inside the console. This page includes information on who requested the report, the task related to the report, how long it took to generate the report and when it started, and when the report expires.

When a report is in progress, it appears in the list but without an **End** or **Duration**. A report is available for download when all fields are filled:

![2228958.png](images/2228958.png)

In the **Actions** column, click **Result** ![951177.png](images/951177.png) to download the report or **Remove** ![2229162.png](images/2229162.png) to delete the report.

You can choose the availability of reports in the **Customize** menu of the **User Settings** menu.

![2228956.png](images/2228956.png)

In **Customize > Download report**, you can determine:

-   **Initial wait**: value, in seconds, that an available report should wait before being shown in the **Download reports** page. Default is 0 seconds.
-   **Available until**: value, in minutes, that a report will be available to download. Default is 60 minutes.

![rpa-download-reports.png](images/rpa-download-reports.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...