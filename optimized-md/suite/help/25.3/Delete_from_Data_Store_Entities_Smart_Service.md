---
source_url: https://docs.appian.com/suite/help/25.3/Delete_from_Data_Store_Entities_Smart_Service.html
original_path: Delete_from_Data_Store_Entities_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete from Data Store Entities Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how to use the Delete from Data Store Entities smart service in your process model.

The Delete from Data Store Entities Smart Service lets you delete data in multiple data store entities within the same data store based on your input. The entities to be affected and the data to remove are defined by the **Data to Delete** node input of type **EntityDataIdentifiers**. The data is identified by an array of IDs, so only data with a defined primary key field can be deleted.

This smart service does not produce a node output, but the deletions are added to a new deletion log as described below. If any write to the data store fails, no data is deleted from the data store.

**Note:**  Running this smart service irreversibly deletes the identified row(s) from the target entity. The deletion of related data will be based on the JPA annotations/DB schema defined for the entity. For example, deleting the parent in a one-to-many containment relationship also deletes the children, but deleting one side of a lookup relationship will not affect the related object.

When using this smart service, note that the `cascade` attribute setting also impacts the behavior of your related tables. Appian automatically defines the `cascade` attribute based on the data relationship you select when you use the Data Type Object to create a CDT that defines your data structure and data relationship. By default, nested CDTs defined by a one-to-one relationship have the cascade attribute set to `ALL`.

Additionally, using an XSD file to directly define a data relationship will result in a `cascade` attribute of `ALL`, when the attribute is undefined. In both instances, deleting a row in the parent table will also delete any related rows in the child table. If you want to retain the row in the child table when the parent row is deleted, you must manually change the `cascade` attribute to `REFRESH` in the parent CDT’s XSD file.

