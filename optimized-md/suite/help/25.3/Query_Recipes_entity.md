---
source_url: https://docs.appian.com/suite/help/25.3/Query_Recipes_entity.html
original_path: Query_Recipes_entity.html
version: "25.3"
title: "Recipes for Querying Entities"
page_id: "Query_Recipes_entity"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Recipes for Querying Entities

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The recipes on this page show how to perform common data lookups using the [a!queryEntity()](fnc_system_a_queryentity.html) function.

The recipes can be worked on in no particular order. However, make sure to read the [Setup](#setup) section before you begin.

**Tip:**  For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

## Setup

To copy and paste these recipes, you’ll need the Employee data store entity (DSE) and a [constant](Constants.html) pointing to this DSE.

To create these two objects, complete the [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) pattern.

You can experiment with all of these query recipes in the [query editor](query-editor.html). After you copy and paste a query recipe into an empty expression rule, Ctrl+Click (Cmd+Click on Mac) the `a!queryEntity()` function to open it in the query editor.

**Note:**  If you change the data store entity in the query editor, all of query configurations will be lost and you will be starting over with a new query.

## Retrieve the data for all fields

**Goal:** Retrieve the data for all fields of an entity.

When you execute a query, it pulls back the data for all of the fields of the entity. This recipe replicates that functionality using `a!queryEntity()`.

To retrieve all fields of the entity being queried, omit both the `selection` and `aggregation` parameters from `a!query()`. When using this approach, you should cast the result to the appropriate type to ensure that it works smoothly in process models and rules that use it. This is because `a!queryEntity()` always returns a DataSubset that includes a dictionary.

In this example, we retrieve the employee whose id is `8`.

**Expression**

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
cast(
  type!Employee,
  a!queryEntity(
    entity: cons!EMPLOYEE_ENTITY,
    query: a!query(
      logicalexpression: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
            field: "id",
            operator: "=",
            value: 8
          )
        }
      ),
      pagingInfo: a!pagingInfo(
        startIndex: 1,
        batchSize: 1
      )
    )
  ).data
)
```

**Tip:**  In this example, we are nesting `a!queryFilter()` inside `a!queryLogicalExpression()`, which makes it possible to combine multiple filters. This isn't required since we only have one filter, but it makes it easier for you to add more filters or edit it in the [query editor](query-editor.html).

This example should return the following fields: `[id=8, firstName=Jessica, lastName=Peterson, department=Finance, title=Analyst, phoneNumber=555-987-6543, startDate=2004-11-01]`. This value will be of type `Employee`.

If you expect your query to return multiple results, you should instead cast to a list of CDT. In this example, we will retrieve any employees whose first name begins with "A".

**Expression**

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
cast(
  typeof({type!Employee()}),
  a!queryEntity(
    entity: cons!EMPLOYEE_ENTITY,
    query: a!query(
      logicalexpression: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
            field: "firstName",
            operator: "starts with",
            value: "A"
          )
        }
      ),
      pagingInfo: a!pagingInfo(
        startIndex: 1,
        batchSize: 5
      )
    )
  ).data
)
```

**Tip:**  In this example, we are nesting `a!queryFilter()` inside `a!queryLogicalExpression()`, which makes it possible to combine multiple filters. This isn't required since we only have one filter, but it makes it easier for you to add more filters and edit it in the [query editor](query-editor.html).

This example should return the value `[id=17, firstName=Andrew, lastName=Nelson, department=Professional Services, title=Consultant, phoneNumber=555-789-4560, startDate=3/15/2005]; [id=4, firstName=Angela, lastName=Cooper, department=Sales, title=Manager, phoneNumber=555-123-4567, startDate=10/15/2005]`.

## Retrieve the data for a single field

**Goal:** Retrieve the data for a single field of an entity rather than all of the fields.

When you execute a query, it returns the data for all of the fields of the entity. The more data you retrieve from the database, the longer the query takes to run. A common way to restrict the amount of data returned by a query is to create several different data store entities that reference the same database table, each of which only contains some of the fields. Instead, using `a!queryEntity()` to select specific fields as shown below restricts the amount of returned data, is faster to develop, and has the advantage that the field or fields can be selected at run-time rather than design-time.

