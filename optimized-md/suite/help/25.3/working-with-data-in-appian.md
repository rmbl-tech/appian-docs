---
source_url: https://docs.appian.com/suite/help/25.3/working-with-data-in-appian.html
original_path: working-with-data-in-appian.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Objects that Access Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Organizations often have data spread across multiple systems. Whether it's in Salesforce, a relational database, and customer relationship management software, you need easy access to your enterprise data so you can quickly build modern applications. [Appian's data fabric](data-fabric.html) allows you to connect, relate, and secure your enterprise data, regardless of where it lives, so you can easily access the data you need.

Appian's data fabric is powered by [record types](Record_Type_Object.html). When you enable [data sync](about-data-sync.html) on your record types, you unlock powerful features that help accelerate application development.

As you build your data fabric, you may need to leverage additional design objects to connect and access the data you need, like:

| Record Types | Custom Data Types | Data Stores | Connected Systems | Integrations | Web APIs |
| --- | --- | --- | --- | --- | --- |
| ![](images/obj_record48px.png) | ![](images/obj_data-type48px.png) | ![](images/obj_data-store48px.png) | ![](images/obj_connected-system48px.png) | ![](images/obj_integration48px.png) | ![](images/obj_web-api48px.png) |

This page provides guidance on when to use different Appian design objects to access your enterprise data.

## When to use each object

The table below provides a quick overview of when you’d use which object to work with your enterprise data.

| Object | What does it do? | When do I use it? |
| --- | --- | --- |
| [Record Type](Create_a_Record_Type.html) | Allows you to easily connect to data in a database, process model, Salesforce, or other web service.

Extend your enterprise data using powerful data modeling capabilities like record type relationships and custom record fields to relate and transform your data. Then, secure it using record-level security.

Seamlessly reference this powerful version of your enterprise data using unified record type references, records-powered components, and more. |
-   To view, display, and report on data from a database, process model, Salesforce, or other web service.

-   To add, update, or delete data from a database table.

-   To accelerate application development:
    -   [Relate](record-type-relationships.html) enterprise data, regardless of where the data lives.
    -   [Transform](custom-record-fields.html) existing data into the insights you need.
    -   Generate record views and record actions.
    -   [Apply record-level security](record-level-security.html) to secure enterprise data.

-   Use records for [portals](portals-home.html) whenever possible to make [connecting to your Appian data simpler](portals-data.html).

 |
| [Custom Data Type (CDT)](Custom_Data_Types.html) | Allows you to define a data structure that represents a logical grouping of data. |

-   To input or output data in a [plug-in](Appian_Plug-ins.html).

-   To map data outputs from [Extract from Document smart service](create-skill-doc-extraction.html).

-   To input or output data in the [Call Web Service smart service](Call_Web_Service_Smart_Service.html).

-   To support a Data Store object.

 |
| [Data Store](Data_Stores.html) | Allows Appian to connect to external relational databases to store and retrieve application data.
This object is _always_ used in conjunction with a CDT. |

-   To write data to different database tables concurrently.

-   To create a database-backed record type without data sync enabled:
    -   To connect a database view or table.
    -   To add, update, or delete data from a database table.

 |
| [Connected System](Connected_System_Object.html) | Stores authentication and connection information so you can connect to external integrations and data sources. |

-   To store authentication and connection information to a [data source](data-source-connected-systems.html).

-   To manage authentication details for a third-party system.

 |
| [Integration](Integration_Object.html) | Allows Appian to interact with other systems.
Connect to external systems using [integration objects](Integration_Object.html) and [connected systems](Connected_System_Object.html), then call your integrations in expression rules, interfaces, record types, or process models. |

