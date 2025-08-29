---
source_url: https://docs.appian.com/suite/help/25.3/Service-Backed_Record_Tutorial_JDBC.html
original_path: Service-Backed_Record_Tutorial_JDBC.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Type Tutorial (JDBC SQL Integration)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Appian’s data fabric makes it easy to unify, secure, and optimize data across your enterprise, regardless of where it lives. If your data sources provide a JDBC driver, you can bring all of your data together by creating a service-backed record type, which is a record type that uses a web service as its data source.

In the first half of this tutorial, we’ll focus on a common scenario: accessing reference data stored in a data warehouse or data lake, such as Snowflake or AWS Redshift. Specifically, we’ll guide you through creating a service-backed record type using Snowflake as the data source. This record type retrieves data using a JDBC SQL integration and can be used as a reference dataset in your application.

To highlight one of the key differentiators of Appian’s data fabric, the second half of this tutorial will demonstrate how to create record actions that write data back to Snowflake.

By the end of this tutorial, you’ll not only have a clear understanding of how to use Snowflake as the data source for your record type but also gain practical knowledge to replicate the process for other JDBC-compatible data sources.

**Note:**  If you are connecting to one of the [supported databases](System_Requirements.html#databases), connect using a [data source connected system](data-source-connected-systems.html) and create [database-backed record types](configure-record-data-source.html#connect-to-a-database) instead.

### Objectives

In this tutorial, you’ll learn how to:

-   Connect Appian to Snowflake.
-   Query data in Snowflake using a JDBC SQL integration.
-   Create a service-backed record type to easily use this data throughout your applications.
-   Generate record actions to create a new record or update an existing record.

After you complete this tutorial, you will understand how to use JDBC SQL integration to create a service-backed record type to interact with any JDBC-compatible data sources.

## Setup

### Create a trial Snowflake account

In this tutorial, you will connect your Appian application to Snowflake. Before we start, you need to create a Snowflake trial account, which provides a 30-day free trial.

During the account creation, ensure that you select the Enterprise Snowflake edition to gain ACCOUNTADMIN access. For this tutorial, any cloud provider and region will work, so feel free to choose whichever you’d like.

### Load data in Snowflake

The Snowflake trial account includes sample datasets; however, you cannot modify these datasets. To write data in Snowflake, you’ll need to create a new database and table.

Create a new SQL Worksheet in Snowflake using the SQL commands below. Running this command should create a new database and table, and load 2,000 rows of data into the table.

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
create database analytics;

CREATE OR REPLACE TABLE ANALYTICS.PUBLIC.CUSTOMER (
    C_CUSTKEY VARCHAR(36),
    C_NAME VARCHAR(50),
    C_ADDRESS VARCHAR(100),
    C_NATIONKEY INT,
    C_PHONE VARCHAR(20),
    C_ACCTBAL NUMBER,
    C_MKTSEGMENT VARCHAR(20),
    C_COMMENT VARCHAR(200)
);

INSERT INTO ANALYTICS.PUBLIC.CUSTOMER (
C_CUSTKEY
,C_NAME
,C_ADDRESS
,C_NATIONKEY
,C_PHONE
,C_ACCTBAL
,C_MKTSEGMENT
,C_COMMENT
)
SELECT UUID_STRING() as C_CUSTKEY
,C_NAME
,C_ADDRESS
,C_NATIONKEY
,C_PHONE
,C_ACCTBAL
,C_MKTSEGMENT
,C_COMMENT
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER ORDER BY C_CUSTKEY limit 2000;
```

### Create the application and user groups

Now that you have your data in Snowflake, let’s create our JDBC SQL Tutorial application:

1.  Sign in to Appian Designer.
2.  Click **NEW APPLICATION**.
3.  In the **Create New Application** dialog, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `JDBC SQL Tutorial`. |
    | **Prefix** | Keep the default prefix `JST`, which Appian constructs using the initial characters of each word you entered in the **Name** parameter. We'll be following the [recommended naming standard](Standard_Object_Names.html) by using this short, unique prefix whenever we name an object in this application. |
    | **Description** | Enter a description for the application, such as `JDBC Tutorial`. |
    | **Generate groups and folders to secure and organize objects** | Keep this checkbox selected Appian will automatically [generate standard groups and folders](creating-applications.html#generated-groups-and-folders) and [assign default security groups](creating-applications.html#default-security-groups) for this application. |

4.  Click **CREATE**.
5.  In the **Review Application Security** dialog, keep the default security settings. Because we selected the **Generate groups and folders** option in the previous step, Appian automatically uses the **JST Users** and **JST Administrator** groups it generated to set our application security appropriately.
6.  Click **SAVE**.

### Deploy a Snowflake JDBC driver

This tutorial relies on the custom JDBC connected system to connect to Snowflake since it is an unsupported database.

To use the custom JDBC connected system, you must first [deploy a Snowflake JDBC driver](custom-jdbc-connected-system.html#deploy-a-driver) to your site. If you don’t, you won’t be able to follow the rest of the tutorial.

**Note:**  If you’re using Appian Community Edition, Snowflake JDBC driver is pre-deployed for you.

## Connect Appian to Snowflake

Our first step will be to connect Appian to our Snowflake database. To do this, we’ll create a connected system.

Since you deployed a JDBC driver to your site, a **Custom Snowflake Data Source** will be available when you go to create a new connected system.

To configure the connected system:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Connected System**.
3.  Choose the **Custom Snowflake Data Source** and configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `JST Snowflake CS`. |
    | **Description** | Enter `Snowflake connection for this application`. |
    | **Connection URL** | Enter your Snowflake connection URL, using the following format as a guide: `jdbc:snowflake://<myorganization-myaccount>.snowflakecomputing.com/?user=<username>&warehouse=COMPUTE_WH&db=ANALYTICS&schema=PUBLIC&JDBC_QUERY_RESULT_FORMAT=JSON`. |
    | **Username** | Enter username for your Snowflake trial account. |
    | **Password** | Enter the password for your Snowflake trial account. |

4.  Click **TEST CONNECTION** to verify that the connection is successful.
5.  Keep the remaining default settings and click **CREATE**.
6.  Keep the default security settings for the connected system and click **SAVE**.

## Query data in Snowflake

Now that we can access the Snowflake database, we’ll [create a SQL integration object](create-sql-integration.html) to query the data in Snowflake.

To create a SQL integration object:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Integration**.
3.  In the **Create Integration** dialog, select **Use a connected system**.
4.  Select the **JST Snowflake CS** connected system.
5.  Select **SQL Query Integration** operation to read data from Snowflake.
6.  For **Name**, enter `JST_Snowflake_Query_Customer`.
7.  For **Description**, enter `Snowflake data query`.
8.  Click **CREATE**.
9.  In the **SQL Statements** input box, copy and paste the following SQL query.

    ```
    1
    2
    3
    4
    SELECT * FROM CUSTOMER
    ORDER BY C_CUSTKEY
    LIMIT 1000
    OFFSET {offset};
    ```

    **Note:**  We'll use this integration object in a [record data source expression](configure-record-data-source.html#create-a-record-data-source) later on. This expression can return a maximum of 1,000 records with each integration call, so we set the limit to 1,000 and create an offset parameter to sync the dataset in batches.

10.  Click **+New Rule Input** to add a new rule input **offset** with Number (Integer) type.
11.  Under **Parameters**, set the **offset** parameter value to `ri!offset`.
12.  In the testing pane, enter `0` in the **Value** field. This allows us to test the query by returning 1,000 records.
13.  Click **TEST REQUEST** to ensure you are successfully retrieving the records.
14.  Click **SAVE** and close the SQL Integration object.

[![SQL object that queries data from Snowflake](images/JDBC-tutorial-query-snowflake.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img393)

[![](images/JDBC-tutorial-query-snowflake.png)](#_)

## Create a service-backed record type

Next, we'll create a record type to query and display the Snowflake data in our Appian application.

We'll create and configure the record type in steps.

To begin:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Record Type**.
3.  For **Name**, enter `JST Customer`.
4.  For **Description**, enter `Snowflake customer data`.
5.  Click **CREATE**.
6.  In the **Review Record Type Security** dialog, keep the default security group settings.
7.  Click **SAVE**. The **Customer** record type will open in a new tab.

### Configure the record data source

When the Customer record type opens in a new tab, the **Data Model** page opens by default. From this page, we'll select our data source as the first step in configuring the record type.

1.  On the **Data Model** page, click **TELL US ABOUT YOUR DATA**.
2.  Click **Web Service**.
3.  Click **NEXT**.
4.  For **Choose how to access data**, keep the default selection **Optimized Data Access**. The data will be synced in Appian to automatically optimize performance and enable additional features.
5.  Click **NEXT**.
6.  For **Choose Record Data Source**, click **Create Record Data Source**.
7.  Select **Use an existing integration**.
8.  Find and choose the **JST\_Snowflake\_Query\_Customer** integration created in the previous step.
9.  Click **NEXT**.

[![select integration step of creating a record data source](images/JDBC-tutorial-create-record-data-source-1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img394)

[![](images/JDBC-tutorial-create-record-data-source-1.png)](#_)

### Create the record data source expression rule

Next, we'll create the record data source expression.

The record data source expression connects the integration to the record type, calls the integration, and returns the requested data. After we create the integration for the record data source, the configuration wizard automatically defines the property fields for our expression rule.

In the **CREATE EXPRESSION RULE** step, verify that the following information is automatically populated in each field below:

| Property | Value |
| --- | --- |
| **Name** | `JST_Snowflake_Query_Customer_recordDataSource` |
| **Description** | `The Record Data Source for the JST Customer Record Type` |
| **Application** | `JDBC SQL Tutorial` |
| **Save In** | `JST Rules & Constants` |

Click **NEXT** to continue on to configuring syncing in batches.

### Configure syncing in batches

In the last step of the wizard, you'll specify whether you want to sync your record data in batches.

Appian provides the option to sync larger datasets in batches. The record data source can return a maximum of 1,000 records with each integration call. Our customer dataset has 2,000 records, so we will need to make two calls to retrieve everything.

[![create expression rule step of creating a record data source](images/JDBC-tutorial-create-record-data-source-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img395)

[![](images/JDBC-tutorial-create-record-data-source-2.png)](#_)

1.  Select the option to batch using **Sequential Values.**
2.  Click **CREATE**.

Two generated objects are listed on the confirmation page: the record data source expression and the integration to get all customer data.

Before you close the wizard, we need to edit the record data source expression rule to map query result data in the correct format.

**Caution:**  If you click **OK** now, you will see an error.

[![final step of creating a record data source showing created objects](images/JDBC-tutorial-create-record-data-source-3.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img396)

[![](images/JDBC-tutorial-create-record-data-source-3.png)](#_)

### Configure the record data source expression

By default, the integration's response includes a `result.sqlStatements` that is a generic List of Dictionary with many properties describing each customer. We will map the data to fields that will make up the record type.

To update the **Record Data Source** expression with these changes:

1.  On the **Create Record Data Source** dialog, click the **JST\_Snowflake\_Query\_Customer\_recordDataSource** expression rule to open it.
2.  On line 5, replace the null value of `offset` with the following expression:

    ```
    1
    1000*(ri!batchNumber-1)
    ```

    This will retrieve data in batches of 1,000 records for syncing.

3.  On line 13, replace the default value `local!integrationResponse.result.body` with the actual path that our integration returns, `local!integrationResponse.result.sqlStatements.resultSet`.
4.  In the testing pane, enter `0` in the **Value** field. This allows us to test the query by returning 1,000 records.
5.  Click **TEST RULE**. The output should be a 1000 Lists of Map, each with the fields set in the `a!map()` of the expression.
6.  Click **SAVE** and close the expression rule tab.
7.  After closing the expression rule, we are returned to the **Create Record Data Source** dialog. Click **OK**.

### Verify data in the preview

Once you've configured the integration, you can confirm that the record data source expression is working by examining the data preview shown on the **Configure Data Source** dialog. After you've verified the preview data, click **Next**.

[![confirming record data source configuration](images/JDBC-tutorial-create-record-data-source-4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img397)

[![](images/JDBC-tutorial-create-record-data-source-4.png)](#_)

### Configure record type fields

Appian automatically maps your source data fields to record fields. You select the field that will serve as the primary key, and optionally select any number of unique fields as well. You can also re-order the fields, change the display names and add field descriptions as desired.

To select and configure the record type fields:

1.  For **Primary Key**, select **C\_CUSTKEY**.
2.  Click **FINISH**.
3.  Click **SAVE**.

Saving the record type starts a full sync of your record data. This should only take a couple of seconds to complete. Click **Sync History** to see details of the sync operation and confirm that it completed successfully.

[![JST Customer sync history page](images/JDBC-tutorial-record-sync-history.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img398)

[![](images/JDBC-tutorial-record-sync-history.png)](#_)

### Configure the list view

Now let's populate our record list with more meaningful data.

To customize the automatically generated list view:

1.  In the record type, go to **List**.
2.  Click **EDIT LIST** to open the **Edit Record List** dialog.
3.  For **Empty Grid Message**, enter `No customers exist with this criteria`.
4.  For **Rows to Display Per Page**, enter 25. This controls the batchSize that is passed into the **Paging Info** input for your single record source.
5.  In the **Columns** section of the configuration pane, delete the **C CUSTKEY** column by hovering over the three dots and clicking the **X**.
6.  Click the **C Name** link. The grid configuration pane will show details about that column.
7.  Click **DISPLAY OPTIONS**.
8.  From the list of options, click **RECORD LINK**.
9.  For **Display Value**, click **Edit as Expression**.
10.  Use the expression below to show the Customer name on each row.

     **Note:**  If you copy and paste this expression, you will need to replace the record field references with references in your own environment.

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
     a!linkField(
      links: {
        a!recordLink(
         label: fv!row[recordType!JST Customer.fields.C_NAME],
         recordType: recordType!JST Customer,
          identifier: fv!identifier
       )
      }
     )
     ```

11.  Click **OK**.
12.  Change the **Label** of the column to **Name**.
13.  Click the **Grid** link (![grid](images/JDBC-tutorial-grid-link.png)) above the Label to return the Columns list.
14.  Update the **Label** of the remaining columns in the same way:
     -   **C ADDRESS:** Address
     -   **C NATIONKEY:** Nation Key
     -   **C PHONE:** Phone
     -   **C ACCTBAL:** Account Balance
     -   **C MKTSEGMENT:** Market Segment
     -   **C COMMENT:** Comment
15.  Click **OK**.
16.  Click **SAVE**.
17.  To test your record list configuration, click the link under **URL**. You should end up with a list view that looks like this:

[![JST Customer record list view example](images/JDBC-tutorial-customer-list-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img399)

[![](images/JDBC-tutorial-customer-list-view.png)](#_)

### Create a user filter

To make it easier for users to find information about specific customers, we can build [user filters](filter-the-record-list.html#user-filters) that compare user selections with the values of record fields and return the records that match.

In this tutorial, we'll create a user filter that uses the `Market Segment` field to see data for a selected market segment.

To create a user filter:

1.  In the record type, click **Filters**.
2.  Click **New User Filter**.
3.  On the **Create New User Filter** dialog, select the **Expression** option.
4.  For **Name**, enter `Market Segment`.
5.  For the **Filter Expression**, use the following expression:

    **Note:**  If you copy and paste this expression, you will need to replace the record field references with references in your own environment.

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
    a!localVariables(
     local!segment: a!queryRecordType(
      recordType: recordType!JST Customer,
      fields: a!aggregationFields(
        groupings: a!grouping(
          field: recordType!JST Customer.fields.C_MKTSEGMENT,
          alias: "segment"
        )
      ),
      pagingInfo: a!pagingInfo(
        startIndex: 1,
        batchSize: 100
      )
     ),
     a!recordFilterList(
      name: "Market Segment",
      allowMultipleSelections: true,
      options: a!forEach(
        items: local!segment.data,
        expression: a!recordFilterListOption(
          id: fv!index,
          name: fv!item.segment,
          filter: a!queryFilter(
            field: recordType!JST Customer.fields.C_MKTSEGMENT,
            operator: "=",
            value: fv!item.segment
          )
        )
      )
    )
    )
    ```

6.  Click **OK**.
7.  Click **SAVE**.
8.  To test your filter configuration:
    1.  In the record type, go to **List**.
    2.  Click the link under **URL** to open the record list.
    3.  Select **AUTOMOBILE** from the **MARKET SEGMENT** dropdown and verify that the grid shows only the automobile customers.

[![Customer list with user filter applied](images/JDBC-tutorial-filtered-customer-list.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img400)

[![](images/JDBC-tutorial-filtered-customer-list.png)](#_)

### Create the Summary view

Next, we'll create a Summary view for the record type:

1.  In the record type, go to **Views**.
2.  Click **GENERATE RECORD VIEW**.
3.  For **Data Included in Your Record View**, the **Customer** record type is already selected, so you can click **NEXT**.
4.  For **View Name**, use the default name `Summary` and then click **NEXT**.
5.  Click **GENERATE VIEW**.
6.  Click **CLOSE**.
7.  Click **SAVE**.

### Update the generated Summary view

Next, we'll customize our new Summary view with meaningful labels displayed on each record.

1.  From the **Views** page, open the generated interface `rule!JST_CustomerSummary`.
2.  Open the **JST\_CustomerSummary** interface by CMD or CTRL clicking on the Interface name
3.  Go to Expression mode and enter the following expression:

    **Note:**  If you copy and paste this expression, you will need to replace the record field references with references in your own environment.

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
    47
    48
    49
    50
    51
    52
    53
    54
    55
    56
    57
    58
    59
    60
    61
    62
    63
    64
    65
    66
    67
    68
    69
    70
    71
    72
    73
    74
    75
    76
    77
    78
    79
    80
    81
    82
    83
    84
    85
    86
    87
    88
    89
    90
    91
    92
    93
    94
    95
    96
    97
    98
    99
    100
    {
      a!sectionLayout(
      label: "Customer",
      labelSize: "MEDIUM",
      labelHeadingTag: "H2",
      labelColor: "STANDARD",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Name",
                  labelPosition: "JUSTIFIED",
                  value: a!defaultValue(
                    ri!record[recordType!JST Customer.fields.C_NAME],
                    "–"
                  ),
                  readOnly: true
                ),
                a!textField(
                  label: "Nation Key",
                  labelPosition: "JUSTIFIED",
                  value: if(
                    isnull(
                      ri!record[recordType!JST Customer.fields.C_NATIONKEY]
                    ),
                    "–",
                    text(
                      ri!record[recordType!JST Customer.fields.C_NATIONKEY],
                      "#"
                    )
                  ),
                  readOnly: true
                ),
                a!textField(
                  label: "Account Balance",
                  labelPosition: "JUSTIFIED",
                  value: if(
                    isnull(
                      ri!record[recordType!JST Customer.fields.C_ACCTBAL]
                    ),
                    "–",
                    text(
                      ri!record[recordType!JST Customer.fields.C_ACCTBAL],
                      "#"
                    )
                  ),
                  readOnly: true
                ),
                a!paragraphField(
                  label: "Comment",
                  labelPosition: "JUSTIFIED",
                  value: a!defaultValue(
                    ri!record[recordType!JST Customer.fields.C_COMMENT],
                    "–"
                  ),
                  readOnly: true
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Address",
                  labelPosition: "JUSTIFIED",
                  value: a!defaultValue(
                    ri!record[recordType!JST Customer.fields.C_ADDRESS],
                    "–"
                  ),
                  readOnly: true
                ),
                a!textField(
                  label: "Phone",
                  labelPosition: "JUSTIFIED",
                  value: a!defaultValue(
                    ri!record[recordType!JST Customer.fields.C_ADDRESS],
                    "–"
                  ),
                  readOnly: true
                ),
                a!textField(
                  label: "Market Segment",
                  labelPosition: "JUSTIFIED",
                  value: a!defaultValue(
                    ri!record[recordType!JST Customer.fields.C_MKTSEGMENT],
                    "–"
                  ),
                  readOnly: true
                )
              }
            )
          }
        )
      },
      divider: "ABOVE",
      marginAbove: "STANDARD",
      marginBelow: "MORE"
    )
    }
    ```

4.  Click **SAVE**.
5.  To test the Summary view:
    1.  In the record type, go to **List**.
    2.  Click the link under **URL** to open the record list.
    3.  Click a customer name to display the record's Summary view.

[![customer record summary view](images/JDBC-tutorial-record-summary.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img401)

[![](images/JDBC-tutorial-record-summary.png)](#_)

## Configure record actions

In this last part of the tutorial, we'll create record actions to create a new customer and update customer information.

Let’s first create SQL integration objects for creating and updating a customer record in Snowflake.

### Create a SQL integration object for new customers

Before we create a record action, we'll create a new integration to create and update data in Snowflake.

To create the SQL integration object:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Integration**.
3.  Find and choose the **JST Snowflake CS** connected system that you created in a previous step.
4.  For **Operation,** select **SQL Write Integration** operation to write data back to Snowflake.
5.  For **Name**, enter `JST_Snowflake_Insert_Customer`.
6.  Click **CREATE**.

Next, we’ll add an additional rule input needed to store user-entered data for the components in the interface. In the **RULE INPUTS** pane on the right, click **+New Rule Input**. \* For **Name**, enter `record`. \* For **Type**, enter record type `JST Customer`.

1.  In the **SQL Statements** input box, copy and paste the following SQL query:

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
    INSERT INTO CUSTOMER (
       C_CUSTKEY,
       C_NAME,
       C_ADDRESS,
       C_NATIONKEY,
       C_PHONE,
       C_ACCTBAL,
       C_MKTSEGMENT,
       C_COMMENT
    )
    VALUES
       ({C_CUSTKEY},
       {C_NAME},
       {C_ADDRESS},
       {C_NATIONKEY},
       {C_PHONE},
       {C_ACCTBAL},
       {C_MKTSEGMENT},
       {C_COMMENT}
    );
    ```

2.  Under **Parameters**, click **Edit as expression** next to the **C\_CUSTKEY** parameter.
3.  In the **Edit Expression** dialog, enter `ri![recordType!JST Customer.fields.C_CUSTKEY]`.

**Note:**  If you copy and paste the expression, you'll need to replace the record field reference with one in your environment.

1.  Click **OK**.
2.  Do the same for the remaining 7 parameters to map the **record** rule input field to each parameter.
3.  Click **SAVE**.

[![snowflake integration object to insert customer](images/JDBC-tutorial-insert-snowflake.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img402)

[![](images/JDBC-tutorial-insert-snowflake.png)](#_)

### Create a SQL integration object to generate a UUID for a new customer

To sync new or updated data in our service-backed record type, we will use the Sync Records smart service to sync data changes.

To configure the Sync Records smart service, we will call an integration to generate a UUID when creating a new customer. Then, we'll trigger a sync for the new record after the data has been successfully written to the Snowflake.

To create the SQL integration object:

1.  Go to the **Build** view, click **NEW > Integration**.
2.  In the **Create Integration** dialog, select **Use a connected system**.
3.  Find and choose the custom Snowflake connected system (JST Snowflake CS) created in the previous step.
4.  For **Operation**, select **SQL Query Integration** operation to generate a UUID from Snowflake.
5.  For **Name**, enter `JST_Snowflake_UUID`.
6.  Click **CREATE**.
7.  For **SQL Statements**, copy and paste the following SQL query. This will generate eight parameters.

    ```
    1
    SELECT UUID_STRING() as uuid;
    ```

8.  Click **SAVE**.

### Create an expression rule to parse the UUID generated from the SQL integration

Next, we'll create an expression rule to parse the UUID returned from the integration call so that we can use it to create a new customer record in Snowflake and immediately sync the change.

1.  Go to the **Build** view, click **NEW > Expression Rule**.
2.  For **Name**, enter `JST_getUuid`.
3.  For **Description**, enter `Get UUID from Snowflake`.
4.  Click **CREATE**.
5.  Copy and paste the following expression:

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

    /* Call the integration and store the response in a local variable */
    local!integrationResponse: rule!JST_Snowflake_UUID(),

    if(
       /* This will return true if the integration succeeds */
       local!integrationResponse.success,

       /* If needed, modify the expression below to return a list of maps, dictionaries, or CDTs that map to your record data */
       local!integrationResponse.result.sqlStatements.resultSet.uuid,

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

6.  Click **TEST RULE** to ensure the expression is returning a UUID from the integration.
7.  Click **SAVE**.

### Create a SQL integration object to update customers

Next, we need to create a SQL integration object to update customer information. To save a little time during this tutorial, we will duplicate the SQL integration object `JST_Snowflake_Insert_Customer` created in the previous step.

To create the SQL integration object:

1.  Select the checkbox beside the `JST_Snowflake_Insert_Customer` integration in the **Build** view, then click **DUPLICATE** button.
2.  For **Name**, enter `JST_Snowflake_Update_Customer`.
3.  Click **CREATE**.
4.  In the **SQL Statements** input box, copy and paste the following SQL query, replacing the current statement.

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
    UPDATE CUSTOMER
       SET C_NAME= {C_NAME},
       C_ADDRESS={C_ADDRESS},
       C_NATIONKEY={C_NATIONKEY},
       C_PHONE={C_PHONE},
       C_ACCTBAL={C_ACCTBAL},
       C_MKTSEGMENT={C_MKTSEGMENT},
       C_COMMENT={C_COMMENT}
    WHERE C_CUSTKEY={C_CUSTKEY};
    ```

5.  Click **SAVE**.

[![snowflake integration object to update customer](images/JDBC-tutorial-update-snowflake.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img403)

[![](images/JDBC-tutorial-update-snowflake.png)](#_)

### Create an interface

We're going to create an interface named **JST\_CreateOrUpdateCustomer**. This interface will show a form for users to input values about a new customer or update values for an existing customer.

To create an interface object:

1.  In the **Build** view, click **NEW > Interface**.
2.  For **Name**, enter `JST_CreateOrUpdateCustomer`.
3.  Click **CREATE**.
4.  In the **RULE INPUTS** pane, click **New Rule Input**.
5.  For **Name**, enter `record`.
6.  For **Type**, enter **JST Customer** record type.
7.  Leave the **Array** checkbox unselected. The form only allows users to submit a single customer, so there is no need for the rule input to accept multiple records.
8.  Click **CREATE AND ADD ANOTHER**.
9.  For **Name**, enter `cancel`.
10.  For **Type**, select **Boolean**.
11.  Click **CREATE AND ADD ANOTHER**.
12.  For **Name**, enter `isUpdate`. This rule input tracks whether the form is being used to create a new record or update an existing one.
13.  For **Type**, select **Boolean**.
14.  Click **CREATE**. Your finished rule inputs should look like this:

     [![rule inputs](images/JDBC-tutorial-interface-rule-inputs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img404)

     [![](images/JDBC-tutorial-interface-rule-inputs.png)](#_)

15.  In expression mode, copy and paste the following expression. Replace the record field references with references in your own environment.

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
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
   a!formLayout(
   label: if(
      ri!isUpdate,
      "Update Customer",
      "Create Customer"
   ),
   contents: {
      a!columnsLayout(
         columns: {
         a!columnLayout(
            contents: {
               a!textField(
               label: "Name",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_NAME],
               saveInto: ri!record[recordType!JST Customer.fields.C_NAME],
               characterLimit: 50,
               required: true
               ),
               a!textField(
               label: "Phone Number",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_PHONE],
               saveInto: ri!record[recordType!JST Customer.fields.C_PHONE],
               characterLimit: 15,
               required: false
               ),
               a!textField(
               label: "Market Segment",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_MKTSEGMENT],
               saveInto: ri!record[recordType!JST Customer.fields.C_MKTSEGMENT],
               characterLimit: 50,
               required: false
               )
            }
         ),
         a!columnLayout(
            contents: {
               a!textField(
               label: "Address",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_ADDRESS],
               saveInto: ri!record[recordType!JST Customer.fields.C_ADDRESS],
               characterLimit: 100,
               required: true
               ),
               a!floatingPointField(
               label: "Nation Key",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_NATIONKEY],
               saveInto: ri!record[recordType!JST Customer.fields.C_NATIONKEY],
               refreshAfter: "UNFOCUS",
               validations: {}
               ),
               a!floatingPointField(
               label: "Account Balance",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_ACCTBAL],
               saveInto: ri!record[recordType!JST Customer.fields.C_ACCTBAL],
               required: false
               ),
               a!paragraphField(
               label: "Comment",
               labelPosition: "ABOVE",
               value: ri!record[recordType!JST Customer.fields.C_COMMENT],
               saveInto: ri!record[recordType!JST Customer.fields.C_COMMENT],
               refreshAfter: "UNFOCUS",
               height: "MEDIUM",
               validations: {}
               )
            }
         )
         }
      )
   },
   buttons: a!buttonLayout(
      primaryButtons: {
         a!buttonWidget(
         label: if(ri!isUpdate, "Save", "Create"),
         saveInto: if(ri!isUpdate,
         a!save(
            target: ri!record[recordType!JST Customer.fields.C_CUSTKEY],
            value: ri!record[recordType!JST Customer.fields.C_CUSTKEY]),
         a!save(
            target: ri!record[recordType!JST Customer.fields.C_CUSTKEY],
            value: rule!JST_GetUuid()
         )),
         submit: true,
         style: "SOLID",
         validate: true
         )
      },
      secondaryButtons: {
         a!buttonWidget(
         label: "Cancel",
         value: true,
         saveInto: ri!cancel,
         submit: true,
         style: "OUTLINE",
         validate: false
         )
      }
   )
   )
```

1.  Click **SAVE**.

### Create the process model

Now, let's create the process model object. We'll also use the **JST\_CreateOrUpdateCustomer** interface as the start form to automatically populate our variables.

To create the process model:

1.  Go to the **Build** view, click **NEW > Process Model**.
2.  For **Name**, enter `JST Create Or Update Customer`.
3.  Click **CREATE**.
4.  In the **Review Process Model Security** dialog, update the default security as follows:
    -   For **JST Users**, set the **Permission Level** to **Initiator**.
    -   For **JST Administrators**, leave the **Permission Level** as **Administrator**.
5.  Click **SAVE**. The Appian Process Modeler opens automatically and displays the **JST Create Or Update Customer** process.
6.  From the menu bar, click **File > Properties**.
7.  Click the **Process Start Form** tab.
8.  For **Interface**, select **JST\_CreateOrUpdateCustomer**.
9.  On the **Create Process Parameters** dialog, click **YES**. The `record`, `cancel`, and `isUpdate` process variables are created. You can see these variables if you go to the **Variables** tab.

    [![process model properties window for JST Create or Update Customer](images/JDBC-tutorial-process-model-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img405)

    [![](images/JDBC-tutorial-process-model-properties.png)](#_)

10.  Click **OK**.
11.  Drag an **XOR** node from the palette to the canvas, and drop it on top of the existing connector between the **Start Node** and **End Node**. This gateway node uses the value of `pv!cancel` and `pv!isUpdate` to select the appropriate workflow path.

#### Configure new customer workflow

1.  Drag a **CALL INTEGRATION** node from the **Automation Smart Services** palette group to the canvas, and drop it on top of the existing connector between the **XOR** Node and **End Node**.
2.  Click the label and change it to `Insert Customer`.
3.  Double-click the **Call Integration** node.
4.  Go to the **Setup** tab.
5.  In the Select Integration field, select `JST_Snowflake_Insert_Customer` integration object.
6.  Go to the **Data** tab. When an integration is selected, the integration’s inputs will automatically appear as node inputs. There is one node input.
7.  In the Node Inputs pane, click **record**.
8.  For the **Value** field, use the dropdown to select **record**.
9.  Click **OK**.
10.  Drag a **SYNC RECORDS** node from the **Data Services** palette group to the canvas, and drop it on top of the existing connector between the **CALL INTEGRATION** node and the **End Node**.
11.  Click the label and change it to `Sync Customer Record`.
12.  Double-click the **Sync Records** node.
13.  Go to the **Data** tab.
14.  In the Node Inputs pane, click **Record Type**.
15.  For the **Value** field, click the Expression Editor to open the dialog.
16.  Enter `recordType!JST Customer`.
17.  Click **SAVE AND CLOSE**.
18.  In the Node Inputs pane, click **Identifiers**.
19.  For the **Value** field, use the dropdown to select `record.C_CUSTKEY`. The field is automatically populated with the correct process variable syntax.
20.  Click **OK**.

**Note:**  While you've successfully configured the Sync Records node, this node won't work until you complete the steps under [Sync changed data](#sync-changed-data).

Your process model should look like this:

[![new customer process model](images/JDBC-tutorial-process-model-1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img406)

[![](images/JDBC-tutorial-process-model-1.png)](#_)

#### Configure update customer workflow

We need a similar workflow to update a customer.

1.  Click the **Connect** (![connect](images/JDBC-tutorial-connect.png)) button in the tool bar.
2.  Hover over **XOR** node and click on the red dot to connect XOR node with **Sync Customer Record** node.
3.  Click the **Select** (![select](images/JDBC-tutorial-select.png)) button in the tool bar.
4.  Drag a **CALL INTEGRATION** node from the palette to the canvas, and drop it on top of the new connector between the **XOR** Node and **Sync Customer Record**.
5.  Click the label on the new **Call Integration** node and change to `Update Customer`.
6.  Double-click the node and go to the **Setup** tab.
7.  In the **Select Integration** field, select `JST_Snowflake_Update_Customer` integration object.
8.  Go to the **Data** tab.
9.  In the Node Inputs pane, click **record**. For the **Value** field, use the dropdown to select **record**.
10.  Click **OK**.

Your process model should look like this:

[![update customer process model](images/JDBC-tutorial-process-model-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img407)

[![](images/JDBC-tutorial-process-model-2.png)](#_)

#### Add a cancel flow

We also need a workflow to cancel the process.

1.  Click the **Connect** button in the tool bar.
2.  Hover over the **XOR** node and click on the red dot to connect the XOR node with **End Node**.
3.  Click the **Select** button in the tool bar.
4.  Right-click each flow connector and select **Enable Activity-Chaining**.

Your process model should look like this

[![update customer process model with cancel workflow](images/JDBC-tutorial-process-model-3.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img408)

[![](images/JDBC-tutorial-process-model-3.png)](#_)

#### Configure the decision logic

Now let’s define the logic within the XOR gateway.

To configure the gateway decision logic:

1.  Double-click the **XOR** node.
2.  On the **Configure XOR** dialog, click the **Decision** tab.
3.  Click **NEW CONDITION** twice to add two new conditions.
4.  Configure properties for the first condition:
    -   For **Condition**, enter `pv!cancel`.
    -   For **Result**, in the **go to** dropdown list, select End Node
    -   For **Path Label**, enter `Cancel`.
5.  Configure properties for the second condition:
    -   For **Condition**, enter `pv!isUpdate`.
    -   For **Result**, in the **go to** dropdown list, select **Update Customer**.
    -   For **Path Label**, enter `Update`.
6.  Configure properties for the **Else if no rules are TRUE** condition:
    -   For **Result**, in the **go to** dropdown list, select **Insert Customer.**
7.  Click **OK**.
8.  From the menu bar, click **File > Save & Publish**.

### Create a record list action and a related action

Now that we have a process model, we'll configure a new [record list action](record-actions.html#record-list-actions) so users have a way to initiate the process.

To create the record list action:

1.  In the **Build** view, open the **JST Customer** record type.
2.  In the record type, go to **Actions**.
3.  Under **Record List Actions**, click **CONFIGURE NEW ACTION MANUALLY**. The **Create New Action** dialog appears.
4.  For **Display Name**, enter `New Customer`.
5.  For **Process Model**, enter `JST Create Or Update Customer`.
6.  Click **OK**.
7.  Under **Related Actions**, click **CONFIGURE NEW ACTION MANUALLY**. The **Create New Related Action** dialog appears.
8.  For Display Name, enter `Update Customer`.
9.  For **Icon**, select `pencil-square-o icon`.
10.  For **Process Model**, enter `JST Create Or Update Customer`.
11.  For **Context**, change the default expression to the following:

```
1
2
3
4
5
   {
   cancel: false(), /* Boolean */
   isUpdate: true(), /* Boolean */
   record: rv!record /* JST Customer */
   }
```

1.  Click **OK**.
2.  Click **SAVE**.

### Add the related actions to the Summary view

Let's add the Update Customer action to the Summary view.

Right now, the related action will only appear on the **[Related Actions view](record-view.html#configure-the-display-of-default-record-views)** on each record, but we'll add a [related action shortcut](record-actions.html#display-related-action-on-record-view) so users can more quickly update customer information while viewing the summary.

To add the related actions to the Summary view:

1.  In the record type, go to **Views**.
2.  Click ![edit](images/JDBC-tutorial-edit.png) next to **Summary**.
3.  In the **Edit View** dialog, under **Related Action Shortcuts**, select the checkbox for **Update Customer**.
4.  Click **OK**.
5.  Click **SAVE**.

## Sync changed data

To use the Sync Records smart service with a service-backed record type, we must [configure a sync by identifier expression](records-data-sync.html#prodlink-getbyid).

A sync by identifier expression is similar to a record data source expression, but instead of returning all source data, it will only return a specific customer record.

### Create a SQL integration for changed data

We’ll first create a SQL integration to retrieve the changed data.

To create the SQL integration object:

1.  Go to the **Build** view, click **NEW > Integration**.
2.  In the **Create Integration** dialog, select **Use a connected system**.
3.  Find and choose the custom Snowflake connected system (JST Snowflake CS) created in the previous step.
4.  In the **Operation** dropdown list, select **SQL Query Integration** to get data from Snowflake.
5.  For **Name**, enter `JST_Snowflake_Query_Customer_By_Uuid`.
6.  Click **CREATE**.
7.  In the **Rule Inputs** pane, click **\+ New Rule Input**.
    -   For **Name**, enter `C_CUSTKEY`.
    -   For **Type**, select **Text**.
8.  In the **SQL Statements** input box, copy and paste the following SQL query:

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
    SELECT C_CUSTKEY
    ,C_NAME
    ,C_ADDRESS
    ,C_NATIONKEY
    ,C_PHONE
    ,C_ACCTBAL
    ,C_MKTSEGMENT
    ,C_COMMENT
    FROM CUSTOMER
    WHERE C_CUSTKEY={C_CUSTKEY}
    ```

9.  In the **Parameters** section, click **Edit as expression** next to the _C\_CUSTKEY_ parameter.
10.  In the **Edit Expression** dialog, enter `ri!C_CUSTKEY`.
11.  Click **OK**.
12.  Click **SAVE**.

### Configure a sync by identifier expression

Now that we have all our required objects, we'll configure a sync by identifier expression.

To configure the expression:

1.  In the record type, go to **Sync Options**.
2.  Under **Configure sync by identifier expression**, click **\+ CONFIGURE EXPRESSION RULE**.
3.  Under **Sync Expression**, click ![add](images/JDBC-tutorial-add.png) to create a sync expression.
4.  Select the **Use an existing integration** option.
5.  Search and select `JST_Snowflake_Query_Customer_By_Uuid`.
6.  Click **NEXT**.
7.  For Create Expression Rule, leave the default generated name.
8.  Click **NEXT**.
9.  Leave the **\*Syncing in Batches** screen blank and click **NEXT**.
10.  Click **CREATE**. The created objects appear in the dialog.
11.  On the **Create Sync Expression** dialog, click **OK**.
12.  On the **Edit Sync Expression** dialog, click the generated expression rule `JST_Snowflake_Query_Customer_By_Uuid_syncExpression` to open it.
13.  On line 5, replace the null value of `C_CUSTKEY` with the following expression:

     ```
     1
     ri!identifiers
     ```

14.  On line 17 and line 20, replace the default value of `local!integrationResponse.result.body` with the following:

```
1
   local!integrationResponse.result.sqlStatements.resultSet
```

1.  Click **SAVE** and close the expression rule tab.
2.  Return to the record type and click **OK** to close the dialog.
3.  Click **SAVE**.

## Test record actions

In this last step, we'll test out our record actions.

To test the record list action:

1.  In the record type, go to **List**.
2.  Open the link under **URL**.
3.  On the record list, click **\+ NEW CUSTOMER**.
4.  Enter some information in the form.
5.  Click **CREATE**. The new customer should appear in the record list.

To test a related action:

1.  From the record list, select a customer to view their Summary view.
2.  Click **UPDATE CUSTOMER**.
3.  Update some information in the **Update Customer** form.
4.  Click **SAVE**. The Summary view should update to reflect your changes.

**Congratulations!** You've configured your own service-backed record type using JDBC SQL integration with an external data store. You made it through all of the parts and steps to successfully create a fully functioning record type with a Summary view, record actions, and a user filter.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...