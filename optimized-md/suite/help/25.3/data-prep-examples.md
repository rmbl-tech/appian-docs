---
source_url: https://docs.appian.com/suite/help/25.3/data-prep-examples.html
original_path: data-prep-examples.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Preparation Examples

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [developers](processhq.html#-developers). It provides examples of how to prepare data from different data sources so it's ready for process analysis.

## Overview

[Appian's data fabric](data-fabric.html) gives you the power to unify data from different systems so you can connect to process data, regardless of where the data lives, and prepare it for process insights.

Each of the following sections provides an example of a different way to connect to process data and then prepare it for process insights.

If you're connecting to a database, check out:

-   [Example: Record events](#example-record-events)
-   [Example: Existing event table](#example-existing-event-table)
-   [Example: CDTs and DSEs](#example-cdts-and-dses)
-   [Example: External database](#example-external-database)

If you're connecting to a web service, check out [Example: Web service](#example-web-service). For Salesforce web services specifically, check out [Example: Salesforce opportunities](#example-salesforce-opportunities).

If you've captured data as comma-separated values (CSV), check out [Example: Comma-separated values](#example-comma-separated-values-csv).

## Example: Record events

[Configuring record events](record-events.html) is the easiest way to capture new [case and event data](key-pi-terms.html#case-data-and-event-data) in a database. In this example, the Elliot Corporation wants to capture events for a financial client onboarding application.

As part of application development, the developer has already [created synced record types](Create_a_Record_Type.html) for the core data in this app: **Accounts**, **Customers**, and **Regions**. The developer has also added [relationships](record-type-relationships.html) between these record types.

For the purposes of gathering case and event data, the **Accounts** record type is the [case record type](key-pi-terms.html#case-record-type-and-event-history-record-type) and has a one-to-one relationship with **Customers**. **Customers** has a many-to-one relationship with Regions. Through these relationships, a data steward can include information from the **Customers** and **Regions** record types in a process, providing a richer context of case data.

[![Relationship diagram showing the relationships between the Account record type and related record types](images/process_insights/record-events-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img661)

[![](images/process_insights/record-events-relationship.png)](#_)

However, the application is currently missing an [event history record type](key-pi-terms.html#case-record-type-and-event-history-record-type) to capture and store events about accounts.

To capture event data in this application:

1.  On the **Accounts** record type, the developer [configures record events by generating event record types](record-events-configuration.html#generate-new-event-record-types).
2.  For the **Types of Events**, the developer specifies the types of events that can occur in the business processes. For example:
    -   Received Application
    -   Completed Pre-Onboarding Compliance Check
    -   Completed Know Your Customer (KYC) Review
    -   Completed Financial Document Verification
    -   Completed Financial Review
    -   Approved Application
    -   Completed User Account Provisioning
    -   Funded Account
3.  When the developer clicks **GENERATE**, two new record types are created:
    -   **Accounts Event History** record type, which will store information for events that involve the Accounts record type.
    -   **Accounts Event Type Lookup** record type, which stores the static list of event types, also known as [activities](key-pi-terms.html#cases-activities-events).
4.  The developer sets up a process model, where they configure a [Write Records](Write_Records_Smart_Service.html) node to write case and event data at the same time. For example, the node writes events for situations like:

    -   The client submits the application (Application Received).
    -   An employee has reviewed the application (KYC Review).
    -   An employee has verified the client's documentation (Financial Document Verification).

    As the process model runs, the node writes case data to the Account record type and event data to the Account Event History record type.

5.  In Process HQ, the data steward [adds the process](add-process.html) using data from the **Accounts**, **Account Event History**, **Account Event Type Lookup, Customer**, and **Regions** record types. Minimal-to-no data preparation is required. At most, the data steward might want to [hide sensitive data](common-preparations.html#hide-sensitive-data) from the **Accounts** record type like the account number.

## Example: Existing event table

In this example, the Appian Retail company currently stores existing event data in a single database table, Retail Events. This table includes data from multiple processes, like order fulfillment, customer management, and employee management, all managed within the Appian Retail application.

For example:

-   John Smith (customer) submitted an order.
-   Jane Walker (employee) reviewed the order.
-   John Smith updated his personal information.
-   Jane Walker updated the account manager.
-   Jane Walker promoted an employee.
-   Jane Walker started a performance review.

Now, though, Appian Retail wants to analyze just their process for fulfilling customer orders. Their event data includes the [required fields](capture-process-data.html#fields), so with some data preparation, they can use the data for process analysis. So that the data is only focused on order events, they can use part of the data in the Retail Events table as the source of a new Order event history record type.

In this example, the developer has already [created a synced record type](Create_a_Record_Type.html) for **Orders**. For the purposes of process analysis, the **Orders** record type is the case record type.

[![Diagram of the relationships between external order and events tables and Order and Event record types](images/process_insights/existing-table-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img662)

[![](images/process_insights/existing-table-relationship.png)](#_)

To connect to the existing Retail Events table and prepare it for process analysis:

1.  The developer creates a [new synced record type](configure-record-data-source.html) called **Order Event History** using the Retail Events table as the source.
2.  While configuring the source, the developer configures [sync filters](records-filter-source-data.html) to only sync events that are relevant to an order.

    In this example, the table includes a column (`processId`) that specifies which business process an event relates to. The sync filter would limit events in the **Order Event History** record type to events with `processId` equal to `3` (which represents the order fulfillment process).

3.  The developer opens the **Orders** record type and creates a one-to-many [relationship](record-type-relationships.html) to the **Order Event History** record type. No other relationships or configurations are required to use this data in a process.
4.  The developer [deploys the application to production](deploy-to-production.html).
5.  In Process HQ, the data steward [adds the process](add-process.html) using data from the **Order** and **Order Event History** record types.

## Example: CDTs and DSEs

In this example, the Acme Technical Services company uses a support case app to manage their support case data and the related events. Because their case and event data exceeds the [row limit](about-data-sync.html#sync-data-from-large-data-sources) for synced record types, they use data store entities (DSEs) and custom data types (CDTs) to connect to the source database.

However, to analyze data using process insights, the data must be available in [synced record types](capture-process-data.html#synced-record-types). Instead of refactoring the entire support case app, however, they can simply create synced record types to connect to the data they need, while leaving their current data structure intact.

[![Diagram showing the relationships between the source database, the existing DSE and CDT, and the Support Case and Support Case History record types](images/process_insights/existing-dse-cdt-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img663)

[![](images/process_insights/existing-dse-cdt-relationship.png)](#_)

To connect to their existing database and prepare the case and event data:

1.  The developer [creates a synced record type](configure-record-data-source.html#synced-database) called the **Support Case** record type. This record type connects to the support case data stored in the Support Case table.
    -   While configuring the record type, the developer adds [sync filters](records-filter-source-data.html#about-sync-filters) to prevent the record type from exceeding the row limit.
2.  The developer [creates a synced record type](configure-record-data-source.html#synced-database) called the **Support Case Event History** record type. This record type connects to the event history data stored in the Support Case Events table.
    -   While configuring the record type, the developer adds [sync filters](records-filter-source-data.html#about-sync-filters) to limit the data to the necessary events.
3.  The developer [creates a relationship between the **Support Cases** and **Event History** record types](record-type-relationships.html).
4.  The developer [performs any necessary data preparation](common-preparations.html).
5.  The developer [deploys the application to production](deploy-to-production.html).
6.  The data steward [adds the process in Process HQ](add-process.html).

## Example: External database

In this example, we'll discuss the Bennett Manufacturing company, which stores its data in multiple databases. Data for its employee management app is stored in an Oracle database, while data for its vendor management app is stored in a Snowflake database.

By leveraging Appian's data fabric, they can connect and prepare data from any business process involving these applications.

[![Diagram showing the relationships between the Employee and Vendor databases and the respective case and event history record types](images/process_insights/external-database-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img664)

[![](images/process_insights/external-database-relationship.png)](#_)

To connect to their process data and prepare it for process analysis:

1.  The developer configures a connected system to connect to each database:
    -   Employee management data is stored in one of Appian's [supported databases](System_Requirements.html#databases), so they'll create a [data source connected system](data-source-connected-systems.html).
    -   Vendor management data is stored in an unsupported database, so they'll create a [custom JDBC connected system](custom-jdbc-connected-system.html).
2.  For each application, the developer [creates a synced record type](configure-record-data-source.html#synced-web-service) for their case data. That record type uses the connected system to connect to the case table in the database.
3.  For each application, the developer [creates a synced record type](configure-record-data-source.html#synced-web-service) for their event data. That record type uses the connected system to connect to the event history table in the database.
4.  For each application, the developer [creates a relationship between the case and event history record types](record-type-relationships.html).
5.  The developer [performs any necessary data preparation](common-preparations.html).
6.  The developer [deploys the application to production](deploy-to-production.html).
7.  The data steward [adds the process in Process HQ](add-process.html).

## Example: Web service

**Tip:**  Looking for help connecting to Salesforce specifically? See the [Salesforce opportunities example](#example-salesforce-opportunities).

In this example, the Fitzwilliam Software Solutions company uses Jira to track its internal software development lifecycle. Now they'd like to optimize their workflows using the data collected in Jira.

[![Diagram showing the relationship between the web service data source, the connected system, the integration, the expressions that create the record data source, and the Jira Case and Jira Event History record types](images/process_insights/web-service-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img665)

[![](images/process_insights/web-service-relationship.png)](#_)

To prepare case and event data from this web service:

1.  The developer configures an [HTTP connected system](http-connected-system.html) with the connection details to Jira.
2.  The developer configures an [HTTP integration object](Create_an_Integration.html) using the connected system to retrieve data from Jira. This integration object will retrieve data from the Jira API.
3.  The developer [creates a records data source](configure-record-data-source.html#create-a-record-data-source) called **jiraCaseData** to query the case data from the integration and configure batching.
4.  The developer [creates a records data source](configure-record-data-source.html#create-a-record-data-source) called **jiraEventHistoryData** to query the event history data from the integration and configure batching.
5.  The developer [creates a synced record type](configure-record-data-source.html#synced-web-service) for their case data. That record type uses the **jiraCaseData** records data source to connect to the case data.
6.  The developer [creates a synced record type](configure-record-data-source.html#synced-web-service) for their event data. That record type uses the **jiraEventHistoryData** records data source to connect to the event history data.
7.  The developer [creates a relationship between the Case and Event History record types](record-type-relationships.html).
8.  The developer [performs any necessary data preparation](common-preparations.html).
9.  The developer [deploys the application to production](deploy-to-production.html).
10.  The data steward [adds the process in Process HQ](add-process.html).

## Example: Salesforce opportunities

[Salesforce opportunities](https://help.salesforce.com/s/articleView?id=sf.opportunities.htm&language=en_US&type=5) allow users to track and manage potential sales deals. In this example, the Global Corporation has [enabled field history tracking](https://help.salesforce.com/s/articleView?id=sf.tracking_field_history.htm&type=5) in their Salesforce instance, so they can easily capture case and event data for those deals.

The **Opportunity** table stores the case data they need for process analysis.

The **OpportunityFieldHistory** table stores the history of changes to the values in the fields of each opportunity. Specifically, the `field` column tracks which fields in the **Opportunity** table were updated. To extract an event history from this larger history, we only want to sync data where the `field` value is `stageName` or `created`.

[![Relationship diagram showing a one-to-many relationship between the Opportunity and Opportunity field record types](images/process_insights/salesforce-opportunity-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img666)

[![](images/process_insights/salesforce-opportunity-relationship.png)](#_)

To prepare case and event data from Salesforce opportunities:

1.  The developer [configures a Salesforce connected system](salesforce-connected-system.html).
2.  The developer [creates a record type](Create_a_Record_Type.html) called the **Opportunity** record type:
    1.  Selects **Salesforce** as the data source for the new record type.
    2.  Enables [data sync](about-data-sync.html).
    3.  Chooses the Salesforce connected system.
    4.  Selects the [Opportunity object from Salesforce](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm).
    5.  [Configures sync filters](records-filter-source-data.html) to only sync opportunities from the last six months.
    6.  [Maps and renames record fields](configure-record-data-source.html#synced-salesforce) as appropriate, and add display names and descriptions to provide user-friendly field names for Process HQ users.
    7.  [Assigns **Data Steward** permissions](configure-security.html) to at least one user or group, so that this record type can be used in a process.
3.  The developer [creates a record type](Create_a_Record_Type.html) called the **Opportunity Event History** record type:
    1.  Selects **Salesforce** as the data source for the new record type.
    2.  Enables [data sync](about-data-sync.html).
    3.  Chooses the Salesforce connected system.
    4.  Chooses the [OpportunityFieldHistory from Salesforce](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunityfieldhistory.htm).
    5.  Configures the following [sync filter](records-filter-source-data.html) to only sync data from the **OpportunityFieldHistory** table where the `field` value is `stageName` or `created`:

        | Property | Value |
        | --- | --- |
        | **Field** | `field` |
        | **Condition** | `in` |
        | **Value** | `{"StageName", "created"}` |

    6.  [Maps and renames record fields](configure-record-data-source.html#synced-salesforce) as appropriate, and add display names and descriptions to provide user-friendly field names for Process HQ users.
    7.  Assigns **Data Steward** permissions to at least one user or group, so that this record type can be used in a process.
4.  On the **Opportunity Event History** record type, the developer [creates a sync-time custom record field](custom-record-fields.html#write-your-own-expression) to extract the name of the opportunity stage that changed. They'll call the field, **ActivityName**, and uses the following expression:

    ```
    1
    2
    3
    4
    5
       if(
          rv!record[recordType!Sales Opportunity History.fields.field] = "created",
          "Created",
          rv!record[recordType!Sales Opportunity History.fields.newValue]
       )
    ```

    -   Since there is no stage captured when an opportunity is initially created, this example sets the `ActivityName` to `Created` whenever the `created` field is changed.
    -   For all other changes to the opportunity, this example sets the `ActivityName` to the value in the `newValue` field.

    The result is a single custom record field with values like, `Created`, `Prospecting`, `Qualification`, `Needs Analysis`, etc.

5.  In the **Opportunity** record type, the developer [adds a one-to-many relationship](record-type-relationships.html#add-relationships) from the **Opportunity** record type to the **Opportunity Event History** record type, using the `Id` field from the **Opportunity** record type and the `OpportunityID` field from the **Opportunity Event History** record type as the common fields for the relationship.
6.  The developer [deploys the application to production](deploy-to-production.html).
7.  The data steward [adds the process in Process HQ](add-process.html), using the following settings:
    -   For **Case Record Type**, select the **Opportunity** record type.
    -   For **Event History Record Type**, select the **Opportunity Event History** record type.
    -   For event data, map the following required fields:

        | Field | Map To |
        | --- | --- |
        | OpportunityId | Case ID |
        | ActivityName | Activity |
        | CreatedDate | Start |

## Example: Comma-separated values (CSV)

In this example, the Peak Properties company stores data about the corporate and retail properties it manages in a legacy system that does not support API connections.

To work with that data, they export it from the legacy system to multiple CSV files. The `properties.csv` file stores data about the properties (the case data), while the `propertyEvents.csv` file stores data about management actions completed for those properties (event history data).

[![Diagram of the relationships between external CSV files, the document objects, process models, and record types used to bring the data into Appian](images/process_insights/csv-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img667)

[![](images/process_insights/csv-relationship.png)](#_)

**Note:**  To keep the recipe simple, we will not deploy these changes to a different environment; instead, we'll simply import the data into a development environment and access Process HQ from that environment.

To prepare case and event data from these CSV files:

1.  A system administrator adds the [Excel Tools plug-in](https://community.appian.com/b/appmarket/posts/excel-tools#) to the environment.
2.  The developer reviews both the `properties.csv` and `propertyEvents.csv` files. If each file does not have a unique ID column, the developer adds a blank column to the file. This blank column will be used as the ID field in the record type.
3.  The developer creates a case record type (**Property**) and an event history record type (**Property Event History**) as follows:

    1.  [Creates a new record type](Create_a_Record_Type.html).
    2.  Configures the source of the record type by [generating a source](create-record-data-source.html). The source database table is automatically generated when they finish creating the record type.
    3.  [Adds fields](create-record-data-source.html#add-a-field) for each column in the CSV file. The field names must be exactly the same as the CSV columns.
4.  The developer [creates two document objects](folder-and-document-management.html#creating-documents), one for the `properties.csv` file and one for the `propertyEvents.csv` file. During this step, they will automatically generate a constant for each document.

5.  The developer [creates a process model](process-model-object.html#creating-a-process-model) to import the `properties.csv` values into the database:

    1.  They drag the **Import CSV to Database** smart service to the canvas.
    2.  On the **Data** tab for the smart service, they set the inputs as follows:

        | Input | Value Set To |
        | --- | --- |
        | **C S V Document** | The name of the generated constant. |
        | **Database Source Name** | The name of the database. In this example, Peak Properties is using the Appian Cloud database, so this value is `"jdbc/Appian"`. |
        | **Delimiter** | A comma (`","`). |
        | **File Has Header** | `"true"` |
        | **Table Name** | The name of the database table generated from the Property record type. |

    3.  On the **Data** tab, they set the outputs as follows to allow for debugging:

        | Output | Target Set To |
        | --- | --- |
        | Error Message | Save to a new process variable. |
        | Success | Save to a new process variable. |

6.  The developer creates a process model to import the `propertyEvents.csv` values into the database, using the same steps as they did for the `properties.csv` file.
7.  The developer runs each process so that the system imports the data from the CSV files into the current environment.
8.  The developer [starts a manual full sync](records-data-sync.html#manual-full-syncs) on the **Property** and **Property Event History** record types.
9.  The developer creates a [one-to-many relationship](record-type-relationships.html) from the **Property** record type to the **Property Event History** record type.
10.  The developer [performs any necessary data preparation](common-preparations.html) on each record type.
11.  The data steward [adds the process in Process HQ](add-process.html).

This example involves a single environment. If you're deploying to another environment, you would need to perform additional steps. For example:

-   Add the [Excel Tools plug-in](https://community.appian.com/b/appmarket/posts/excel-tools#) to all impacted environments.
-   Save the generated database scripts when you configure the source of your record types.
-   Add a timer event on the process models to import the CSV data on deployment.
-   Set up a scheduled full sync on both record types so they sync the CSV data.
-   [Deploy your application to production](deploy-to-production.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...