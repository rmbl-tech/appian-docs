---
source_url: https://docs.appian.com/suite/help/25.3/Query_Database_Smart_Service.html
original_path: Query_Database_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Query Database Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Overview

The Query Database smart service is used to retrieve information from an external database using a SQL query, and update or create process variables using the query results. This activity also permits you to create tables and select, insert, and update rows in database tables from your process model.

-   To learn how to query data, see [Recipes for Querying Entities](Query_Recipes_entity.html).
-   To insert or update data, see [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html).
-   To delete data, see [Delete from Data Store Entities](Delete_from_Data_Store_Entities_Smart_Service.html).

It is important that you manage the memory consumption (RAM and HD) of your processes by [archiving or deleting](Archiving_Processes.html) processes that contain large datasets.

**Tip:**  As a best practice, we recommend placing the Query Database Smart Service in a [subprocess](Sub-Process_Activity.html).

### Permissions needed

The user running the smart service must have initiator rights to the process model that they attempt to start. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Data Services

-   **Icon**: ![](images/Smart_Service_Icons/Query_Database.png)

-   **Assignment Options**: Unattended/Attended - Note: When this smart service is attended, the form that the user sees is the form configured on the node, not the start form for the specified process model.

## RDBMS support

An RDBMS is configured as a predefined data source for Appian Cloud customers. To use this database, select **Use a pre-defined data source** and select the Appian provided data source from the list of data sources.

Appian Cloud can also integrate with additional external relational databases. You can use any of the supported databases that are made available over the Internet.

