---
source_url: https://docs.appian.com/suite/help/25.3/about-queries.html
original_path: about-queries.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Queries

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Queries are the unseen driver of the robust interfaces, process models, and expressions in your applications. They allow you to easily select, aggregate, filter, and sort your enterprise data so you display data exactly how you need it.

This page provides an overview of the data you can query, the types of queries you can create, and tips on how to get started.

## What data to query

In Appian, you can query data from a [record type](Record_Type_Object.html) or a [data store entity](Data_Stores.html). You can query the data you need using different functions, components, and the query editor.

In Appian, you can query data from the following objects:

![Record Type Object Icon](images/object_type_icons/obj_record30px.png)[**Record types**](Record_Type_Object.html): Allows you to return data from a database or web service.

![Data Store Object Icon](images/object_type_icons/obj_data-store30px.png)[**Data store entity**](Data_Stores.html) (DSE): Allows you to return data from a database table or view.

The fastest and easiest way to query data is from a record type since you can easily reference data and related data at the same time, and [leverage auto-optimized query performance](about-data-sync.html#what-is-data-sync).

**Tip:**  For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

## Types of queries

You can create two different types of queries to return data from a record type or a data store entity. You’ll use different functions to create these two different types of queries:

|
Query Type

 |

Description

 |
| --- | --- |
| Selection | Returns a list of fields from a record type or entity. For example, a selection query could return a list of employees. |
| Aggregation | Groups data by common values and performs calculations on the data. For example, an aggregation query could return the count of employees who are in the Engineering department. |

## How to query data

The table below outlines the different functions you can use to query data from a record type or a data store entity:

|
Action

 |

Suggested Function

 |
| --- | --- |
| **Selection queries** |
| Return a list of data from a record type | [a!queryRecordType()](fnc_system_queryrecordtype.html) |
| Return the data for a single record | [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) |
| Return a list of data from a data store entity | [a!queryEntity()](fnc_system_a_queryentity.html) configured with [a!query()](fnc_system_a_query.html) and [a!querySelection()](fnc_system_a_queryselection.html). |
| **Aggregation queries** |
| Aggregate data from a record type | [a!queryRecordType()](fnc_system_queryrecordtype.html) configured with [a!measure()](Measure_Component.html) and [a!grouping()](Grouping_Component.html) |
| Aggregate data from a record type to display in a grid or chart | [a!recordData()](fnc_system_recorddata.html) |
| Aggregate data from a data store entity | [a!queryEntity()](fnc_system_a_queryentity.html) configured with [a!query()](fnc_system_a_query.html) and [a!queryAggregation()](fnc_system_a_queryaggregation.html). |
| **Filter, sort, and limit returned data** |
| Filter the data returned from a record type or data store entity | [a!queryFilter()](fnc_system_a_queryfilter.html) |
| Filter the data returned from a one-to-many related record type | [a!relatedRecordData()](fnc_system_relatedrecorddata.html) |
| Filter the data returned from a record type or data store entity by multiple conditions | [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) |
| Sort the data returned in a query | [a!sortInfo()](fnc_system_a_sortinfo.html) |
| Determine where to start the query and how many rows to return | [a!pagingInfo()](fnc_system_a_paginginfo.html) |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...