In this example we are going to retrieve the phone number, stored in the field `phoneNumber`, for the employee whose `id` is `8`.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(
      columns: {
        a!queryColumn(
          field: "phoneNumber"
        )
      }
    ),
    logicalexpression: a!queryLogicalExpression(
      operator: "AND",
      filters: {
        a!queryFilter(
          field: "id",
          operator: "=",
          value: 8
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 1
    )
  )
).data.phoneNumber[1]
```

**Tip:**  In this example, we are nesting `a!queryFilter()` inside `a!queryLogicalExpression()`, which makes it possible to combine multiple filters. This isn't required since we only have one filter, but it makes it easier for you to add more filters and edit it in the [query editor](query-editor.html).

This example should return the value `555-987-6543`.

To retrieve data for more than one field, you can add more `a!queryColumn()`s to the `columns` array.

## Get the distinct values of a field

**Goal:** Retrieve the unique list of values in a given field.

It will almost always be significantly faster to have the data source do the uniqueness calculation before returning the data to Appian. This is especially true for large data sets. `a!queryEntity()` lets the data source perform the uniqueness calculation.

In this example, we are going to retrieve the list of departments that have employees using `a!queryAggregation()`.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    aggregation: a!queryAggregation(
      aggregationColumns: {
        a!queryAggregationColumn(
          field: "department",
          isGrouping: true
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1,
      sort: a!sortInfo(
        field: "department",
        ascending: true
      )
    )
  )
).data.department
```

This example should return a list containing `"Engineering"`, `"Finance"`, `"HR"`, `"Professional Services"`, and `"Sales"`. Note that even though there is more than one employee in many of these departments, each department is only listed once in the result.

## Aggregating on a field

**Goal:** Perform an aggregation or computation on all values of field.

In this example, we are going to count the number of employees in each department.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    aggregation: a!queryAggregation(
      aggregationColumns: {
        a!queryAggregationColumn(
          field: "department",
          isGrouping: true
        ),
        a!queryAggregationColumn(
          field: "department",
          alias: "numberOfEmployees",
          aggregationFunction: "COUNT"
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1,
      sort: a!sortInfo(
        field: "department",
        ascending: true
      )
    )
  )
)
```

This example should return one dictionary for each department where the keys in the dictionary are `department` and `numberOfEmployees` and the values match the following table.

| department | numberOfEmployees |
| --- | --- |
| Engineering | 6 |
| Finance | 4 |
| HR | 2 |
| Professional Services | 4 |
| Sales | 4 |

## Aggregating on year and month

**Goal:** Perform a time aggregation on all values of field.

In this example, we are going to count the number of employees that started on a specific month and year.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    aggregation: a!queryAggregation(
      aggregationColumns: {
        a!queryAggregationColumn(
          field: "startDate",
          alias: "year_startDate",
          isGrouping: true,
          groupingFunction: "YEAR"
        ),
        a!queryAggregationColumn(
          field: "startDate",
          alias: "month_startDate",
          isGrouping: true,
          groupingFunction: "MONTH"
        ),
        a!queryAggregationColumn(
          field: "id",
          alias: "idCount",
          aggregationFunction:"COUNT"
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1
    )
  ),
  fetchTotalCount: true
)
```

This example should return a list of dictionaries for each distinct year and month combination with the count of the employees that have a start date in that month and year.

## Querying on multiple conditions

**Goal:** Retrieve data that meets at least one of two different conditions.

The only way to find entries that match at least one of two conditions is to run two different queries and combine the results. Using a `logicalExpression` inside the Query object, we can execute the same logic in a single call to the data source, resulting in faster performance.

