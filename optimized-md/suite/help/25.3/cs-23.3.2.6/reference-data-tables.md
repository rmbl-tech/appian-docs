---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/reference-data-tables.html
original_path: cs-23.3.2.6/reference-data-tables.html
version: "25.3"
title: "Reference Data Tables"
page_id: "cs-23.3.2.6/reference-data-tables"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reference Data Tables

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Appian Connected Servicing solution is designed to be customized to your organization's particular needs. The various interfaces in the out-of-the box solution contain values that are stored in database tables. This information is called reference data.

The types of reference data in Connected Servicing are:

-   Dropdown lists and their values.
    -   See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for instructions on how to add and deactivate values in dropdown lists, add new dropdown lists, and internationalize dropdown list values.
-   Tasks.
-   See [Adding a New Task Type](adding-new-task-type.html) for information on how to add a new task type.
-   Process templates.

You can identify reference data tables by looking for tables that have `_R_` in the name, such as `AS_FS_R_DATA`.

This page describes the structure of the reference data tables.

## Shared reference data table

Some dropdown values for Connected Servicing are stored in the `AS_FS_R_DATA` table. Updating this table allows you to control what dropdown values and lists that cannot be modified in the Connected FS Settings site. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for more information on how this table is used. This data in this table can be used across Connected Servicing and other financial services solutions.

See the following table for a description of the fields in the `AS_FS_R_DATA` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| R\_DATA\_ID | int(11) | Number (integer) | The primary key. |
| LABEL | varchar(255) | Text | The label code that will be [internationalization](modifying-dropdown-lists.html#internationalizing-dropdown-list-values) and shown to the end user. |
| TYPE | varchar(255) | Text | What reference type the data is grouped by. For example, `Service request status`. |
| CODE | varchar(255) | Text | The value used to reference this row in transaction tables. |
| SORT\_ORDER | int(11) | Number (integer) | The order in which the value will be displayed if order matters in the place this value is displayed. |
| IS\_ACTIVE | tinyint(1) | Boolean | Determines if the value will display, or not. Valid values: `1`, `0`. `1` will display the value and `0` will not display the value |
| ICON | varchar(255) | Text | The icon displayed with this value. |
| COLOR | varchar(255) | Text | The color of the icon displayed with this value. |
| CREATED\_BY | varchar(255) | Text | The user who added the reference data originally. |
| CREATED\_DATETIME | timestamp | DateTime | The date and time that the reference data was originally added. |
| MODIFIED\_BY | varchar(255) | Text | The user who changed the reference data most recently. |
| MODIFIED\_DATETIME | timestamp | DateTime | The date and time that the reference data was most recently changed. |

## Connected Servicing only reference table

While the shared values for all financial solutions are stored in the [shared reference data table](#shared-reference-data-table), the remaining values for Connected Servicing are stored in the `AS_SRQ_R_DATA` table. This enables you to update information that is Connected Servicing specific. See [Modifying Dropdown Lists](modifying-dropdown-lists.html) for more information.

See the following table for a description of the fields in the `AS_SRQ_R_DATA` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| R\_DATA\_ID | int(11) | Number (integer) | The primary key. |
| LABEL | varchar(255) | Text | The internationalization bundle key used to display the value. |
| TYPE | varchar(255) | Text | What reference type the value is grouped by. For example, `{{ tablerecordcap }} status`. |
| CODE | varchar(255) | Text | The value used to reference this row in transaction tables |
| SORT\_ORDER | int(11) | Number (integer) | Determines the order of values displayed in the dropdown. |
| ICON | varchar(50) | Text | The icon associated with the value. For more information, visit the [Appian icons](../Appian_Icons.html) page. |
| COLOR | varchar(50) | Text | Determines the color associated with the data. Valid values: STANDARD, POSITIVE, NEGATIVE, ACCENT, or a specific hex value. For example, `#FFBF00`. |
| IS\_ACTIVE | tinyint(1) | Boolean | Determines if the value will display, or not. Valid values: `1`, `0`. `1` will display the value and `0` will not display the value |
| CREATED\_BY | varchar(255) | Text | The user who added the reference data originally. |
| CREATED\_DATETIME | timestamp | DateTime | The date and time that the reference data was originally added. |
| MODIFIED\_BY | varchar(255) | Text | The user who changed the reference data most recently. |
| MODIFIED\_DATETIME | timestamp | DateTime | The date and time that the reference data was most recently changed. |

## Task type reference table

The `AS_TMG_R_TASK_BEHAVIOR_TYPE` table stores the behavior of all of the task types in the Connected Servicing application. Updating this table allows you to add new data types. See [Adding a new task type](adding-new-task-type.html) for more information on how to do this.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| TASK\_BEHAVIOR\_TYPE\_ID | int(11) | Number (integer) | The primary key. |
| BEHAVIOR\_TYPE\_CODE | varchar(255) | Text | The code to determine the behavior of the task. Possible values: `CHECKBOX`, `DATA_ENTRY` and `AUTOMATED`. |
| BEHAVIOR\_DISPLAY\_NAME | varchar(255) | Text | The behavior name that displays to the end user. |
| CREATED\_BY | varchar(255) | Text | The user who added the behavior originally. |
| CREATED\_DATETIME | timestamp | DateTime | The date and time that the behavior was originally added. |
| MODIFIED\_BY | varchar(255) | Text | The user who changed the behavior recently. |
| MODIFIED\_DATETIME | timestamp | DateTime | The date and time that the behavior was recently changed. |
| BEHAVIOR\_SUBTYPE\_CODE | varchar(255) | Text | The code to determine the subtype of the task behavior. |
| CONFIGURATION\_LEVEL\_CODE | varchar(255) | Text | The code to determine the configuration level of the task. Valid values: `SYSTEM`, `TEMPLATE`, `PROCESS_SETUP`, `AD_HOC`. |
| ICON | varchar(50) | Text | The icon that displays in the task list to the end user. |
| COLOR | varchar(50) | Text | The color of the icon that displays in the task list to the end user. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...