---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-modifying-reference-data-tables.html
original_path: gss-25.2.2.4/gss-modifying-reference-data-tables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Reference Data Tables

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The solution is designed to be customized to your organization's particular needs. The various interfaces in the out-of-the box solution contain values that are stored in database tables. This information is called reference data.

The types of reference data in GSS are:

-   Dropdown lists and their values.
    -   See [Modifying Dropdown Lists](gss-modifying-dropdown.html) for instructions on how to add and deactivate values in dropdown lists, and add new dropdown lists.
-   Document templates.

You can identify reference data tables by looking for tables that have `_R_` in the name, such as `AS_GSS_R_DATA`.

This page describes the structure of the reference data tables.

## Reference data table

Dropdown values for GSS are stored in the AS\_GSS\_R\_DATA table. Updating this table allows you control what dropdown values and lists display to end users moving through the award process. See [Modifying Dropdown Lists](gss-modifying-dropdown.html) for more information on how this table is used. See the following table for a description of the fields in the `AS_GSS_R_DATA` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| REF\_DATA\_ID | int(11) | Number (integer) | The primary key. |
| REF\_LABEL | varchar(255) | Text | The name that the end user will see in the dropdown list. |
| REF\_TYPE | varchar(255) | Text | What reference type the value is grouped by. For example, Evaluation Status. |
| REF\_DESCRIPTION | varchar(255) | Text | The description of the dropdown list value. For example, "the evaluation status is setting up." |
| REF\_ICON | varchar(50) | Text | The icon associated with the value. For more information, visit the [Appian icons](../Appian_Icons.html) page. |
| REF\_COLOR | varchar(50) | Text | Determines the color associated with the data. Valid values: STANDARD, POSITIVE, NEGATIVE, ACCENT, or a specific hex value. For example, #FFBF00. |
| SORT\_ORDER | int(11) | Number (integer) | Determines the order of values displayed in the dropdown. |
| IS\_ACTIVE | tinyint(1) | Boolean | Determines if the value will display, or not. Valid values: 1, 0. 1 will display the value and 0 will not display the value. |
| CREATED\_BY | varchar(255) | Text | The user who added the reference data originally. |
| CREATED\_DATETIME | timestamp | DateTime | The date and time that the reference data was originally added. |
| MODIFIED\_BY | varchar(255) | Text | The user who changed the reference data most recently. |
| MODIFIED\_DATETIME | timestamp | DateTime | The date and time that the reference data was most recently changed. |

The following example shows what the first six columns of the reference data may look like:

| REF\_DATA\_ID | LABEL | TYPE | REF\_ICON | REF\_COLOR | IS\_ACTIVE |
| --- | --- | --- | --- | --- | --- |
| 1 | Setting up | Evaluation Status | gear | #757575 | 1 |
| 2 | In progress | Evaluation Status | spinner | NULL | 1 |
| 11 | Hours | Item Duration Unit | NULL | NULL | 1 |
| 22 | Accept | Review Type | thumbs-up | ACCENT | 1 |
| 23 | Request Changes | Review Type | edit | ACCENT | 1 |
| 24 | Vendor | Document Type | NULL | NULL | 1 |
| 25 | Factor | Document Type | NULL | NULL | 1 |

## Document Template reference data table

The `AS_GSS_R_DOCUMENT_TEMPLATE` table stores the document templates needed for the Create Document from Template action. Updating this table allows you control what document templates are available for business users creating documents.

See the following table for a description of the fields in the `AS_GSS_R_DOCUMENT_TEMPLATE` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| DOCUMENT\_TEMPLATE\_ID | int(11) | Number (integer) | The primary key. |
| DOCUMENT\_NAME | varchar(255) | Text | The name of the template that will display to end users. |
| FILE\_TYPE | varchar(255) | Text | The type of document the template is. For example, DOCX or PDF. |

The following example shows what the three columns of the required document table may look like.

| DOCUMENT\_TEMPLATE\_ID | DOCUMENT\_NAME | FILE\_TYPE |
| --- | --- | --- |
| 2 | Recommendation Template | DOCX |
| 3 | Consensus Letter Template | DOCX |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...