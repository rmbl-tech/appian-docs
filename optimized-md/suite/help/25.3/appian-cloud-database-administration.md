---
source_url: https://docs.appian.com/suite/help/25.3/appian-cloud-database-administration.html
original_path: appian-cloud-database-administration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Cloud Database Administration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian allows you to configure and connect to your own supported relational databases. However, maintaining your own database requires certain expertise, which isn't desirable for all organizations. The Appian Cloud database is pre-configured so that you can focus on building low-code applications without any database set up.

This page provides guidance on how to use the database provided with your Appian Cloud environment.

## Cloud database

Your Appian Cloud database is a MariaDB database server. To determine the database version, run a `SELECT version()` query in phpMyAdmin.

**Tip:**  MariaDB is a widely adopted solution with abundant online documentation. Because of this, Appian Technical Support does not provide general assistance or training for using these databases.

## Accessing the Appian Cloud database

The interface used for the Appian Cloud database is phpMyAdmin. phpMyAdmin is an open source tool written in PHP, intended for use with MySQL and MariaDB.

**Tip:**  phpMyAdmin is a widely adopted solution with abundant online documentation. Because of this, Appian Technical Support does not provide general assistance or training for using phpMyAdmin.

To access the relational database for your Appian Cloud site:

1.  Go to your Appian environment.
2.  In the header bar, open the navigation menu .
3.  Choose **Cloud Database** to see all schemas available to you.

The schemas visible to you will depend on how your access is configured:

**Cloud database access roles**

-   Members of the **Database Adminstrators** system group will be redirected to phpMyAdmin, where they can see all schemas in the database.
-   Members of the **Database Viewers** and **Database Editors** system groups will see the specific schemas they have access to, along with the default Appian schema.

**Schema-specific cloud database access**

