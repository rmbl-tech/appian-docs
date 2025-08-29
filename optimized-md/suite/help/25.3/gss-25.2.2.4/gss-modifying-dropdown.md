---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-modifying-dropdown.html
original_path: gss-25.2.2.4/gss-modifying-dropdown.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Dropdown Lists in GSS

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

You can customize the Government Source Selection solution to your organization's particular needs. The various interfaces in the out-of-the-box solution contain dropdown lists that you can modify by changing the values in the reference data tables with values that reflect the data that is unique to your processes. For example, you can add or delete values that display in the Task Type dropdown list.

![Task type dropdown](images/modifying_dropdowns_introduction.png)

This page outlines how to modify the values for the dropdown lists in the various interfaces of the GSS solution.

-   If you need to add a value to a particular dropdown list, add a row to the reference data table. See the [Adding a new dropdown value](#adding-a-new-dropdown-value) section.
-   If you need to remove a value from a dropdown list, deactivate the value in the reference data table. See the [Deactivating a new dropdown value](#deactivating-a-dropdown-value) section.
-   If you want to add a new dropdown list, create a new dropdown list type in the reference data table. See the [Adding a new dropdown list](#adding-a-new-dropdown-list) section.

See the [Reference Data Tables](gss-modifying-reference-data-tables.html) page for descriptions of the table structures.

## Adding a new dropdown value

Most dropdown values for GSS are stored in the `AS_GSS_R_DATA` table. Updating this table allows you to control which dropdown values and lists display to end users moving through the evaluation process.

To add a value to a dropdown list:

1.  Insert a new row into the `AS_GSS_R_DATA` table.
2.  Update each column with the following information:
    -   REF\_LABEL: The new value you are adding.
    -   REF\_TYPE: A grouping category for the dropdown values; a name for the dropdown list.
    -   SORT\_ORDER: Optional field that can be used specifying the sort order.
    -   Note: To implement the sort order, you will have to update the queries applied to this column.
    -   REF\_ICON: Optional field that can be used to specify an icon for this entry.
    -   REF\_COLOR: Optional field that can be used to specify the icon color.
    -   IS\_ACTIVE: true (1).
    -   CREATED\_BY: Your Appian username.
    -   CREATED\_DATETIME: The current timestamp in the YYYY-MM-DD HH:MM:SS format.
    -   MODIFIED\_BY: Your Appian username.
    -   MODIFIED\_DATETIME: The current timestamp in the YYYY-MM-DD HH:MM:SS format.

After the row is inserted, this value will be available in any of the dropdown lists that have the same reference `REF_TYPE` as the value you inserted.

### Example

To add a new dropdown value, you could use the following SQL statement by replacing the values in the angle brackets `(< >)` with your data.

```
1
2
3
4
INSERT INTO `AS_GSS_R_DATA` (`REF_DATA_ID`, `REF_LABEL`, `REF
_TYPE`, `IS_ACTIVE`, `CREATED_BY`, `CREATED_DATETIME`, `MODIFIED_BY`, `MODIFIED_DATETIME`)
VALUES (null, '<New Label>', '<Type>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP()),
(null, '<New Label>', '<Type>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP());
```

## Deactivating a dropdown value

If there is a value in a dropdown list that is no longer needed, deactivate the value by changing the `IS_ACTIVE` value in the `AS_GSS_R_DATA` from 1 (true) to 0 (false).

After the update is made, this value will no longer display in any dropdown list. The value will continue to display for evaluations that are already active and historical evaluations.

Deactivating an evaluation status or task status is not recommended, as it will negatively affect other aspects of the application. Deleting data from the table is not recommended except during the initial setup. If the application is already in use, deleting data rather than deactivating it may cause issues.

### Example

To deactivate a dropdown value, you could use the following SQL statement. Replace `<ID Being Updated>` with the `R_DATA_ID` value. For example, to deactivate _Weeks_ in the following table, `<ID Being Updated>` would be 24.

| R\_DATA\_ID | LABEL | TYPE | IS\_ACTIVE |
| --- | --- | --- | --- |
| 22 | Hours | Item Duration Unit | 1 |
| 23 | Days | Item Duration Unit | 1 |
| 24 | Weeks | Item Duration Unit | 1 |

Note that this example uses MySQL syntax.

```
1
UPDATE AS_GSS_R_DATA SET IS_ACTIVE = 0 WHERE R_DATA_ID = <ID Being Updated>
```

## Adding a new dropdown list

If you want to add a new dropdown list, you need to create a new dropdown list type. There are two main steps to add a new dropdown list:

1.  Add a new row to the `AS_GSS_R_DATA` table. See [Adding new dropdown values](#adding-a-new-dropdown-value) for instructions on how to add new rows.
    -   For the value in the `REF_TYPE` column, enter a name for the new dropdown list, such as Entity Region.
2.  Create a constant in the application to query this from the database. See [Using a new dropdown list in the application](#using-a-new-dropdown-list-in-the-application) for instructions on how to set this up.

## Using a new dropdown list in the application

After a new dropdown list type has been added to the `AS_GSS_R_DATA` table, it will need a constant to point to it to be used in interfaces.

1.  Go to the `AS GSS Baseline` application in Appian Designer.
2.  Create a new constant called `AS_GSS_REF_TYPE_<NEW_DROPDOWN_LIST_TYPE>`. For example `AS_GSS_REF_TYPE_EVALUATION_STATUS`.
    -   Type: Text
    -   Value: `<New Dropdown List Type>`
        -   Note: Be sure this matches the dropdown list name in the `REF_TYPE` column of the `AS_GSS_R_DATA` table exactly. For example, if the name in the `REF_TYPE` column is Evaluation Status, the value here must be the same.
    -   Save it in the `AS GSS SAIL Design Objects` folder.

After the dropdown list constant has been created, the list is ready to be used by the `AS_GSS_QE_getRefDataByTypes` rule. This rule pulls all of the reference data onto the interface that needs a reference value. `AS_GSS_QE_getRefDataByTypes` takes in typelist—an array of text—corresponding to the type values in the database you need to use.

### EXAMPLE

To pull in the Evaluation Status dropdown list, use the following rule:

```
1
2
3
4
5
6
local!refData: rule!AS_GSS_QE_getRefDataByTypes(
  refTypes: {
    /* Evaluation Status */
    cons!AS_GSS_REF_TYPE_EVALUATION_STATUS,
  }
)
```

As shown in the example, you can pass in either text or a constant of type `text` with the corresponding dropdown list type.

## Other reference data tables

There are several other tables that contain reference data that appear in lists. The information stored in these tables are universal and shouldn't change often. However, if you ever have to change the list of countries, currencies, industry classification codes, or states, refer to the following tables.

-   AS\_GSS\_R\_Country
    -   A list of countries
-   AS\_GSS\_R\_State
    -   A list of US states
-   AS\_GSS\_R\_DocumentTemplate
    -   A list of document templates used to create evaluation documents

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...