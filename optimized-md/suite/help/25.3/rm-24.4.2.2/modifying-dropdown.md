---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/modifying-dropdown.html
original_path: rm-24.4.2.2/modifying-dropdown.html
version: "25.3"
title: "Modifying Dropdown Lists"
page_id: "rm-24.4.2.2/modifying-dropdown"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Dropdown Lists

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

The Appian Requirements Management (RM) solution is designed to be customized to your organization's particular needs. The various interfaces in the out-of-the-box solution contain dropdown lists. You can modify the values of these lists to reflect the data that is unique to your processes by modifying reference data tables. For example, you can add or delete values that display in the Requirement Status dropdown list.

![Requirements' STATUS dropdown with values](images/dropdown.png)

This page outlines how to modify the values that can be chosen from dropdown lists in the various interfaces of the RM solution.

-   If you need to add a value to a particular dropdown list, add a row to the reference data table. See the [Add new dropdown values](#add-new-dropdown-values) section.
-   If you need to remove a value from a dropdown list, deactivate the value in the reference data table. See the [Deactivate a dropdown value](#deactivate-a-dropdown-value) section.
-   If you want to add a new dropdown list, create a new dropdown list type in the reference data table. See the [Add a new dropdown list](#add-a-new-dropdown-list) section.

See the [Reference Data Tables](reference-data-tables.html) page for descriptions of the table structures.

## Add new dropdown values

Most dropdown values for RM are stored in the `AS_RM_R_DATA` table. Updating this table allows you to control what dropdown values and lists display to end users moving through the requirement process. See the [RM-only reference data table](reference-data-tables.html#reference-data-table) on the Reference Data Tables page for a description of the table structure.

To add a value to a dropdown list:

1.  Insert a new row into the `AS_RM_R_DATA` table.
2.  Update each column with the following information:
    -   `REF_LABEL`: The new value you are adding.
    -   `REF_TYPE`: A grouping category for the dropdown values; a name for the dropdown list.
    -   `SORT_ORDER`: Optional field to specify sort order.

        **Note:**  Queries must be updated to query against this column for this to be implemented.

    -   `REF_ICON`: Optional field that to specify the icon for this entry.
    -   `REF_COLOR`: Optional field that to specify the color for the icon.
    -   `IS_ACTIVE`: true (1).
    -   `CREATED_BY`: Your Appian username.
    -   `CREATED_DATETIME`: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.
    -   `MODIFIED_BY`: Your Appian username.
    -   `MODIFIED_DATETIME`: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.

After the row is inserted, this value is available in any of the dropdown lists that have the same reference `REF_TYPE` as the value you inserted.

### Example

To add a new dropdown value, you could use the following SQL statement, replacing the values in brackets (< >) with your data. Note that this example uses MySQL syntax.

```
1
2
3
4
INSERT INTO `AS_RM_R_DATA` (`REF_DATA_ID`, `REF_LABEL`, `REF
_TYPE`, `IS_ACTIVE`, `CREATED_BY`, `CREATED_DATETIME`, `MODIFIED_BY`, `MODIFIED_DATETIME`)
VALUES (null, '<New Label>', '<Type>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP()),
(null, '<New Label>', '<Type>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP());
```

## Deactivate a dropdown value

If there is a value in a dropdown list that is no longer needed, deactivate the value by changing the IS\_ACTIVE value in the `AS_RM_R_DATA` from 1 (true) to 0 (false).

**Note:**  Deactivating a requirement status or item status is not recommended, as it negatively affects other aspects of the application.

After the update is made, this value is no longer displayed in any dropdown list. The value is still displayed for already active requirements and historical requirements.

**Note:**  Deleting data from the table is not recommended except during the initial set up. If the application is already in use, deleting data rather than deactivating it may cause issues.

### Example

To deactivate a dropdown value, you could use the following SQL statement. Replace `<ID Being Updated>` with the R\_DATA\_ID value. For example, to deactivate the **Low** priority in the following example table, `<ID Being Updated>` would be `11`.

| R\_DATA\_ID | LABEL | TYPE | IS\_ACTIVE |
| --- | --- | --- | --- |
| 9 | High | Requirement Priority | 1 |
| 10 | Medium | Requirement Priority | 1 |
| 11 | Low | Requirement Priority | 1 |

Note that this example uses MySQL syntax.

```
1
UPDATE AS_RM_R_DATA SET IS_ACTIVE = 0 WHERE R_DATA_ID = <ID Being Updated>
```

## Add a new dropdown list

If you want to add a new dropdown list, you need to create a new dropdown list type.

There are two main steps to add a new dropdown list:

1.  Add a new row to the `AS_RM_R_DATA` table. See [Add new dropdown values](#add-new-dropdown-values) for instructions on how to add new rows.
    -   For the value in the `REF_TYPE` column, enter a name for the new dropdown list, such as _Entity Region_.
2.  Create a constant in the application to be able to query this from the database. See [Using a new dropdown list in the application](#using-a-new-dropdown-list-in-the-application) for instructions on how to set this up.

### Using a new dropdown list in the application

After a new dropdown list type has been added to the `AS_RM_R_DATA` table, it needs a constant to point to it in order to be used in interfaces.

1.  Go to the **AS RM Baseline** application in **Appian Designer**.
2.  Create a new constant called `AS_RM_REF_TYPE_`_`<NEW_DROPDOWN_LIST_TYPE>`_. For example `AS_RM_REF_TYPE_ENTITY_REGION`.
    -   Type: **Text**
    -   Value: <_New Dropdown List Type>_
        -   **Note:** This needs to exactly match the dropdown list name in the `REF_TYPE` column of the `AS_RM_R_DATA` table. For example, if the name in the `REF_TYPE` column is _Entity Region_, the value here must be the same.
    -   Save it in the **AS RM SAIL Design Objects** folder.

After the dropdown list constant has been created, the list is ready to be used by the `AS_RM_QE_getRefDataByTypes` rule. This rule pulls all of the reference data onto the interface that needs a reference value. `AS_RM_QE_getRefDataByTypes` takes in a typelist—an array of text—corresponding to the type values in the database you need to use.

#### Example

To pull in the Requirement Status, Requirement Category, or Requirement Priority dropdown lists, you would use the rule as shown below:

```
1
2
3
4
5
6
7
8
9
10
local!refData: rule!AS_RM_QE_getRefDataByTypes(
  typelist: {
    /* Requirement Status */
    cons!AS_RM_REF_TYPE_REQUIREMENT_STATUS,
    /* Requirement Category */
    cons!AS_RM_REF_TYPE_REQUIREMENT_CATEGORY,
    /* Requirement Priority */
    cons!AS_IO_REF_TYPE_REQUIREMENT_PRIORITY
  }
)
```

As shown in the example, you can pass in either text or a constant of type text with the corresponding dropdown list type.

**Tip:**  Remember that `AS_RM_QE_getRefDataByTypes` is a query. In order to minimize the number of queries, it is best practice to avoid calling your reference data in sub-interfaces. Instead, query for all of the reference data on the main form and pass it to the sub-interfaces using rule inputs.

## Other reference data tables

There are several other tables that contain reference data that appear in lists. The information stored in these tables is universal and shouldn't change often. However, if you ever have to change the list of countries, currencies, industry classification codes, or states, refer to the below tables.

-   `AS_RM_R_ACTIVITY_ADDRESS_CODE`
    -   A list of activity address codes
-   `AS_RM_R_ACTIVITY_ADDRESS_CODE_ADDRESS`
    -   A list of addresses associated with the activity address codes
-   `AS_RM_R_COUNTRY`
    -   A list of countries
-   `AS_RM_R_STATE`
    -   A list of US states
-   `AS_RM_R_DOCUMENT_TEMPLATE`
    -   A list of document templates used to create requirement documents

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...