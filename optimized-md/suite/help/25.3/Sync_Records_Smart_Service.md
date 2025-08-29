---
source_url: https://docs.appian.com/suite/help/25.3/Sync_Records_Smart_Service.html
original_path: Sync_Records_Smart_Service.html
version: "25.3"
title: "Sync Records Smart Service"
page_id: "Sync_Records_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Sync Records Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Sync Records smart service allows you to sync a record or set of records in the specified record type. This smart service is supported for all record types with [data sync](records-data-sync.html) enabled. If you want to sync data in a service-backed record type, you must first configure a [sync by identifier expression](records-data-sync.html#prodlink-getbyid).

### Permissions needed

The user executing this activity must have **Viewer** permission on the selected record type in order to trigger a sync.

## Properties

-   **Category**: Data Services
-   **Icon**: ![Sync Record from Source](images/Smart_Service_Icons/Sync_Records_from_Source.png)
-   **Assignment Options**: Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations, see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Record Type | Record Type | The record type you want to sync. | Yes | No |
| Identifiers | List of Any Type | A list of primary key values for the records to sync. You can include up to 1,000 identifiers in each sync request. | Yes | No |

See also: [Record Type](Appian_Data_Types.html#record-type)

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Records Updated | List of IDs | A list of records updated or inserted upon successful execution. The operation performed is not included in the list. Records that were deleted because their identifiers were no longer present in the source system are excluded from the list. |
| Query Error | Text | The error message returned when the query to get the list of new or updated records fails |

## Usage considerations

### Syncing data in a service-backed record type

To use this smart service with a [service-backed record type](configure-record-data-source.html#prodlink-web-service), you must first [configure a sync by identifier expression](records-data-sync.html#prodlink-getbyid).

A sync by identifier expression is similar to a [record data source](configure-record-data-source.html#create-a-record-data-source) expression; the only difference is that you pass individual record identifiers to this expression to fetch and return a row or set of rows from the web service. The sync by identifier expression is what enables Appian to sync specific rows of data from the web service when you use the Sync Records smart service.

### Syncing more than one record type in a single process

This smart service can only sync data for a single record type.

To sync data for more than one record type, consider creating a process model that uses multiple instances of the node (one for each record type).

[![images/multiple_sync_records.png](images/multiple_sync_records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img132)

[![](images/multiple_sync_records.png)](#_)

### Syncing data deletions

In addition to syncing new or changed data, the Sync Records smart service can also sync data deletions from the source system.

If you pass a primary key value into the smart service, and that value is not in the source system, then that data will also be deleted in Appian. Any deleted records will not appear in the List of IDs returned in the smart service [output](#node-outputs).

For example, imagine you have a Employee record type that syncs inventory information from an external system. Appian is not used to make changes to any of this data, but staffing statistics are displayed in charts alongside other business metrics in [reports](report-with-records.html). When employees leave the company, this data is updated in the external system, and any deleted records should be removed from Appian to provide an accurate report.

If the external system sends a webhook message for these events, you can [configure a web API](generate-web-api.html) with Sync Records to sync the deletion.

If webhooks aren't available, you can [sync additions, updates, and deletions](#sync-more-than-1000-records) by enumerating the list of record IDs and looping to sync the changes.

### Syncing more than 1,000 records

For large datasets, the 1,000-records-per-request limit means you may need to run multiple instances of the Sync Records smart service when that data changes. One way to do this is to [add a loop to your process model](looping.html) to repeat the Sync Records operation.

Each iteration of the loop can sync up to 1,000 unique records. To get the next batch of unique records, you can use a script task to increment a counter to get the next set of records to sync. See this [sync example](#sync-more-than-1000-records) for a full explanation.

[![images/sync_records_loop.png](images/sync_records_loop.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img133)

[![](images/sync_records_loop.png)](#_)

### Sync Records and the record type row limit

If your record type exceeds the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources) after the Sync Records smart service executes, the write will be successful and the sync will succeed as long as:

-   The record type has [**Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) enabled.
-   The record type is within 10% of the synced row limit.

Otherwise, the write will succeed but the sync will fail and your record data will be unavailable.

### Using the onSuccess parameter

When setting the _onSuccess_ parameter, you can use `fv!recordsUpdated` to reference the updated records in the response. The record type's fields are accessed using the record type domain (`recordType!`).

For example, to return the names for a Customer record type backed by a web service, write an expression similar to this example:

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
a!syncRecords(
  recordType: recordType!Customer,
  identifiers: ri!identifiers,
  onSuccess: a!httpResponse(
    statusCode: 200,
    headers: {
      a!httpHeader(name: "Content-Type", value: "application/json")
    },
    body: "Customers updated: " & `fv!recordsUpdated[recordType!Customer.fields.fullName]`
  )
)
```

If you are displaying this Customer record type in an interface, you can use [a!save()](fnc_evaluation_save.html) in the _onSuccess_ parameter to update a local variable with the latest data available in `fv!recordsUpdated`.

```
1
2
3
4
5
6
7
a!syncRecords(
  recordType: recordType!Customer,
  identifiers: ri!identifiers,
  onSuccess: a!save(
    local!records, fv!recordsUpdated
  )
)
```

### Automatic refresh on record views

When you use this smart service on a [record view](record-view.html), the view will automatically refresh with the latest record data.

This means that when your record view interface has a Record Action component that triggers the Sync Records smart service, or a button component that triggers the `a!syncRecords()` function, the record view data will automatically refresh after the sync occurs.

This refresh behavior only applies to data supplied by [rv!record](reference-records.html#use-rvrecord). If your record view definition uses `rv!identifier` or a local variable to supply the record data, the data will not automatically refresh; instead, you will need to configure additional refresh behavior.

## a!syncRecords()

The [Sync Records smart service](#) is available as an expression function that can be executed inside a _saveInto_ on a [Interface Component](executing_smart_services.html) or as part of a [web API](Web_APIs.html).

### Syntax

**a!syncRecords**( _recordType, identifiers, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_Record Type_

 |

A reference to a record type with [data sync](records-data-sync.html) enabled. You must reference the record type directly from the `recordType!` domain (for example, `recordType!Case`).

 |
|

`identifiers`

 |

_List of Any Type_

 |

The primary key values of the records to sync. You can include up to 1,000 identifiers in each sync request.

 |
|

`onSuccess`

 |

_Any Type_

 |

An HTTP response or a list of a!save to return after the integration executes successfully. Created with `a!httpResponse()` or `a!save()`. Use `fv!recordsUpdated` to reference the updated records in the success response, and `fv!queryError` to reference any error in querying the set of synced records.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Possible errors

Appian will return an error when there is a problem syncing data for a record type. This section explains some of the common reasons that errors occur, and which errors will trigger an automatic retry of your sync.

### Security and permissions

By default, the smart service is run as whoever starts the process. If that user does not have **Viewer** permission for the record type being synced, the sync is not triggered. The node will fail and pause the process with an exception.

### Data type mismatch

The data type of the items listed in the _identifiers_ parameter must match the type of the source's primary key field. If a mismatch occurs, the node will fail and pause the process with an exception.

### Syncing too much data

The Sync Records smart service allows you to sync up to 1,000 records at a time. If you try to sync more than 1,000 records, the sync will fail and the record data will be unavailable.

Instead, you can [sync more than 1,000 records](#syncing-more-than-1000-records) by creating a loop in your process model to execute the Sync Records smart service multiple times.

### Syncing text values with too many characters

If you have a field of type Extra Long Text and try to sync more than 64,000 characters in that field, the sync will fail.

To prevent values from exceeding 64,000 characters, you should configure character limits on any [paragraph](Paragraph_Component.html) or [styled text editor](Styled_Text_Editor_Component.html) components in your applications.

If a value exceeding 64,000 characters is provided outside of Appian, you will need to update the value in your source to reduce the number of characters. Then, you can manually trigger a full sync or wait til your next scheduled full sync to capture the changes.

### Missing sync by identifier expression

If you use this smart service to sync data in a [service-backed record type](configure-record-data-source.html#prodlink-web-service), you must configure a [sync by identifier expression](records-data-sync.html#prodlink-getbyid).

Without this expression, Appian cannot request the correct data from the web service. If the expression is missing, the record type will not be able to sync the specified records and the node will fail. The record type will continue to be available after this error is returned.

### Integration errors

The [sync by identifier expression](records-data-sync.html#prodlink-getbyid) uses an integration to communicate with the source system.

If a sync fails due to an issue with the integration, the error will be reported through the expression and appear on the interface where the expression is called. The record data may be unavailable until the issue is corrected and a successful sync occurs.

### Automatic retries

In the following cases, Appian will automatically retry the sync operation when the smart service fails:

| Issue | Record type source |
| --- | --- |
| Source [integration error](Records_Monitoring_Details.html#web-service-errors). | Web service |
| Problem with the [sync by identifier expression](records-data-sync.html#prodlink-getbyid). | Web service |
| Problem connecting to the source. | Database or Salesforce |

Appian will retry the sync operation up to three times (with two seconds between each retry). After three attempts, the sync will fail and the record data will be unavailable.

See [Troubleshooting Data Sync](Records_Monitoring_Details.html) for more information on the different sync errors.

## Examples

You can use this smart service in a variety of ways to keep your data fresh.

### Trigger a sync from a web API

Let’s say you have a Case record type that uses Salesforce as the source. When cases are logged in Salesforce, you need to immediately sync those changes in Appian.

To sync the new or changed cases, you can generate a web API in Appian that includes the `a!syncRecords()` function so you can specify the record type to sync when a change occurs in the source. Then, you can add the web API URL in Salesforce so it can notify Appian of any changes and trigger the sync.

[![images/generate-web-api-records.png](images/generate-web-api-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img134)

[![](images/generate-web-api-records.png)](#_)

Learn how to [generate a web API to sync records](generate-web-api.html).

### Trigger a sync from an interface

But perhaps you want to re-sync specific records on demand. For example, if you have a report that shows all critical cases and their status, you may want to refresh this report every so often to ensure you see the latest information about those critical cases.

To refresh (or re-sync) specific cases, you can add a button component to your report and configure the `a!syncRecords()` function as the _saveInto_ value. This way, anytime a user clicks the button, the specified list of records is re-synced from the source.

[![images/buttonTrigger.png](images/buttonTrigger.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img135)

[![](images/buttonTrigger.png)](#_)

### Trigger a sync from a process model

Alternatively, you may have an existing process model that executes a stored procedure in order to update your source data.

To sync changes created by your stored procedure, you can add the **Sync Records** smart service to your process model. This way, any data changed by the stored procedure is fetched from the source and synced in Appian.

[![images/processModelTrigger.png](images/processModelTrigger.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img136)

[![](images/processModelTrigger.png)](#_)

### Sync more than 1,000 records

Imagine you have a database-backed Item record type with thousands of records. The record type syncs inventory information from an external system. Appian is not used to make changes to any of this data, but inventory statistics are displayed in charts alongside other business metrics in [reports](report-with-records.html). Users of the reports need updated information throughout the day, but the external system does not provide webhook notifications when data changes.

To meet this need, you can build a looping process model with a Sync Records node. This process will sync all data from the source:

[![images/syncRecordDeletions.png](images/syncRecordDeletions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img137)

[![](images/syncRecordDeletions.png)](#_)

To store information used at different points in the process, three variables are needed:

-   `pv!pageNumber` is a number that is incremented with each iteration of the loop. Its initial value is `1`.
-   `pv!recordIds` is a list of primary key values (numbers) passed into the **Identifiers** node input.
-   `pv!updatedRecords` is a Boolean used by the XOR node to decide when to end the process.

Once you have your process variables, configure an expression in the output of a [Script Task node](Configuring_the_Script_Task.html).

```
1
enumerate(1000) + (pv!pageNumber - 1) * 1000 + 1
```

The expression takes the current value of `pv!pageNumber` and returns a list of IDs stored as `pv!recordIds`. The first page of data will return a list from 1 to 1000, and a second page will be 1001 to 2000.

Next, the Sync Records node is run using the list of identifiers in `pv!recordIds`. A custom output is used to check if any values are returned in the **Records Updated** output. When any records are synced, `pv!updatedRecords` is set to true; otherwise, `pv!updatedRecords` is set to false.

After the first set of records is synced, the XOR node checks if `pv!updatedRecords` is true. If it is, a second script task increments `pv!pageNumber` by 1 and the process repeats.

Say the Item record type has 1,890 records. After the first 1,000 records are synced, 890 remain. During the second iteration of the loop, the expression will return the next 1,000 identifiers, and the corresponding records will be synced.

Because 890 records were synced, the process continues, and `pv!pageNumber` will be set to 3. During the third loop, `pv!recordIds` will be set to a list from 2001 to 3000. The Sync Records node will not update any records, `pv!updatedRecords` will be set to false, and the XOR node will route the process to the end node.

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Old versions

There are older versions of this smart service. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!syncRecords\_22r2](/suite/help/25.3/Sync_Records_Smart_Service_22r2.html) |
This function was evolved to [automatically refresh record data](Sync_Records_Smart_Service.html#automatic-refresh-on-record-views) in any record view where the function is used.

 |

To use the latest version of the smart service node:

1.  Drag in a new Sync Records Smart Service node from the palette, and place it on the same connector as the current node.
2.  Configure the new node with settings matching your current, older node.
3.  Delete the old Sync Records Smart Service node.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...