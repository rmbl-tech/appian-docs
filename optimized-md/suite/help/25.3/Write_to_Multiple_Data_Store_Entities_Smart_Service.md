---
source_url: https://docs.appian.com/suite/help/25.3/Write_to_Multiple_Data_Store_Entities_Smart_Service.html
original_path: Write_to_Multiple_Data_Store_Entities_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Write to Multiple Data Store Entities Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Write to Multiple Data Store Entities Smart Service writes multiple CDT values to multiple entities within the same data store based on your input. This differs from the [Write to Data Store Entity Smart Service](Write_to_Data_Store_Entity_Smart_Service.html) because you can update multiple entities within a single database transaction.

The entities to be updated and the values to update each entity with are defined by the **Value to Store** node input of type **EntityData**. The transaction produces a Node Output of type EntityData containing the actual stored values of each EntityData object passed to the smart service which can be filtered to retrieve the stored values.

If any write to the data store fails, no data is written to the data store.

**Note:**  Any update on related data is based on the JPA annotations/DB schema defined for the entity. For example, updating the parent in a one-to-many containment relationship also affects the children, but updating one side of a lookup relationship will not affect the related object.

Also note that any CDT created through the Data Type Designer or uploaded via an XSD file has the `cascade` attribute set to `ALL` on the child CDT by default, so unless you have manually changed this setting, updating a parent CDT value with this setting also affects the child value. Learn more about [CDT Relationships](CDT_Relationships.html).

### Example use case

You have an application that manages a sales cycle with a process which needs to update three different entities based on an Account Executive's work on the sale.

When the Account Executive has a call with a potential customer, he/she updates the status of the different opportunities discussed and the customer account.

Using this smart service, you can have all three data store entities updated within the same transaction. This way, if an error occurs while writing to one of them, the others entities will not update either - leaving the data in a consistent state as if they were never modified.

### Permissions needed

The user running the smart service must have **Viewer** rights to the data store that contains the entities defined in the EntityData node input. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Data Services

-   **Icon**: ![Write to Multiple Data Store Entities](images/Smart_Service_Icons/Write_To_Multiple_Data_Store_Entity.png)

-   **Assignment Options**: Always Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Value to Store | EntityData | The target entity and data values to store in the target entity.-   Entering a null or empty value does not produce an error or write transaction.
-   The value can be populated by a process variable created prior to executing this smart service.
-   Every EntityData value must have a valid value for the Data Store Entity field. | No | Yes |

Only the Value to Store input value is used when writing data to the data store. All other inputs are ignored.

You can write to multiple EntityData inputs through one transaction by creating an array of EntityData objects for the EntityData value.

-   All entities defined in the array must be of the same data store.
-   Arrays can be constructed at the EntityData level of the node input or populated in the process flow prior to executing this smart service and passed to the node input.

