---
source_url: https://docs.appian.com/suite/help/25.3/records-filter-source-data.html
original_path: records-filter-source-data.html
version: "25.3"
title: "Configure Sync Filters"
page_id: "records-filter-source-data"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Sync Filters

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

4 Common Use Cases for Sync Filters in Appian

Learn about common use cases for using sync filters on your synced record types.

This page describes how to configure sync filters on synced record types.

**Note:**  Sync filters are not applicable to record types that use a web service as the source. Instead, you can use the [record data source](configure-record-data-source.html#create-a-record-data-source) expression to conditionally filter out data.

## Overview

After [choosing the source](configure-record-data-source.html) of your record type, you may decide that you don't need all the data from your source, or that you want to exclude certain data to prevent end users from viewing it. From the record type, you can add filters that exclude source data that does not meet the specified criteria.

If your record type has [data sync](about-data-sync.html) enable, you can apply _sync filters_ to only sync data that meets specific conditions.

If your record type does not have data sync enabled, configure [default filters](default-filters.html) instead.

## About sync filters

**Note:**  In the latest version of Appian, existing **source filters** are now called **sync filters**.

When you enable [data sync](about-data-sync.html) on your record type, you can apply sync filters to specify which data is synced and available in the record type. Sync filters allow you to [work with large data sources](about-data-sync.html#sync-data-from-large-data-sources) and exclude unnecessary data from the record type.

For example, let's say you have a database table with 6 million rows of support case data. To sync and access all of this data, you can create two different record types: the **Open Case** record type and the **Closed Case** record type. Both record types would point to the same database table, but they each use a different sync filter so that they only sync cases with a specific status.

You may also have a **Comment** record type that stores all comments for all cases. To avoid syncing comments for old or closed cases that aren't relevant anymore, the **Comments** record type can inherit sync filters from the **Open Case** record type. This way, the **Comments** record type only syncs comments for active cases.

## Add sync filters

You can add sync filters when you [configure the source of a record type](configure-record-data-source.html), or anytime after configuring the source by navigating to the **Data Model** page of the record type.

The sections below explain how to add sync filters after the source of the record type has been configured.

To add a sync filter, use one of the following modes:

-   [**Basic mode**](#basic-mode)
-   [**Expression mode**](#expression-mode)

The table below outlines the key differences between these two modes:

|  |
Basic mode

 |

Expression mode

 |
| --- | --- | --- |
| Configuration | Use a guided experience to filter by source fields or a [relationship](record-type-relationships.html). | Create an expression using [a!queryFilter()](fnc_system_a_queryfilter.html) or [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) to filter by source fields. |
| Inherit filters from related record types | If your record type uses a [database as the source](configure-record-data-source.html#connect-to-a-database), you can filter by a relationship to automatically inherit filters from a related record type. For example, if the Open Case record type has a sync filter configured to only sync open cases, then the Comment record type can filter by its relationship to Open Cases to only sync comments for open cases.

When you filter by a relationship, you can also filter by the related record fields from the selected relationship to make your filter more precise. | You cannot filter by a relationship, so you cannot inherit filters from a related record type or filter by related record fields. |
| Combine filters | Multiple filters are automatically joined using an `AND` operator. | You can join multiple filters using `AND` or `OR` operators. |
| Testing | If you filter by source fields only, you can test to see how many rows of data will be synced in the base record type.

If you filter by a relationship, you cannot directly test to see how many rows will be synced in the base record type. Instead, you are limited to testing how many rows are synced in the related record type. You can then use that number to estimate how many rows of data will be synced in the base record type. | You can filter by source fields only, so you can test the filter to see how many rows of data will be synced in the record type. |
| Filter behavior | If you filter by source fields, those filters will automatically apply whenever a [full sync](records-data-sync.html#schedule-full-syncs) or [smart service sync](records-data-sync.html#use-smart-services-that-automatically-sync-data) occurs on the base record type.

If you filter by a relationship, that filter will apply only when a full sync occurs on the base record type. Any changes to the related record type will not immediately impact the data synced in the base record type.

For example, let's say the Comment record type filters by a relationship to the Open Cases record type. If the Write Records smart service changes an open case to "Closed", then the comments for that closed case will only be removed when a full sync occurs on the Comment record type. | You can filter by source fields only, so the filters will automatically apply whenever a [full sync](records-data-sync.html#schedule-full-syncs) or [smart service sync](records-data-sync.html#use-smart-services-that-automatically-sync-data) occurs on the base record type. |

### Basic mode

To add a sync filter using Basic mode:

1.  In your record type, go to **Sync Options**.
2.  Under **Sync Filters**, click **ADD FILTERS**.
3.  Leave the default selection **Basic**.
4.  Click **Add Filter** > **By Source Field** to filter by a field from the data source.
    1.  Select a source field to filter by. Only source types that can be converted to [Appian types](Appian_Data_Types.html) appear in the dropdown.
    2.  Select the operator to apply to the filter.
    3.  Use the context menu next to the field to select how you want to pass the value into the filter. The options in this menu change based on the data type of the field selected. You can enter a static value or enter an expression.
5.  Click **Add Filter** > **By Relationship** to filter by a [relationship](record-type-relationships.html). You can only filter by one relationship.

    **Note:**  To maintain optimal performance, a record type can only sync up to 10 million rows when it has a relationship filter. Depending on your hardware allocations, you can customize the limit associated with relationship filters. Contact your Appian representative to learn more.

    1.  Select a many-to-one or one-to-one relationship to inherit any filters applied to the related record type. Relationships to a related record type that already filter by a relationship will not appear in the dropdown.
    2.  Click **Filter by Related Record Field** to filter by a field from the selected relationship.
6.  Select the **Ignore Filters with Empty Values** checkbox to skip filters that have empty an **Value**. This option will not appear if you only filter by a relationship.
7.  Click **TEST FILTER** to validate your filter conditions.
8.  Click **OK**.
9.  Click **SAVE**.

### Expression mode

To configure a sync filter using Expression mode:

1.  In your record type, go to **Sync Options**.
2.  Under **Sync Filters**, click **ADD FILTERS**.
3.  Select **Expression**.
4.  In the expression editor, enter an expression that returns a list of [a!queryFilter()](fnc_system_a_queryfilter.html) or [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html).

    **Note:**  Sync filter expressions do not support the `now()` or `loggedinuser()` functions, relationship references, or any object references called from the `rule!` or `cons!` domain.

5.  Click **TEST FILTER** to validate your filter conditions.
6.  Click **OK**.
7.  Click **SAVE**.

For example, the following sync filter expression would only sync opportunities that have a status of active and an opportunity level of either "Must have" or "Should have". Any data that does not meet these filter conditions will not be synced in Appian.

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
11
12
13
14
15
16
17
18
19
20
21
22
  /*
  (Has a status of "Active" AND has an opportunity level of "Must have" OR "Should have")
  */
  a!queryLogicalExpression(
    operator: "AND",
    logicalExpressions: {
       a!queryLogicalExpression(
        operator: "AND",
        filters: a!queryFilter(
           field: "status",
           operator: "=",
           value: "Active")
      ),
       a!queryLogicalExpression(
         operator: "OR",
         filters: {
          a!queryFilter(field: "opportunityLevel", operator: "=", value: "Must have"),
          a!queryFilter(field: "opportunityLevel", operator: "=", value: "Should have")
         }
       )
    }
  )
```

## Edit sync filters

After you've configured a sync filter, you can always update it to accommodate your changing business needs.

To edit sync filters:

1.  In your record type, go to **Sync Options**.
2.  Under **Sync Filters**, click **EDIT FILTERS**.
3.  Make any necessary adjustments in either [**Basic**](#basic-mode) or [**Expression**](#expression-mode) mode.
4.  Click **OK**.
5.  Click **SAVE**.

## Remove sync filters

To remove sync filters:

1.  In your record type, go to **Sync Options**.
2.  Under **Sync Filters**, click **EDIT FILTERS**.
3.  Remove the filters in either Basic or Expression mode:
    -   **Basic mode**: Click next to the filters you want to remove.
    -   **Expression mode**: Delete individual `a!queryFilter()` functions, or delete all functions in the expression box.
4.  Click **OK**.
5.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...