In this example, we are going to retrieve the names of employees who **either** started within the last 2 years **or** have the word "Associate" in their title.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(
      columns: {
        a!queryColumn(field: "firstName"),
        a!queryColumn(field: "lastName")
      }
    ),
    logicalExpression: a!queryLogicalExpression(
      operator: "OR",
      filters: {
        a!queryFilter(
          field: "startDate",
          operator: ">",
          value: date(year(now())-2, month(now()), day(now()))
        ),
        a!queryFilter(
          field: "title",
          operator: "includes",
          value: "Associate"
        )
      },
      ignoreFiltersWithEmptyValues: true
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1
    )
  )
)
```

The exact list of results that is returned will to depend on when you run the example:

-   Before `Jan 2, 2015`: `John Smith` will be the only employee returned because of the start date condition.
-   On or after `Jan 2, 2015`: no employees will be included in the results because of their start date.

`Elizabeth Ward`, `Laura Bryant` and `Stephen Edwards` will be included in the result regardless of when you run the example as they are included because their title contains the word `Associate`.

## Querying on nested conditions

**Goal:** Retrieve data based on complex or nested conditions.

In this example, we are going to retrieve the names of the senior members of the Engineering department where "senior" is defined as either having a title of "Director" or having a start date of more than 10 years ago.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(
      columns: {
        a!queryColumn(field: "firstName"),
        a!queryColumn(field: "lastName")
      }
    ),
    logicalExpression: a!queryLogicalExpression(
      operator: "AND",
      filters: a!queryFilter(
        field: "department",
        operator: "=",
        value: "Engineering"
      ),
      logicalExpressions: {
        a!queryLogicalExpression(
          operator: "OR",
          filters: {
            a!queryFilter(
              field: "startDate",
              operator: "<",
              value: date(year(now())-10, month(now()), day(now()))
            ),
            a!queryFilter(
              field: "title",
              operator: "includes",
              value: "Director"
            )
          },
          ignoreFiltersWithEmptyValues: true
        )
      },
      ignoreFiltersWithEmptyValues: true
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1
    )
  )
)
```

This example should return `John Smith` and `Mary Reed`. `John Smith` is included because he is a Director and Mary Reed is included because her start date is more than 10 years ago. Both of them are in the Engineering department.

## Filtering for null values

**Goal:** Find entries where a given field is null.

In this example, we are going to find all employees who are missing either `firstName`, `lastName`, `department`, `title`, `phoneNumber`, or `startDate`.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(
      columns: {
        a!queryColumn(field: "firstName"),
        a!queryColumn(field: "lastName")
      }
    ),
    logicalExpression: a!queryLogicalExpression(
      operator: "OR",
      filters: {
        a!queryFilter(field: "firstName", operator: "is null"),
        a!queryFilter(field: "lastName", operator: "is null"),
        a!queryFilter(field: "department", operator: "is null"),
        a!queryFilter(field: "title", operator: "is null"),
        a!queryFilter(field: "phoneNumber", operator: "is null"),
        a!queryFilter(field: "startDate", operator: "is null")
      },
      ignoreFiltersWithEmptyValues: true
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1
    )
  )
)
```

This example does not return any results because none of the employees in our sample data are missing any of the specified fields.

## Filtering for null or empty values

**Goal:** Find entries where a given field is null or empty.

In this example, we are going to find all employees who have a missing or empty value for `firstName`.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(
      columns: {
        a!queryColumn(field: "firstName")
      }
    ),
    logicalExpression: a!queryLogicalExpression(
      operator: "OR",
      filters: {
        a!queryFilter(field: "firstName", operator: "is null"),
        a!queryFilter(field: "firstName", operator: "in", value: {""})
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: -1
    )
  )
)
```

This example does not return any results because none of the employees in our sample data have a _null_ or _empty_ value for `firstName`.

## Searching on multiple fields

**Goal:** Retrieve data based on search criteria specified by end users e.g. when looking for employees by last name, title, or department. Search criteria that are left blank are not included in the query.