See also: [EntityData Data Type](Appian_Data_Types.html#entitydata)

##### Example inputs 1

If you set the Value to Store input to modify data in three data store entities, using process variables for the entities and process variables populated in a prior process step for the data values, your input value may resemble this:

```
1
2
3
4
5
6
7
8
={
a!entityData(entity: pv!ENTITY_OPPORTUNITIES,
 data: {pv!RadiationOpp,pv!NewBusinessOpp}),
a!entityData(entity: pv!ENTITY_ACCOUNT,
 data: {pv!AcmeAccount}),
a!entityData(entity:pv!ENTITY_AE_NOTES,
 data:{pv!ListOfNotesFromAccountExec})
}
```

##### Example inputs 2

If you use the **is appended to** output operator on nodes in a prior process step to collect EntityData process variables and create an array of EntityData values, your input value may resemble this:

```
1
=pv!ArrayOfEntityDataToStore
```

#### Node outputs

If the EntityData input contains a null or empty data field value, the EntityData object still returns as part of the EntityData output array with the null or empty data field.

| Name | System Data Type | Description |
| --- | --- | --- |
| Stored Values | EntityData | An array of type EntityData listing each EntityData object passed to the data store after evaluation and in the order evaluated. |

##### Example output 1

For [Example 1](#example-inputs-1) in the above Example inputs, you can use the known indices of the EntityData array values to store data from the outputs into process variables of the correct data type using the following expressions:

```
1
2
3
StoredValues[1].data → pv!StoredOpportunities
StoredValues[2].data → pv!AcmeAccount
StoredValues[3].data → pv!NewNotes
```

##### Example output 2

For [Example 2](#example-inputs-2) in the Example inputs, since the EntityData input value entered is an array of varying length based on runtime conditions, you can use the reduce() function to accumulate the data sent to the entity.

To do so, first create a rule similar to the following:

```
1
2
 getDataFromEntityDataForEntity(ri!data, ri!EntityData, ri!Entity)
 =append(ri!data, if(ri!EntityData.entity=ri!Entity, ri!EntityData.data, {})
```

Then use this rule with the reduce() function to define a node output similar to the following that saves into a multiple process variable of type Ticket:

```
1
reduce(rule!getDataFromEntityDataForEntity, {}, ac!StoredValues, cons!ENTITY_TICKET)
```

This node output will return a list of data where `entity=ticket` into your process variable of type Ticket.

## Usage considerations

### Data sync behavior for record types

If you use this smart service to add or update data in a database table, and that table is the source of a record type with [data sync](about-data-sync.html) enabled, those changes will be automatically synced in Appian. This is called a _smart service sync_.

If a smart service sync occurs at the same time as a scheduled full sync, all changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available.

You can sync up to 1,000 rows per entity. If you update more than the maximum number of rows, the smart service will successfully write to the data source, but the sync will fail. If you need to write more than 1,000 rows, consider using the [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html) smart service instead.

If the smart service fails because there is an issue connecting to the database, like if VPN connection fails so you can't write your changes, Appian will automatically retry the smart service and the sync operation up to three times (with two seconds between each retry). After three attempts, the sync will fail and the record data will be unavailable.

See [Troubleshooting Data Sync](Records_Monitoring_Details.html) for more information on the different sync errors.

### Bulk inserts and updates

The Write to Multiple Data Store Entities smart service inserts or updates data one row at a time. Bulk inserts and updates are not supported. If your network latency is near the upper bound of the [recommended round-trip time](System_Requirements.html#database-drivers) for TCP communication with your data source, you should use the [Execute Stored Procedure smart service](Execute_Stored_Procedure_Smart_Service.html) or [Query Database smart service](Query_Database_Smart_Service.html) instead to perform bulk inserts and updates.

## a!writeToMultipleDataStoreEntities()

The [Write to Multiple Data Store Entities smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!writeToMultipleDataStoreEntities**( _valuesToStore, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`valuesToStore`

 |

_List of EntityData_

 |

A list of the target entity and data values to store in the target entity, created with a!entityData().

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service executed successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!storedValues` function variable (EntityData) is available to specify an array of type EntityData listing each EntityData object passed to the data store after evaluation and in the order evaluated. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Runtime behavior

All data is written to the data store in the order in which it was given.

-   Casting of CDTs will occur if the data type of an EntityData data field does not match the target entity data type.
-   If any failure occurs during the transaction, all changes will be rolled back and the data in the data store will not be modified.
-   If none of the data fields contain values to store or if the EntityData array is an empty list, no transaction occurs and nothing is recorded in the performance log.

| Error Message | Cause |
| --- | --- |
| `The list of EntityData passed to the smart service contains entities from different data stores. All entities must belong to the same data store. No values have been written.` | Not all entities belong to the same data store. |
| `The EntityData at index [{0}] has an entity field that does not have a value. Each EntityData passed to the smart service must have a valid value for the entity. No values have been written.` | A Data Store Entity value of a EntityData value is null. |
| `An error occurred while trying to retrieve the data store entity [id={0}]. Verify that the data store and entity have not been deleted. Details: {1}` | The referenced entity or associated data store has been deleted or is invalid. |
| `The data source [{1}] could not be reached while trying to write to the data store: {0}.` | An error occurred when connecting to the data source for the associated data store. |
| `An error occurred while trying to write to the data store: {0}. No values have been written. Details: {1}` | A database constraint or similar error occurred while attempting to save data to the database. |
| `The user [{0}] does not have sufficient privileges to write data to the data store [{1}]. No values have been written. Verify that the data store has the correct security settings. Details: {2}` | The user executing the node does have at least Viewer rights for the associated data store. |

## Review database schema best practices

Since this smart service works directly with your data store and custom data types, be sure to note the [Database Schema Best Practices](Database_Schema_Best_Practices.html) before implementing.

As this smart service updates multiple entities in a single database transaction, some overhead is introduced in the write process to ensure atomicity. When transactional aspects of this smart service are not required, it is preferable to use multiple instances of the [Write to Data Store Entity Smart Service](Write_to_Data_Store_Entity_Smart_Service.html) to ensure better performance.

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