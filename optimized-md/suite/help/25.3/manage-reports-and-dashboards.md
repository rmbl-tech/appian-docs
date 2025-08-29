---
source_url: https://docs.appian.com/suite/help/25.3/manage-reports-and-dashboards.html
original_path: manage-reports-and-dashboards.html
version: "25.3"
title: "Manage Reports and Dashboards"
page_id: "manage-reports-and-dashboards"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Reports and Dashboards

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [business users](processhq.html#-business-users). It describes how to create and manage reports and dashboards in data fabric insights.

## Overview

In data fabric insights, business users can directly create reports, add them to custom dashboards, and maintain or update those reports and dashboards as needed.

## Create a report

[Report creators](secure-records-for-reporting.html#add-users-as-report-creators) can create reports using the datasets available to them. Datasets are available based on the [configuration](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets) of the record types included in the dataset.

To create a report:

1.  Go to the [**Home** page](process-hq-landing-page.html), and click **CREATE REPORT** in the header.

    **Tip:**  You can also go to the [**Data Catalog** page](data-catalog-page.html) to get started.

2.  Decide how you want to start:

    -   If you're less familiar with the data, [start with a guided experience](#start-with-the-guided-experience)

    -   If you're already familiar with the data, [start from a dataset](#start-from-a-dataset).

3.  [Design, filter, and sort the report data](#design-filter-and-sort-report-data).

4.  (Optional) [Add interactive elements](#add-interactive-elements) to the report.

5.  Click **SAVE**.

6.  (Optional) [Share the report](#share-a-report-or-dashboard) with your colleagues.

7.  (Optional) [Add the report to a dashboard](#add-a-report-or-process-to-a-dashboard).

**Tip:**  Once you've created the report, you can partner with [AI Copilot](allow-users-to-build-reports.html#ai-copilot-for-reports) to discover new insights about the report.

### Start with the guided experience

If you're exploring less familiar data, you can take advantage of a guided experience as follows:

1.  Go to the **GUIDED EXPERIENCE** tab.

2.  Pick and format report data using autocomplete suggestions. As you select different options, you'll see a real-time preview of the report.

    [![images/dfi-guided-experience.gif](images/dfi-guided-experience.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img769)

    [![](images/dfi-guided-experience.gif)](#_)

3.  When you're ready, click **CREATE REPORT**.

### Start from a dataset

The **DATASETS** tab displays by default. This tab lists the [datasets](allow-users-to-build-reports.html#datasets) available to you.

On this tab:

1.  Find the dataset you want to use:
    -   Enter the name or description of the dataset in the search box.
    -   Select filters in the toolbar:
        -   **Source Type**: Filter by the type of data source: database, Salesforce, or web service.
        -   **Source Name**: Filter by the name of the data source.
2.  Click the dataset you want to use:

    [![images/create-report-dataset.gif](images/create-report-dataset.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img770)

    [![](images/create-report-dataset.gif)](#_)

### Design, filter, and sort report data

**Tip:**  If you started your report using the guided experience, you won't need to design your report from scratch, but we recommend that you review and refine the suggestions you selected at this point.

You can choose whether the fields in the report display in a grid, chart, or KPI. You can also dataset filters to determine which data is visible in the report. Then, you can aggregate, sort, and format the data to best fit your business needs.

For example, you can quickly build a stacked bar chart with multiple data points, and add a color scheme.

[![images/report-builder-25_2.gif](images/report-builder-25_2.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img771)

[![](images/report-builder-25_2.gif)](#_)

### Add interactive elements

Every chart in a custom report is interactive. By default, you can click on sections of the chart to quickly filter the report data.

[![images/interactive-report-chart.gif](images/interactive-report-chart.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img772)

[![](images/interactive-report-chart.gif)](#_)

You can also add more design elements that let report viewers interact with the data and take action from the context of the report.

These design elements include:

[![images/report_designElements_25_2.png](images/report_designElements_25_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img773)

[![](images/report_designElements_25_2.png)](#_)

|
#

 |

Design Element

 |

Description

 |
| --- | --- | --- |
|

1

 |

Quick Filters

 |

Display interactive filters on a report so report viewers can filter the data to best fit their needs.

[User filters](filter-the-record-list.html#user-filters) configured on the record type are not available in reports in Process HQ.

 |
|

2

 |

Actions

 |

Display [record actions](prepare-data-for-reports.html#record-actions) from the base record type in a grid header.

 |
|

3

 |

Link to Row Details

 |

Displays a link to the record’s [summary view](prepare-data-for-reports.html#summary-view) in a grid. This option will only provide links to records in the base record type; it cannot provide links to related records.

The summary view page is determined by the default start page configured in the [Admin Console.](Appian_Administration_Console.html)

 |
|

4

 |

Show Export or Download Button

 |

Depending on the selected design:

-   Displays an export to Excel button on a grid design. The data will download as a `.xlsx` file.
-   Displays an image download button on a chart design. The image will download as a `PNG` file.

 |

## Create a dashboard

[Report creators](secure-records-for-reporting.html#add-users-as-report-creators) can create dashboards using the reports available to them. Available reports include reports you've [created](#create-a-report) and those your colleagues have [shared with you](#share-a-report-or-dashboard).

To create a dashboard:

1.  Go to the [**Home** page](process-hq-landing-page.html).
2.  Click **CREATE DASHBOARD** in the header. Process HQ creates the dashboard with the default name, **My Dashboard**.
3.  (Optional) Rename the dashboard and add a description:
    1.  Click the pencil icon next to the dashboard name.
    2.  Edit the **Name** field.
    3.  Enter a brief description in the **Description** field.
    4.  Click **UPDATE**.
4.  [Add reports and processes to the dashboard](#add-a-report-or-process-to-a-dashboard).
5.  Save the dashboard by clicking **SAVE** in the header.
6.  (Optional) [Share the dashboard](#share-a-report-or-dashboard) with your colleagues.

## Add a report or process to a dashboard

To add a report or process to a dashboard:

1.  [Create a dashboard](#create-a-dashboard), or view an existing a dashboard and click **EDIT DASHBOARD** in the header.
2.  Drag a report you want to add from the **REPORTS** tab or drag a process KPI from the **PROCESSES** tab, and drop it onto the dashboard.
3.  Continue designing the dashboard:
    -   To replace a report or process KPI already present in the dashboard, drag a new report or KPI and drop it over the report or KPI you want to replace.
    -   To add rows or columns to the dashboard, drag a report or process KPI next to an existing report or KPI until the insertion bar appears, then drop it on the bar.
    -   To rearrange the layout of the dashboard, drag and drop reports and KPIs using the insertion bar.
4.  Click **SAVE** in the header.
5.  (Optional) [Share the dashboard](#share-a-report-or-dashboard) with your colleagues.

## Edit report or dashboard properties

You can only edit a report or dashboard if you are the creator or if the creator has [assigned you editor permissions](#share-a-report-or-dashboard).

To edit the properties of a report or dashboard:

1.  Go to the **LIBRARY** section of the **Home** page.
2.  Next to the report or dashboard, click the three-dot menu .
3.  Click **Edit Properties**.
4.  In the **Edit Properties** dialog:
    -   For **Name**, enter a name for the report or dashboard.
    -   For **Description**, enter a brief description of the report or dashboard.
5.  Click **SAVE**.

## Duplicate a report

You can only duplicate a report if you are the report creator or if the report creator has assigned you editor permissions.

To duplicate a report:

1.  Go to the **LIBRARY** section of the **Home** page.
2.  Next to the report, click the three-dot menu , then **Duplicate**.
3.  In the **Duplicate** dialog:
    -   For **Name**, enter a name for the report.
    -   For **Description**, enter a brief description of the report.
4.  Click **CREATE**.

When you duplicate a report, the new report will only be available to you. You must [share the new report](#share-a-report-or-dashboard) to allow other users to view it.

## Share a report or dashboard

By default, a report or dashboard is only available to the user who created it, but you can share reports and dashboards with other users to allow your them to view or edit them.

The users you share your reports and dashboards with must be members of the [**Data Fabric Report Creators**](System_Groups.html#data-fabric-report-creators) system group and have permissions for the [underlying datasets](allow-users-to-build-reports.html#datasets).

To share a report or dashboard:

1.  Click **SHARE** in the header of the report or dashboard. The **Share** dialog displays.

    For example:

    [![images/dfi-share-dashboard-with-user.png](images/dfi-share-dashboard-with-user.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img774)

    [![](images/dfi-share-dashboard-with-user.png)](#_)

    **Tip:**  You can also share a report or dashboard from the **LIBRARY** section of the **Home** page. Simply click the three-dot menu for the report or dashboard, then click **Share**.

2.  Share with all Process HQ users by clicking the **Allow all Process HQ Users to view** toggle.
3.  Share only with [individual users](User_Management.html):
    1.  In the **Add User** field, search for a user to add.
    2.  Use the dropdown list to set the permission level for the user:
        -   **Viewer**: Can view the report or dashboard.
        -   **Editor**: Can make all the same changes to the shared report or dashboard as the creator.
    3.  Click **ADD**. The **Users with Access** section updates to reflect the added user.
4.  Click **SAVE**.

## Favorite a report or dashboard

You can favorite any report or dashboard for quick access. The reports and dashboards you add as favorites display in the **FAVORITES** tab of the **LIBRARY** section of the [**Home** page](process-hq-landing-page.html).

To favorite a report or dashboard:

1.  Go to the **LIBRARY** section of the **Home** page. The **All** tab is active by default.
2.  In the library list, click the **Add to Favorites** icon for the report or dashboard you want to favorite.

    For example:

    [![LIBRARY list with the favorite star highlighted for three entries](images/dfi-favorite-selection.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img775)

    [![](images/dfi-favorite-selection.png)](#_)

**Tip:**  You can also click the **Add to Favorites** icon for any report or dashboard in the **RECENTLY OPENED** section of the **Home** page, or next to the name of any open report or dashboard.

## Delete a report or dashboard

You can only delete a report or dashboard if you are the creator or if the creator has assigned you editor permissions.

To delete a report or dashboard:

1.  Go to the **LIBRARY** section of the **Home** page.
2.  Next to the report or dashboard, click the three-dot menu , then **Delete**.
3.  In the **Delete** dialog, click **DELETE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...