For more information, see [CDT Relationships](CDT_Relationships.html), [Custom Data Type (CDT) Design Guidance](cdt_design_guidance.html), and [Supported JPA Annotations](Supported_XSD_Elements_and_JPA_Annotations.html#supported-jpa-annotations).

### Example use case

You have an application that manages purchase requests with a process which needs to remove data from three different entities based on cancellations for an account.

When the Account Manager has a call with a customer, he/she updates the status of the different purchase requests to "cancelled" for the customer account.

Using this smart service, you can remove data from all three data store entities within the same transaction. This way, if an error occurs while deleting from one of the entities, the other entities will not be modified. The data is left in a consistent state as if no data was deleted from any entities.

### Permissions needed

The user running the smart service must have at least **Viewer** rights to the data store that contains the entities defined in the **Data to Delete** node input. Attempting to complete this task without the proper user rights generates an error message and pauses the task.

### Properties

-   **Category**: Data Services

-   **Icon**: ![Delete from Data Store Entity smart service](images/Smart_Service_Icons/Delete_From_Data_Store_Entity.png)

-   **Assignment Options**: Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Data to Delete | EntityDataIdentifiers | The target entity and the primary key values of the items to delete.-   The entity data will be deleted in the order specified in the node input. | No | Yes |
| Deletion Comment | Text | Additional information to capture in the audit logs.
For example, if the node is run as an administrator, indicate the user who requested the deletion. | No | No |

You can delete from multiple data store entities in one transaction by creating an array of type EntityDataIdentifiers.

-   All entities defined in the array must be of the same data store.
-   Arrays can be constructed at the Entity Data Identifiers level of the node input or populated in the process flow prior to executing this smart service and passed to the node input.

See also: [EntityDataIdentifiers](Appian_Data_Types.html#entitydataidentifiers)

##### Example input

If you set the Data to Delete input to delete data in three data store entities, using process variables for the entities and process variables populated in a prior process step for the data values, your input value may resemble this:

```
1
2
3
4
5
={
a!entityDataIdentifiers(entity: pv!ENTITY_SPRINT_ITEMS, identifiers: pv!itemIdsToDelete),
a!entityDataIdentifiers(entity: pv!ENTITY_COMMIT, identifiers: pv!commitIdsToDelete),
a!entityDataIdentifiers(entity: pv!ENTITY_SPRINT, identifiers: pv!sprintIdsToDelete)
}
```

## Usage considerations

### Data sync behavior for record types

If you use this smart service to delete data in a database table, and that table is the source of a record type with [data sync](about-data-sync.html) enabled, those changes will be automatically synced in Appian.

If a smart service sync occurs at the same time as a scheduled full sync, all changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available.

Depending on how your table data is structured in the CDT, the maximum number of rows that can be automatically synced will vary:

-   If you're using a [flat CDT](cdt_design_guidance.html#flat-cdts), you can sync up to 50,000 rows at a time.
-   If you're using a [nested CDT](cdt_design_guidance.html#nested-cdts), you can sync up to 1,000 rows at a time.

If you update more than the maximum number of rows, the smart service will successfully write to the data source, but the sync will fail.

If the smart service fails because there is an issue connecting to the database, like if VPN connection fails so you can't execute the smart service, Appian will automatically retry the smart service and the sync operation up to three times (with two seconds between each retry). After three attempts, the sync will fail and the record data will be unavailable.

See [Troubleshooting Data Sync](Records_Monitoring_Details.html) for more information on the different sync errors.

### Bulk deletes

The Delete from Data Store Entities smart service deletes data one row at a time. Bulk deletes are not supported. If your network latency is near the upper bound of the [recommended round-trip time](System_Requirements.html#database-drivers) for TCP communication with your data source, you should use the [Execute Stored Procedure smart service](Execute_Stored_Procedure_Smart_Service.html) or [Query Database smart service](Query_Database_Smart_Service.html) instead to perform bulk deletes.

## a!deleteFromDataStoreEntities()

The [Delete from Data Store Entities smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!deleteFromDataStoreEntities**( _dataToDelete, deletionComment, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`dataToDelete`

 |

_List of EntityDataIdentifiers_

 |

A list of EntityDataIdentifiers that identify the items to delete.

 |
|

`deletionComment`

 |

_Text_

 |

Additional info to capture in the audit logs, for example, if the node is run as an administrator, indicate the user who requested the deletion.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Deletion log output

Each time this smart service executes successfully, a new line is added to the `data_store_deletions.csv` log file for each top level item explicitly configured.

This does not include a new line for children records in a containment relationship and those automatically deleted with the deletion of the parent.

The deletion file is located in the following file path:

`<Appian_Home>/logs/audit/*`

Each row in the deletion log contains the following information about the data deletion:

-   **Timestamp**: The time in which the deletion occurred.
-   **User**: The username of the user who executed the smart service.
-   **Data Store**: The name of the target data store.
-   **Entity**: The name of the target data store entity.
-   **ID**: The primary key value of the data that was deleted.
-   **Process Model Name**: The name of the process model that executed the smart service.
-   **Process Model ID**: The ID of the process model that executed the smart service.
-   **Process Name**: The name of the process that executed the smart service.
-   **Process ID**: The ID of the process that executed the smart service.
-   **Node Display Name**: The node display name of the executed smart service.
-   **Node ID**: The node ID of the executed smart service.
-   **Comment**: The deletion comment entered as part of the smart service.
    -   Since this smart service runs in unattended mode, Appian recommends adding the user who requested the deletion to the deletion comment.

**Note:**  All information is created in the primary language of the system - not the user's preferred language.

See also: [Deletion Logs](Logging.html#deletions)

## Runtime behavior

All data is deleted from the data store in the order in which it was given.

-   Casting occurs when the data type of an EntityDataIdentifiers data field does not match the data type of the primary key of the target entity.
-   If any failure occurs during the transaction, all deletions are rolled back and the data in the data store are not deleted.
-   If none of the data fields contain values to delete, one or more identifiers are null, or the EntityDataIdentifiers array is an empty list, no transaction occurs and nothing is recorded in the performance log or deletion log.

## Possible error messages

### Casting Errors

If you receive a casting error, check your EntityDataIdentifiers value. The identifiers in this value must be the primary key value IDs of the data to delete (such as `pv!opportunities.id`) rather than CDT values (such as `pv!opportunities`) or else a casting error occurs.

### Constraint violation exceptions

If you receive the following message, it may be due to a constraint violation exception or similar error that occurred while attempting to save data to the database:

```
1
An error occurred while trying to delete data. No data was deleted. Details: <exception message>
```

A constraint violation exception depends on your database schema and may occur when deleting an item that is referenced by another item in the same table via a foreign key.

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