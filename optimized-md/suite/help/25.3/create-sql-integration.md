---
source_url: https://docs.appian.com/suite/help/25.3/create-sql-integration.html
original_path: create-sql-integration.html
version: "25.3"
title: "Create a SQL Integration"
page_id: "create-sql-integration"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a SQL Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

In this page you will learn how to create and configure a SQL integration object for use with a [custom JDBC](custom-jdbc-connected-system.html) connected system. The custom JDBC connected system combined with the SQL integration object allows you to connect your Appian application to an unsupported database that supports the JDBC protocol to exchange data using SQL statements.

**Note:**  Any database that is not in [this list](System_Requirements.html#databases) is considered an unsupported database.

Before you begin, ensure that you have:

1.  [Deployed a database driver](custom-jdbc-connected-system.html#deploy-a-driver).
2.  [Created a custom JDBC connected system](custom-jdbc-connected-system.html#properties).

## Create the SQL integration object

After you have deployed a database driver and created the custom JDBC connected system, you can then create your SQL integration object.

To create a SQL integration object in Appian:

1.  Open the destination application for the new integration.
2.  In the **Build** view, click **New > Integration**.
3.  Select **Use a connected system**.
4.  Select your custom JDBC connected system from the **Connected System** field.
5.  Select a SQL integration type from the **Operation** dropdown list.

    **Caution:**  Integrations that query data can be used in any expression. Do not use them to modify data in the external system because duplicate updates may occur. Additionally, using DDL commands such as `DROP` or `CREATE` can permanently alter your data and database schema.

6.  Configure the following properties.

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#integration-objects). |
    | **Description** | (Optional) Enter a brief description of the integration. |
    | **Save In** | Browse to and select an existing folder to store the integration object, or click **Create New Rule Folder** to create and select a new folder for the object. |

7.  Click **Create**. Appian displays the new integration for designing.

## Design the SQL integration

After you have created a SQL integration object with a custom JDBC connected system, you can design the SQL statements you will call in your integrations. To see what you can do with your newly designed integration, see [Call an Integration](Call_an_Integration.html).

In the integration object, enter the SQL statements you want to use. The SQL statement must meet the following requirements:

-   All SQL queries must be predefined with specific field names, table names, and where-clause operators and conditions. Dynamic SQL query generation at runtime using expression rules is not allowed.
-   When using parameters, each parameter in the SQL query can accept a single or a list of input values separated by commas.

![A blank SQL READ integration.](images/sql_integration_blank.png)

For specific examples, see the following:

-   [Queries with a static value](Integration_Object.html#building-sql-statements-to-query-with-static-values).
-   [Queries with parameterized values](Integration_Object.html#building-sql-statements-to-query-with-parameterized-values).
-   [Queries with parameterized values referencing a rule input value](Integration_Object.html#building-sql-statements-to-query-with-parameterized-values-using-a-rule-input).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...