For an example on filtering for null values, see the recipe: [Filtering for Null Values](#filtering-for-null-values).

**Expression**

First, create an expression rule `ucSearchEmployees` with the following rule inputs:

-   lastName (Text)
-   title (Text)
-   department (Text)
-   pagingInfo (Any Type)

Enter the following definition for the rule:

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    logicalExpression: a!queryLogicalExpression(
      operator: "AND",
      filters: {
        a!queryFilter(
          field: "lastName",
          operator: "includes",
          value: ri!lastName
        ),
        a!queryFilter(
          field: "title",
          operator: "includes",
          value: ri!title
        ),
        a!queryFilter(
          field: "department",
          operator: "=",
          value: ri!department
        )
      },
      ignoreFiltersWithEmptyValues: true
    ),
    pagingInfo: ri!pagingInfo
  ),
  /* The fetchTotalCount parameter should be set to true when the totalCount returned */
  /* in the datasubset is required. This example assumes the result will be used in a */
  /* grid where totalCount is required for paging. */
  fetchTotalCount: true
)
```

**Test it out**

Unlike the recipes above, this one is a rule with inputs. Rather than just getting a single result, let's take a look at several different results for different rule inputs.

First, let's try not specifying any fields except for _pagingInfo_:

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
  rule!ucSearchEmployees(
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 30,
      sort: a!sortInfo(
        field: "lastName",
        ascending: true
      )
    )
  )
```

This query will return the first 30 employees, sorted A-Z by last name.

Next, let's try specifying a department in addition to the _pagingInfo_:

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
  rule!ucSearchEmployees(
    department: "Sales",
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 30,
      sort: a!sortInfo(
        field: "lastName",
        ascending: true
      )
    )
  )
```

This expression will return a list of employees in the Sales department, sorted alphabetically by last name. In this example, that is: `Angela Cooper`, `Laura Bryant`, `Stephen Edwards`, and `Elizabeth Ward`.

![searching on multiple fields query recipe](images/Searching_On_Multiple_Fields_Query_Recipe.png)

We can also combine multiple filters together. Let's try searching by both last name and department:

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
  rule!ucSearchEmployees(
    lastName: "Bryant",
    department: "Sales",
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 30,
      sort: a!sortInfo(
        field: "lastName",
        ascending: true
      )
    )
  )
```

This expression will return a list of employees that are in the `Sales` department and have a last name that contains `Bryant`. In this case that's a single employee: `Laura Bryant`.

To see an example of integrating this query into an interface, see the Interface Recipe: [Searching on Multiple Fields](recipe-searching-on-multiple-fields.html)

## Sorting on multiple fields without using aggregations

**Goal:** Demonstrate how to sort on multiple columns when there is no field aggregation.

Using the _a!querySelection_ function allows you to define a set of column selection configurations. When using this function, you can sort on any of the fields in the data entity, whether the fields are included in the selection or not.

In this example we are going to retrieve the _department_, _first name_, and _last name_ of employees and sort them in ascending order. The data will be sorted first by department, and then by title, even though title is not part of the query selection.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    selection: a!querySelection(columns: {
      a!queryColumn(field: "department"),
      a!queryColumn(field: "firstName"),
      a!queryColumn(field: "lastName"),
    }),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 20,
      sort: {
        a!sortInfo(
          field: "department",
          ascending: true
        ),
        a!sortInfo(
          field: "title",
          ascending: true
        )
      }
    )
  ),
  /* The fetchTotalCount parameter should be set to true when the totalCount returned */
  /* in the datasubset is required. This example assumes the result will be used in a */
  /* grid where totalCount is required for paging. */
  fetchTotalCount: true
)
```

## Sorting on multiple fields when aggregation is applied

**Goal:** Demonstrate how to sort on multiple fields when aggregation is performed in one or more fields.

In this example, we are going to retrieve the count of _employees_ by _department_ and _title_. We are also going to sort the results in ascending order; first by department, then by title.

**Expression**

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
a!queryEntity(
  entity: cons!EMPLOYEE_ENTITY,
  query: a!query(
    aggregation: a!queryAggregation(aggregationColumns: {
      a!queryAggregationColumn(field: "department", isGrouping: true),
      a!queryAggregationColumn(field: "title", isGrouping: true),
      a!queryAggregationColumn(field: "lastName", aggregationFunction: "COUNT"),
    }),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 20,
      sort: {
        a!sortInfo(
          field: "department",
          ascending: true
        ),
        a!sortInfo(
          field: "title",
          ascending: true
        )
      }
    )
  )
)
```

**Note:**  When using `a!queryAggregation()`, you can only sort on fields that are part of the query aggregation. Unlike when using `a!querySelection()`, you must aggregate on a field if you want to sort by it.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...