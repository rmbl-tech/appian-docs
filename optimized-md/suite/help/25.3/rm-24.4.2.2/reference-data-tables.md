---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/reference-data-tables.html
original_path: rm-24.4.2.2/reference-data-tables.html
version: "25.3"
title: "Reference Data Tables"
page_id: "rm-24.4.2.2/reference-data-tables"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Appian Requirements Management (RM) solution is designed to be customized to your organization's particular needs. The various interfaces in the out-of-the-box solution contain values that are stored in database tables. This information is called reference data.

The types of reference data in RM are:

-   Dropdown lists and their values.
    -   See [Modifying Dropdown Lists](modifying-dropdown.html) for instructions on how to add and deactivate values in dropdown lists, and add new dropdown lists.
-   Document templates.

-   Activity Address Codes (AAC) and Department of Defense Activity Address Codes (DoDAAC).

You can identify reference data tables by looking for tables that have `_R_` in the name, such as `AS_RM_R_DATA`.

This page describes the structure of the reference data tables.

## Reference data table

Dropdown values for RM are stored in the `AS_RM_R_DATA` table. Updating this table allows you to control what dropdown values and lists display to end users moving through the requirement process. See [Modifying Dropdown](modifying-dropdown.html) for more information on how this table is used.

See the following table for a description of the fields in the `AS_RM_R_DATA` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| REF\_DATA\_ID | int(11) | Number (integer) | The primary key. |
| REF\_LABEL | varchar(255) | Text | The name that the end user sees in the dropdown list. |
| REF\_TYPE | varchar(255) | Text | What reference type the value is grouped by. For example, `Requirement Status`. |
| REF\_ICON | varchar(50) | Text | The icon associated with the value. For more information, visit the [Appian icons](../Appian_Icons.html) page. |
| REF\_COLOR | varchar(50) | Text | Determines the color associated with the data. Valid values: STANDARD, POSITIVE, NEGATIVE, ACCENT, or a specific hex value. For example, `#FFBF00`. |
| SORT\_ORDER | int(11) | Number (integer) | Determines the order of values displayed in the dropdown. |
| IS\_ACTIVE | tinyint(1) | Boolean | Determines if the value is displayed, or not. Valid values: `1`, `0`. `1` display the value, and `0` does not display the value |
| CREATED\_BY | varchar(255) | Text | The user who added the reference data originally. |
| CREATED\_DATETIME | timestamp | DateTime | The date and time that the reference data was originally added. |
| MODIFIED\_BY | varchar(255) | Text | The user who changed the reference data most recently. |
| MODIFIED\_DATETIME | timestamp | DateTime | The date and time that the reference data was most recently changed. |

See below for an example of what the first six columns of the reference data may look like:

| REF\_DATA\_ID | LABEL | TYPE | REF\_ICON | REF\_COLOR | IS\_ACTIVE |
| --- | --- | --- | --- | --- | --- |
| 3 | Facilities | Requirement Category | _NULL_ | _NULL_ | 1 |
| 4 | IT Hardware | Requirement Category | _NULL_ | _NULL_ | 1 |
| 5 | IT Software | Requirement Category | _NULL_ | _NULL_ | 1 |
| 12 | Draft | Requirement Status | pencil-square-o | _NULL_ | 1 |
| 13 | Submitted | Requirement Status | sign-out | _NULL_ | 1 |
| 14 | Accepted | Requirement Status | check-circle-o | #008000 | 1 |
| 90 | Acceptance Location | Requirement Location Type | _NULL_ | _NULL_ | 1 |
| 91 | Construction Site | Requirement Location Type | _NULL_ | _NULL_ | 1 |
| 92 | Delivery Zone | Requirement Location Type | _NULL_ | _NULL_ | 1 |

## Document Template reference data table

The `AS_RM_R_DOCUMENT_TEMPLATE` table stores the document templates needed for the Create Document from Template task. Updating this table allows you to control what document templates are available for the business user creating checklists.

See the following table for a description of the fields in the `AS_RM_R_DOCUMENT_TEMPLATE` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| DOCUMENT\_TEMPLATE\_ID | int(11) | Number (integer) | The primary key. |
| DOCUMENT\_NAME | varchar(255) | Text | The name of the template that is displayed to end users. |
| FILE\_TYPE | varchar(255) | Text | The type of document the template is. For example, DOCX or PDF. |

