---
source_url: https://docs.appian.com/suite/help/25.3/Sync_Records_Smart_Service_22r2.html
original_path: Sync_Records_Smart_Service_22r2.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Sync Records Smart Service (22.2)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Sync Records Smart Service](/suite/help/25.3/Sync_Records_Smart_Service.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Sync_Records_Smart_Service.html#Old_Version)

## Overview

The Sync Records smart service allows you to sync a record or set of records in the specified record type. This smart service is supported for all record types with [data sync](about-data-sync.html) enabled. If you want to sync data in a service-backed record type, you must first configure a [sync by identifier expression](records-data-sync.html).

### Permissions needed

The user executing this activity must have **Viewer** permission on the selected record type in order to trigger a sync.

## Properties

-   **Category**: Data Services
-   **Icon**: ![Sync Records from Source](images/Smart_Service_Icons/Sync_Records_from_Source.png)

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

To use this smart service with a [service-backed record type](configure-record-data-source.html#prodlink-web-service), you must first configure a sync by identifier expression on your record type.

A sync by identifier expression is similar to a [record data source](configure-record-data-source.html#create-a-record-data-source) expression; the only difference is that you pass individual record identifiers to your sync by identifier expression to fetch and return a row or set of rows from the web service. This enables Appian to sync specific rows of data from the web service when you use the Sync Records smart service.

Learn how to [configure a sync by identifier expression](records-data-sync.html).

### Syncing more than one record type in a single process

This smart service can only sync data for a single record type.

To sync data for more than one record type, consider creating a process model that uses multiple instances of the node (one for each record type).

[![images/multiple_sync_records.png](images/multiple_sync_records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img138)

[![](images/multiple_sync_records.png)](#_)

### Syncing more than 1,000 records

For large datasets, the 1,000-records-per-request limit means you may need to run multiple instances of the Sync Records smart service when that data changes. One way to do this is to [add a loop to your process model](looping.html) to repeat the Sync Records operation.

Each iteration of the loop can sync up to 1,000 unique records. To get the next batch of unique records, you can use a script task to increment a counter to get the next set of records to sync.

[![images/sync_records_loop.png](images/sync_records_loop.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img139)

[![](images/sync_records_loop.png)](#_)

Let's look at an example of this process. Imagine you have a record type with 1,890 records, and the record field `id` uses sequential integers for the primary key.

To page through sets of 1,000 records, you could create an expression rule that contains the following calculation:

`ri!pageNumber * 1000 - 999`

This calculation determines the starting row for each set of records to sync. You can reference this expression in a script task so you can supply the rule input value using a process variable. The process variable will track the number of times the process has looped, and it will increment on each loop to get the next batch of records.

In this example, the first page of data will return 1 (1 × 1000 − 999). For the second page, the result would be 1001 (2 × 1000 − 999).

Once the script task node calls the expression rule to retrieve the first set of 1,000 record identifiers, the output of the script task node stores that set in a process variable. An XOR gateway checks the output to see if it's not null or empty. If it is, the process ends. If it is not empty, the Sync Records node is run using the list of identifiers provided byt the output.

After the first set of records is synced, a second script task increments the counter variable by 1 and the process repeats.

After the first 1,000 records are synced, there are only 890 left to sync. During the second iteration of the loop, the expression rule will return the remaining identifiers and they will be synced using the Sync Records smart service. The second script task will increment the counter process variable to 3.

During the third loop, the expression rule will not return any new identifiers so the process will end.

### Syncing data deletions

In addition to syncing new or changed data, the Sync Records smart service can also sync data deletions from the source system.

If you pass a primary key value into the smart service, and that value is not in the source system, then that data will also be deleted in Appian. Any deleted records will be removed from the List of IDs returned in the smart service [output](#node-outputs).

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

## a!syncRecords\_22r2()

The [Sync Records smart service](#) is available as an expression function that can be executed inside a _saveInto_ on a [Interface Component](executing_smart_services.html) or as part of a [web API](Web_APIs.html).

### Syntax

**a!syncRecords\_22r2**( _recordType, identifiers, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_Record Type_

 |

A reference to a record type with [data sync](about-data-sync.html) enabled. You must reference the record type directly from the `recordType!` domain (for example, `recordType!Case`).

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

### Missing sync by identifier expression

If you use this smart service to sync data in a [service-backed record type](configure-record-data-source.html#prodlink-web-service), you must configure a [sync by identifier expression](configure-record-data-source.html).

Without this expression, Appian cannot request the correct data from the web service. If the expression is missing, the record type will not be able to sync the specified records and the node will fail. The record type will continue to be available after this error is returned.

### Integration errors

The [sync by identifier expression](records-data-sync.html) uses an integration to communicate with the source system.

If a sync fails due to an issue with the integration, the error will be reported through the expression and appear on the interface where the expression is called. The record data may be unavailable until the issue is corrected and a successful sync occurs.

## Examples

You can use this smart service in a variety of ways to keep your data fresh.

### Trigger a sync from a web API

Let’s say you have a Case record type that uses Salesforce as the source. When cases are logged in Salesforce, you need to immediately sync those changes in Appian.

To sync the new or changed cases, you can generate a web API in Appian that includes the `a!syncRecords_22r2()` function so you can specify the record type to sync when a change occurs in the source. Then, you can add the web API URL in Salesforce so it can notify Appian of any changes and trigger the sync.

[![images/generate-web-api-records.png](images/generate-web-api-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img140)

[![](images/generate-web-api-records.png)](#_)

Learn how to [generate a web API to sync records](generate-web-api.html).

### Trigger a sync from an interface

But perhaps you want to re-sync specific records on demand. For example, if you have a report that shows all critical cases and their status, you may want to refresh this report every so often to ensure you see the latest information about those critical cases.

To refresh (or re-sync) specific cases, you can add a button component to your report and configure the `a!syncRecords_22r2()` function as the _saveInto_ value. This way, anytime a user clicks the button, the specified list of records is re-synced from the source.

[![images/buttonTrigger.png](images/buttonTrigger.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img141)

[![](images/buttonTrigger.png)](#_)

### Trigger a sync from a process model

Alternatively, you may have an existing process model that executes a stored procedure in order to update your source data.

To sync changes created by your stored procedure, you can add the **Sync Records** smart service to your process model. This way, any data changed by the stored procedure is fetched from the source and synced in Appian.

[![images/processModelTrigger.png](images/processModelTrigger.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img142)

[![](images/processModelTrigger.png)](#_)

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...