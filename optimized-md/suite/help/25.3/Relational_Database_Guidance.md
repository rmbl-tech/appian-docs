---
source_url: https://docs.appian.com/suite/help/25.3/Relational_Database_Guidance.html
original_path: Relational_Database_Guidance.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Relational Database Guidance

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  When you enable [data sync](about-data-sync.html) on your record types, Appian automatically handles all performance tuning for you. See [if data sync is right for your application](about-data-sync.html#when-to-enable-data-sync).

## Introduction

This page walks you through the best practices for schema design and configurations in order to optimize database performance with Appian under a variety of edge conditions. **Most applications can leverage Appian's out-of-the-box database configurations and standard schema designs with no changes.** A small percentage of the largest applications and workloads will require advanced database configurations and optimization.

The applications that this guidance will apply to typically have one or more of the following characteristics:

-   Database views with complex SQL in the definition are required.
-   Complex reporting requirements mandate additional processing in the database through views, stored procedures, and triggers.
-   Complex relationships between database tables are required in the form of foreign key relationships.
-   A Field-level audit in the database is needed to track changes to database values.
-   Database tables are expected to contain millions of rows.

There are always tradeoffs in database design between performance, maintainability, and simplicity. There is no one, ideal schema design and database configuration for all situations. For very large deployments, good design cannot eliminate the need for performance and load testing to validate your specific data schema and database settings.

As you build the database for your Appian applications, ensure that the guidance on this page is followed. MySQL and other relational databases supported by Appian are widely adopted solutions with abundant online documentation and training resources. Appian Technical Support does not provide general or training assistance for using these databases. The content on this page is meant to assist Appian customers with database design and is not meant to describe the functionality of Appian's software.

## Guidelines

-   [Follow Volume Testing Guidance](#volume-testing-guidance).
-   [Follow Indexing Guidance](#indexing-guidance).
-   [Follow Auditing Guidance](#auditing-guidance).
-   [Analyze Explain Plans](#analyzing-explain-plans).
-   [Follow Online Transaction Processing (OLTP) vs Online Analytical Processing Guidance (OLAP)](https://community.appian.com/success/w/article/3278/a-case-study-in-data-modeling-for-an-appian-application).
-   [Avoid Anti-Patterns](#anti-patterns)
-   Ensure that no data-intensive scripts are run on the database during production hours.
-   Avoid nested queries (subqueries) and joining on views. If these need to be used, ensure that they are tested with production load and optimized for performance.

## Volume testing guidance

-   At the beginning of your project, establish volume estimates for all the key entities in the system.
-   Load the database with three times the yearly estimates for testing purposes.
    -   [Database Load Generation](https://community.appian.com/b/appmarket/posts/database-load-generation) tool available on the Appian AppMarket can be used to load data into any database supported by Appian. [dbForge](https://www.devart.com/dbforge/mysql/studio/download.html) for MySQL and similar tools for other databases can also be leveraged. Alternatively, a one-time stored procedure can be used to load the data.
    -   For the Appian Cloud database, leverage the Import CSV Plug-in to get around the 1MB CSV file limit in phpMyAdmin.
-   Execute the stored procedures and triggers with twice the expected peak load and thrice the yearly volume estimates.
-   Follow the [Explain Plan Guidance](#analyzing-explain-plans) to check for proper indexing.

## Indexing guidance

-   Create indexes in your database for the following:
    -   Foreign key columns.
    -   Columns used in join conditions in a view or query.
    -   Columns used for sorting.
    -   Columns that are used by Appian queries for filtering.
-   Leverage multi-column indexes (composite key index) where necessary.
    -   As an example, indexes useful when query rules are called with at least two filters.
    -   For an OLTP-optimized schema, too many indexes on a table slow down writes to that table. Do not use too many indexes on tables that have a higher volume of writes compared to reads. A good rule of thumb is to not exceed 5 indexes per table in such scenarios. For a read-heavy, OLAP-optimized schema, a higher number of indexes per table is acceptable. See [OLTP vs OLAP guidance](https://community.appian.com/w/the-appian-playbook/714/reporting-strategies) for more information.

## Auditing guidance

Changes made within Appian are automatically audited. Enhanced auditing in the applications can be easily configured with Appian features. However, you might have a requirement to store a record of changes within the business database. The guidance in this section applies only in scenarios where a database-level audit is required.

-   A database-level audit should be implemented with triggers, as any other solution allows for data to be changed without an audit.
-   Use ON INSERT and ON UPDATE triggers on the base table to ensure that every record modification makes it to the audit table.
-   It is recommended to create a separate audit table per table that you are auditing. A single audit table that receives all of the writes is a common cause of deadlocks. You can have a single audit table per application if you expect less than 500 audit events per day for the life of the application.
-   As previously mentioned, if a database-level audit is not required, it can be implemented within the application without relying on database objects like triggers.

## Analyzing Explain Plans

[Explain Plan](https://dev.mysql.com/doc/refman/5.7/en/using-explain.html) or Query Execution Plan provides information about the steps taken by the database to execute your statement. With Explain Plan, you can determine the optimizations that are needed in your statements or the indexes you might need to add.

Run Explain Plans on a database loaded with the volume of data that contains three times the yearly estimates. Optimize the queries based on the information in the Explain Plan.

## Anti-patterns

Anti-patterns in software engineering are commonly used patterns that are ineffective or counter-productive in practice. There are certain anti-patterns that are common with Appian that tend to cause performance problems. There are exceptions to every rule and there might be a valid reason to implement one of the anti-patterns below, but it is important to understand each anti-pattern below so you can determine if it applies to your use case.

-   Paging batch size of -1 should only be used in very specific instances such as charts. [Issues arise](Memory_Circuit_Breaker.html) when there are multiple unbounded calls to the database in a single interface. The [query limit to external databases](Post-Install_Configurations.html#query-limits-to-external-databases) protects you from these issues to a certain extent. However, the end user will receive an error message. The [Interface Details](Logging.html#interface-performance-logs) log will warn you when your context size is too large.
-   Query entities should sort on the primary key by specifying the [sortInfo](fnc_system_a_sortinfo.html) on every queryEntity.
-   Avoid the use of "starts with" and "ends with" operators in queryEntity as these will result in wild card searches.
-   IN statements with 50 or more values should be avoided.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...