-   To use an external database as a data store, it must be setup as a data source by completing the [Data Source Worksheet](https://forum.appian.com/suite/doc/32612).
-   You can optionally provide a SQL query (e.g., select count(\*) from x) to ensure that Appian Cloud maintains a valid connection to your data source.
-   To allow your Appian Cloud environment to access resources in your private network, like a private RDBMS, configure an [IPsec VPN connection](Cloud_VPN_Integration.html).

**Note:**  Appian Technical Support is not responsible for administering any of the data you store in the Cloud database other than performing periodic backups. Additionally, customers are responsible for securing and managing the data stored in all external databases.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

Configure the connection to the database; then enter one or more SQL statements.

![DB Config](images/Dbaccess.gif)

### Configuring the Database Connection

In the `Database Connection` group box, you have two options:

-   **Use a predefined data source**: Selecting this option allows you to select a defined data source from the dropdown menu.
-   **Use a custom data source**: This option allows you select a [supported RDBMS](System_Requirements.html#databases) as a data source.

For the **Driver** field, select the driver that corresponds with your database.

Enter the appropriate database account's credentials in the **Username** and **Password** fields.

For the **URL** field, make sure that the right-side text box is completed with the proper information. The syntax to configure a supported database is shown below.

**MySQL, MariaDB, PostgreSQL, and DB2**

```
1
 <machine_name>:<port_number>/<database_name>
```

**Oracle**

```
1
 <machine_name>:<port_number>:<database_name>
```

**SQL Server**

```
1
 <machine_name>:<port_number>;databaseName=<database_name>
```

### Creating your SQL statements

In the `Database Queries` group box, configure your SQL statements for the database.

SQL statements are executed in the order that they are listed in Database Queries group box, from top to bottom. The following table summarizes the options for configuring your SQL statements and the order in which they execute.

| To... | Click |
| --- | --- |
| Add a new query | **New Query** |
| Delete a query | **Delete Query** after selecting the desired query
 |
| Move a query up the list | **Move Up** after selecting the desired query
 |
| Move a query down the list | **Move Down** after selecting the desired query
 |

#### Query requirements

-   SQL Statements used in the Query Database smart service cannot update process variables directly.
-   To create or update a process variable, you must define a node input (an Activity Class Parameter – or ACP) which must then be mapped to the process variable you want to create or update.
-   The node input must be defined within the SQL Statement itself. This is accomplished by adding `ac!` to the beginning of the node input name.
-   When querying an Oracle database, you may need to enclose the column and table names in double-quotes if you receive an `ORA-00942` error when executing the smart service. When enclosing names in quotes the casing in the SQL statement must match the casing of name in the database exactly.
-   Customers cannot run the `LOAD DATA LOCAL INFILE` command against a MySQL/MariaDB database by default from a Query Database smart service in the Process Model. For Appian Cloud customers, this command is already disabled at the database level for the Appian Cloud database and at the JDBC level for configured MySQL/MariaDB databases to provide higher security. Customers with self-managed environments who wish to use this command must set the `conf.data.mysql.loaddata.enabled` property to `true` and `conf.data.load.infile.paths` property as a comma-separated list of paths to allowed directories that contain the files to be loaded. The properties can be set in `custom.properties` file located at `<APPIAN_HOME>/conf/`. If the required properties are not set, any Process Model using `LOAD DATA LOCAL INFILE` command will pause by exception at runtime.

#### Query examples

The following examples illustrate required syntax for your SQL statements (which may vary according to the database queried):

-   This example creates three inputs. Each of these node inputs can then be assigned to a process variable.

```
1
insert into new person values (ac!name,ac!age,ac!birthdate)
```

-   This example invokes a simple _equals_ condition. Notice that quotation marks (") and apostrophes (') are not used to enclose the node input specified in the condition.

```
1
SELECT CustomerName, BusinessUnit, ProductLine FROM customertable where CustomerName=ac!condition
```

-   This example invokes a _SELECT_ statement using the _like_ condition.

```
1
SELECT CustomerName, BusinessUnit, ProductLine FROM customertable where CustomerName like ac!condition
```

-   To use a wildcard, such as `%`, append the wildcard to the value of a process variable using a [script task](Configuring_the_Script_Task.html) that is upstream in the process flow from this query activity. The process variable can then be specified as the default value of a node input used by the activity.

You cannot create a table with the value of an activity class parameter. You may, however, incorporate the value of an activity class parameter into a select statement. This requires that you provide an explicit value or a process variable's value for the node input on the inputs property sheet of the **Data** tab.

### Activity execution

All SQL statements defined in a node are treated as a single transaction. If an error occurs on any one of the SQL statements defined for the node, not one of the statements is executed. Otherwise, a commit is executed after successfully running all SQL statements defined by the node.

You can have only one "SELECT" statement per Database Access node. Wildcard (**\***) selections are not permitted. Do not include a semicolon (;) at the end of your statement.

-   By default, a query will return a maximum of ten rows of data. Also, node and process variables that take multiple values are restricted to 1000 indices.

### Database availability

When a database is unavailable, the process pauses by exception. The transaction data is not lost, but the node keeps the information until the administrator restarts the node manually.

To handle database availability issues, you can configure a parallel flow with a Timer Event and a rule that checks for timeout exceptions. If a timeout is detected, you could then reroute the process to take an appropriate action. For example, if a variable populated by the Query Database node is null, and a Timer Event of one minute has been triggered, send an alert to the process owner that the database is unavailable.

### Data tab

The Data tab displays the node inputs and node outputs for the activity.

Inputs

The following Inputs are listed. You can add additional node inputs, as needed. These properties can also be configured on the Setup tab.

Runtime Url

(Optional) Expressionable setting for the database driver URL.

Runtime Username

(Optional) Expressionable setting for the database username.

Runtime Password

(Optional) Expressionable setting for the database password.

Runtime Password

(Optional) Expressionable setting for the database password.

-   This node input:
    -   Does not display the **Save Into** option, when it appears on the Data Tab
    -   Does not appear as an ACP for use in the expression editor
    -   Is not exported
-   Using a password ACP in an expression returns an empty string instead of the password value.
-   If this activity is attended the following [Other Tab](Process_Node_and_Smart_Service_Properties.html#other-tab) settings ensure that the value is stored only during the time that the activity is executing.
    -   Select the **Delete previously completed/canceled instances** checkbox.
    -   Clear the **Keep a record of the form as submitted for future reference** checkbox.

Runtime Datasource

(Optional) Expressionable setting for the Data Source Name.

Pause Node on Error

(Required) If you set this input to false, the process flow continues when an error occurs.

Keep in mind that expressionable fields allow you to reference constants and variables in addition to calculating values with functions and logic statements. We recommend setting these values using constants, to enhance application portability.

Outputs

-   The `Error Occurred` Output indicates true if an error has occurred during execution. Save this value to a process variable to enable exception processing on the subsequent activity in the process flow.
-   The `Error Text` Output lists the text of any error message.
-   When the smart service activity is configured with a valid query, an output is automatically generated for your query results. Return value names are derived from the query you enter. For example, if you have a query with **Name** `1` and **SQL Statement** `SELECT name, age FROM people`, then the following outputs will be generated:
-   `AC!~1<name`
-   `AC!~1<age`

If you receive validation errors for your query prior to running the smart service for the first time (aside from possible problems with the query itself) it may indicate that the database driver is not configured properly.

### Data mappings

The Query Database smart service activity allows process designers to transfer data between external data sources and the process engine. When mapping variables in Appian to fields in a database it is important that the data types used by your process variables, and the fields in your database tables match one another.

The table below summarizes the different types of variables in Appian and the supported equivalents in each supported database.

| Type | Display Name | Data Type | MySQL/MariaDB Datatypes | SQL Server Datatypes | Oracle Datatypes | PostgreSQL Datatypes | DB2 Datatypes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Date | Date | Timestamp | Date | DateTime
SmallDateTime | Date | Date | Date |
| DateTime | Date & Time | Timestamp | DateTime | DateTime
SmallDateTime | Timestamp | Timestamp | Timestamp |
| Double | Decimal | Double | Float
Double
Decimal | Decimal
Numeric
Float
Real | Number
Number(precision,scale)
Float
Decimal | Float4
Float8
Numeric | Float
Double
Real
Decimal
Numeric |
| Long | Number | Long | Int
BigInt
TinyInt
MediumInt
SmallInt | Int
BigInt
TinyInt
SmallInt | (None) | Int2
Int4
Int8 | Int
Bigint
Smallint |
| String | Text | String | Char
Varchar
Text
Long | Char
Varchar
Text
Nchar
Nvarchar | Varchar2
Varchar
Nvarchar2
Char
Nchar
Long | Varchar | Varchar
Nvarchar
Char
Graphic
Vargraphic |
| Time | Time | Timestamp | Timestamp | DateTime
SmallDateTime | Timestamp | Time | Time |
| Boolean | Yes/No | Long | TinyInt(1) | Bit | Bit | Bool | SmallInt |

**Note:**  A datetime value is converted to the GMT time zone when it is saved in Appian. Therefore, when it is used in a SQL statement (for inserts and selects for example) the GMT value is used. The datetime value is only converted to the end user's time zone when it is displayed in the browser.

You can save a datetime value as text, number, date, or time value if you do not want this conversion to take place.

## Usage considerations

### Data sync behavior for record types

If you use this smart service to add, update, or delete data in a database table, and that table is the source of a record type with [data sync](about-data-sync.html) enabled, those changes will **not** be automatically synced in Appian.

To sync changes made by this smart service, use the [Sync Records](Sync_Records_Smart_Service.html) smart service. Any data changed by this smart service will also be synced during the next [scheduled sync](records-data-sync.html#schedule-full-syncs) or if you trigger a [manual sync](records-data-sync.html#manual-full-syncs).

[![images/syncRecordsProcessModel.png](images/syncRecordsProcessModel.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img128)

[![](images/syncRecordsProcessModel.png)](#_)

To automatically sync changes made to a database table, consider using the following smart services instead:

-   [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html)
-   [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)
-   [Delete from Data Store Entities](Delete_from_Data_Store_Entities_Smart_Service.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...