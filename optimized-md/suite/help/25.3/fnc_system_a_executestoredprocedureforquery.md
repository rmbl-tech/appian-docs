---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_executestoredprocedureforquery.html
original_path: fnc_system_a_executestoredprocedureforquery.html
version: "25.3"
title: "a!executeStoredProcedureForQuery() Function"
page_id: "fnc_system_a_executestoredprocedureforquery"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!executeStoredProcedureForQuery() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!executeStoredProcedureForQuery**( _dataSource, procedureName, inputs, timeout, autoCommit_ )

Executes a stored procedure in a database. Since this function could run more than once, do not use it with stored procedures that modify data to avoid unintentional changes. To safely execute stored procedures in a _saveInto_ parameter, use [a!executeStoredProcedureOnSave](Execute_Stored_Procedure_Smart_Service.html#a!executestoredprocedureonsave\(\)).

**Tip:**  Stored procedures are a set of SQL statements that you can save in your database and use to query or modify data over and over again.

**See also:** [Execute Stored Procedure Smart Service](Execute_Stored_Procedure_Smart_Service.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`dataSource`

 |

_Any Type_

 |

The data source that contains the stored procedure. The value depends on how your data source is connected. For data source connected systems, enter the connected system constant. For data sources connected in the Admin Console, enter the name of the data source or a Text constant that stores the name.

 |
|

`procedureName`

 |

_Text_

 |

Name of the stored procedure. Case sensitivity requirements are specific to each type of database. For Oracle and Db2 databases, enter the name in uppercase. For PostgreSQL databases, enter the name in lowercase.

 |
|

`inputs`

 |

_List of Map_

 |

A list of names and values of the IN and INOUT parameters to the stored procedure created using `a!storedProcedureInput()`. An input must be provided for every IN and INOUT parameter. Case sensitivity requirements are specific to each type of database. For Oracle and Db2 databases, enter the parameter names in uppercase. For PostgreSQL databases, enter the parameter names in lowercase.

 |
|

`timeout`

 |

_Integer_

 |

The amount of time (in seconds) until the stored procedure execution is cancelled. Default: 30 seconds.

 |
|

`autoCommit`

 |

_Boolean_

 |

Determines whether the database will automatically issue a `COMMIT` operation after every SQL operation. Default: false.

 |

**See also:** [Stored Procedure Input](fnc_system_a_storedprocedureinput.html)

## Returns

The `a!executeStoredProcedureForQuery` function returns a Map data type with the following parameters:

-   `success` (Boolean)
-   `error` (Text)
-   `results` (List of List of Map)
-   `parameters` (List of Map)

The `error` parameter will only be returned in the event of a failure.

## Usage considerations

### Ensuring users have access to execute stored procedures

If using a data source connected system, the user executing this activity must have [Viewer permissions](Connected_System_Object.html#prodlink-security) to the selected data source connected system in order to execute stored procedures.

### Limitations

Keep in mind the following default values and limitations when executing stored procedures:

| Limitation | Description |
| --- | --- |
| **Max timeout** | The default maximum value for timeout for a stored procedure is 600 seconds.

There is a built-in 60 minute timeout imposed on some Smart Service nodes. As a result, this can effectively limit the actual timeout period to 3600 (seconds). This limit is only imposed on the Smart Service, so the Execute Stored Procedure functions will still run with respect to the `maxTimout` value configured in `custom.properties`. Contact Appian Support if you have a procedure that runs longer than 60 minutes and you are encountering timeout issues when calling stored procedures from the Smart Service. |
| **Max rows per result set** | The default maximum value for number of rows per result set is 1000. Result sets that exceed this threshold will be truncated. |
| **Max total rows** | For stored procedures with multiple result sets, the default maximum value for the collective number of rows is 10,000. Once the collective maximum is reached, all subsequent rows and result sets will be absent from the output. |

These properties can also be configured to increase or decrease the default maximum value:

-   For Appian Cloud customers, you can update these values by opening a [support case](https://community.appian.com/support/).

-   For self-managed installations, you can update these values by modifying the following properties in `custom.properties`:

    conf.executeStoredProcedure.limits.maxTimeout= conf.executeStoredProcedure.limits.maxRowsPerResultSet= conf.executeStoredProcedure.limits.maxTotalRows=

    For example:

    conf.executeStoredProcedure.limits.maxTimeout=500

    The configured value is `500` seconds. With this setting, the value provided for the _timeout_ parameter cannot exceed 500 seconds.

**Note:**  The default maximum values represent the recommended settings even though there are no upper bounds limiting custom configurations. Be aware that configuring these guardrails to a value that is significantly greater than the default maximum value may increase your risk of encountering a system error or crash. While unlikely with most configurations, you should still plan to review and test any custom settings accordingly.

### Database specific behaviors

Stored procedures can be executed on any Appian supported relational databases. Below, we have listed some database specific behaviors that impact how you execute stored procedures from Appian.

#### Oracle

-   Capitalize all letters in the stored procedure name and input parameters.
-   For a stored procedure that is defined within a package in an Oracle database, enter the procedure name as **PACKAGE\_NAME.STORED\_PROCEDURE\_NAME**
-   Access the stored procedure query results in the `parameters` key using the name that corresponds to the cursor parameter, instead of in `results`.

#### DB2

-   Capitalize all letters in the stored procedure name and input parameters.
-   Access the stored procedure query results in the `parameters` key using the name that corresponds to the cursor parameter, instead of in `results`.

#### PostgreSQL

-   The stored procedure name and input parameters are case sensitive.
-   Add the `escapeSyntaxCallMode=callIfNoReturn` or `escapeSyntaxCallMode=call` parameter to the connectionURL of the data source.
-   Access the stored procedure query results in the `parameters` key using the name that corresponds to the cursor parameter, instead of in `results`.
-   When executing stored procedures from a process model node with validations disabled, parameters of type Number (Integer) in Appian will be passed to the stored procedure as type BIGINT.

## Example

In this example, a parameterized PostgreSQL stored procedure is executed using the `a!executeStoredProcedureForQuery()` function.

Stored procedure details:

-   Stored procedure name: `get_customers`
-   IN parameters: _limit\_input_, _offset\_input_
-   INOUT parameter: _my\_cursor_
-   PostgreSQL stored procedure definition:

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
    CREATE OR REPLACE PROCEDURE get_customers(
      IN limit_input INTEGER,
      IN offset_input INTEGER,
      INOUT my_cursor refcursor
    )
    BEGIN
    OPEN my_cursor FOR
      SELECT * FROM customers LIMIT limit_input OFFSET offset_input;
    END;
    ```

To call this stored procedure we can use the expression below.

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
a!executeStoredProcedureForQuery(
  dataSource: cons!POSTGRES_DB_POINTER,
  procedureName: "get_customers",
  inputs: {
    a!storedProcedureInput(
      name: "limit_input",
      value: 5
    ),
    a!storedProcedureInput(
      name: "offset_input",
      value: 0
    )
  }
)
```

Because PostgreSQL databases use cursor objects for the stored procedure output, the query results from this stored procedure are returned in the parameter key.

However, if you execute a similar stored procedure in a database that doesn't use cursor objects for the stored procedure output, the query results will be in the results key instead. Below, you can see how the results will differ between stored procedures executed on PostgreSQL and MariaDB.

[![images/execute_stored_procedure/execute_stored_procedure_postgres_vs_mariadb.gif](images/execute_stored_procedure/execute_stored_procedure_postgres_vs_mariadb.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img40)

[![](images/execute_stored_procedure/execute_stored_procedure_postgres_vs_mariadb.gif)](#_)

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...