-   Users that are [granted separate read or write access](#granting-access-to-schemas) to at least 1 schema using group types and user-created groups will see the specific schemas they have access to, along with the default Appian schema.

![cloud_schema_view.png](images/cloud_schema_view.png)

**Tip:**  To help distinguish between the phpMyAdmin interfaces for different environments, the phpMyAdmin header has a different default color and label for development, testing, staging, and production environments. If you want to change this label or color, open a support case.

## Using schemas to configure access to data

Information in databases is often sensitive. While developers need access to certain information, it may be unnecessary to grant them access to all data in a database. For example, a developer who is only working on applications for HR wouldn't need access to data that is specific to Finance.

In your Appian cloud database, you can use schemas to control access to certain data. All Appian Cloud databases ship with a default "Appian" schema which has broad access. However, database administrators can create additional schemas and use system groups and object security to secure access to them.

![schemas](images/schemas.png)

This section describes [best practices for creating schemas](#best-practices-for-creating-additional-schemas), [how to grant access to schemas](#granting-access-to-schemas), and [how to create schemas](#creating-new-schemas).

### Best practices for creating additional schemas

The majority of your data should be stored in the default "Appian" schema. We recommend that you only create additional schemas when your applications need data segregation and isolation.

We also recommend that when you create tables for an application, you only use one schema for that application in addition to the default "Appian" schema. If there are tables that are common to applications in your environment that use different data sources, create those tables in the "Appian" schema. For example, an Employee table that needs to be used in both Finance and HR applications should be created in the "Appian" schema.

We do not recommend migrating data from existing schemas into new schemas. We recommend only creating schemas for new applications.

## Granting access to schemas

If needed, you can now configure [read or write access on a per-schema](#schema-specific-access-to-the-cloud-database) basis. This means that the same user can have access to a specific schema without requiring that user to have the same level of access to the remaining schemas.

Site administrators can configure schema specific access using user-created groups and system-created group types.

Alternatively, if you do not need this level of access granularity for your applications, then you can utilize the existing system groups to assign a [user role](User_Roles.html#cloud-database-access-roles) that will provide the same permissions across all schemas that the user has access to.

The schema-specific access configuration option does not replace the existing database access configuration process. Instead, it provides site administrators with additional flexibility to meet more specialized access needs and requirements. This will help promote better data separation across schemas and ensure that users do not have heightened access to database schemas when not required.

The following sections outline both methods in more detail. If you plan to use both access methods, review [compatibility between the two access methods](#compatibility-between-the-two-access-methods).

### User role-based access to the cloud database

With this method, access to schemas is granted through [system groups](#system-groups) and the [object security](#object-security) for the data source connected system of a schema.

#### System groups

System groups determine what users can do in the Appian Cloud database through phpMyAdmin.

Putting a user in the **Database Administrators**, **Database Editors**, or **Database Viewers** system group will give them the access assigned to that group in phpMyAdmin. See [User Roles](User_Roles.html#cloud-database-access-roles) for more information on what access users in these groups have.

**Tip:**  The above system groups have been nested under a new group, [Database Users](System_Groups.html#database-users). This system group provides a single focal point for site administrators to determine who can access the cloud database.

**Tip:**  Users in the **Database Administrators** group have access to all schemas, whether or not they are given access to the data source connected system object for the schema.

#### Object security

While the type of phpMyAdmin access a user gets is determined by which system group they are in, the schemas they have access to are determined by object security. In order to give users access to a certain schema, you must give them at least viewer permission on the [data source connected system](data-source-connected-systems.html) object for the schema.

For example, if you want to give editor access to an HRData schema in phpMyAdmin, you would first put the user in the Database Editors group. But they wouldn't have access to the HRData schema until you give them viewer permission on the HRData data source connected system object.

#### Configuring access to schemas

To grant different access in phpMyAdmin to different types of users for additional schemas, do the following:

-   To grant **Administrator** access to **all schemas**, put the user in the **Database Administrators** system group.
-   To grant **Editor** access to the **default "Appian" schema**, put the user in the **Database Editors** system group.
-   To grant **Viewer** access to the **default "Appian" schema**, put the user in the **Database Viewers** system group.
-   To grant **Editor** access to **additional schemas**, put the user in the **Database Editors** system group and **give the user at least Viewer permission on the data source connected system object for the schema**.
-   To grant **Viewer** access to **additional schemas**, put the user in the **Database Viewers** system group and **give the user at least Viewer permission on the data source connected system object for the schema**.

### Schema-specific access to the cloud database

You can also choose to assign read or write privileges on a per-schema basis. This is an alternative to the role-based access controls defined above that rely on system groups and object security.

This configuration relies on system-created group types and user-created groups. As such, providing cloud database access using this method will not require **Viewer** or **Editor** permissions in the data source connected system object security. This allows administrators to provide access to the database without also granting access to those schemas in the application layer.

#### Group type assignment for read or write privileges

[Group type](Group_Types.html) assignments are made during initial group creation by selecting a value in the drop-down selection. For schema-specific configurations, the group type will determine whether group membership will have read or write permissions on the cloud database.

**Group Types**

-   Select **Database Schema Editors** to configure a group for **write** access.
-   Select **Database Schema Viewers** to configure a group for **read** access.

#### Group type attributes to define schema name

Since schema-specific access does not rely on the object security of the data source connected system, the specific schema name must be referenced as a group type attribute to access that schema on phpMyAdmin.

[Group type attributes](Group_Types.html#group-type-attributes) are used to extend the properties and metadata of a group. In this case, the group type is used to assign the cloud database schema name to the group. Once configured, members in that group will have access to that schema.

#### Configuring separate read or write access to a specific schema

To configure access to a specific schema, a site administrator must configure a user-created group with the following conditions:

-   The group is a precedent (subgroup) of the **Database Users** system group.
-   It is of group type **Database Schema Viewer** or **Database Schema Editor**.
-   It includes the **schemaName** attribute value to match the database schema name. The value is case sensitive and must be an exact match to the schema name.

**Tip:**  For security purposes, the **Database Users** group is only visible to site administrators.

Access to the database will not be granted unless the user-created group meets all three of the above conditions.

The below example configures **write** access to the schema **"SchemaOne"**:

![schema-access-group-configuration.png](images/schema-access-group-configuration.png)

To edit the group type attributes:

1.  Go to the user-created group.
2.  Click and select **Properties**.
3.  Expand the **Attributes** section.
4.  In **Value**, update the group type attribute as needed.

![schema-access-group-type.png](images/schema-access-group-type.png)

### Compatibility between the two access methods

You can grant database access using both system groups (access role-based) and schema-specific configurations. However, this could result in heightened and/or undesired levels of access. In this event, user access to the cloud database will be derived based upon both methods, as they function independently. When permissions conflict for the same schema, access will not be lessened or subtracted automatically.

If you have further questions, please contact [support](https://community.appian.com/support/).

### Creating new schemas

To create a new schema:

1.  Create separate schemas for each application or suite of applications that you want to secure using the [AppianProcess.createNewSchema() stored procedure](#appianprocesscreatenewschema).
2.  Copy the credentials and connection URL.
3.  Create a [MariaDB Data Source connected system](data-source-connected-systems.html) for each schema using the credentials.
4.  For each connected system object, give at least viewer permissions to the users that you want to give schema access to.
5.  To allow users to make changes to the database through phpMyAdmin, put them in the [Database Editors](User_Roles.html#database-editor-role) group. To give users read-only permissions in phpMyAdmin, put them in the [Database Viewers](User_Roles.html#database-viewer-role) group.

By default, you can create up to fifty schemas in your environment.

**Note:**  The credentials created by the stored procedure can only be used to connect to the data source from Appian. The password is encoded and can only be decoded by the application. Therefore, these credentials cannot be used to connect to the database from any other client.

**Note:**  The [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html) allows access to the new schemas. To request access to these schemas, you will need to open a support case.

#### Before deploying, create any additional Appian Cloud database schemas in the target environment

After you create a new schema, before deploying the associated data source connected system, manually create the schema in the target environment. See [Data Source Connected System](data-source-connected-systems.html#deploying-data-source-connected-systems) for more information on deploying data sources.

## Creating tables

All tables created on a new site must have a primary key. This requirement is enforced to minimize replication lags. If you attempt to create a table without defining a primary key, an error will appear.

**Note:**  The [memory storage engine](https://mariadb.com/kb/en/memory-storage-engine/) is not supported in the Appian Cloud database. Creating a table with `ENGINE=MEMORY` will disrupt replication between the master and replicas in the High Availability (HA) site configuration.

## Enabling compression on tables

If your database is expanding rapidly and demanding more disk space, the built-in table compression features can be your solution. This feature offers two compression methods:

-   [COMPRESSED row format](https://mariadb.com/kb/en/innodb-compressed-row-format/)
-   [Page Compression](https://mariadb.com/kb/en/innodb-page-compression/#overview)

For optimal results, we recommend using the **Page Compression** method, specifically at **level 9**, since it aligns with both [MariaDB documentation](https://mariadb.com/kb/en/innodb-page-compression/#comparison-with-the-compressed-row-format) and our extensive experiments.

By employing these features on large tables, you can significantly reduce the size of your database, allowing you to make the most out of your available disk space.

### Considerations

While table compression offers great disk saving benefit, there are important considerations to keep in mind:

-   **CPU resources**: Compression and decompression processes demand additional CPU resources on the database server during data exchange with the application. Be mindful of this trade-off.
-   **Table lock during compression**: Enabling compression on an existing table requires downtime, as it locks the table. Other users won't be able to use the table during the compression process.
-   **High Availability site impact**: In High Availability (HA) sites, compression is enabled on replica nodes as well. The entire process may take longer in this scenario.
-   **Testing in lower environments**: It is advisable to thoroughly test compression in lower environments before deploying it to the production environment. This ensures a smooth transition and minimizes the risk of unexpected issues.

### Criteria for compression

To strike a balance between compression benefits and CPU resources, consider applying compression to tables that meet the following criteria:

-   **Table size**: Tables with over two million rows and more than 25 columns are generally suitable for compression. To ease the process, you can execute a built-in stored procedure [AppianProcess.showTableMetadata()](#appianprocessshowtablemetadata) to identify tables best suited for compression.
-   **Infrequent updates**: Apply compression to tables that are less frequently updated.

### Enabling compression

Enabling the compression feature is straightforward. You can activate it by configuring compression properties within the `CREATE TABLE` or `ALTER TABLE` SQL statement.

Here is an example SQL statement for enabling page compression during table creation:

```
1
2
3
4
5
6
7
8
CREATE TABLE your_table (
    column1 INT,
    column2 VARCHAR(50),
    -- ... other columns
)
ENGINE=InnoDB
PAGE_COMPRESSION=1
PAGE_COMPRESSION_LEVEL=9;
```

### Disabling compression

If, for any reason, you want to disable compression on a table, you can just as easily deactivate it using compression properties within the `ALTER TABLE` SQL statement.

Here is an example SQL statement for disabling page compression:

```
1
2
3
4
ALTER TABLE your_table
ENGINE=InnoDB
PAGE_COMPRESSION=off
PAGE_COMPRESSION_LEVEL=default;
```

### Page compression and encryption

Page compression and [data-at-rest encryption](Appian_Cloud_Database_Encryption.html) can be used together. When they are used together, data is first compressed, and then it is encrypted. In this case you save space and still have your data protected.

## Creating stored procedures

If you find yourself frequently executing sets of SQL statements, stored procedures are the solution to streamline your processes. You can create a [stored procedure](https://mariadb.com/kb/en/stored-procedure-overview/) in the Appian Cloud database using phpMyAdmin and execute it seamlessly using the [Execute Stored Procedure smart service](Execute_Stored_Procedure_Smart_Service.html) in your process model. These procedures allow you to reuse SQL logic across diverse segments of your application, reducing maintenance overhead. By centralizing execution logic, you can easily modify your databases, sparing you from the intricacies of altering queries in multiple locations. Moreover, stored procedures act as security gatekeepers, limiting direct access to critical database tables.

When managing the simultaneous execution of numerous stored procedures, Appian recommends [implementing simple logging to capture errors and warnings](https://community.appian.com/success/w/guide/3491/add-error-handling-to-stored-procedures). This will allow you to take quick action to fix any issues and preserve data integrity.

## Built-in stored procedures

The following stored procedures are available in the Appian Cloud database:

### AppianProcess.getMyProcessList()

This stored procedure produces a list of running threads started by the user executing the stored procedure. A problematic long-running query can be identified and killed using the information generated.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role), [Database Editor](User_Roles.html#database-editor-role), or [Database Viewer](User_Roles.html#database-viewer-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.getMyProcessList()`

### AppianProcess.getFullProcessList()

This stored procedure produces a list of running threads started by any database user in your environment. A problematic long-running query can be identified and killed using the information generated.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.getFullProcessList()`

### AppianProcess.killProcess()

This stored procedure allows database administrator to kill any thread started by any database user in your environment. A problematic long-running query can be killed using this stored procedure.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Thread ID

**Example syntax:** `call AppianProcess.killProcess(6342)`

### AppianProcess.metadataLocks()

This stored procedure shows data about current locks in the database. This information can be used to identify the exact process that is locking a database object in order to take any required action.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role), [Database Editor](User_Roles.html#database-editor-role), or [Database Viewer](User_Roles.html#database-viewer-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.metadataLocks()`

### AppianProcess.databaseLocks()

This stored procedure displays data about current metadata locks and row locks in the database. This information can help identify the specific process that is locking a database object, enabling necessary actions to be taken.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role), [Database Editor](User_Roles.html#database-editor-role), or [Database Viewer](User_Roles.html#database-viewer-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.databaseLocks()`

### AppianProcess.viewAvailableRoutines()

This stored procedure displays a comprehensive list of all available built-in stored procedures and stored functions, serving as a reference tool for easy review and management. To review the definition of a specific procedure or function listed in the result set, you can use the [AppianProcess.viewRoutineDefinition()](#appianprocessviewroutinedefinition) stored procedure. This can be particularly useful for understanding the implementation details and any specific logic contained within a routine.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role), [Database Editor](User_Roles.html#database-editor-role), or [Database Viewer](User_Roles.html#database-viewer-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.viewAvailableRoutines()`

### AppianProcess.viewRoutineDefinition()

This stored procedure outputs the definition of a procedure or function that the database user is not the DEFINER for.

By default in phpMyAdmin, if a routine was created by a different database user, database editors might not be able to view the definition of a stored procedure or a function. if you have access to the schema in which the routine exists, this stored procedure can be used to retrieve the definition of the routine. You can then proceed to update or recreate the routine as required.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role) or [Database Editor](User_Roles.html#database-editor-role)

**Inputs:**

-   Whether it is a 'procedure' or 'function'
-   Schema name
-   Routine name

**Example syntax:** `call AppianProcess.viewRoutineDefinition('procedure','InventoryApp','GetItems')`

### AppianProcess.createNewSchema()

This stored procedure creates a schema. It outputs the required credentials that you can use to create a data source connected system for the schema that was created. Copy the credentials immediately after they are displayed and save them for use in your application.

If you forget to copy the credentials and navigate away from the screen, use the [AppianProcess.updateSchemaPassword()](#appianprocessupdateschemapassword) stored procedure to create new credentials. This creates new credentials which you may need to update in the data source connected system.

**Note:**  Users may get an `Unexpected token` error. This is safe, your schema will still be created.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Schema name

**Example syntax:** `call AppianProcess.createNewSchema('InventoryApp')`

### AppianProcess.dropSchema()

This stored procedure drops a schema.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Schema name

**Example syntax:** `call AppianProcess.dropSchema('InventoryApp')`

### AppianProcess.updateSchemaPassword()

This stored procedure updates the password for the database user of the schema. The updated password is output along with the other credentials required for the data source connection.

**Note:**  This stored procedure can't be used to update the password for the default Appian schema.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Schema name

**Example syntax:** `call AppianProcess.updateSchemaPassword('InventoryApp')`

### AppianProcess.rotateEncryptionKey()

This stored procedure rotates the data encryption key (DEK) that is used for encryption of database tables. To change all the keys, use `-1` for the input. If tables were created with specific key IDs, to rotate that specific key use the key ID for the input.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** `-1` or specific Key ID

**Example syntax:** `call AppianProcess.rotateEncryptionKey(-1)`

### AppianProcess.showEncryptedTables()

This stored procedure lists all the tables in your database that have been encrypted.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.showEncryptedTables()`

### AppianProcess.changeEDPUserPassword()

This stored procedure generates a new password for the [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html) database user.

The user password can also be updated programmatically using the [Update Enhanced Data Pipeline user credential endpoint](Update_Enhanced_Data_Pipeline_Credential_Endpoint.html).

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Database user name

**Example syntax:** `call AppianProcess.changeEDPUserPassword('AppianViewer1')`

### AppianProcess.showEngineInnodbStatus()

This stored procedure generates the output of the `SHOW ENGINE INNODB STATUS` command. The output is useful in diagnosing problems such as deadlocks in the database. More information about how to use the output can be found on the MariaDB page about [SHOW ENGINE INNODB STATUS](https://mariadb.com/kb/en/show-engine-innodb-status/) command.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.showEngineInnodbStatus()`

### AppianProcess.sanityCheck()

This stored procedure performs a database consistency check and generates an actionable report. You can use this report to fix any database inconsistency warnings.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.sanityCheck()`

### AppianProcess.showConnectionsBySchema()

This stored procedure generates database connection statistics by schema and user. You can use this report to set the appropriate maximum number of database connections and adjust the maximum connection pool size for each schema based on concurrent database usage.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.showConnectionsBySchema()`

### AppianProcess.showUnusedIndexes()

This stored procedure generates a list of tables containing unused indexes, empowering the database administrator to optimize database performance by removing unnecessary indexes.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** None

**Example syntax:** `call AppianProcess.showUnusedIndexes()`

### AppianProcess.showTableMetadata()

This stored procedure retrieves metadata for all tables within a specified schema, including essential information such as the number of rows and columns, disk space usage in megabytes (MB), compression status, and the percentage of fragmentation. These values are all estimations provided for a quick reference so you can take certain actions.

The retrieved metadata can be utilized for various purposes, such as determining whether a table is suitable for [enabling compression](#enabling-compression-on-tables). Additionally, it aids in identifying tables that require defragmentation when they exceed a certain percentage of fragmentation.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Schema name

**Example syntax:** `call AppianProcess.showTableMetadata('Appian')`

### AppianProcess.removeAllEdpPermissions()

This stored procedure removes all privileges from an [Enhanced Data Pipeline (EDP)](Enhanced_Data_Pipeline_for_Appian_Cloud.html) database user.

After executing this stored procedure, you can use the [Add EDP User Permissions](Add_EDP_User_Permissions.html) endpoint to re-add any required permissions.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Inputs:** Username

**Example syntax:** `call AppianProcess.removeAllEdpPermissions('appianReplicationViewer')`

## Built-in views

### AppianProcess.slow\_log

This view contains data from MariaDB [slow query log](https://mariadb.com/kb/en/slow-query-log-overview/). The SQL statements that take more than seven seconds to run in the database are captured in the view. The default threshold of seven seconds can be changed by opening a case with Appian Support. The slow query data is not available if [database encryption](Appian_Cloud_Database_Encryption.html) is enabled on Appian Cloud.

**Required role:** [Database Administrator](User_Roles.html#database-administrator-role)

**Example syntax:**

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
--Top 20 slow queries for the last 2 days order by query time:
SELECT
    start_time "Start Time",
    USER "User",
    query_time "Query Time",
    rows_sent "Rows Sent",
    rows_examined "Rows Examined",
    rows_affected "Rows Affected",
    SUBSTRING(sql_text, 1, 100) "SQL Query"
FROM
    AppianProcess.slow_log
WHERE
    start_time >(NOW() - INTERVAL 2 DAY)
ORDER BY
    query_time
DESC
LIMIT 20;
```

## Best practices

### Use Appian features to manage your Appian Cloud database

You can use phpMyAdmin for debugging or advanced database manipulation when necessary. However, it is a best practice to use Appian applications to change tables or data in the Appian Cloud database.

For example, you can execute database scripts using [compare and deploy](Deploy_to_Target_Environments.html#compare-and-deploy). You can also create tables by [generating them from custom data types](Generating_Database_Tables_from_CDTs.html).

Making these changes through Appian means that your database will remain compatible with newer versions of Appian.

### Follow industry and Appian best practices

Appian strongly recommends following industry best practices to manage the data stored in the Appian Cloud database.

These include but are not limited to using:

-   A normalized schema.
-   Proper indexes on the data.
-   Optimized queries and views.
-   Database performance testing in lower environments.

When designing and using your database, we recommend that you follow the best practices outlined in [Relational Database Guidance](Relational_Database_Guidance.html).

### Properly design the schema to avoid decreased query performance

Even though there may be no predefined limits (besides disk) to the amount of process data that can be stored in the Appian Cloud database, it is important to keep in mind that you might experience decreased query performance as disk footprint increases, unless you properly design the schema.

Appian can collect performance metrics and export the data for you to analyze. To enable this option, open a support case and list relevant metrics you are interested in analyzing (such as SQL query time, or memory and CPU usage). The performance schema will be enabled for a short period of time, and you can then examine the following tables from the exported information to check for performance issues:

-   performance\_schema.events\_statements\_history
-   performance\_schema.events\_statements\_current
-   performance\_schema.events\_statements\_history\_long
-   performance\_schema.events\_stages\_history
-   performance\_schema.events\_stages\_current
-   performance\_schema.events\_stages\_history\_long
-   performance\_schema.events\_statements\_summary\_by\_digest
-   performance\_schema.table\_io\_waits\_summary\_by\_table
-   performance\_schema.table\_io\_waits\_summary\_by\_index\_usage

**Note:**  Appian Support will not interpret or store any requested information.

### Do not use the DEFINER clause in SQL scripts when creating objects

When running SQL scripts to create objects in the Appian Cloud database, don't use the DEFINER clause. If you don't specify the DEFINER, the database will use the default user to create the objects. This means that if the default database user ever changes, you won't have to worry about updating your scripts.

See [troubleshooting](#troubleshooting) section if you have issues related to editing objects in phpMyAdmin.

### Only store data for your Appian applications in the database

Appian provides the Appian Cloud database to store data for your applications. We strongly discourage using the database to store other types of data. Doing so is outside of the scope of the Appian Cloud service.

### Using temporary tables

Using temporary tables in your queries can bring significant benefits to your data operations. They improve query performance by optimizing the execution plan and accessing only necessary data. Additionally, they simplify query logic, making your code more readable and maintainable. Moreover, temporary tables help reduce locking and concurrency issues for shared data, making them an ideal feature to use for complex queries.

**Note:**  Temporary tables consume server resources and may not always be the optimal solution depending on your workload. Therefore, it's crucial to evaluate its suitability for your specific use case before implementation.

### Partitioning large tables

Very big tables and indexes can be slow even with optimized queries. To address this issue, you may consider using table partitioning to boost query performance. This approach enables the database to swiftly identify the relevant partitions and access solely the required data, resulting in reduced disk I/O and improved query execution time.

Partitioning is commonly used for efficient data archiving, allowing separation of historical and recent data. It helps optimize storage and simplify maintenance tasks.

**Note:**  Appian is not responsible for designing and implementing partitioning for our customers.

## Considerations and limitations

### Advanced database configurations are not available in Appian Cloud databases

Because we want the Appian Cloud database to be easy to use, it is not a full-featured database solution. Many advanced features would require a dedicated database administrator for support. In order to avoid that, Appian Cloud customers don't have access to advanced database configurations.

If you want a full-featured database solution with advanced database features, [you can host your own relational database](Configuring_Relational_Databases.html#business-data-sources) and connect to it over the Internet or [through VPN](Cloud_VPN_Integration.html).

### Limitations of responsibilities

Appian maintains performance for tables supplied by Appian. You are responsible for performance for the tables you create.

Appian Technical Support is not responsible for the administration of any customer data you may store in your database, beyond performing regular backups.

### Maximum storage space limitations

There is a limit to your maximum allocated storage space, which is specified in your service agreement. Consider this limitation when designing your database or estimating the amount of data that will be stored in your database.

### If you don't need an event, drop the event instead of disabling it

Event status is not replicated across all available nodes and is not persistent in a site restart. As a result, disabled events will be automatically enabled during a primary node failover or a site restart. To keep disabled events from running automatically, execute `DROP EVENT <EVENT_NAME>` in phpMyAdmin.

## Additional features

The following features are available for Appian Cloud databases:

-   Appian Cloud customers with Professional or Signature Success Plans can use the [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html) to connect directly to their business data source. It also allows them to utilize their data management tools such as:
    -   Extract Transform Load (ETL) processes
    -   Business intelligence
    -   Data warehousing
    -   Reporting
-   Appian Cloud databases that use MariaDB can enable [data-at-rest encryption](Appian_Cloud_Database_Encryption.html).

## Troubleshooting

### Editing stored procedures or function fails

If you are editing a stored procedure or function as a database administrator in phpMyAdmin, make sure that the value in the definer field is either empty or `dbadmin`. In general, it is a [best practice not to use the DEFINER clause](#do-not-use-the-definer-clause-in-sql-scripts-when-creating-objects) when running scripts in phpMyAdmin.

#### What to do if you get locked out of a stored procedure or function

If you try to edit the view without updating the DEFINER field, you may get locked out of the stored procedure or function. Use the [AppianProcess.viewRoutineDefinition()](#appianprocessviewroutinedefinition) to get the definition of the object and recreate it with `dbadmin` as the DEFINER or without the DEFINER specified.

### Editing a view fails

When editing views in phpMyAdmin as a database administrator, if there is a value such as `appian` in the DEFINER field, update it to `dbadmin`. Do not leave it blank.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...