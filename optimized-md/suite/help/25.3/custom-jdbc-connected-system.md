---
source_url: https://docs.appian.com/suite/help/25.3/custom-jdbc-connected-system.html
original_path: custom-jdbc-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom JDBC Connected System

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The custom JDBC connected system allows you to connect to unsupported databases that support the JDBC protocol. Providing an alternative to using HTTP integrations or third-party plug-ins, this connection uses a [SQL integration object](create-sql-integration.html) to exchange data with your business data source through SQL statements.

**Note:**  Any database that is not in [this list](System_Requirements.html#databases) is considered an unsupported database.

This page provides details about custom JDBC connected system properties. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

To use the custom JDBC connected system, you will need to do the following:

1.  [Deploy a driver](#deploy-a-driver).
2.  [Create a custom JDBC connected system](#create-a-custom-jdbc-connected-system).
3.  [Create a SQL integration object](create-sql-integration.html).

## Deploy a driver

The process for deploying a driver differs based on your Appian installation.

### If you are an Appian Cloud customer

Open an [Appian Support case](https://community.appian.com/support/) to request the deployment of your driver. You will need to attach the `.jar` file for the desired JDBC driver and a database logo image file to the support case. Supported image file types include `.svg`, `.png`, `.jpg`, and `.jpeg`.

### If you are a self-managed customer

To deploy the desired driver to your site, run the creation script found in `<APPIAN_HOME>/_admin/_scripts/tools/jdbc/create-jdbc-driver-plugin.sh`. You will need to input the following information to run the script:

-   File path to the `.jar` file.
-   Driver class name (`-driverClass`).
-   Plug-in name (`-name`).
-   Plug-in key (`-key`).
    -   The key is case-sensitive and unique within a site. It is used to determine whether to create a new custom JDBC connected system template or update an existing one.
    -   The key will be displayed in the name, description, and configuration properties of the custom JDBC connected system template.
-   Plug-in version (`-version`).
    -   We recommend that you use the same plug-in version as the driver `.jar` file version.
-   File path to the logo image file (`-logo`).
    -   `.svg`, `.png`, `.jpg`, and `.jpeg` are supported image file types.

## Create a custom JDBC connected system

After deploying a driver to your site, you will see a new connected system template created in the **Create Connected System** picklist window. For example, if you deployed a Snowflake driver, you would see a new Custom Snowflake Data Source when you go to create a new connected system. ![The new custom JDBC connected system template screen](images/custom_jdbc_connected_system_template.png)

### Properties

To create a custom JDBC connected system using the newly generated template, configure the following properties.

| Field | Description |
| --- | --- |
| **Name** | The name of the connected system. Use a name that will uniquely identify this connection to the external database. |
| **Description** | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| **Connection URL** | The URL for the data source. Should include: the hostname, port, and database name of the data source. The exact syntax will vary by database type, but the connection URL should always be prefixed by `jdbc`. |
| **Authentication** | The authentication method used by this connected system.
-   [Basic Authentication](connected_system_authentication.html#basic-authentication-properties)
-   [OAuth 2.0 Client Credentials Grant](oauth_client_credentials.html#authorization-configuration)

 |
| **Maximum Connection Pool Size** |

The maximum number of active connections to the database that can be allocated from this data source at the same time. The default is 20.

Since there is a limited number of connections that applications can make to the database, this field prevents one connected system from using the entire connection pool. You can raise or lower this number to control the number of connection pools for a data source.

For example, if you have a data source for an application with low usage, you can lower this number to further limit the number of connection pools for the application. This would prevent the application from taking up too many resources.

 |
| **Transaction Isolation Level** |

The degree of isolation or concurrency control applied to transactions in a database system. This determines how transactions interact with each other and how they access and modify data concurrently. There are four transaction isolation levels available in the JDBC API. It's important to note that not all database vendors support all four levels.

-   `TRANSACTION_READ_UNCOMMITTED`: This is the lowest isolation level where it allows dirty reads, non-repeatable reads, and phantom reads.
-   `TRANSACTION_READ_COMMITTED`: A transaction can only read data that has been committed by other transactions. It prevents dirty reads. But non-repeatable reads and phantom reads can occur.
-   `TRANSACTION_REPEATABLE_READ`: Ensures that within a transaction, the same query will always return the same results. This prevents dirty reads and non-repeatable reads. But phantom reads can still occur.
-   `TRANSACTION_SERIALIZABLE`: This is the highest isolation level, providing strict data consistency. This ensures that concurrent transactions behave as if they are executed serially, preventing dirty reads, non-repeatable reads, and phantom reads.

 |
| **Data Source Shortcut** | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| **Shortcut Display Name** | The name of the data source shortcut option. This property only appears when </strong>Data Source Shortcut</strong> is selected. |

In this example, Appian will connect to Snowflake using basic authentication.

![The create new custom JDBC connected system screen](images/create_jdbc_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `connectionUrl`
-   `username`
-   `password`
-   `maxConnections`
-   `transactionIsolationLevelKey`

### Enabling one-way SSL/TLS connections

You can use Secure Socket Layer (SSL) or Transport Layer Security (TLS) in Appian to encrypt a connection to a supported database. SSL/TLS connections provide an additional layer of security by encrypting data transferred between Appian and your database instance or cluster.

In one-way SSL, only Appian validates the server certificate to ensure that it receives data from the intended database server.

**Note:**  Depending on your database vendor’s implementation, Appian cannot guarantee that you can successfully enable one-way SSL for all database vendors that support the JDBC protocol. Refer to your database vendor’s documentation for configuration details.

To enable one-way SSL/TLS connections:

1.  Enable SSL/TLS on your database server.
2.  Ensure that a valid SSL certificate has been uploaded to the [Trusted Server Certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console, especially if you are using a self-signed or private certificate authority (CA) signed SSL certificate on your database server.
3.  Add SSL connection properties to your database connection URL.

## Next steps

After you have deployed a driver and set up your connected system, you will need to [create a SQL integration object](create-sql-integration.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...