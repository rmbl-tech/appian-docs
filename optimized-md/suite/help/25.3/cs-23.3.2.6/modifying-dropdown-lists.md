---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/modifying-dropdown-lists.html
original_path: cs-23.3.2.6/modifying-dropdown-lists.html
version: "25.3"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Connected Servicing solution is designed to be customized to your organization's particular needs. The various interfaces in the out-of-the box solution contain dropdown lists. Some dropdown values such as Document Type and Customer Type, a business user can change in the Connected FS Settings Site. However, if you need to modify a dropdown field that is not accessible through Connected FS Settings, you can modify the values by modifying reference data tables. For example, you can add or delete values that display in the Address Type dropdown list.

![dropdown.jpg](images/dropdown.jpg)

This page outlines how to modify the values that can be chosen from dropdown lists in the various interfaces of the Connected Servicing solution.

-   If you need to add a value to a particular dropdown list, add a row to the reference data table. See the [Adding new dropdown values](#adding-new-dropdown-values) section.
-   If you need to remove a value from a dropdown list, deactivate the value in the reference data table. See the [Deactivating a dropdown value](#deactivating-a-dropdown-value) section.
-   If you want to add a new dropdown list, create a new dropdown list type in the reference data table. See the [Adding a new dropdown list](#adding-a-new-dropdown-list) section.
-   If you are using the solution in multiple languages, see the nuances of this in the [Internationalizing dropdown list values](#internationalizing-dropdown-list-values) section.

See the [Reference Data Tables](reference-data-tables.html) page for descriptions of the table structures.

## Adding new dropdown values

Dropdown values that cannot be set in the Connected FS Settings site are stored in the `AS_SRQ_R_DATA` table. Updating this table allows you control what dropdown values and lists display to end users moving through the Service Request process. See the [Connected Servicing only reference data table](reference-data-tables.html#connected-servicing-only-reference-table) on the Reference Data Tables page for a description of the table structure.

To add a value to a dropdown list:

1.  Insert a new row into the `AS_SRQ_R_DATA` table.
2.  Update each column with the following information:
    -   R\_DATA\_ID: This is the primary key of the reference value.
        -   **Note**: To avoid conflicts when upgrading to a newer version of the solution, the first 100,000 rows of this table are reserved for future use by the Appian Connected Servicing product team.
        -   **Note**: When adding a new row to this table, leave this value as `NULL`. There is a default `AUTO_INCREMENT` setting on this table, so that any new rows you insert with a `NULL` primary key will begin at 100,000 and increment from there.
    -   LABEL: The new bundleKey value you will reference in your bundle file.
    -   TYPE: A grouping category for the dropdown values; a name for the dropdown list.
        -   **Note**: The label for a dropdown list is defined in a [bundle file](sol-custom-suite-user-guide.html), so this isn't necessarily the same as the label for a dropdown list.
    -   CODE: The dropdown list type with a descriptive suffix.
    -   SORT\_ORDER: Optional field that can be used specifying sort order
        -   **Note**: Queries will have to be updated to query against this column for this to be implemented
    -   ICON: Optional field that can be used to specify icon for this entry
    -   COLOR: Optional field that can be used to specify color for the icon
    -   IS\_ACTIVE: true (1)
    -   CREATED\_BY: Your Appian username.
    -   CREATED\_DATETIME: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.
    -   MODIFIED\_BY: Your Appian username.
    -   MODIFIED\_DATETIME: The current timestamp, in the format YYYY-MM-DD HH:MM:SS.

After the row is inserted, this value will be available in any of the dropdown lists that have the same reference `TYPE` as the value you inserted.

### EXAMPLE

To add a new dropdown value, you could use the following SQL statement, replacing the values in brackets (< >) with your data. Note that this example uses MySQL syntax.

```
1
2
3
INSERT INTO `AS_SRQ_R_DATA` (`R_DATA_ID`, `LABEL`, `TYPE`, `CODE`, `IS_ACTIVE`, `CREATED_BY`, `CREATED_DATETIME`, `MODIFIED_BY`, `MODIFIED_DATETIME`)
VALUES (null, '<New Label>', '<Type>', '<Code>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP()),
(null, '<New Label>', '<Type>', '<Code>', 1, '<Username>', CURRENT_TIMESTAMP(), '<Username>', CURRENT_TIMESTAMP());
```

## Deactivating a dropdown value

If there is a value in a dropdown list that is no longer needed, deactivate the value by changing the `IS_ACTIVE` value in the `AS_SRQ_R_DATA` from 1 (true) to 0 (false).

**Note:**  Deactivating an Service Request status or task status is not recommended, as it will negatively affect other aspects of the solution.

After the update is made, this value will no longer display in any dropdown list. The value will still display for already active and historical data.

**Note:**  Deleting data from the table is not recommended except during initial set up. If the solution is already in use, deleting data rather than deactivating it may cause issues.

### EXAMPLE

To deactivate a dropdown value, you could use the following SQL statement. Replace `<ID Being Updated>` with the R\_DATA\_ID value. For example, to deactivate the **FEE\_RATE\_MONTHLY** in the following example table, `<ID Being Updated>` with the `R_DATA_ID` value.

| R\_DATA\_ID | LABEL | TYPE | CODE | IS\_ACTIVE |
| --- | --- | --- | --- | --- |
| 24 | FeeRate.lbl\_Annual | Fee Rate | FEE\_RATE\_ANNUAL | 1 |
| 25 | FeeRate.lbl\_Monthly | Fee Rate | FEE\_RATE\_MONTHLY | 1 |

Note that this example uses MySQL syntax.

```
1
UPDATE AS_SRQ_R_DATA SET IS_ACTIVE = 0 WHERE R_DATA_ID = <ID Being Updated>
```

## Adding a new dropdown list

If you want to add a new dropdown list, you need to create a new dropdown list type.

There are two main steps to add a new dropdown list:

1.  Add a new row to the `AS_SRQ_R_DATA` table. See [Adding new dropdown values](#adding-new-dropdown-values) for instructions on how to add new rows.
    -   For the value in the `TYPE` column, enter a name for the new dropdown list, such as _Entity Region_.
    -   For the value in the `CODE` column, enter a short prefix to associate with the new dropdown list type, along with a number to give it a unique identifier. For example, _ENTITY\_REGION\_ASIA_.
2.  Create a constant in the application to be able to query this from the database. See [Using a new dropdown list in the application](#using-a-new-dropdown-list-in-the-application) for instructions on how to set this up.

### Using a new dropdown list in the application

After a new dropdown list type has been added to the `AS_SRQ_R_DATA` table, it will need a constant to point to it in order to be used in interfaces.

1.  Go to the **AS SRQ Full Application** application in Appian Designer.
2.  Create a new constant called `AS_SRQ_REF_TYPE_`_`<NEW_DROPDOWN_LIST_TYPE>`_. For example `AS_SRQ_REF_TYPE_SERVICE_REQUEST_STATUS`.
    -   Type: **Text**
    -   Value: <_New Dropdown List Type>_
        -   **Note:** This needs to exactly match the dropdown list name in the `TYPE` column of the `AS_SRQ_R_DATA` table. For example, if the name in the `TYPE` column is _Service Request Status_, the value here must be the same.
    -   Save it in the **AS SRQ SAIL Design Objects** folder.

After the dropdown list constant has been created, the list is ready to be used by the `AS_SRQ_QE_getRefDataByType` rule. This rule pulls all of the reference data onto the interface that needs a reference value. `AS_SRQ_QE_getRefDataByType` takes in typelist—an array of text—corresponding to the type values in the database you need to use.

#### EXAMPLE

To pull in the Fee Rate or Entity Type dropdown lists, you would use the rule as shown below:

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
local!refData: rule!AS_SRQ_QE_getRefDataByType(
  typelist: {

    /* Comment Type */
    cons!AS_SRQ_REF_TYPE_COMMENT_TYPE,
    /* Service Request Status Type */
    cons!AS_SRQ_REF_TYPE_SERVICE_REQUEST_STATUS
  }
)
```

As shown in the example, you can pass in either text or a constant of type text with the corresponding dropdown list type.

**Tip:**  Remember that `AS_SRQ_QE_getRefDataByType` is a query. In order to minimize the number of queries, it is best practice to avoid calling your reference data in sub-interfaces. Instead, query for all of the reference data on the main form and pass it to the sub-interfaces using rule inputs.

## Internationalizing dropdown list values

If you are using Connected Servicing in multiple languages, the reference data needs to be internationalized in order to show the user the dropdown values in their native language.

To do so, you will only need one entry in the `AS_SRQ_R_DATA` table for each value, but you will need to have a bundle (or document file) based on the default language that the user has selected.

The `LABEL` column of `AS_SRQ_R_DATA` will act as a key for the application to show the proper label based on which bundle is selected. The `LABEL` consists of `<bundleName>`.`<labelName>`.

#### EXAMPLE

For example, the `LABEL` FeeRate.lbl\_Annual has a bundle called FeeRate and a label name lbl\_Annual.

| R\_DATA\_ID | LABEL | TYPE | CODE | IS\_ACTIVE |
| --- | --- | --- | --- | --- |
| 23 | FeeRate.lbl\_Annual | Fee Rate | FEE\_RATE\_ANNUAL | 1 |

The `FeeRate_en_US` bundle will show the following:

```
1
2
3
4
...
lbl_Annual=Annual
lbl_Monthly=Monthly
...
```

The `FeeRate_es` bundle will show the following:

```
1
2
3
4
...
lbl_Annual=Anual
lbl_Monthly=Mensual
...
```

Both dropdown values use the same `LABEL` to reference the correct translation.

After the additional translations are in the bundle, end users will be able to view the dropdown values in their native language.

If you are adding a new language, you will also need to update the labels in the application to use the language. See the [Solutions Hub User Guide](sol-custom-suite-user-guide.html) for how to do this.

## Other reference data tables

There are several other tables that contain reference data that appear in lists. The information stored in these tables are universal and shouldn't change often. However, if you ever have to change the list of countries, currencies, industry classification codes, or states, refer to the below tables.

-   AS\_FS\_R\_COUNTRY
    -   A list of countries
-   AS\_FS\_R\_CURRENCY
    -   A list of currencies
-   AS\_FS\_R\_GLOBAL\_INDUSTRY\_CLASS
    -   Industry classification codes and names
-   AS\_FS\_R\_M\_CURRENCY
    -   A mapping of currencies to countries
-   AS\_FS\_R\_STATE
    -   A list of US states

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...