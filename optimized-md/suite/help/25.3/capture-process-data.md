---
source_url: https://docs.appian.com/suite/help/25.3/capture-process-data.html
original_path: capture-process-data.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Connect to Process Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers). It describes how to connect to the source of process data or start capturing process data.

## Overview

To successfully analyze how your business processes work, you'll need process data. Process data includes the [case and event data](key-pi-terms.html#case-data-and-event-data) that describes the main activities in your [business process](key-pi-terms.html#business-process).

If you don't have process data yet, you can easily [start capturing data with record events](#capture-process-data-using-record-events).

If you already have process data, Appian makes it easy to connect to your existing data, regardless of where it lives:

-   If you are currently capturing data with record events, your process data already meets the data model requirements for process insights. You can [enrich or clean your data](prepare-data.html), or you can [deploy your app to the production environment](deploy-to-production.html) without further configuration.

-   If your data is already in Appian, but isn't stored in synced record types, you can [create new synced record types](#connect-to-existing-process-data) to access this data in Process HQ.

-   If your process data is stored somewhere else, [Appian's data fabric capability](data-fabric.html) lets you easily [connect to data wherever it is stored](#connect-to-existing-process-data)—whether that's a relational database, a web service, or even static files of comma-separated values.

## Capture process data using record events

If you are not already capturing your process data, you can easily get started by [configuring record events](record-events.html) on your record types.

Record events allows you to easily track what happens in your applications and when. You can choose which events to track based on your business process, and tailor your record events configuration to capture the data you'll need for process insights.

When you configure record events, you can automatically generate record types to store your process data. Your generated record types will already meet the data model requirements for process insights, including all required fields and record type relationships, so you can start using your data in process insights with minimal additional effort.

Once you're capturing process data with record events, you can [enrich or clean your data](prepare-data.html), or you can [deploy your app to the production environment](deploy-to-production.html) without further configuration.

See an [example](data-prep-examples.html#example-record-events) of how you can configure record events to capture process data.

## Connect to existing process data

If you have existing process data stored outside of Appian, or if your data is stored in Appian but not in synced record types, you'll need to create synced record types in Appian that connect to your data.

The following sections in this page describe the data model to use for your process data and the configuration steps you'll need to connect to process data stored outside of Appian.

To connect to your data:

1.  [Review the data model requirements for process insights](#data-model).
2.  Create synced record types to connect to your [data sources](#data-sources):
    -   [Database](#database).
    -   [Web service](#web-service).
    -   [Salesforce](#salesforce).
    -   [Comma-separate values (CSV)](#comma-separated-values-csv).

After you connect to your process data, you may need to further [enrich or clean your data](prepare-data.html) to prepare it for process analysis.

### Data model

To be compatible with process insights, process data must be stored in [synced record types](#synced-record-types). These record types must have [specific fields](#fields) and [relationships](#relationships) configured to use the data in process insights.

#### Synced record types

To be accessible in Process HQ, your process data must be stored in [record types with data sync enabled](about-data-sync.html).

You must have at least two record types containing the primary data about your process:

-   The [**event history record type**](key-pi-terms.html#case-record-type-and-event-history-record-type), which stores the details of your events.
-   The [**case record type**](key-pi-terms.html#case-record-type-and-event-history-record-type), which stores details about specific instances of a business process.

For example, in an Order Management app, the Order record type stores information about the order itself, such as the name of the customer who placed the order, and the Order Event History record type stores the details of how and when your organization received, acknowledged, and fulfilled the order.

Those two record types may represent all you need to know about your orders, but you may also have captured data in additional record types that provide more context for understanding the process.

For example, in the Order Management app, you might want to know more about the customer who placed the order, such as what industry the customer belongs to. That data would be stored in a Customer record type, which can also be accessed in Process HQ.

[![Relationship diagram for Order, Customer, Industry, Order Event History, and Order Event Type Lookup record types](images/process_insights/example-synced-record-types.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img643)

[![](images/process_insights/example-synced-record-types.png)](#_)

##### Considerations

When creating your synced record types, keep the following in mind:

-   With large data sources, sync only the most recent data, or sync only a portion of the data to avoid exceeding the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources) on a synced record type. Learn more about [syncing data from large data sources](build-best-data-fabric.html#identify-the-best-way-to-work-with-large-data-sources).
-   For ease of [deployment to a higher environment](deploy-to-production.html), keep all record types connecting to process data in a single application.
-   With process insights, [process data is secured at the process level](configure-security.html); [record type security](appian-records-security.html) is not applied.
-   Store lookup data in [a separate record type](build-best-data-fabric.html#store-lookup-data-in-a-separate-record-type), so those static values stay consistent across your data.

    For example, it's a best practice to store the list of activities that can occur in a process in a separate, related record type. If you've configured record events, this related record type is called the **Event Type Lookup** record type.

    [![images/process_insights/addRelationships.png](images/process_insights/addRelationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img644)

    [![](images/process_insights/addRelationships.png)](#_)

#### Fields

The fields in your record types become part of a process known as [_attributes_](key-pi-terms.html#attributes). Attributes are characteristics of a case or event in process data that provide additional context about a case or event.

To ensure there are consistent attributes to analyze in a process, the case record type and event history record have a few required fields.

In the case record type, there is only one required field:

|
Required Field

 |

Data Type

 |

Description

 |
| --- | --- | --- |
|

Case ID

 |

Number (Integer)

 |

The unique identifier for the specific occurrence of the business process. This will be the field used to create the [relationship](#relationships) between the case and event history record types. Typically, this field is the primary key.

 |

In the event history record type, required fields include:

|
Required Field

 |

Data Type

 |

Description

 |
| --- | --- | --- |
|

Case ID

 |

Number (Integer)

 |

The unique identifier for the specific occurrence of the business process. This will be the field used to create the [relationship](#relationships) between the case and event history record types.

The case ID must be a unique field. Typically, this field is the primary key on the case record type and a foreign key on the event history record type.

 |
|

Activity

 |

Number (Integer) or Text

 |

The real-world action or task that occurs as part of the business process. If you follow best practices, this field would be of type Number (Integer) that references the activity in a lookup record type. However, this field can alternatively be of type Text and contain the exact activity names, like Created Order or Filled Order.

Activities should have short, human-readable names, and must be stored in a single field. If your activity data doesn't meet these conditions, [additional data preparation](prepare-data.html) is required.

 |
|

Start or End

 |

Date Time

 |

The date and time that the event either started or ended. This value is used to calculate case duration in process insights. If you've configured [record events](record-events.html), this field represents an end timestamp.

For more information about event timestamps, see [Capture the right timestamps](record-events.html#capture-the-right-timestamps).

 |

##### Considerations

When selecting and configuring fields, keep the following in mind:

-   Provide [user-friendly field names](build-best-data-fabric.html#field-display-names-and-descriptions), so analysts can easily understand what data is included in a process. By default, record fields names appear in title case formatting to users in Process HQ. Data stewards and analysts can also customize the field names when they add or edit a process.
-   Avoid capturing event information in comment fields. While you can [transform text strings into usable event data](prepare-data.html), it requires a larger investment of developer time.
-   Collecting crucial process details in long, unstructured fields will not make process insights impossible, but will require more involved [data preparation](prepare-data.html).

#### Relationships

[Record type relationships](record-type-relationships.html) provide a fast and easy way to connect and reference related data. By adding relationships from your case record type and event history record type to related record types, you can easily analyze data from multiple sources in process insights.

The relationships between the case, event, and associated record types determine what data can be included for analysis in a process.

Your case record type must have a one-to-many relationship to your event history record type, so that the individual events can be analyzed as a single process. For example, in an Order Management app, the Order record type should have a one-to-many relationship to the Order Event History record type.

**Tip:**  When adding relationships, provide [user-friendly relationship names](build-best-data-fabric.html#field-display-names-and-descriptions), so data stewards can easily recognize the relationships between record types when [adding or editing a process](add-process.html).

##### Considerations

When creating relationships, keep in mind that data stewards can only select fields from a one-to-one or many-to-one relationship when [adding a process](add-process.html). They cannot select fields from a one-to-many relationship.

For example, in a purchase order process, the Order record type (in process insights terms, the case record type) could have the following relationships:

-   One-to-one relationship to the Customer record type. The data steward could select the Customer Name field from the Customer record type.
-   Many-to-one relationship to the Region record type. The data steward could select the display name field for a region from the Region record type.
-   One-to-many relationship to the Order Items record type. The data steward cannot select fields from this record type. Instead, to use data from this relationship, you can [prepare that piece of the process data](prepare-data.html) by either creating a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations) in the record type, or creating a [custom attribute](process-custom-attributes.html). For example, you can create a custom record field on the Order record type that gets the count of the items associated with each order.

### Data sources

When you create your synced record types, you'll need to connect to your process data—whether's it in a [database](#database), [salesforce](#salesforce), a different [web service](#web-service), or a [CSV file](#comma-separated-values-csv).

The sections below describe how to connect a record type to the source of your existing process data.

#### Database

One of the most common ways to store process data is in a database. Whether it's in the out-of-the-box Appian Cloud database or in another supported database, it's easy to connect to that data so you can use it as the source of your record type.

If your data is already in Appian, but it's available in record types without data sync enabled (unsynced record types), or it's only in custom data types (CDTs) and data store entities (DSEs), you'll need to create new synced record types to access this data in Process HQ.

**Note:**  Do not enable data sync on existing record types. Doing so will create new UUIDs for your record fields, which will cause any existing field referenced to break.

To connect to process data in a database, you will need the following:

-   A [data source connected system](data-source-connected-systems.html) or [custom JDBC connected system](custom-jdbc-connected-system.html) to connect to an external database.
-   [Case and event history record types](key-pi-terms.html#case-record-type-and-event-history-record-type). These record types must have [data sync enabled](configure-record-data-source.html#synced-database) and a [one-to-many relationship](record-type-relationships.html) from the case record type to the event history record type.

See specific examples of connecting and preparing process data from a database:

-   [Example: Existing event table](data-prep-examples.html#example-existing-event-table).
-   [Example: External database](data-prep-examples.html#example-external-database).
-   [Example: CDTs and DSEs](data-prep-examples.html#example-cdts-and-dses).

#### Web service

You can connect to process data via any web service with an [HTTP interface](configure-record-data-source.html#prodlink-web-service). Appian provides out-of-the-box connectors that support a wide variety of [authentication types](connected_system_authentication.html).

You may also want to ask your system administrator to install the [connected system plug-ins](https://community.appian.com/b/appmarket?tags=Connected%20System%20Plug-in%2C#pifragment-12282=5) from the AppMarket. These plug-ins can simplify integrations by abstracting a third-party API.

To connect to process data in a web service, you'll need to create the following objects in Appian Designer:

-   [HTTP connected system](http-connected-system.html).
-   [HTTP integration object](Create_an_Integration.html).
-   [Records data source](configure-record-data-source.html#create-a-record-data-source).
-   [Case and event history record types](key-pi-terms.html#case-record-type-and-event-history-record-type). These record types must have [data sync enabled](configure-record-data-source.html#synced-database) and a [one-to-many relationship](record-type-relationships.html) from the case record type to the event history record type.

See a specific example of connecting and preparing process data from a web service:

-   [Example: Web service](data-prep-examples.html#example-web-service).

#### Salesforce

You can easily connect to process data from Salesforce using the [out-of-the-box connector](configure-record-data-source.html#connect-to-salesforce).

Salesforce objects map easily to record types. For example, you can use the **Field History** table of your Salesforce objects to construct an event history.

To connect to process data in Salesforce, you'll need to create the following objects in Appian Designer:

-   [Salesforce connected system](salesforce-connected-system.html).
-   [Case and event history record types](key-pi-terms.html#case-record-type-and-event-history-record-type). These record types must have [data sync enabled](configure-record-data-source.html#synced-database) and a [one-to-many relationship](record-type-relationships.html) from the case record type to the event history record type.

See a specific example of connecting and preparing process data from Salesforce:

-   [Example: Salesforce opportunities](data-prep-examples.html#example-salesforce-opportunities).

#### Comma-separated values (CSV)

If your process data is stored in a system that cannot be accessed via an API, you can typically export the data as a file of comma-separated values (CSV).

To bring that data into Appian's data fabric, you can use the [Excel Tools plug-in](https://community.appian.com/b/appmarket/posts/excel-tools#) from the AppMarket. Ask your system administrator to add this plug-in to your environment.

At a minimum, you will need two CSV files, one for cases and one for event history. Prepare the data in Microsoft Excel to meet the requirements of the plug-in. If each file does not have a unique ID column, add a blank column to the file. This blank column will be used later as the ID field in the record type.

Then, to import your CSV files, you'll need to create the following objects in Appian Designer:

-   [Case and event history record types](key-pi-terms.html#case-record-type-and-event-history-record-type) connected to database tables that will ultimately store the process data. The record types must meet the following requirements:
    -   [Data sync enabled](configure-record-data-source.html#synced-database).
    -   A [one-to-many relationship](record-type-relationships.html) from the case record type to the event history record type.
    -   The fields you add to each record type must correspond to each column in the corresponding CSV file.
    -   The field names must be exactly the same as the CSV column names.
-   For each CSV file:
    -   [A document object and constant](folder-and-document-management.html#creating-documents).
    -   [A process model](process-model-object.html#creating-a-process-model) using the **Import CSV to Database** smart service.

To complete the capture of the CSV data, you'll need to run the process model to write the data from the files to the database, [trigger a manual full sync](records-data-sync.html#manual-full-syncs) on the case and event history record types, and create a [one-to-many relationship](record-type-relationships.html) from the case record type to the event history record type.

See a specific example of connecting and preparing process data from CSV files: [Example: Comma-separated values (CSV)](data-prep-examples.html#example-comma-separated-values-csv).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...