-   To connect to a [web service](configure-record-data-source.html#prodlink-web-service) so you can use it as the source of a record type.

-   To query or modify data in third-party systems using the [Call Integration smart service](Call_Integration_Smart_Service.html) or using an expression.

-   To [query and write data in a portal using CDTs](portals-data.html#working-with-data-using-cdts).

 |
| [Web API](Web_APIs.html) | Allows other systems to contact Appian.
Expose Appian data and services to outside systems using a [web API object.](Web_APIs.html) |

-   To expose an endpoint that external systems can call to complete an activity in Appian. For example:

    -   To [sync data changed by a third-party system](generate-web-api.html) or changes made directly on the source.
    -   To [query and write data in a portal using CDTs](portals-data.html#working-with-data-using-cdts).
    -   To [query data from a record type](Web_API_Tutorial.html) or data store entity and display it in a third-party system.
    -   To [write data to a database](Web_API_Tutorial_-_Level_II.html) from an external system.

 |

## Examples

The following examples illustrate the different objects involved in building your data fabric.

### View, add, update, and delete data in a database

Let’s say that you’re building a customer support application to track and report on your support cases. Support engineers will also need to create new cases and update existing ones. Your data currently lives in a database, where you have multiple tables for case, customer, and case priority, and the largest table has 3.4 million rows of data.

#### Relevant data objects

![Record Type](images/object_type_icons/obj_record30px.png)**Record types with data sync enabled**

This is the perfect opportunity to [create record types with data sync enabled](configure-record-data-source.html#synced-database):

-   You can set up [relationships](record-type-relationships.html) between record types to seamlessly reference related data, like referencing related customer information from the Case record type.
-   You can build a [records-powered grid](read-only-grid-configuration.html) that displays case names, statuses, customers, and assigned engineers.
-   You can use the [Write Records smart service](Write_Records_Smart_Service.html) to build processes that add or update data in your database and then automatically sync those changes in Appian. You can then start those processes as [record actions](record-actions.html) in your grids, interfaces, and reports.

    [![images/generatedRecordAction.png](images/generatedRecordAction.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1727)

    [![](images/generatedRecordAction.png)](#_)

Learn more:

-   [About Data Sync](about-data-sync.html)
-   [Record Type Tutorial (Database)](Records_Tutorial.html)

### Write to multiple database tables at the same time

Now let’s say you’re creating an HR management application, and you want to add a point of contact for each of your employees. Each point of contact must have at least two methods of communication.

In your database, the point of contact and the contact methods are stored in two separate tables. However, it’s important that the contact and contact method are added at the same time to ensure you have the appropriate information in case of an emergency. In other words, you need to avoid a situation where a contact is added without any contact method information.

#### Relevant data objects

![Record Type](images/object_type_icons/obj_record30px.png)**Record types with data sync enabled**

To write data to different tables _at the same time_, you can:

-   [Create a record type with data sync enabled](configure-record-data-source.html#connect-to-a-database) for each database table: **Contact** record type and **Contact Method** record type.
-   On the **Contact** record type, create a one-to-many [relationship](record-type-relationships.html) with the **Contact Method** record type and [allow it to write related records](record-type-relationships.html#write-and-delete-related-records).

    [![images/write-to-multiple-tables-concurrently.png](images/write-to-multiple-tables-concurrently.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1728)

    [![](images/write-to-multiple-tables-concurrently.png)](#_)

Then, to view the data, you can seamlessly [reference the related contact](reference-records.html#reference-a-relationship) information in queries, reports, and interfaces.

### View data from an external system

Imagine you’re building an expense report application. All of your expense data currently lives in a third-party system, and you need to pull that data into Appian so you can build an application that analyzes expense trends and patterns.

#### Relevant data objects

![Connected System](images/object_type_icons/obj_connected-system30px.png)**Connected system**

![Integration](images/object_type_icons/obj_integration30px.png)**Integration**

![Record Type](images/object_type_icons/obj_record30px.png)**Record types with data sync enabled**

Since Appian needs to call another system in order to view and work with the data in your application, you need to [create a connected system](Connected_System_Object.html) and [integration](Create_an_Integration.html) specific to your third-party system. This integration will query data from the source system so it's available in Appian.

You can then [create a record type with data sync enabled](configure-record-data-source.html#synced-web-service) using your integration so you can quickly build insightful reports using your expense data.

To ensure you always have the latest data from your system, you can [schedule incremental syncs](records-data-sync.html#schedule-incremental-syncs) to regularly capture new or changed data throughout the day.

### Sync changes from an external system

Now let’s say you want to expand the expense report application mentioned in the [example above](#view-data-from-an-external-system). Not only do you want to create reports on existing expenses, you want to view and report on all unsettled transactions.

Unsettled transactions can occur anytime throughout the day, so you need to ensure that you have the latest data in Appian, even when data is changed in your third-party system.

#### Relevant data objects

![Connected System](images/object_type_icons/obj_connected-system30px.png)**Connected system**

![Integration](images/object_type_icons/obj_integration30px.png)**Integration**

![Web API](images/object_type_icons/obj_web-api30px.png)**Web API**

![Record Type](images/object_type_icons/obj_record30px.png)**Record types with data sync enabled**

Since unsettled transactions are logged in your third-party system, you need to create a web API to allow your source system to interact with Appian. Specifically, you need the external system to inform Appian whenever there is new data available so that we can sync the latest data.

To do this, you can [generate a web API](generate-web-api.html) configured with the [a!syncRecords()](Sync_Records_Smart_Service.html) function. This function allows you to sync a record or set of records in a specific record type.

To generate this web API, you first need to configure a [sync by identifier expression](records-data-sync.html#prodlink-getbyid) to enable Appian to sync specific rows of data from your external system. This expression requires an integration object that returns data from your source based on their identifiers. You can easily create this second integration object using the existing connected system from the first example.

Once you configure a sync by identifier expression, you can generate your web API directly from the record type. You can modify the web API as needed, and then add the web API's URL to your source system's webhook configuration.

Now, the source can notify Appian of changed data, and we can then sync the latest data in your record type—allowing you to see up-to-date transaction data.

### Write data to an external system

Finally, let’s say your expense report application now requires a supervisor to approve any high-value expense reports before they can be submitted for reimbursement. To do this, you want to create a process that manages all approval tasks and sends a request to your third-party system to update the expense status.

#### Relevant data objects

![Connected System](images/object_type_icons/obj_connected-system30px.png)**Connected system**

![Integration](images/object_type_icons/obj_integration30px.png)**Integration**

![Record Type](images/object_type_icons/obj_record30px.png)**Record types with data sync enabled**

In this scenario, you need to create an integration object that can update the status of an expense report once it is approved by a supervisor.

In the examples above, you created a connected system and an integration to query and view data from your external system. Now, you can reuse your connected system to create another integration object that modifies data in that same system. See the [Integration Tutorial](Integration_Tutorial.html) for step-by-step instructions on creating an integration that modifies data.

Once you create your integration, you can trigger a status update by adding the integration in your process model. After the approval task, add a [Call an Integration smart service](Call_an_Integration.html) to write the latest status to the source.

[![images/add-call-to-integration.gif](images/add-call-to-integration.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1729)

[![](images/add-call-to-integration.gif)](#_)

But you're not done yet, you still need to sync the status change in Appian. To do that, you’d simply add a [Sync Record smart service](Sync_Records_Smart_Service.html) at the end of your process to sync the latest changes to the expense’s status.

[![images/write-data-to-external-systems.png](images/write-data-to-external-systems.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1730)

[![](images/write-data-to-external-systems.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...