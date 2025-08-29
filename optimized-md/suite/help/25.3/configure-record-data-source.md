---
source_url: https://docs.appian.com/suite/help/25.3/configure-record-data-source.html
original_path: configure-record-data-source.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Choose a Data Source for Your Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how to configure a synced or unsynced record type to connect to an existing data source.

Don't have an existing data source? Learn how to [generate a new database table to use as the source of your record type](create-record-data-source.html).

## Overview

Using [data modeling concepts](data-modeling-with-appian-records.html) and a guided experience, the [record type object](Record_Type_Object.html) makes it easy to connect to the data you need so you can build modern applications quickly.

When you configure the source of your record type, you can connect to your data wherever it lives by selecting a data source type:

|
Data Source Type

 |

Description

 |
| --- | --- |
| ![](images/record-relationships_Database.png) [Database](configure-record-data-source.html#connect-to-a-database) | Allows you to connect to a table or view in a relational database. Often referred to as _database-backed record types_. |
| ![](images/record-relationships_WebService.png) [Web Service](configure-record-data-source.html#prodlink-web-service) | Allows you to connect to data in an external system using Appian integrations and connected systems. Often referred to as _service-backed record types_. |
| ![](images/record-relationships_Process.png) [Process](configure-record-data-source.html#connect-to-a-process-model) | Allows you to connect to data returned from a process model. Often referred to as _process-backed record types_. |

You can also select a [data source shortcut](#create-data-source-shortcuts) to quickly connect to a popular connected system in your applications.

When you connect to your source, you'll also choose whether to enable [data sync](about-data-sync.html) on the record type. Review [when to enable data sync](about-data-sync.html#when-to-enable-data-sync) to see if your business scenario is a good fit for data sync.

**Note:**  If you're preparing data for process insights and need to perform complex data transformations, you can create a [records-backed record type](records-backed-record-types.html).

## Create data source shortcuts

You can quickly connect to your commonly used data sources by displaying [connected systems](Connected_System_Object.html) as data source shortcuts in the **Configure Data Source** dialog.

A data source shortcut allows you to select from a list of database entities or integration objects associated with the connected system. Once you select the source, you'll continue configuring the record type like you would any other [database](#connect-to-a-database) or [web service](#prodlink-web-service) source.

[![images/dataSourceShortcut.png](images/dataSourceShortcut.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img423)

[![](images/dataSourceShortcut.png)](#_)

You can display [any connected system](Connected_System_Object.html#connected-system-types) as a data source shortcut. To help you get started, we’ll always display a data source shortcut to [Salesforce](#connect-to-salesforce).

To create other data source shortcuts:

1.  Create a connected system.
2.  For **Data Source Shortcut**, select the **Show as a shortcut in record type configuration** checkbox.
3.  For **Shortcut Display Name**, enter a name for the shortcut to display in the record type configuration.
4.  Click **CREATE**.

## Connect to a database

If your data lives in a relational database, you can connect to that database using a [synced record type](#synced-database) or [unsynced record type](#unsynced-database).

Using a synced record type to connect to a database is the easiest and most common configuration. If you create an unsynced record type, you will need to create additional objects to connect to your database.

**Tip:**  See the [Record Type Tutorial (Database)](Records_Tutorial.html) for a step-by-step example configuring a synced record type that connects to a database table.

### Using a synced record type

You can configure a record type with data sync enabled to connect to a database table.

To create a synced record type to connect to a database:

1.  [Create a new record type](Create_a_Record_Type.html).
2.  On the **Data Model**, click **Tell Us About Your Data**.
3.  Select **Database**.
4.  Click **NEXT**.
5.  For **Choose how to access data**, keep the default selection **Optimized Data Access**. The data will be synced in Appian to automatically optimize performance and enable additional features.
6.  Click **NEXT**.
7.  For **Choose Database Table**, select the database table or table synonym to connect to. If your database supports schemas, you can select a table from a list of schemas or catalogs.

    **Note:**  Table synonyms are only supported for Oracle databases.

    If you don't see a schema or catalog, ensure the account specified in your [data source connected system](data-source-connected-systems.html) has permission for that schema or catalog. System and internal schemas are not supported.

8.  Click **NEXT**.
9.  For **Configure Sync Filters**, configure the following properties:

    |
    Property

     |

    Action

     |
    | --- | --- |
    | **Sync Options** |

    Enable the following sync options:

    -   Select the [**Schedule full sync**](records-data-sync.html#schedule-full-syncs) checkbox to sync all source data once a day.
    -   Select the [**Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) checkbox to dynamically sync the latest rows of data whenever a full sync occurs.

     |
    | **Sync Filters** |

    Add [sync filters](records-filter-source-data.html#about-sync-filters) to specify which data is synced in the record type:

    1.  Click **Add Filter**.
    2.  Select a source field to filter by. Only source types that can be converted to [Appian types](Appian_Data_Types.html) appear in the dropdown.
    3.  Select the operator to apply to the filter.
    4.  Use the context menu next to the field to select how you want to pass the value into the filter. The options in this menu change based on the data type of the field selected. You can enter a static value or enter an expression.
    5.  Click **Add Filter** to add additional filters. Multiple filters are evaluated with an `AND` operator.
    6.  Click **TEST FILTER** to validate the filter conditions.

    You can add additional sync filters after configuring the source of the record type, where you can filter by source fields and by a relationship.

     |

10.  Click **NEXT**.
11.  For **Map source fields to record fields**, configure the following field properties:

     |
     Property

      |

     Action

      |
     | --- | --- |
     | **Source Field Name** | Use the checkbox next to a **Source Field Name** to add or remove a field from your record type. You can have up to 100 fields.

     Certain SQL data types cannot be used in synced record types. See a [list of unsupported data types](about-data-sync.html#unsupported-database-columns). |
     | **Record Field Name** | Enter the name for the record field. This is the name that will be used to reference the field in Appian Designer. |
     | **Record Field Type** | Use the dropdown to select the data types for the record fields.
     We automatically suggest types based on the data type in the source.

     We recommend at least the following changes:

     1.  For fields containing usernames, change the type from Text to [User](Appian_Data_Types.html#user).
     2.  For fields containing group identifiers, change the type from Number (Integer) to [Group](Appian_Data_Types.html#group).

      |
     | **Display Name** | (Optional) Enter a user-friendly field name to display to business users in [Process HQ](processhq.html). Use title case formatting and spaces in the display name so it's easy for users to read. For example, `Year-to-Date`.

     When this field is blank, the **Record Field Name** is displayed in Process HQ using title case formatting. |
     | **Description** | (Optional) Enter a description of the field to display to business users in Process HQ. |

12.  Drag and drop the rows to change the order in which the record fields are displayed.
13.  Click **FINISH**.
14.  Click **SAVE** to sync your data.

### Using an unsynced record type

You can configure a record type without data sync enabled to connect to a database table or a database view.

To create an unsynced record type to connect to a database:

1.  Create a [custom data type](Custom_Data_Types.html) (CDT) that reflects the fields in your database table or views. The CDT must contain a [primary key](Mapping_CDTs_to_Pre-defined_Database_Tables.html#primary-keys).
2.  Create a [data store entity (DSE)](Data_Stores.html) to specify the database and entity to connect to.
3.  [Create a new record type](Create_a_Record_Type.html).
4.  On the **Data Model**, click **Tell Us About Your Data**.
5.  Select **Database**.
6.  Click **NEXT**.
7.  For **Choose how to access data**, select **Direct Data Access**. The data will be queried directly from the source.
8.  Click **NEXT**.
9.  For **Choose Data Store and Entity**, select a data store for your record type.
10.  Select an entity from the selected data store.
11.  Click **FINISH**.
12.  Click **SAVE**.

## Connect to a web service

To create a record type that connects to a web service:

1.  Create an [integration](Integration_Object.html).
2.  Create a [record data source](#create-a-record-data-source).
3.  Create either a [synced record type](#synced-web-service) or [unsynced record type](#unsynced-web-service). Unsynced record types require additional objects and setup to allow for paging, searching, and filtering data.

[Connect to Web Services with Record Types](https://academy.appian.com/#/online-courses/a814a947-8e93-4a85-bd19-5b0e98d1ee70)

New to creating service-backed record types? Check out this Academy Online course to learn how to create a record type that uses a web service as a source to access your external data in Appian.

### Create an integration

Before connecting a web source, you must configure a [connected system](Connected_System_Object.html) and an [integration](Integration_Object.html) object to authenticate and connect to your external system.

### Create a record data source

Once you've created your integration, you'll need to create a _record data source_ to allow the record type to access data from the web service.

The record data source is an expression rule that calls an integration and returns data from the response body. Within the expression, you can add rule inputs and functions to configure additional record type behavior.

To create a record data source, [create a new expression rule](Expression_Rules.html#create) that meets the following requirements:

-   **Integration response requirements:**
    -   The expression calls the necessary integration. This could be in the form of a local variable, like `local!integrationResponse: rule!AR_getIntegrationData`.
    -   The response body must cast to a List of Map, List of Dictionary, or a List of CDT, and it must have at least one Number (Integer) field that's non-null for every entry to act as the primary key for the record type.

-   **Function requirements:**
    -   The expression does not use plug-ins or any of the following functions: `a!query`, `a!queryEntity`, `a!queryProcessAnalytics`, `a!queryRecordType`.

-   **Batching requirements (synced record types):**
    -   By default, the record type will sync 1,000 rows from the web service.
    -   You can enable batching to sync more than 1,000 rows. Depending on your web service's paging method, you can:
        -   [Batch by sequential values](#batch-by-sequential-values).
        -   [Batch by cursors or tokens](#batch-by-cursor-or-token).
        -   [Batch by full URLs](#batch-by-a-full-url-or-uri).

-   **Rule input requirements (unsynced record types):**
    -   The expression has a rule input of type [PagingInfo](Appian_Data_Types.html#paginginfo) to allow for paging and sorting of records.
    -   The expression has a rule input of type [Text](Appian_Data_Types.html#text) to allow users to search for records.
    -   If you add rule inputs for paging and search to your record data source expression, you must update the underlying integration to reference the rule inputs from the expression.

#### Batch by sequential values

If your web service uses an integer pagination value, you can batch by sequential values `{1,2,3…}` to sync more than 1,000 rows from the web service.

Check out this Appian Community video for a guided walkthrough on how to batch by sequential values.

To batch by sequential values:

1.  In the record data source expression:

    1.  Add exactly one rule input with the following properties:

        |
        Property

         |

        Value

         |
        | --- | --- |
        | **Name** | batchNumber |
        | **Type** | Number (Integer) |

    2.  Click **SAVE**.

2.  In the underlying integration:

    1.  Add a rule input of the same name and type as the rule input in the record data source expression.

    2.  Add a query parameter that uses the rule input as the **Value**.

        If the underlying API requires a **Start Index**, you can calculate the index with the following formula: `1 + ((batchNumber - 1) * batchSize) = startIndex`.

        For example, the query parameter below uses the formula, where `ri!batchNumber` passes in each sequential value. If you have a batch size of 1,000, batch `1` would have a start index of `1 + ((1 - 1) * 1000) = 1`.

        [![images/startIndex-integration-ex.png](images/startIndex-integration-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img424)

        [![](images/startIndex-integration-ex.png)](#_)

    3.  Click **SAVE**.

3.  In the record data source expression:

    1.  Update the local variable that calls the integration so you can pass the rule input to the integration.

        For example:

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

        /* Calls the integration and stores the response in a local variable */
        /* Uses the batchNumber rule input to pass sequential values to the integration */
        local!integrationResponse: rule!AR_getOrderData(
        +   batchNumber: ri!batchNumber
          ),

        if(
        /* This will return true if the integration succeeds */
        local!integrationResponse.success,

        /* Returns the list of values from the integration response that will map to your record data */
        local!integrationResponse.result.body,

        /* If the integration is unsuccessful, handle accordingly */

        if(
          /* Note: handling of out of bounds exceptions varies by web service */
          tointeger(index(local!integrationResponse.result, "statusCode", 0)) = 416,

          /* If this is an out of bounds error, return an empty list to finish syncing */
          {},

          /* If this is a different error, return the integration error. */
          local!integrationResponse.error
            )
           )
          )
        ```

    2.  Click **SAVE**.

#### Batch by cursor or token

In some instances, the integration will return a parameter in the response header or body that contains a cursor or token identifying the next page of data.

You can batch by this value so the cursor or token is automatically appended to the integration URL, which will allow you to sync more than 1,000 rows from the web service.

To batch by cursor or token:

1.  In the record data source expression:

    1.  Add exactly one rule input with the following properties:

        |
        Property

         |

        Value

         |
        | --- | --- |
        | **Name** | nextPageUri |
        | **Type** | Text |

    2.  Add the [a!pageResponse()](fnc_system_pageResponse.html) function to the expression to identify the data in the current integration response, and the path for the next set of data to request. The value of the _nextPage_ parameter will be automatically passed to the rule input.

    3.  Click **SAVE**.

2.  In the underlying integration:
    1.  Add a rule input of the same name and data type as the rule input in the record data source expression.
    2.  Add a query parameter that uses the rule input as the **Value**.

        [![images/cursor-integration-ex.png](images/cursor-integration-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img425)

        [![](images/cursor-integration-ex.png)](#_)

    3.  Click **SAVE**.
3.  In the record data source expression:
    1.  Update the local variable that calls the integration so you can pass the rule input to the integration.

        You must use [a!defaultValue()](fnc_informational_a_defaultvalue.html) to pass a null value when the next page is empty or null. This will ensure the sync ends when there is no more data to sync. For example:

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
        30
        31
        32
        33
        34
        35
        36
        37
        38
        a!localVariables(

        /* Calls the integration and stores the response in a local variable */
        /* Uses the nextPageUri rule input to pass the URI for the next page */
        /* If the next page is empty, returns null to stop paging */
              local!integrationResponse: rule!AR_getCustomerData(
        +        a!defaultValue(value: ri!nextPageUri, default: fn!null())
          ),

          if(

           /* This will return true if the integration succeeds */
           local!integrationResponse.success,

           a!pageResponse(

               /* Returns a list of maps, dictionaries, or CDTs that map to your record data */
               data: local!integrationResponse.result.body.results,

               /* Identifies the location of the next page of results */
               /* which is automatically used in the nextPageUri rule input */
               nextPage: local!integrationResponse.result.body.next
           ),

           /* If the integration is unsuccessful, handle accordingly */
           if(

               /* Note: handling of out of bounds exceptions varies by web service */
               tointeger(index(local!integrationResponse.result, "statusCode", 0)) = 416,

               /* If this is an out of bounds error, return an empty list to finish syncing */
               {},

               /* If this is a different error, return the integration error. */
               local!integrationResponse.error
             )
            )
          )
        ```

    2.  Click **SAVE**.

#### Batch by a full URL or URI

If your integration returns a full URL or URI that contains the next page of data, you can batch by that value.

If the full URL or URI is embedded within a response parameter, you can use familiar [functions](Appian_Functions.html) to extract the value in your record data source expression. [Learn more](fnc_system_pageResponse.html#using-the-nextpage_parameter).

To batch by a full URL or URI:

1.  In the record data source expression:

    1.  Add exactly one rule input with the following properties:

        |
        Property

         |

        Value

         |
        | --- | --- |
        | **Name** | nextPageUri |
        | **Type** | Text |

    2.  Add the [a!pageResponse()](fnc_system_pageResponse.html) function to the expression to identify the data in the current integration response, and the path for the next set of data to request. The value of the _nextPage_ parameter will be automatically passed to the rule input.

    If the next page link is embedded in a response parameter, use the appropriate functions to extract it. [See an example](fnc_system_pageResponse.html#using-the-nextpage_parameter).

    1.  Click **SAVE**.
2.  In the underlying integration:
    1.  Add a rule input of the same name and data type as the rule input in the record data source expression.
    2.  For **URL**, select **Build URL from Scratch**.

        **Note:**  This option only appears if you use a connected system to configure your integration.

    3.  Hover over the URL input and click **Edit as Expression**.

    4.  In the expression, reference the rule input.

        As a best practice, use [a!defaultValue()](fnc_informational_a_defaultvalue.html) to provide the rule input value until it returns null or empty. At which point, the function can return a static URL.

        [![images/custom-url-integration-ex.png](images/custom-url-integration-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img426)

        [![](images/custom-url-integration-ex.png)](#_)

    5.  Click **SAVE**.
3.  In the record data source expression:
    1.  Update the local variable that calls the integration so you can pass the rule input to the integration.

        You must use [a!defaultValue()](fnc_informational_a_defaultvalue.html) to pass a null value when the next page is empty or null. This will ensure the sync ends when there is no more data to sync.

        For example:

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
        30
        31
        32
        33
        34
        35
        36
        37
        38
        39
        40
        41
        42
        43
        44
        45
        46
          a!localVariables(

          /* Call the integration and store the response in a local variable */
          local!integrationResponse: rule!SXBR_newChicagoInt(

          /* The record data source will be executed multiple times, passing the nextPageUri until an empty next page value is returned */
          /* The batch size is limited to 1000 records per batch */
        +    a!defaultValue(value: ri!nextPageUri, default: fn!null())),

          if(
          /* This will return true if the integration succeeds */
          local!integrationResponse.success,

          /* If needed, modify the expression below to return a list of maps, dictionaries, or CDTs that map to your record data */
          /* Update the nextPage parameter value to the location of the nextPage value */

          a!pageResponse(
            data: a!forEach(
               items: local!integrationResponse.result.body.data,
               expression:
               a!map(
                    id: fv!item.id,
                    title: fv!item.title,
                    description: fv!item.description,
                    price: fv!item.price_display,
                    max_price: todecimal(fv!item.max_current_price)
               )
            ),
            nextPage: local!integrationResponse.result.body.pagination.next_url
          ),

          /* If the integration is unsuccessful, handle accordingly */

          if(
               /* Note: handling of out of bounds exceptions varies by web service */
               tointeger(index(local!integrationResponse.result, "statusCode", 0)) = 416,

               /* If this is an out of bounds error, return an empty list to finish syncing */
               {},

               /* If this is a different error, return the integration error. */
               /* If you need additional logic to determine the error, use a!integrationError() in the integration to format the error displayed in the sync monitor */
               local!integrationResponse.error
             )
            )
          )
        ```

    2.  Click **SAVE**.

### Using a synced record type

To create a record type with data sync enabled to connect to a web service:

1.  [Create a new record type](Create_a_Record_Type.html).
2.  On the **Data Model**, click **Tell Us About Your Data**.
3.  Select **Web Service**.
4.  Click **NEXT**.
5.  For **Choose how to access data**, keep the default selection **Optimized Data Access**. The data will be synced in Appian to automatically optimize performance and enable additional features.
6.  Click **NEXT**.
7.  For **Record Data Source**:
    -   If you have an existing expression rule for your [record data source](#create-a-record-data-source), select it from the list.
    -   If you do not have an existing expression rule, click **Create Record Data Source** to create one. As you create the record data source, choose a batching option to allow the record type to sync more than 1,000 rows from the web service.
8.  Click **NEXT**.
9.  For **Map source fields to record fields**, configure the following field properties:

    |
    Property

     |

    Action

     |
    | --- | --- |
    | **Primary Key Field** | Select a field of any data type to be the primary key. |
    | **Unique Fields** | (Optional) Specify which fields must have all unique values. Unique fields can be used as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. |
    | **Source Field Name** | Use the checkbox next to a **Source Field Name** to add or remove a field from your record type. You can have up to 100 fields. |
    | **Record Field Name** | Enter the name for the record field. This is the name that will be used to reference the field in Appian Designer. |
    | **Record Field Type** | Use the dropdown to select the data types for the record fields.
    We automatically suggest types based on the data type in the source.

    We recommend at least the following changes:

    1.  For fields containing usernames, change the type from Text to [User](Appian_Data_Types.html#user).
    2.  For fields containing group identifiers, change the type from Number (Integer) to [Group](Appian_Data_Types.html#group).

     |
    | **Display Name** | (Optional) Enter a user-friendly field name to display to business users in [Process HQ](processhq.html). Use title case formatting and spaces in the display name so it's easy for users to read. For example, `Year-to-Date`.

    When this field is blank, the **Record Field Name** is displayed in Process HQ using title case formatting. |
    | **Description** | (Optional) Enter a description of the field to display to business users in Process HQ. |

10.  Drag and drop the rows to change the order in which the record fields are displayed.
11.  Click **FINISH**.
12.  Click **SAVE** to sync your data.

### Using an unsynced record type

To create a record type without data sync enabled to connect to a web service:

1.  [Create a custom data type (CDT)](Custom_Data_Types.html) that defines the output of the integration's expected response.
2.  [Create a new record type](Create_a_Record_Type.html).
3.  On the **Data Model**, click **Tell Us About Your Data**.
4.  Select **Web Service**.
5.  Click **NEXT**.
6.  For **Choose how to access data**, select **Direct Data Access**. The data will be queried directly from the source.
7.  Click **NEXT**.
8.  For **Record Data Source**:
    -   If you have an existing expression rule for your [record data source](#create-a-record-data-source), select it from the list.
    -   If you do not have an existing expression rule, click **Create Record Data Source** to create one.
9.  Click **NEXT**.
10.  For **Data Type**, select the CDT that matches the output of the integration's expected response.
11.  Click **FINISH**.
12.  [Enable paging](record-list.html#enable-paging-for-unsynced-service-backed-record-types).
13.  [Enable search](search-the-record-list.html#enable-search-for-unsynced-service-backed-record-types).
14.  [Enable user filters](filter-the-record-list.html#enable-user-filters).
15.  [Configure a single record source](record-view.html#configure-a-single-record-source).
16.  Test your configurations:

     1.  In the **Test Record Source** section of the record type, select one of the expressions to test: **Record Data Source** or **Single Record Source**.
     2.  Click **TEST**. The first 100 records of the DataSubset are returned.

     ![record type test pane source view](images/Record_Type_Test_Pane_Source_View.png)

## Connect to Salesforce

By default, Salesforce is listed as [data source shortcut](#create-data-source-shortcuts). This allows you to quickly connect your record type to a Salesforce connected system.

You can create a [synced record type](#synced-salesforce) or an [unsynced record type](#unsynced-salesforce) to connect to Salesforce. If you create an unsynced record type to connect to Salesforce, you'll follow the same steps to [to connect to a web service](#unsynced-web-service).

### Using a synced record type

To create a record type with data sync enabled to connect to a Salesforce:

1.  Ensure your Salesforce instance is large enough to sync the data you need. Learn more about the [API limit for syncing data from Salesforce](about-data-sync.html#api-limit-to-sync-rows-from-salesforce).
2.  [Create a new record type](Create_a_Record_Type.html).
3.  On the **Data Model**, click **Tell Us About Your Data**.
4.  Select **Salesforce**.
5.  Click **NEXT**.
6.  For **Choose how to access data**, keep the default selection **Optimized Data Access**. The data will be synced in Appian to automatically optimize performance and enable additional features.
7.  Click **NEXT**.
8.  For **Choose Salesforce Object**:
    -   If you have an existing [Salesforce connected system](salesforce-connected-system.html), select it from the list.
    -   If you do not have a Salesforce connected system yet, click **New Connected System** to create one.
9.  Click **NEXT**.
10.  For **Configure Sync Filters**, add [sync filters](records-filter-source-data.html#about-sync-filters) to specify which data is synced in the record type:
     1.  Click **Add Filter**.
     2.  Select a source field to filter by. Only source types that can be converted to [Appian types](Appian_Data_Types.html) appear in the dropdown.
     3.  Select the operator to apply to the filter.
     4.  Use the context menu next to the field to select how you want to pass the value into the filter. The options in this menu change based on the data type of the field selected. You can enter a static value or enter an expression.
     5.  Click **Add Filter** to add additional filters. Multiple filters are evaluated with an `AND` operator.
     6.  Click **TEST FILTER** to validate the filter conditions.
11.  Click **NEXT**.
12.  For **Map source fields to record fields**, configure the following field properties:

     |
     Property

      |

     Action

      |
     | --- | --- |
     | **Source Field Name** | Use the checkbox next to a **Source Field Name** to add or remove a field from your record type. You can have up to 100 fields. |
     | **Record Field Name** | Enter the name for the record field. This is the name that will be used to reference the field in Appian Designer. |
     | **Record Field Type** | Use the dropdown to select the data types for the record fields.
     We automatically suggest types based on the data type in the source.

     We recommend at least the following changes:

     1.  For fields containing usernames, change the type from Text to [User](Appian_Data_Types.html#user).
     2.  For fields containing group identifiers, change the type from Number (Integer) to [Group](Appian_Data_Types.html#group).

      |
     | **Display Name** | (Optional) Enter a user-friendly field name to display to business users in [Process HQ](processhq.html). Use title case formatting and spaces in the display name so it's easy for users to read. For example, `Year-to-Date`.

     When this field is blank, the **Record Field Name** is displayed in Process HQ using title case formatting. |
     | **Description** | (Optional) Enter a description of the field to display to business users in Process HQ. |

13.  Drag and drop the rows to change the order in which the record fields are displayed.
14.  Click **FINISH**.
15.  Click **SAVE** to sync your data.

### Using an unsynced record type

Creating an unsynced record type that connects to Salesforce is the same as [creating an unsynced record type that connects to a web service](#unsynced-web-service).

## Connect to a process model

You can use any process model as the source for a record type. Each running instance of that process model will be treated as an individual record of your record type.

This configuration is less common, and can only be done using an unsynced record type.

### Using an unsynced record type

To create a record type without data sync enabled that connects to a process model:

1.  [Create a new record type](Create_a_Record_Type.html).
2.  On the **Data Model** page, click **Tell Us About Your Data**.
3.  For your source type, select **Process**.
4.  Click **NEXT**.
5.  For **Choose Process Model**, select a process model.
6.  Click **FINISH**.

Now, each active (unarchived) process instance will appear as a record.

## Update field configurations

After you configured the source of a synced record type, you may need to add, update, or delete record fields to fit your evolving business needs.

For example, you may need to add additional fields to capture new data in the record type, or change the data type of an existing field from type Text to type User to more easily query user information.

Depending on the source of your record type, you can make the following field changes:

|
Data Model Changes

 |

Database Source

 |

Salesforce Source

 |

Web Service Source

 |
| --- | --- | --- | --- |
| [Change record field names and data types](#change-record-field-names-and-data-types) |  |  |  |
| [Add field display names and descriptions](#add-field-display-names-and-descriptions) |  |  |  |
| [Add reusable validations and interfaces to record fields](#add-reusable-validations-and-interfaces-to-record-fields) | < |  |  |
| [Add or remove record fields](#add-or-remove-record-fields) |  |  |  |
| [Configure unique fields](#configure-unique-fields) |  |  |  |
| [Configure the primary key field to use a sequence](#prodlink-database-fields) |  |  |  |

### Change record field names and data types

**Relevant to**: All synced record types.

If you need to change the name of a record field, or you want to change a field like `username` from type Text to User, you can easily change your record field configuration.

**Tip:**  If the source of your record type is a database, Appian recommends using [codeless data modeling](update-source-from-record-type.html) to modify record field names and data types since those changes will also be saved and reflected in your source.

To change a record field name or data type:

1.  Go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.

    **Tip:**  You can also edit the record field name by clicking next to the record field.

3.  In **Record Field Name**, enter the name for the record field. This is the name that will be used to reference the field in Appian.
4.  In **Record Field Type**, use the dropdown to select the data types for the record fields.

    We automatically suggest types based on the data type in the source. We recommend at least the following changes:

    -   For fields containing usernames, change the type from Text to [User](Appian_Data_Types.html#user).
    -   For fields containing group identifiers, change the type from Number (Integer) to [Group](Appian_Data_Types.html#group).
5.  Click **FINISH**.
6.  Click **SAVE**.

If you change the record field type, you will need to update any existing references to the field. See the [Health Dashboard](monitoring_view.html#health-dashboard) to quickly find all invalid field references.

### Add field display names and descriptions

**Relevant to**: All synced record types.

If your record type will be available in [Process HQ](processhq.html), consider adding display names and descriptions on your record fields.

By default, record fields names appear in title case formatting to users in Process HQ. However, if a record field name contains an acronym or it's not easily understood by business users, you can configure a field display name and description to appear to users in Process HQ.

For example, let's say you have a record field called `elapsedTime`. To ensure users understand the purpose of this field, you can configure a display name of `Duration` and add a description about how the duration is calculated.

To add field display names and descriptions:

1.  Go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  In **Display Name**, enter a user-friendly field name in title case format. The display name will appear to users throughout Process HQ.
4.  In **Description**, enter a description of the field. The field description will only appear in the [Process Insights page](process-insights.html) of Process HQ.
5.  Click **FINISH**.
6.  Click **SAVE**.

**Note:**  You can also add field display names and descriptions in the **Edit Record Field** dialog.

### Add reusable validations and interfaces to record fields

**Relevant to**: Database-backed record types.

If you have record fields that are used in multiple interfaces throughout your application, you can speed up your development time by adding reusable interfaces and common validations to your record field configurations. Configuring validations and interfaces for record fields that can be reused throughout your application allows for convenient, reliable, and uniform reuse without the need to continually configure the way a field displays or validates.

For example, if you have a record field for email addresses that you use in multiple interfaces, you could configure the validations and reusable interfaces for it one time in the record field and just reference those configurations while developing your app.

For the email record field example, you create reusable validations to make sure that all inputs to the email field include an `@` symbol or use a specific domain. Instead of writing the expression for those validations every time you use the record field in an interface, you can define the expression one time in the record field and call it wherever you need it.

You would likely want to create reusable user interfaces for the email field, as well. These user interfaces are like reusable, pre-configured components and can either be generated or made custom. The reusable interfaces are used to define what the email field should look like when it's a part of a read-only interface and display interface, as well as set up all the accompanying configurations.

The read-only interface for this field would likely be simple, and might only have:

-   A text component.
-   A reference to the record field display name as the component's _label_.
-   A reference to the record field as the component's _value_.

The input interface for this field would likely be a bit more configured, and might have:

-   A text component.
-   A reference to the record field display name as the component's _label_.
-   A reference to the record field as the component's _value_.
-   A reference to the record field as the component's _saveInto_.
-   The reusable validations for your record field, called using the [a!applyValidations() function](fnc_system_a_applyValidations.html).

**Note:**  Reusable interfaces and validations can only be added to existing record fields and cannot be configured while creating a new record field.

#### Add reusable validations

To add commonly used validations to a record field:

1.  Go to **Data Model**.
2.  Click next to the record field.
3.  In the expression box for **Validations**, use expressions to create validations that you want to reuse with the record field throughout your app. If you need a place to start, try these functions that were specifically created to help you easily create intuitive validations:
    -   [a!isBetween()](fnc_system_a_isBetween.html)
    -   [a!isInText()](fnc_system_a_isInText.html)
    -   [a!startsWith()](fnc_system_a_startsWith.html)
    -   [a!endsWith()](fnc_system_a_endsWith.html)
4.  Click **SAVE**.
5.  Click **SAVE** to save the record type.

Once you configure the validation on the field, you can reference it in an interface or expression rule using the [a!applyValidations() function](fnc_system_a_applyValidations.html).

#### Add reusable interfaces

You can generate reusable interfaces or select existing interfaces to associate with a record field, so you can quickly and consistently display the record field in forms and reports without configuring it multiple times.

You can add two reusable user interfaces to a record field:

-   **A read-only interface**: Defines what the record field should look like when used in read-only interfaces, like summary views.
-   **An input interface**: Defines what the record field should look like when used in input interfaces, like forms.

Once you add one or both reusable interfaces to a field, you can use a [record field reference](reference-records.html#reference-record-field-interfaces) to display them throughout your applications.

To add existing or create new reusable user interfaces for a record field:

1.  Go to **Data Model**.
2.  Click next to the record field.
3.  Go to the **User Interfaces** section of the **Edit Record Field** dialog.
4.  For **Read Only Interface**:
    -   If you have an existing interface configured, search for the interface name and select it.
    -   If you don't have an existing interface, click to create one. In the **Create Interface** dialog, configure the interface properties and click **CREATE**.
5.  For **Input Interface**:
    -   If you have an existing interface configured, search for the interface name and select it.
    -   If you don't have an existing interface, click to create one. In the **Create Interface** dialog, configure the interface properties and click **CREATE**.
6.  Click **SAVE**.
7.  Click **SAVE** to save the record type.

### Add or remove record fields

**Relevant to**: All synced record types.

If a new field is added to your source data, you'll also need to add that new field in your record type. Similarly, if a field is removed from your source data, you'll want to remove it from the record type as well.

To add or remove record fields from the record type:

1.  Go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  In the **Map Record Fields** dialog, select or deselect the checkbox next to any record field.
4.  Click **FINISH**.
5.  Click **SAVE**.

### Configure the primary key field to use a sequence

**Relevant to**: Database-backed record types.

If you [connected to a database table](#synced-database), you can select a sequence to generate primary key values for records created by Appian.

A sequence is a value-generating object created in your database. Appian can reference a sequence when creating new records to set the primary key's value. For instance, when one of your app's processes uses the [Write Records smart service](Write_Records_Smart_Service.html), the smart service uses the primary key configuration to add a new record. If you've selected a sequence, it will be used to create the record's primary key.

**Note:**  Appian only supports sequences for MariaDB and Oracle databases.

To select the sequence:

1.  On the **Data Model** page, click next to the primary key field.
2.  On the **Edit Record Field** dialog, enable **Use a sequence to generate values for the primary key**.
3.  For **Sequence Name**, select the sequence for Appian to use when writing new data to the source.
4.  Click **OK**.
5.  Click **SAVE**.

### Configure unique fields

**Relevant to**: Service-backed record types.

If you want to use a field as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration, it must have unique values.

If you [connect to a web service](#synced-web-service), you can specify unique fields in your data model. When configured, Appian will ensure that the field does not have any duplicate values. If you try to add a duplicate value, the record type will fail to sync and the data will be unavailable.

To configure unique fields:

1.  Go to **Data Model**.
2.  Click **MAP RECORD FIELDS**.
3.  For **Unique Fields**, select the fields that must have all unique values.
4.  Click **FINISH**.
5.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...