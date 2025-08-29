---
source_url: https://docs.appian.com/suite/help/25.3/records-data-sync.html
original_path: records-data-sync.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Data Sync Options

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

After you enable [data sync](about-data-sync.html) on your record type, you’ll want to ensure your data remains up to date and readily available in Appian.

To keep your data fresh, you can:

-   [Schedule syncs to capture data changed by external systems](#scheduled-syncs).
-   [Use smart services to sync data changed in Appian](#smart-service-syncs).
-   [Use web APIs to sync data from the source](generate-web-api.html).

You can also configure different [availability options](#availability-options) to keep your data available in Appian, even if there was an error while syncing.

This page explains how you can configure these different options from the **Sync Options** page of the record type, and how to incorporate smart service syncs into your workflows.

See [Configure sync filters](records-filter-source-data.html) to learn how to specify which data is synced in Appian.

[![images/syncOptionsPage.png](images/syncOptionsPage.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img559)

[![](images/syncOptionsPage.png)](#_)

**Tip:**  As your record type syncs data, you can [monitor syncs](monitoring_view.html) to see when data is synced, how many rows were synced, and if there were any errors while syncing.

## Choosing the right sync options

The combination of sync options you choose to configure depends on your business needs.

The table below outlines a few common data scenarios and which sync options you can use to keep that data fresh. Multiple scenarios may apply to your record type, so you may want to enable multiple sync options.

|
Scenario

 |

Recommended Sync Options

 |
| --- | --- |
| Data is changed in Appian as part of process models, interfaces, or expression rules. |

-   [Smart services that automatically sync data](#use-smart-services-that-automatically-sync-data)
-   [Sync Records smart service](#use-the-sync-records-smart-service)
-   [Recover failed syncs](#recover-failed-syncs)

 |
| Data is created or changed regularly in the source or by another system, and you have a field that tracks the date and time when data was last modified. |

-   [Scheduled incremental sync](#schedule-incremental-syncs)
-   [Recover failed syncs](#recover-failed-syncs)

 |
| Data is created, changed, and deleted regularly in the source or by another system, and you have a field that tracks the date and time when data was last modified. |

-   [Scheduled incremental sync](#schedule-incremental-syncs)
-   [Scheduled full sync](#schedule-full-syncs)
-   [Recover failed syncs](#recover-failed-syncs)

 |
| Data is created or changed regularly in the source or by another system, and you can access the unique identifiers of the new data. |

-   [Sync Records smart service](#use-the-sync-records-smart-service)
-   [Generate web APIs to sync data](generate-web-api.html)
-   [Recover failed syncs](#recover-failed-syncs)

 |
| Data is created or changed infrequently in the source. |

-   [Scheduled full sync](#schedule-full-syncs)

 |
| You only need certain data from the source, or you only need the latest data from the data source. |

-   [Sync filters](records-filter-source-data.html)\*
-   [Keep data available at high volumes](#keep-data-available-at-high-volumes)\*

 |

\* Only available on database-backed record types. To manage which data is synced in a service-backed record type, modify the [record data source expression](configure-record-data-source.html#create-a-record-data-source) to filter out certain data.

## Scheduled syncs

If your data is changed by external systems or even directly on your source, you can schedule syncs to automatically capture those changes in Appian.

You can schedule one or both of the following:

-   [Full syncs](#schedule-full-syncs), which will sync all source data once each day.
-   [Incremental syncs](#schedule-incremental-syncs), which will sync new or changed data every few minutes or hours.

### Schedule full syncs

**Applies to**: All record types

If data is changed less frequently by external systems, you can schedule a _full sync_ to occur once each day.

A full sync will purge your existing synced data and replace it with the latest data available in your source. This ensures that any data created, updated, or deleted in the source is reflected in the record type.

For faster syncs, Appian recommends scheduling full syncs outside of peak traffic or working hours. When working with multiple synced record types, consider scheduling each full sync to occur at a different time to have optimal sync performance.

To schedule a full sync:

1.  In your record type, go to **Sync Options**.
2.  Select the **Schedule full sync** checkbox.
3.  Select the time and the timezone when you want the sync to occur each day.

    **Tip:**  For service-backed record types, consider adding a [rate limit](#rate-limit) to prevent too many requests to the source at once.

4.  Click **SAVE**.

### Schedule incremental syncs

**Note:**  This sync option is included in Appian's [advanced and premium capability tiers](Appian_Tiers.html). Usage limits may apply.

**Applies to**: Database-backed record types and service-backed record types

If data is frequently created or modified by external systems, you can schedule _incremental syncs_ to occur regularly throughout the day. An incremental sync will capture any new or changed data since the last successful sync.

You control which data is synced and how frequently it’s sync using:

-   **Last modified field**: A field of type Date and Time that indicates when data was last updated. Appian will use the value of this field to determine the latest data to sync.
-   **Sync schedule**: The frequency in which Appian syncs the new or changed data from the source. The ideal frequency for your incremental syncs depends on how often data changes in the source system and when you need those changes in your apps.

    For example, if support cases are constantly created in the source system throughout the day, you might sync those cases every 15 minutes. Alternatively, if orders are periodically created in your source system and you'd rather capture all new orders in bulk, you could sync new orders every 4 hours.

To schedule incremental syncs:

1.  (Service-backed record types only) Configure a changed data expression:
    -   [Create an integration to return changed data](#create-an-integration-to-return-changed-data).
    -   [Create an expression rule to call the integration](#create-a-changed-data-expression).
2.  [Select a Last Modified field and configure the incremental sync schedule](#set-the-incremental-sync-schedule).

#### Create an integration to return changed data

To schedule incremental syncs on a service-backed record type, you must create an [integration object](Integration_Object.html) that returns only new or changed data from your source.

The integration must have the following rule inputs:

|
Rule Input Name

 |

Type

 |

Description

 |
| --- | --- | --- |
| `lastSuccessfulSync` | Date and Time | The integration must have a rule input with this exact name and data type. Appian will automatically populate this rule input with the date and time of the last successful sync, so your system can use this value to determine which data has changed since then. |
| `batching` | Text or Number (Integer) | If you expect to sync more than 1,000 rows of data in each incremental sync, add a rule input for batching.

The data type of the rule input will vary depending on batching method:

-   [Batch by sequential values](configure-record-data-source.html#batch-by-sequential-values).
-   [Batch by cursor or token](configure-record-data-source.html#batch-by-cursor-or-token).
-   [Batch by full URLs](configure-record-data-source.html#batch-by-a-full-url-or-uri).

 |

You can use the `lastSuccessfulSync` rule input to easily identify new or changed data to sync in Appian.

For example, your API may have a field called `modifiedOn` that's used to track the date and time when a row of data is updated. In your API, you can compare the date and time of the `modifiedOn` field with the date and time of the last successful sync.

Then, you can indicate that any rows with a date and time greater than or equal to the last successful sync should be synced in Appian during the next incremental sync. In the table below, this would mean that rows 3 and 5 will be captured in the next incremental sync.

|
Row ID

 |

Created On

 |

Last Successful Sync

 |
| --- | --- | --- |
| 1 | 05/05/2025 3:45 AM GMT | 05/05/2025 5:45 AM GMT |
| 2 | 05/05/2025 4:48 AM GMT | 05/05/2025 5:45 AM GMT |
| 3 | 05/05/2025 5:45 AM GMT | 05/05/2025 5:45 AM GMT |
| 4 | 05/05/2025 5:45 AM GMT | 05/05/2025 5:45 AM GMT |
| 5 | 05/05/2025 7:07 AM GMT | 05/05/2025 5:45 AM GMT |

#### Create a changed data expression

Once you [create an integration to return changed data](#create-an-integration-to-return-changed-data) from your external system, you'll create a _changed data expression_ to call that integration and return the new or changed data to sync.

The changed data expression must have the following configurations:

|
Elements of the Expression

 |

Required Configurations

 |
| --- | --- |
| Integration response |

-   The expression calls the [integration that returns new or changed data](#create-an-integration-to-return-changed-data) from the source.
-   The response body must cast to a List of Map, List of Dictionary, or a List of CDT.
-   There must be at least one Number (Integer) field that's non-null for every entry to act as the primary key.

 |
| Rule inputs |

-   The expression must have a rule input called `lastSuccessfulSync` of type Date and Time. This rule input must have this exact name and will be automatically populated by Appian.
-   (Optional) If you expect to sync more than 1,000 rows of data in each incremental sync, configure batching. You can:
    -   [Batch by sequential values](configure-record-data-source.html#batch-by-sequential-values).
    -   [Batch by cursor or token](configure-record-data-source.html#batch-by-cursor-or-token).
    -   [Batch by full URLs](configure-record-data-source.html#batch-by-a-full-url-or-uri).

 |

For example, a changed data expression could look like this:

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
23
24
25
26
27
28
29
 a!localVariables(

  /* Call the integration that returns changed data */
  */ and store the response in a local variable */
  local!integrationResponse: rule!RE_getNewOrChangedOrders(

    /* If there are more than 1,000 rows to sync, execute the expression multiple times */
    /* and pass sequential values {1, 2, 3...} for batchNumber until an empty set is returned */
    batchNumber: ri!batchNumber,

 /* Passes the required rule input to the integration to provide */
 /* the date and time of the last successful sync */
    lastSuccessfulSync: ri!lastSuccessfulSync
  ),

  if(
    /* This will return true if the integration succeeds */
    local!integrationResponse.success,
    local!integrationResponse.result.body,

    /* If the integration is unsuccessful, handle accordingly */

    if(
      tointeger(index(local!integrationResponse.result, "statusCode", 0)) = 416,
      {},
      local!integrationResponse.error
    )
  )
 )
```

#### Set the incremental sync schedule

An incremental sync can sync up to 50,000 rows at a time. As a best practice, you should schedule incremental syncs so they capture small portions of data throughout the day.

To schedule incremental syncs:

1.  In your record type, go to **Sync Options**.
2.  Select the **Schedule incremental syncs** checkbox.
3.  (Service-backed record type only) Select a [changed data expression](#create-a-changed-data-expression) to identify the new or changed data to sync.

    **Tip:**  If you don't have a changed data expression, you can generate the integration and changed data expression to get started.

4.  For **Last Modified Field**, select a field of type Date and Time that indicates when a row of data was last changed. This field is also used to determine what data to sync when [multiple syncs occur at the same time](#multiple-syncs-at-the-same-time).
5.  For **Sync changes every**, use the dropdown to determine how often the sync should occur.
6.  For **Start syncs at**, select the time when the first incremental sync should occur each day.
7.  Click **SAVE**.

The first incremental sync of the day will start at the specified time. If the start time has already passed when you're configuring it, the incremental syncs will start the next day at the specified time.

## Smart service syncs

In addition to scheduling syncs, you can leverage different smart services to automatically sync new or changed data from your process models, interfaces, or expressions. Syncs started by these smart services are called _smart service syncs_.

You can use the following smart services to sync data:

-   [Smart services that automatically sync data](#use-smart-services-that-automatically-sync-data), which sync data created, changed, or deleted in Appian.
-   [The Sync Records smart service](#use-the-sync-records-smart-service), which sync data created or changed by other smart services or systems.

### Use smart services that automatically sync data

**Applies to**: [Database-backed](configure-record-data-source.html#connect-to-a-database) and [Salesforce-backed record types](configure-record-data-source.html#connect-to-salesforce)

It’s easy to keep your data fresh when you use Appian smart services to create, update, or delete enterprise data.

When you use the following smart services in your process models, interfaces, or expression rules, Appian will automatically sync those changes so they’re immediately available in your record type.

**Note:**  Only the following smart services automatically sync changed data. To sync data changed by other smart services or other systems, [use the Sync Records smart service](#use-the-sync-records-smart-service).

|
Smart Service

 |

Supported Data Source

 |
| --- | --- |
| [Write Records](Write_Records_Smart_Service.html) | Database |
| [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html) | Database |
| [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) | Database |
| [Delete Records](Delete_Records_Smart_Service.html) | Database |
| [Delete from Data Store Entities](Delete_from_Data_Store_Entities_Smart_Service.html) | Database |
| [Call integration](Call_Integration_Smart_Service.html) | Salesforce |

#### Considerations for updating data

-   **Smart services that do not automatically sync data**: Appian will not automatically sync updates made using other smart services, plug-ins, or external systems.

    For example, the following services and tools will not automatically trigger a sync:

    -   [Query Database smart service.](Query_Database_Smart_Service.html)
    -   [Execute Stored Procedure smart service.](Execute_Stored_Procedure_Smart_Service.html)
    -   Call an integration smart service to update data in any other web service besides Salesforce.
    -   Manual edits using tools like phpMyAdmin or MySQL workbench.

    To sync these types of data changes, [schedule full or incremental syncs](#scheduled-syncs) or use the [Sync Records smart service](#use-the-sync-records-smart-service).

-   **High rate of writes**: When [working with large datasets](about-data-sync.html#sync-data-from-large-data-sources), you may create multiple record types that point to the same database table, and use source filters to sync different portions of data in each record type. For apps requiring a high rate of writes, use [this pattern](https://community.appian.com/success/w/guide/3623/writing-to-synced-record-types-at-high-throughput) to sync data independently from the writes to the source instead of using smart services that automatically sync data.

-   **Smart service functions in portal interfaces**: A sync will not occur when you use these smart service functions directly in a [portal](portals-home.html) interface. To sync data changed by a portal, use `a!startProcess()` to trigger a process containing a [smart service that automatically syncs data](#use-smart-services-that-automatically-sync-data). Learn more about [working with data in a portal](portals-data.html).

-   **Writing to Salesforce**: If the Salesforce integration fails to write to the source, then a sync will not occur. Likewise, if Appian does not receive a notification that the write to the source was successful, the sync will not occur.

-   **Writing to a database using a data store entity**: To use any of the smart services using a data store entity, you will need to create a [custom data type](Custom_Data_Types.html) (CDT) to write to the source. Depending on how your table data is structured in the CDT, the maximum number of rows that can be synced will vary:

    -   If you're using a [flat CDT](cdt_design_guidance.html#flat-cdts), you can sync up to 50,000 rows at a time.
    -   If you're using a [nested CDT](cdt_design_guidance.html#nested-cdts), you can sync up to 1,000 rows at a time.

    If you update more than the maximum number of rows, the smart service will successfully write to the data source, but the sync will fail.

    Additionally, your CDT should not contain any fields that accept an array of values. If you write data to a field that accepts an array of values, those changes cannot be synced.

### Use the Sync Records smart service

**Applies to**: All record types

**Note:**  To use the **Sync Records** smart service with a [service-backed record type](configure-record-data-source.html#prodlink-web-service), you must [configure a sync by identifier expression](#prodlink-getbyid).

If data is changed by smart services that don't automatically sync data, or data is changed in the source and you can easily access the identifiers of that new data, you can use the Sync Records smart service to sync your data changes.

The Sync Records smart service allows you to specify which data to sync from the source using their unique identifiers. There are a few ways to sync your data using this smart service:

-   [Generate a web API](generate-web-api.html) that includes the `a!syncRecords()` function and add the API's URL to your source system's webhook so it can notify Appian of changes and sync them.

-   Use the `a!syncRecords()` function in an interface so end users can choose to sync data whenever they submit a form or click a button.

-   Use the **Sync Records** smart service in a process model to trigger a sync after a call to an integration or stored procedure executes, or to start a sync using a record action.

Depending on your business needs, the way you choose to use this smart service or function may vary. See the [Sync Records](Sync_Records_Smart_Service.html) smart service page for examples.

#### Configure a sync by identifier expression

To use the **Sync Records** smart service to sync data in a service-backed record type, you must configure a sync by identifier expression on your record type.

To configure a sync by identifier expression:

1.  [Create an expression rule](Expression_Rules.html#create) that returns a list of identifiers for the specific rows of data you want to sync.

    The expression rule must have the following configuration:

    |
    Elements of the Expression

     |

    Required Configurations

     |
    | --- | --- |
    | Integration response |

    -   The expression calls an integration that returns the identifiers of new or changed data from the source.
    -   The response body must cast to a List of Map, List of Dictionary, or a List of CDT.
    -   There must be at least one Number (Integer) field that's non-null for every entry to act as the primary key for the record type.

     |
    | Rule inputs |

    -   The expression must have a rule input of type Number (Integer). This allows the integration to return a list of identifiers.
    -   (Optional) If you expect to sync more than 1,000 rows of data in each incremental sync, configure batching. You can:
        -   [Batch by sequential values](configure-record-data-source.html#batch-by-sequential-values).
        -   [Batch by cursor or token](configure-record-data-source.html#batch-by-cursor-or-token).
        -   [Batch by full URLs](configure-record-data-source.html#batch-by-a-full-url-or-uri).

     |

2.  In the record type, go to **Sync Options**.
3.  Under **Configure sync by identifier expression**, click **\+ CONFIGURE EXPRESSION RULE**.
4.  In the dialog, start entering the name of your expression rule, then select it from the dropdown list.

    **Tip:**  If you did not create a sync by identifier expression yet, you can create one now by clicking .

5.  Click **OK**.
6.  Click **SAVE**.

#### Modify the sync by identifier expression rule

While the sync by identifier expression only needs to return the identifiers for the data you want to sync, you may consider modifying the expression if you want to:

-   Change the default `local!deleteMissingRecords` behavior so that the sync fails when any requested records are not returned by the integration.
-   Add more error handling and customized messages.
-   Format the data returned by your integration.

## Manual full syncs

**Applies to**: All synced record types.

If you're testing your record type configurations in a development environment, or deploying the record type to a new environment, you may need to start a manually sync all source data in the record type.

You can manually start a full sync by:

-   Saving the record type.
-   Clicking **START FULL SYNC** on the **Sync Options** page of the record type.
-   Using an [import customization file](Managing_Import_Customization_Files.html#trigger-a-sync).

## Multiple syncs at the same time

Since you can configure a [combination of sync options](#prodlink-sync-options) on your record type, there may be instances when different sync types occur at the same time.

When multiple syncs try to change the same row of data at the same time, the following will occur:

|
Sync Types Occurring at the Same Time

 |

Sync Behavior

 |
| --- | --- |
| Multiple [Smart service syncs](#smart-service-syncs) | The different writes to the source will succeed, but the syncs will fail and retry. The retry behavior should cause the syncs to occur one after another, but if the retries all succeed at once and result in multiple syncs at the same time, then they will fail. |
| [Smart service sync](#smart-service-syncs) and [full sync](#schedule-full-syncs) | All changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available. |
| [Incremental sync](#schedule-incremental-syncs) and [smart service sync](#smart-service-syncs) | Appian will compare the date and time of the syncs with the **Last Modified Field** configured on the [scheduled incremental sync](#schedule-incremental-syncs) to determine the latest changes to sync.

The record type will only sync changes from the most recent sync. If the changes from one or both sync types have a null value for the last modified field, Appian cannot determine the latest changes to sync, so both syncs will fail. |
| [Incremental sync](#schedule-incremental-syncs) and [full sync](#schedule-full-syncs) | If the full sync started first, then the incremental sync will be skipped since all changes will be captured from the full sync. If the incremental sync started first, then the full sync will start after the incremental sync completes. |

## Availability options

When syncing your source data, your record type may fail to sync due to issues connecting to the data source or because the record type exceeded the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources).

You can prevent these types of sync failures and ensure you have consistent and reliable access to your data by configuring the following sync options:

-   [Keep data available at high volumes](#keep-data-available-at-high-volumes).
-   [Skip failed syncs](#skip-failed-syncs).
-   [Recover failed syncs](#recover-failed-syncs).
-   [Rate limit](#rate-limit).

### Keep data available at high volumes

**Applies to**: [Database-backed](configure-record-data-source.html#connect-to-a-database).

If you're working with a large data source that you expect to exceed the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources), consider enabling **Keep data available at high volumes**.

When enabled, this setting will dynamically sync the latest rows of data whenever a [full sync](#schedule-full-syncs) occurs. You decide which data is the latest by providing a field to sort by, like `lastModified`, `createdOn`, or the primary key field. Then, we’ll sort by the selected field in descending order so we only sync the most recent data.

For example, let's say you enable **Keep data available at high volumes** on the Order record type, and sort by the `createdOn` field. If you have 20,000,002 orders, Appian will sync all but the two oldest orders.

If your record type exceeds the synced row limit after a [smart service sync](#smart-service-syncs), the sync will succeed as long as the record type is within 10% of the synced row limit.

To keep data available at high volumes:

1.  In the record type, go to **Sync Options**.
2.  [Schedule a full sync](records-data-sync.html#schedule-full-syncs).

    **Note:**  You must have scheduled full syncs enabled to use the **Keep data available at high volumes** option. If you do not scheduled full syncs, Appian will automatically enable them for you.

3.  Select the **Keep data available at high volumes** checkbox.
4.  Select the primary key field or a field of type Date or Date and Time to sort by the latest data. Appian will sort by this field in descending order.

    **Tip:**  To ensure that your data continues to sync quickly, the selected field should have an index configured on your database table. If the field does not have an index, you can [generate a database index](records-data-sync.html#generate-a-database-index) directly from the record type.

5.  Click **SAVE**.

#### Generate a database index

When configuring the **Keep data available at high volumes** sync option, the selected field to sort by must have an index configured on the database table. This will ensure your data continues to sync quickly.

If you select a field that does not have a database index, you can automatically generate a database index from the record type.

To generate a database index from the record type:

1.  Select a field to sort by.
2.  From the banner, click **Generate an index on this field in your database**.

    [![Generate Index Option](images/generate-database-index.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img560)

    [![](images/generate-database-index.png)](#_)

3.  Click **GENERATE**. Appian will automatically create the index on the field in your database and generate an index script.
4.  Save the generated index script for future deployment.

If you generate a database index from the record type, but the field is still identified as lacking an index, there may have been an issue publishing the index. This may be a result of generating an index with the same name as an existing index in your database table. If this is the case, rename the existing index on your table before attempting to generate a new one.

### Skip failed syncs

**Applies to**: All synced record types.

When a sync fails on a record type, all references to the record data will be unavailable. This will cause any interfaces, queries, or reports that reference your record type to also be unavailable.

To give you the time and flexibility to troubleshoot sync failures, the **Skip Failed Syncs** option is enabled by default on all new record types.

When this setting is enabled, any failed [full syncs](#schedule-full-syncs) or [incremental syncs](#schedule-incremental-syncs) will be skipped and the record type will continue using the previously available data. This ensures that the record data remains available, while you troubleshoot why the sync failed.

If your data is time sensitive and you do not want to skip failed syncs, consider disabling this option.

To skip failed full syncs and incremental syncs:

1.  In the record type, go to **Sync Options**.
2.  Select the **Skip failed syncs** checkbox.
3.  Click **SAVE CHANGES**.

### Recover failed syncs

**Applies to**: All synced record types.

It's easy to keep your data fresh when you [schedule incremental syncs](#schedule-incremental-syncs), or use [smart services that automatically sync data](#smart-service-syncs) in your workflows. However, there are scenarios when these syncs may fail due to issues connecting to the data source. When the sync fails, the record data becomes unavailable.

To quickly recover data in these scenarios, you can enable _recovery syncs_. When enabled, a recovery sync will start immediately after a smart service sync or a scheduled incremental sync fails due to connection issues. The recovery sync will fetch and re-sync all of your source data to ensure you have the latest changes as quickly as possible.

If the recovery sync fails, the record data will remain unavailable. Review [troubleshooting data sync](Records_Monitoring_Details.html) to resolve any potential issues.

To enable recovery syncs:

1.  In the record type, go to **Sync Options**.
2.  Select the **Recover failed syncs** checkbox.
3.  Click **SAVE**.

### Rate limit

**Applies to**: [Service-backed record types](configure-record-data-source.html#prodlink-web-service).

When syncing data from a web service, Appian will make a series of requests to the web service until it returns all of the data. This can result in many requests in a short amount of time to the source system, and some systems may start to reject requests if too many arrive within a certain interval.

To prevent overloading the web service, you can configure a rate limit to determine the maximum frequency of requests during a full sync.

As a best practice, you should include a buffer in your rate limit. For example, if the web service allows up to 10 requests per second, it's safer to choose 5 requests per second for the sync rate limit to account for other simultaneous requests.

Additionally, the rate limit determines the _maximum_ number of requests in the given time period. As a result, the actual rate could be slower if additional formatting or manipulation of the data is necessary after the request is made.

To add a rate limit:

1.  In the record type, go to **Sync Options**.
2.  Select the **Rate limit** checkbox.
3.  Use the dropdown to choose the number of batch requests made to the source when a full sync occurs.
4.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...