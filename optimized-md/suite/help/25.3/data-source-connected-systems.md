---
source_url: https://docs.appian.com/suite/help/25.3/data-source-connected-systems.html
original_path: data-source-connected-systems.html
version: "25.3"
title: "Data Source Connected Systems"
page_id: "data-source-connected-systems"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Data Source Connected Systems

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Data source connected systems contain authentication and connection information for data sources, allowing you to connect supported databases to Appian.

This page provides details about data source connected systems. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Supported data sources

When you create a connected system, you can choose any [Appian-supported database](System_Requirements.html#databases) to connect to. The following data sources are available when creating a connected system:

-   DB2 Data Source
-   MariaDB Data Source
-   MySQL Data Source
-   Oracle Data Source
-   PostgreSQL Data Source
-   SQL Server Data Source
-   Aurora MySQL Data Source
-   Aurora PostgreSQL Data Source

## Choosing how to connect to data sources

You can also connect to data sources in the [Admin Console](Appian_Administration_Console.html#data-sources). Most of the time, you will want to use a connected system. However, there are certain cases where you will need to use the Admin Console.

### Benefits of using a data source connected system

We highly recommend using data source connected systems to take advantage of the following benefits:

-   Control access to your data source details using [role map security](Connected_System_Object.html#prodlink-security).
-   Deploy authentication information for data sources across environments.
-   Rename data sources without having to manually update all of the objects that refer to the data source.
-   Specify the maximum number of active connections that can be allowed to the database from the data source.

### For plug-ins that connect to data sources, use the a!getDataSourceForPlugin function

If you are using a plug-in that needs to connect to a data source, you can reference that data source by using the [a!getDataSourceForPlugin()](fnc_system_a_getDataSourceForPlugin.html) function.

## Migrating data sources from the Admin Console

If you decide to migrate your data sources from the Admin Console to a connected system, keep in mind that you will have to update any objects that refer to the data source.

These objects include:

-   Data store objects.
-   Record type objects.
-   [Query database smart service nodes](Query_Database_Smart_Service.html) in process model objects.

## Enabling one-way SSL/TLS connections

You can use Secure Socket Layer (SSL) or Transport Layer Security (TLS) in Appian to encrypt a connection to a supported database. SSL/TLS connections provide an additional layer of security by encrypting data transferred between Appian and your database instance or cluster.

In one-way SSL, only Appian validates the server certificate to ensure that it receives data from the intended database server.

**Note:**  The way you enable SSL/TLS connections to a database varies depending on the database. Refer to your database vendor’s documentation for configuration details.

You cannot enable one-way SSL/TLS connections to **DB2 database** using a self-signed or private certificate authority (CA) signed certificate.

To enable one-way SSL/TLS connections to an [Appian-supported database](System_Requirements.html#databases):

1.  Enable SSL/TLS on your database server.
2.  Ensure that a valid SSL certificate has been uploaded to the [Trusted Server Certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console, especially if you are using a self-signed or private certificate authority (CA) signed SSL certificate on your database server.
3.  Add SSL connection properties to your database connection URL. Below is an example connection URL for each supported RDBMS:
    -   **MariaDB** `jdbc:mariadb://yourserver.example.com:3306/your_db_name?useOldAliasMetadataBehavior=true&useSSL=true&sslMode=VERIFY_IDENTITY`
    -   **MySQL** `jdbc:mysql://yourserver.example.com:3306/your_db_name?useOldAliasMetadataBehavior=true&useSSL=true&sslMode=VERIFY_IDENTITY`
    -   **Oracle** `jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=tcps)(HOST=yourserver.example.com)(PORT=2484))(CONNECT_DATA=(SERVICE_NAME=YOUR_DB_NAME)))`
    -   **SQL Server** `jdbc:sqlserver://yourserver.example.com:1433;databaseName=your_db_name;encrypt=true;sslProtocol=TLS;trustServerCertificate=false`
    -   **PostgreSQL** `jdbc:postgresql://yourserver.example.com:5432/your_db_name?escapeSyntaxCallMode=callIfNoReturn&ssl=true&sslmode=verify-full`

## Using schemas to control access to data in the Appian Cloud database

If you are using the Appian Cloud database, members of the [Database Administrators group](User_Roles.html#database-administrator-role) can create new schemas in the database which generates credentials. You can use these credentials to create MariaDB data source connected systems to connect to the newly created schemas. You can then give certain developers access to certain schemas.

For example, you may want to restrict access to human resources data to developers who are specifically working on human resources applications. Furthermore, you may want to give developers access to this data in development environments, but restrict access in testing and production environments.

To learn more about creating schemas in the Appian Cloud database to control access to data, see [Appian Cloud Database Administration](appian-cloud-database-administration.html#using-schemas-to-configure-access-to-data).

## Setting the maximum connection pool size

The maximum connection pool size controls the number of active connections from Appian to the database. All Appian systems have at least one application server that can communicate with the data source using the connected system. The Appian server can open concurrent connections to the data source, up to the number you enter for this property. For example, if you set the maximum connection pool size to `100`, Appian can open 100 concurrent connections to the data source.

Your Appian system may be configured with features, such as autoscale, that affect the connection pool property. These system features are listed on the About This Environment dialog (from the header bar, select \> **About Appian**).

[![List of system information shown on the About This Environment dialog](images/create_a_connected_system/data-source-connection-pool-sysinfo.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img355)

[![](images/create_a_connected_system/data-source-connection-pool-sysinfo.png)](#_)

Let's look at a few examples to see how these properties interact with the connection pool configuration.

Sites with [autoscaled processes](autoscale-processes.html) can have additional process engines, and each engine can create connections to the data source. For example, imagine your environment can have up to five process engines, and your connected system is configured for a maximum 100 connections. If only one process engine is in use, your application can make up to 100 concurrent connections. If all five process engines are needed to handle the amount of processes, the number of concurrent connections could reach 500. Adding the Appian application server, this rises to 600 connections.

[Highly available](High_Availability_and_Distributed_Installations.html) sites have 3 application servers. If you set the connection pool size to 100, it's possible for your application to have up to 300 concurrent connections to the data source.

Taking these examples together, a highly available site with autoscale enabled would have a combined maximum connection pool of 800.

**Note:**  The data source may be configured with its own connection pool that restricts the number of connections.

## Deploying data source connected systems

Keep the following caveats in mind when deploying data source connected systems between environments.

### Before deploying, create any additional Appian Cloud database schemas in the target environment

If you are using [additional schemas in the Appian Cloud database](#using-schemas-to-control-access-to-data-in-the-appian-cloud-database) to control access to data, [manually create the schema](appian-cloud-database-administration.html) in the target environment before deploying the data source connected system.

### Deploy database scripts separately from their data source connected system

If your application includes a data source connected system, the data source connected system object must exist in the target environment before you can run database scripts against it. Furthermore, when a data source connected system object is a part of a direct deployment, you cannot run database scripts for that data source in the same deployment.

As a result, there are additional considerations for [direct deployments](Deploy_to_Target_Environments.html#compare-and-deploy) if you're creating or updating a data source connected system object and deploying database scripts at the same time.

For these specific deployments, perform the following two-part process:

1.  Deploy a package that contains the connected system object, but does not include database scripts for the data source being deployed.
2.  After the first package successfully deploys, deploy a package that includes the database scripts and any relevant design objects, but leaves out the connected system object.

### Don't update multiple schemas in one SQL script

If you are using [additional schemas in the Appian Cloud database](#using-schemas-to-control-access-to-data-in-the-appian-cloud-database) to control access to data, each schema has a different database user. This database user doesn't have access to other schemas in the environment, but it does have access to the default "Appian" schema.

Compare and deploy uses the database user for the Data Source that is selected. Therefore, if you are using compare and deploy to run SQL scripts, make sure you don't try to update any additional schemas.

## Properties

Data source connected systems have the following properties:

| Field | Description |
| --- | --- |
| Name | The name of the data source that will appear in the Appian design objects, such as data store objects. |
| Description | Supplemental information about the connected system. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Connection URL\* | The URL for the data source. Should include: the hostname, port, and database name of the data source. However, the exact syntax will vary by database type. If you do not know the URL for the data source, consult your database administrator. Refer to [Configuring Relational Databases](Configuring_Relational_Databases.html) for special considerations when configuring databases for use with Appian. |
| Authentication | The authentication method used by this connected system: [Basic Authentication](connected_system_authentication.html#basic-authentication-properties) or [OAuth 2.0 Client Credentials Grant](oauth_client_credentials.html#authorization-configuration). OAuth can be used to authenticate with Oracle or SQL Server data sources. |
| Maximum Connection Pool Size\* | The maximum number of active connections to the database that can be allocated from this data source at the same time. The default is 100.

Since there is a limited number of connections that applications can make to the database, this field prevents one connected system from hogging the entire connection pool. You can raise or lower this number to control the number of connection pools for a data source.

For example, if you have a data source for an application with low usage, you can lower this number to further limit the number of connection pools for the application. This would prevent the application from taking up too many resources. |
| Additional Connection Properties | A list of properties that are passed to a JDBC driver to create database connections. These properties can be driver-dependent and should be separated by semicolons. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\*This value is included in [import customization files](Managing_Import_Customization_Files.html) so that you can specify a different value for each environment.

![data source connected system](images/data_source_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `connectionUrl`
-   `username`
-   `password`
-   `maxConnections`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...