---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Relational_Databases.html
original_path: Configuring_Relational_Databases.html
version: "25.3"
title: "Configuring Relational Databases"
page_id: "Configuring_Relational_Databases"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Relational Databases

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Overview

This page provides guidance on how to configure relational databases in Appian. Configuring relational databases brings your information together in a meaningful way and allows you to manage your data more efficiently.

## Configuring data sources

There are three steps for creating each data source in Appian:

1.  Install the corresponding driver.
2.  Provide the data source connection information to Appian.
3.  Register the data source with Appian.

Make the changes to the corresponding files in the configuration repository (`<REPO_HOME>`) instead of in `<APPIAN_HOME>` as documented here. Then deploy the files using the configure script.

### Install RDBMS driver

Install one or more of the [supported RDBMS drivers](System_Requirements.html#databases). Other databases and drivers can be configured, but are not supported.

To install the driver, create a `lib` folder under `REPO_HOME/tomcat/apache-tomcat/`. Place the driver `.jar` file in `<REPO_HOME>/tomcat/apache-tomcat/lib/`.

#### Note on the DB2 driver

The db2 driver includes a reference to an external jar that is usually not available. This can result in an error when starting Appian. To resolve this issue, follow the steps in [this db2 help article](https://developer.ibm.com/answers/questions/308105/exception-in-db2-jcc-driver-under-tomcat8.html#answer-310781).

### Provide data source connection information

In `<REPO_HOME>/conf/tomcatResources.xml.<ENVIRONMENT>`, configure the connection information for your data sources.

We recommend preserving the transaction isolation setting of `READ_COMMITTED`, (as shown in the examples) to avoid deadlocks and performance issues that may occur with multiple concurrent reads and writes to the same table if you set the transaction isolation to `TRANSACTION_SERIALIZABLE`.

**Note:** If you are upgrading from a previous release of Appian be sure that datasource declarations are ported over correctly. If they are not it could disrupt running processes that make use of queries or the Query Database smart service. In particular be aware of the following case:

**Note:**  **Encoding Data Source Passwords**

To avoid storing data source passwords in plain text, you must run the `Tools -> Encode passwords for use in data source configuration` utility in the [configure script](Configure_Script.html#tools) to encode your passwords. Although an encryption library is used to transform the password, because there is no secret private key, this encryption should be considered merely an encoding.

#### MySQL

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
<Resource name="jdbc/MySqlDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="com.mysql.jdbc.Driver"
	url="jdbc:mysql://such_as_server.example.com:3306/such_as_mySQL_for_appian?useOldAliasMetadataBehavior=true"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="SELECT 1"
	testOnBorrow="true"
/>
```

#### MariaDB

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
<Resource name="jdbc/MariaDbDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://such_as_server.example.com:3306/such_as_MariaDB_for_appian?useOldAliasMetadataBehavior=true"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="SELECT 1"
	testOnBorrow="true"
/>
```

#### Oracle

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
<Resource name="jdbc/OracleDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@oracle_server.example.com:1521/ORACLE_FOR_APPIAN"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="select 1 from dual"
	testOnBorrow="true"
/>
```

When using the JDBC Thin Driver, you can also reference an Oracle server alias by using the service name in the connection URL:
`jdbc:oracle:thin:@//oracle_server.example.com:1521/ORACLE_FOR_APPIAN`.

The Oracle hostname, port, and service name are listed in `<ORACLE_HOME>/.../server/NETWORK/ADMIN/tnsnames.ora`.

If you want to connect your Appian platform to an Oracle database using Kerberos authentication, you can enable Kerberos authentication when providing the data source connection information. [Kerberos](https://web.mit.edu/kerberos/) is a network authentication protocol that enables resources to verify each other's identity over an untrusted network. It offers Oracle databases the capability to integrate with a central authentication service, such as Microsoft Active Directory (AD).

To enable Kerberos authentication for Oracle:

-   In the `<APPIAN_HOME>/tomcat/apache-tomcat/bin/setenv.sh`, set the **java.security.krb5.conf** property at the environment level: `export CATALINA_OPTS="$CATALINA_OPTS -Djava.security.krb5.conf=<krb5 location>"`
-   In the `tomcatResources.xml` file, configure the Kerberos authentication properties:
    -   Remove the **factory** and **password** properties. You don't need to provide a password for Kerberos authentication.
    -   The value of the **username** property must align with both the Oracle schema user and the central authentication service user you are using for authentication.
    -   Add the following three Kerberos parameters to the **connectionProperties**:
        -   `oracle.net.authentication_services=(KERBEROS5)`
        -   `oracle.net.kerberos5_mutual_authentication=true`
        -   `oracle.net.kerberos5_cc_name=<cache location>`

Here is a `tomcatResources.xml` example for Kerberos authentication.

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
<Resource name="jdbc/KerberosOracleDataSource"
	type="javax.sql.DataSource"
	driverClassName="oracle.jdbc.OracleDriver"
	url="jdbc:oracle:thin:@oracle_server.example.com:1521/ORACLE_FOR_APPIAN"
	username="kerberos_user"
	connectionProperties="
        oracle.net.authentication_services=(KERBEROS5);
        oracle.net.kerberos5_mutual_authentication=true;
        oracle.net.kerberos5_cc_name=[cache location];
    "
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="select 1 from dual"
	testOnBorrow="true"
/>
```

#### SQL Server

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
<Resource name="jdbc/SqlServerDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="com.microsoft.sqlserver.jdbc.SQLServerDriver"
	url="jdbc:sqlserver://such_as_sqlServer.example.com:1433;databaseName=such_as_MS-SQL_for_appian"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="SELECT 1"
	testOnBorrow="true"
/>
```

It is recommended to configure the `socketTimeout` parameter to 120000 (2 minutes) in the connection URL for the SQL Server database. This parameter determines the amount of time the SQL Server JDBC driver will wait for a socket to respond.

You can use Azure Active Directory password and service principal authentication methods for connecting to SQL Server. Simply add an `authentication` connection property to your connection URL and specify your preferred method.

-   ActiveDirectoryPassword: Add `authentication=ActiveDirectoryPassword` to the connection URL.
-   ActiveDirectoryServicePrincipal: Add `authentication=ActiveDirectoryServicePrincipal` to the connection URL and specify the application/client ID in the username property and secret of a service principal identity in the password property.

#### PostgreSQL

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
<Resource name="jdbc/PostgreSqlDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="org.postgresql.Driver"
	url="jdbc:postgresql://pg.example.com:5432/PostgreSQL_for_appian"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="SELECT 1"
	testOnBorrow="true"
/>
```

By default, Appian will connect to the `public` schema, but you can connect to another schema if required. At the end of the `url` value, add the `currentSchema` parameter with the name of the schema (`?currentSchema=mySchema`).

For example, if your schema is named `main`, the `url` would look something like the following:

```
1
2
3
4
5
6
<Resource name="jdbc/PostgreSqlDataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="org.postgresql.Driver"
	url="jdbc:postgresql://pg.example.com:5432/PostgreSQL_for_appian?currentSchema=main"
/>
```

##### Clean up unused data in PostgreSQL

PostgreSQL [does not automatically reclaim storage](https://jdbc.postgresql.org/documentation/binary-data/#:~:text=Specifically%20deleting%20a%20row%20that%20contains%20a%20Large%20Object%20reference%20does%20not%20delete%20the%20Large%20Object.%20Deleting%20the%20Large%20Object%20is%20a%20separate%20operation%20that%20needs%20to%20be%20performed.) when individual references to binary large objects (BLOBs) are deleted, and this limitation can result in a large amount of unused storage over time. You may need to regularly [run a cleanup utility like `vacuumlo`](https://www.postgresql.org/docs/15/vacuumlo.html) to ensure only needed BLOB data is being stored in the database.

#### DB2

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
<Resource name="jdbc/Db2DataSource"
	factory="com.appiancorp.tomcat.datasource.EncodedPasswordDataSourceFactory"
	type="javax.sql.DataSource"
	driverClassName="com.ibm.db2.jcc.DB2Driver"
	url="jdbc:db2://your_db2_domain.example.com:50000/such_as_db2_for_appian"
	username="your_plaintext_username"
	password="your_encoded_password"
	initialSize="5"
	maxActive="200"
	defaultTransactionIsolation="READ_COMMITTED"
	maxWait="30000"
	minIdle="5"
	minEvictableIdleTimeMillis="90000"
	timeBetweenEvictionRunsMillis="450000"
	validationQuery="select 1 from sysibm.sysdummy1"
	testOnBorrow="true"
/>
```

### Enabling one-way SSL/TLS connections

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

### List data sources in custom.properties

After creating your data sources, you need to register the Appian and business data sources with Appian.

#### Appian data source

This required data source is used to store Appian instance-level data and metadata, such as News posts, CDT and Record Type definitions, and Admin Console properties. The schema is controlled by Appian and does not include any tables created by Designers when building or importing Appian applications. There is only one Appian data source for each installation of Appian.

When creating the database in a MySQL or MariaDB database, set the server's default character set to `utf8mb4` and the collation to `utf8mb4_unicode_ci`, using the following command:

-   `CREATE DATABASE AppianPrimary_schema default character set = "utf8mb4" default collate = "utf8mb4_unicode_ci";`

If the database has already been created, ensure that the character set is set to `utf8mb4` and the collation is set to `utf8mb4_unicode_ci` for the database and all of the tables within it, using the following commands:

-   `ALTER DATABASE AppianPrimary_schema character set utf8mb4 collate utf8mb4_unicode_ci;`
-   `ALTER TABLE AppianPrimary_schema.table convert to character set utf8mb4 collate utf8mb4_unicode_ci, row_format=DYNAMIC, ALGORITHM=COPY;`

To register the Appian data source, list the JNDI name of the Appian data source in `custom.properties` under the `conf.data.APPIAN_DATA_SOURCE` property. Any supported RDBMS can be used.

-   For example, `conf.data.APPIAN_DATA_SOURCE=jdbc/AppianPrimaryDS`

The Appian data source must have a different JNDI name and use a different tablespace or database than the data source(s) used to store business data.

**Note:**  Customized interactions with the Appian data source are not supported.

You cannot enable one-way SSL/TLS connections to your Appian data source using a self-signed or private certificate authority (CA) signed certificate.

#### Business data sources

Business data sources are used to store business data generated in Appian applications. The business data source schema is controlled by Designers, rather than by Appian itself. At least one business data source is required to use data stores, but any number of business data sources can be configured so that applications can write to multiple databases.

Business data sources can be registered with Appian from the [Admin Console](Appian_Administration_Console.html#data-sources) or with a [data source connected system](data-source-connected-systems.html). These are the only supported methods for Appian Cloud customers. Self-managing customers can also register business data sources directly in `custom.properties`, but it is not recommended.

To migrate a data source from `custom.properties` to the Admin Console:

-   Create a [data source in the Admin Console](Appian_Administration_Console.html#data-sources) and give it the same name as a data source in `custom.properties`.

As long as the **Name** field in the Admin Console matches a value in `conf.data.datasources`, you do not need to update anything else. The new data source will automatically override the old one.

To migrate a data source from 'custom.properties' or the Admin Console to a connected system:

1.  Create a new data source connected system.
2.  Update any objects that refer to the data source to point to the new connected system. These objects include:
    -   Data store objects.
    -   Record type objects with data sync enabled.
    -   Process model objects with [query database smart service nodes](Query_Database_Smart_Service.html).

To register business data sources with Appian using `custom.properties`, list the JNDI names of business data sources in `custom.properties` under the `conf.data.datasources` property. Multiple business data sources can be configured in the same Appian installation by listing multiple JNDI names using a comma separated list. For example: `conf.data.datasources=<JNDI-NAME-1>,<JNDI-NAME-2>,<JNDI-NAME-3>`

**Note:**  If making changes directly to `custom.properties`, DO NOT include the Appian data source in the list of business data sources. This configuration is not supported and will be explicitly prevented in a future release.

## Configuring restrictions on query results

### Case-sensitivity in query text comparisons

When querying data and using text comparison to filter the results (for example, a query rule that only returns results starting with the prefix `USA`), the case-sensitivity behavior of the filter is determined by the database settings, not an Appian configuration. To ensure your text comparison is case-insensitive, you need to change the default collation settings for your RDBMS.

**Note:**  For both the Appian data source and any business data source, the database collation should be set when the database schema is created. It should not be changed after tables are created. Changing the collation can cause unintended issues, especially when database structures are updated in the Appian data source during Appian upgrades.

-   **MySQL & MariaDB**: The collation determines text comparison and sort order.
    -   As mentioned in the Internationalization section below, setting the **default collate** to `utf8mb4_unicode_ci` will make it case-insensitive.
-   **Oracle**: The system variable `NLS_COMP` determines case-sensitivity.
    -   You can set the RDBMS to be case-insensitive system-wide by modifying the system variable to the following: `alter system set NLS_COMP = linguistic;`
-   **SQL Server**: The collation determines case-sensitivity and is **case-insensitive** by default. No changes are needed.
-   **PostgreSQL 12**: A custom [nondeterministic collation](https://www.postgresql.org/docs/12/collation.html) can be created to change the default text comparison behavior and sort order.
-   **DB2 & PostgreSQL 11**: Do not support case-insensitive comparisons.
    -   Consider generating an extra column with text converted to uppercase and converting your query argument to uppercase as well.

**Note:**  **CITEXT and ILIKE in PostgreSQL**

In some cases, it is possible to achieve case-insensitive behavior for text comparison in older versions of PostgreSQL. [One option](https://www.postgresql.org/docs/11/citext.html) is to use the `CITEXT` data type. [Another option](https://www.postgresql.org/docs/12/functions-matching.html) is to use the `ILIKE` keyword, which allows case-insensitive matching according to the current locale. These are not considered "supported" given that Appian does not allow a designer to create new database columns with type `CITEXT` when creating a data store from a CDT, and will not apply the `ILIKE` keyword when using built in query functionalities such as `a!queryEntity`. However, for a specific column that requires case-insensitive text comparison, a database administrator can manually convert the column to be of type `CITEXT`. In addition, for queries run from a Query Database smart service to PostgreSQL, there is no restriction on using the `ILIKE` keyword. Please see the [PostgreSQL documentation](https://www.postgresql.org/docs/) for more information.

### Row return limits for the Query Database smart service

The data that is returned by the Query Database smart service only includes a maximum of ten rows of data (1,000 rows for Appian Cloud users).

To configure Appian to read additional rows of data from a database query, complete the following:

1.  Edit (or create) `<APPIAN_HOME>/conf/custom.properties`.
2.  Adjust the number of rows of data returned by changing the `resources.appian.process.application.arv.limit=10` property to `arv.limit=<desired-number>`.

### Query rule return size limits

The amount of memory it takes to return query results may affect performance, so the following recommended limits have been set:

-   Queries that result in more than 1MB of application server memory usage, by default, are canceled.
-   Queries that take longer than 10 seconds are also, by default, canceled.

These settings can be configured in the `custom.properties` file.

See also: [Query limits to external databases](Post-Install_Configurations.html#query-limits-to-external-databases)

### Node input and output limits

Appian node inputs and node outputs that handle multiple values from a form are restricted to a limit of up to 1250 indices.

**Note:**  For Appian Cloud users, the default query result limit for Appian Cloud users is 1,000 rows.

## Internationalization

In order to store an extended range of characters (including languages that use multiple-byte character sets and emojis), follow the instructions below for your database. These configurations must be used whenever multi-byte characters appear in a custom data type definition.

-   **MySQL & MariaDB**: When creating the databases, set the server's default character set to `utf8mb4` and the collation to `utf8mb4_unicode_ci`, using the following command:
    -   `CREATE DATABASE example_db_name default character set = "utf8mb4" default collate = "utf8mb4_unicode_ci";`
-   **Oracle**: When creating the database, select **Use Unicode AL32UTF8**.
-   **SQL Server**: No additional configuration required.
-   **PostgreSQL**: When initializing the database, set the locale to `en-US.UTF-8`.
-   **DB2**: When creating the databases, set the codeset and territory to `UTF-8` and `us`. Note that the pagesize is also defined during database creation.
-   `create database example_db_name using codeset UTF-8 territory us pagesize 32768`

The database collation settings determine the sort order of characters, which may be different for different languages. Choose the setting that is most appropriate for the primary language of the site. Although the site can be configured to support users of multiple languages, a single collation must be selected, which affects sorting for all languages. For most languages, the above settings are sufficient.

A site with Swedish as the primary language, however, may choose to set the collation settings in order to have characters that are unique to Swedish sort in the correct order. To do so, complete the following:

-   **MySQL & MariaDB**: set collate to `utf8mb4_swedish_ci` instead of `utf8mb4_unicode_ci` when running the command mentioned above.
-   **Oracle**: run the following command:
    -   `create or replace trigger after_logon after logon on schema begin execute immediate 'alter session set nls_language = ''SWEDISH'''; end;`
-   **SQL Server**: run the following command with `<DATABASE_NAME>` replaced with your database name:
    -   `create database <DATABASE_NAME> collate Finnish_Swedish_100_CS_AS`
-   **PostgreSQL**: run the following command, replacing `<DATABASE_NAME>` with the name of your database:
    -   `CREATE DATABASE <DATABASE_NAME> TEMPLATE template0 LC_COLLATE 'sv_SE.UTF-8' LC_CTYPE 'sv_SE.UTF-8'`
-   **DB2**: run the following command with `<DATABASE_NAME>` replaced with your database name:
    -   `CREATE DATABASE <DATABASE_NAME> COLLATE USING UCA500R1_LSV PAGESIZE 32768`

### Time zones

The database can be set to any time zone as long as the datetime values persisted from Appian are always returned as the same value when retrieved by Appian. Appian stores and retrieves datetime values as if they are set in the GMT time zone.

If you rely on database functions that are specific to the time zone, such as the `NOW` or `CURTIME` functions, it is recommended that you set your database to the GMT time zone to be consistent with Appian's handling of datetime time zones. Alternatively, you must be aware of your databases configured local time zone and shift the value returned by these functions to the equivalent value in GMT.

**Note:**  For Appian Cloud users, the MySQL databases provided with Appian Cloud are set to the GMT time zone.

## Optimizing IBM DB2

In order to achieve maximum performance when using DB2 with Appian, the `REOPT` bind option must be configured to `REOPT(ONCE)`.

See also: [IBM DB2 bind option documentation](https://www.ibm.com/docs/en/db2/11.1?topic=commands-bind).

Also note that a pagesize of 32768 or greater is required and must be set during the creation of the database.

To apply the `REOPT(ONCE)` configuration, complete the following for each database used for Appian data source and business data sources:

1.  On the DB2 server, navigate to `<DB2_HOME>/bin`.
2.  Execute the DB2 command line processor: `./db2`
3.  Connect to the database used to store Appian data: `connect to <database-name>`
    -   If multiple databases are used for Appian data source and business data sources, these steps must be followed for each.
4.  Run the bind command: `bind ../bnd/db2clipk.bnd collection NULLIDR1`
5.  Grant the user execute privileges: `GRANT EXECUTE ON PACKAGE NULLIDR1.SYSSH200 TO <database-user>`
    -   **Note**: The grant may fail because the user does not have the authority to grant privileges to itself. Should this occur, you can run the above grant with another user that has admin privileges to the database.
6.  To grant another user admin privileges: `GRANT DBADM ON DATABASE TO USER <some-other-database-user>`

When using a database named `appiandata` and a user named `appianuser`, the output looks like this:

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
(c) Copyright IBM Corporation 1993,2007
Command Line Processor for DB2 Client 9.7.4

db2 => connect to appiandata

   Database Connection Information

 Database server        = DB2/NT64 9.7.4
 SQL authorization ID   = APPIANUSER
 Local database alias   = APPIANDATA

db2 => bind ../bnd/db2clipk.bnd collection NULLIDR1

LINE    MESSAGES FOR db2clipk.bnd
------  --------------------------------------------------------------------
      SQL0061W  The binder is in progress.
      SQL0091N  Binding was ended with "0" errors and "0" warnings.

db2 => GRANT EXECUTE ON PACKAGE NULLIDR1.SYSSH200 TO appianuser
DB20000I  The SQL command completed successfully.

db2 => quit
```

Once configured, the individual data sources are able to specify a the `REOPT(ONCE)` option by using the connection parameter `jdbcCollection&#61;NULLIDR1`. The example data source configuration for DB2 above includes this option.

Additionally, it is recommended that the `RUNSTATS` command be used to periodically update the optimizer information about the database. Consult the [IBM DB2 RUNSTATS documentation](https://www.ibm.com/docs/en/db2/11.1?topic=commands-runstats) for details on its usage.

The following is an example of using the command with the built-in `TP_FEED_ENTRY` table in a schema called APPIANDATA:

```
1
2
3
4
5
    RUNSTATS ON TABLE "APPIANDATA"."TP_FEED_ENTRY"
    ON COLUMNS ( "CREATED_TS" , "AUTHOR"  )
    WITH DISTRIBUTION ON COLUMNS ( "GROUP_UUID" NUM_FREQVALUES 15 NUM_QUANTILES 25  )
    AND SAMPLED DETAILED INDEXES ALL
      ALLOW WRITE ACCESS;
```

## Troubleshooting

The following basic steps can be performed to help troubleshoot connectivity issues.

-   Verify that the database is up and running properly using a database utility or monitoring tool.

-   Check that your database driver is stored in the proper location on your application server.

-   Check your `custom.properties` configuration settings.
    -   Verify that you have the proper Appian data source configuration for your metadata repository.
    -   Verify that you have the proper listing for your business data repository.
-   From the **Build** view, attempt to [create a new CDT from a database table](Mapping_CDTs_to_Pre-defined_Database_Tables.html#create). Verify that the data source shows up as an option and that it shows the appropriate schemas and tables.

### Database configuration error messages

The Appian web application will fail to deploy during application server start-up if the Appian data source is not configured in `custom.properties` or is unreachable due to an error. Possible error messages related to this include the following:

| Error Code | Error Message |
| --- | --- |
| APNX-1-4179-002 | FATAL: The Appian data source cannot be reached. Access to the Appian data source is required. The Appian application will fail to deploy. |
| APNX-1-4179-003 | FATAL: No value configured for conf.data.APPIAN\_DATA\_SOURCE in custom.properties. The Appian data source is required. The Appian application will fail to deploy. |

The following runtime Appian error messages might also be attributable to an issue with your database configuration.

| Error Code | Error Message |
| --- | --- |
| APNX-1-4164-022 | Failed to create data store (rule: \[{0}\], store: \[{1}\]) |
| APNX-1-4164-026 | JDBC connection error trying to execute query (type: \[{0}\], query: \[{1}\]) |

#### Oracle Errors

The following error may indicate a problem with your application server's data source configuration.

```
1
TNS:listener does not currently know of SID given in connect descriptor
```

#### MySQL Errors

The following error may indicate that the maximum number of simultaneous client connections to the MySQL database should be increased. Encountering this error is more likely in environments with multiple application servers and heavy load.

```
1
Too many connections
```

Based on internal performance testing, Appian recommends setting the following MySQL system variables to at least the values indicated here:

-   `max_connections=200` (see [MySQL documentation](https://dev.mysql.com/doc/refman/5.7/en/server-system-variables.html#sysvar_max_connections))
-   `innodb_buffer_pool_size=512MB` (see [MySQL documentation](https://dev.mysql.com/doc/refman/5.7/en/innodb-parameters.html#sysvar_innodb_buffer_pool_size))

## See also

-   [Query Database Smart Service](Query_Database_Smart_Service.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...