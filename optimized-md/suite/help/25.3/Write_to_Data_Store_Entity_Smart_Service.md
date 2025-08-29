---
source_url: https://docs.appian.com/suite/help/25.3/Write_to_Data_Store_Entity_Smart_Service.html
original_path: Write_to_Data_Store_Entity_Smart_Service.html
version: "25.3"
title: "Write to Data Store Entity Smart Service"
page_id: "Write_to_Data_Store_Entity_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Write to Data Store Entity Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how to use the Write to Data Store Entity smart service in the Process Modeler. The Write to Data Store Entity smart service is a powerful tool that allows you to easily insert or update data in your database from Appian.

The Write to Data Store Entity Smart Service adds process data to an entity in a Data Store. It allows you to select a single entity in a data store to save or update data.

### Required objects

To use the Write to Data Store Entity smart service, you need the following objects:

-   A [custom data type (CDT)](Custom_Data_Types.html) that stores the changed record data.
-   A [data store](Data_Stores.html) that communicates the changed data from the CDT to the data source.

You'll need to reference both of these objects within the smart service. The way you define your CDT determines whether you can update existing data in the data store. See [Updating existing values](#updating-existing-values) for more information.

When the activity is attended (requiring that a user perform a task), you can select the element or subelement of a CDT to store form data in your configuration of the interface. Data written to a data store using this activity must be supported in the XML 1.0 standard.

**Note:**  Unicode control characters, such as characters #x0 and #x1 through #x1F, are not fully supported in XML 1.0.

Any update on related data is based on the JPA annotations/database schema defined for the entity. For example, updating the parent in a one-to-many containment relationship also affects the children, but updating one side of a lookup relationship will not affect the related object.

Also note that any CDT created through the Data Type Designer or uploaded via an XSD file has the `cascade` attribute set to `ALL` on the child CDT by default. So unless you have manually changed this setting, updating a parent CDT value with this setting also affects the child value. Learn more about [CDT Relationships](CDT_Relationships.html).

### Required permissions

The user executing this activity must have Viewer rights to the selected data store, in order to update or insert information.

### Properties

-   **Category**: Data Services

-   **Icon**: ![](images/Smart_Service_Icons/Write_To_Data_Store_Entity.png)

-   **Assignment Options**: Attended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Data Store Entity | [Data Store Entity](Appian_Data_Types.html#data-store-entity) | The data store entity where you want to save your form data. | No | Yes |

In addition to the default node input, you must create a node input with the same [custom data type](Custom_Data_Types.html) (CDT) as the entity in the data store that you select.

For example, if the **AT\_Employee\_DS** data store entity uses the **AT\_employee** CDT, the Write to Data Store Entity smart service must also have a node input that references the **AT\_employee** CDT.

![Sync a large dataset with a looping process](images/write-to-dse-second-node.png)

**Note:**  Additional node inputs can be created to store process data, but cannot save to the data store. Only the first node input mapped to a data store entity is saved.

#### Node outputs

| Name | System Data Type | Description |
| --- | --- | --- |
| Stored Values | Any Type | The data successfully updated or stored in the database. |

You can create a new process variable to store the result or select an existing process variable from the available list.

## Usage considerations

### Data sync behavior for record types

If you use this smart service to add or update data in a database table, and that table is the source of a record type with [data sync](about-data-sync.html) enabled, those changes will be automatically synced in Appian. This is called a _smart service sync_.

If a smart service sync occurs at the same time as a scheduled full sync, all changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available.

Depending on how your table data is structured in the CDT, the maximum number of rows that can be automatically synced will vary:

-   If you're using a [flat CDT](cdt_design_guidance.html#flat-cdts), you can sync up to 50,000 rows at a time.
-   If you're using a [nested CDT](cdt_design_guidance.html#nested-cdts), you can sync up to 1,000 rows at a time.

If you update more than the maximum number of rows, the smart service will successfully write to the data source, but the sync will fail.

If the smart service fails because there is an issue connecting to the database, like if VPN connection fails so you can't write your changes, Appian will automatically retry the smart service and the sync operation up to three times (with two seconds between each retry). After three attempts, the sync will fail and the record data will be unavailable.

See [Troubleshooting Data Sync](Records_Monitoring_Details.html) for more information on the different sync errors.

### Updating existing values

To update existing data, the field must have a primary key value. Otherwise, a new row of data will be inserted.

For example, if you want to update an employee record, you must pass the employee's `Id` to the Write to Data Store Entity smart service. To do this, you can create a [related action](record-actions.html#related-actions).

Related actions are links to process models that users can start directly from a record using information from that record. This allows you to pass an employee `Id` into a start form so users can update the existing data for a specific employee. Then, when they click submit, it will pass the data from the start form to the Write to Data Store Entity smart service. The new values provided by the start form will overwrite the old values for that specific employee.

### Bulk inserts and updates

The Write to Data Store Entity smart service inserts or updates data one row at a time. Bulk inserts and updates are not supported. If your network latency is near the upper bound of the [recommended round-trip time](System_Requirements.html#database-drivers) for TCP communication with your data source, you should use the [Execute Stored Procedure smart service](Execute_Stored_Procedure_Smart_Service.html) or [Query Database smart service](Query_Database_Smart_Service.html) instead to perform bulk inserts and updates.

## a!writeToDataStoreEntity()

The [Write to Data Store Entity smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!writeToDataStoreEntity**( _dataStoreEntity, valueToStore, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`dataStoreEntity`

 |

_Data Store Entity_

 |

The data store entity where you want to save your data.

 |
|

`valueToStore`

 |

_Any Type_

 |

The data value to create or update.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!storedValues` function variable (Any Type) is available to specify the data that was stored or updated in the database. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Review database schema best practices

Since this smart service works directly with your data store and custom data types, be sure to note the [Database Schema Best Practices](Database_Schema_Best_Practices.html) before implementing.

## Example

For an example of how to configure a Write to Data Store Entity smart service in an interface, see the [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) pattern.

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