See below for an example of what the three columns of the required document table may look like.

| DOCUMENT\_TEMPLATE\_ID | DOCUMENT\_NAME | FILE\_TYPE |
| --- | --- | --- |
| 1 | Capabilities Template | DOCX |
| 2 | PWS Template | DOCX |
| 3 | 508 Determination | DOCX |

## Activity Address Code reference data tables

The `AS_RM_R_ACTIVITY_ADDRESS_CODE` and `AS_RM_R_ACTIVITY_ADDRESS_CODE_ADDRESS` tables store the activity address code data needed for the requirement data entry. Updating this table allows you to control what AACs or DoDAACs your requirements can be associated with.

See the following table for a description of the fields in the `AS_RM_R_ACTIVITY_ADDRESS_CODE` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| AAC\_REF\_ID | int(11) | Number (integer) | The primary key. |
| AAC | varchar(255) | Text | The activity address code appears in the dropdown and to users. |
| AGENCY | varchar(255) | Text | The name of the agency associated with the AAC or DoDAAC. |
| TYPE\_CODE | varchar(255) | Text | The type code for the AAC or DoDAAC. |
| MAJOR\_COMMAND | varchar(255) | Text | The major command of the AAC or DoDAAC. |
| CO\_COMMAND | varchar(255) | Text | The country command of the AAC or DoDAAC. |

See below for an example of what the three columns of the required document table may look like.

| ACC\_REF\_ID | AAC | AGENCY | TYPE\_CODE | MAJOR\_COMMAND | CO\_COMMAND |
| --- | --- | --- | --- | --- | --- |
| 1 | 1A7812 | Department of Veterans Affairs | Federal Agencies | 00 - Veterans Affairs | US North |
| 2 | LM7654 | Navy | DoD | NF - Space and Naval Systems CMD | US North |

See the following table for a description of the fields in the `AS_RM_R_ACTIVITY_ADDRESS_CODE_ADDRESS` table.

| Name | MySQL Data Type | Appian Data Type | Description |
| --- | --- | --- | --- |
| AAC\_REF\_ADDRESS\_ID | int(11) | Number (integer) | The primary key. |
| AAC\_ADDRESS\_TYPE | int(11) | Number (integer) | The address type ID from the reference data table. |
| AAC\_ADDRESS\_LINE1 | varchar(255) | Text | The address line 1 for the AAC or DoDAAC address. |
| AAC\_ADDRESS\_LINE2 | varchar(255) | Text | The address line 2 for the AAC or DoDAAC address. |
| AAC\_CITY | varchar(255) | Text | The city for the AAC or DoDAAC address. |
| AAC\_STATE | int(11) | Number (integer) | The state id from state reference table for the AAC or DoDAAC address state. For example, Maryland has a state id of 22. |
| AAC\_COUNTRY | int(11) | Number (integer) | The country id from the country reference table for the AAC or DoDAAC address country. For example, the United States has a country id of 231. |
| AAC\_US\_ZIP\_CODE | varchar(255) | Text | The US postal code for the AAC or DoDAAC address. |
| AAC\_US\_ZIP\_CODE\_EXT | varchar(255) | Text | The US postal code extension for the AAC or DoDAAC address. |
| AAC\_FOREIGN\_POSTAL\_CODE | varchar(255) | Text | The foreign postal code for the AAC or DoDAAC address. |
| AAC\_ID | int(11) | Number (integer) | The address reference id from the activity address code reference table for the AAC or DoDAAC the address is associated with. In the above example, the Navy has a AAC\_REF\_ID of 2. |

See below for an example of what the columns for the address may look like.

| ACC\_REF\_ADDRESS\_ID | AAC\_ADDRESS\_LINE1 | AAC\_CITY | AAC\_STATE | AAC\_US\_ZIP\_CODE | AAC\_ID |
| --- | --- | --- | --- | --- | --- |
| 1 | 123 Main Street | Bethesda | 22 | 20810 | 2 |
| 2 | 255 South Street | Bethesda | 22 | 20810 | 2 |
| 3 | 456 North Street | Washington | 9 | 20001 | 1 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...