---
source_url: https://docs.appian.com/suite/help/25.3/Query_Recipes.html
original_path: Query_Recipes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Recipes for Querying Records

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The recipes on this page illustrate how to use the [a!queryRecordType()](fnc_system_queryrecordtype.html) and [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) functions to query record data. Review [when to use which function](fnc_system_a_queryrecordbyidentifier.html#aqueryrecordbyidentifier-versus-aqueryrecordtype).

You should use these recipes as a reference only since record type references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate.

**Tip:**  You can build these recipes using a guided experience when you use the [query editor](using-the-query-editor.html).

The following recipes query data from a sample order application with the following record types:

-   **AR Customer record type**: Stores customer information. This record type has a one-to-many relationship with AR Order, and a many-to-one relationship with AR Region.
-   **AR Order record type**: Stores customer's order information. This record type has a many-to-one relationship with AR Customer, and a many-to-one relationship with AR Region.
-   **AR Region record type**: Stores the customer region. This record type has a one-to-many relationship with both the AR Customer and AR Region record types.

[![images/query-recipe-data-model.png](images/query-recipe-data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img307)

[![](images/query-recipe-data-model.png)](#_)

## Best practice: only specify the data you need

When you build a query, you should only specify the fields and data you need. The more data you query, the longer it takes to load and display that data in your application.

Before building a query, consider what data you actually need to display in the interface or expression—there's no need to query data that you're not going to use.

For example:

```
1
2
3
4
5
6
7
8
a!queryRecordType(
recordType: recordType!AR Order,
 fields: {
   recordType!AR Order.fields.orderNumber, /* <-- I need this for context  */
   recordType!AR Order.fields.orderDate,    /* <-- I need this to determine priority  */
   recordType!AR Order.fields.totalAmount  /* <-- I need this for a calculation  */
 },
 ...
```

The recipes on this page follow this best practice.

If you determine that you absolutely must query all fields from a record type for a specific reason, you can use the [a!selectionFields() function](fnc_system_selectionfields.html). See [examples](fnc_system_selectionfields.html#examples) of how to use this function.

**Tip:**  For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

## Return record fields for a single record

**Goal**: Return the first name, last name, and status for a specific customer.

**Expression**

To query information from a single record, we'll use the `a!queryRecordByIdentifier()` function. The expression below specifies three fields to return in the query.

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
a!queryRecordByIdentifier(
  recordType: recordType!AR Customer,
  identifier: 1,
  fields: {
    recordType!AR Customer.fields.firstName,
    recordType!AR Customer.fields.lastName,
    recordType!AR Customer.fields.isActive
  }
)
```

**Expected result**

This query returns the following data. By default, the primary key field will always be returned in a query, even if you don't explicitly reference the field.

`[AR Customer id=1, firstName=Olivia, lastName=Chen, isActive=true]`

## Return record fields and related record fields for a single record

**Goal**: Return the first name, last name, status, and region for a specific customer.

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
a!queryRecordByIdentifier(
  recordType: recordType!AR Customer,
  identifier: 1,
  fields: {
    recordType!AR Customer.fields.firstName,
    recordType!AR Customer.fields.lastName,
    recordType!AR Customer.fields.isActive,
    recordType!AR Customer.relationships.region.fields.name
  }
)
```

**Expected result**

This query returns the following data. Notice that the primary key field for both the base record type and the related record type is automatically returned.

`[AR Customer id=1, firstName=Olivia, lastName=Chen, isActive=true, region=[AR Region id=1, name=North America]]`

## Aggregate data

**Goal**: Get the total number of orders for each customer.

**Expression**:

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
a!queryRecordType(
  recordType: recordType!AR Order,
  /* The a!aggregationFields() function allows you to aggregate record data */
  fields: a!aggregationFields(
    groupings: {
      a!grouping(
        field: recordType!AR Order.relationships.customer.fields.displayName,
        alias: "customer"
      )
    },
    measures: {
      a!measure(
        function: "COUNT",
        field: recordType!AR Order.fields.id,
        alias: "order_count"
      )
    }
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 7
  )
).data
```

**Expected result**

This query returns the following data. Since the _batchSize_ is set to `7`, only seven results are returned.

`[customer:Abbott Ondrousek,order_count:27]; [customer:Adelaide Eastmead,order_count:18]; [customer:Adelbert Leicester,order_count:13]; [customer:Adena Boswood,order_count:15]; [customer:Adria Arbon,order_count:21]; [customer:Adria Deeley,order_count:18]; [customer:Anthony Jones,order_count:28];`

## Aggregate data using date or time

**Goal:** Get the total number of orders placed each year.

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
a!queryRecordType(
  recordType: recordType!AR Order,
  fields: a!aggregationFields(
    groupings: a!grouping(
      field: recordType!AR Order.fields.submittedOn,
      alias: "yearAdded",
    /* Aggregations that group data based on date or time information use the */
    /* interval parameter in a!grouping() to specify how data is grouped */
      interval: "YEAR"
    ),
    measures: a!measure(
      field: recordType!AR Order.fields.id,
      function: "COUNT",
      alias: "numberOfOrders"
    )
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 7
  )
).data
```

**Expected result**

This query returns the following data. Since the _batchSize_ is set to `7`, only seven results are returned.

`[yearAdded:2018,order_count:199]; [yearAdded:2019,order_count:861]; [yearAdded:2020,order_count:1311]; [yearAdded:2021,order_count:1199]; [yearAdded:2022,order_count:385]; [yearAdded:2023,order_count:2]; [yearAdded:2025,order_count:2757]`

## Filter out data with null values

**Goal**: Only return orders that have a shipped date to view all completed and shipped orders.

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
a!queryRecordType(
  recordType: recordType!AR Order,
  fields: {
    recordType!AR Order.fields.id,
    recordType!AR Order.fields.total,
    recordType!AR Order.fields.shipDate
  },
  filters: {
    a!queryFilter(
      field: recordType!AR Order.fields.shipDate,
      operator: "not null"
    /* The value parameter is not required when the operator is 'not null' or 'null' */
    )
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 3,
  /* Sort to see the most recent shipped orders */
    sort: a!sortInfo(
      field: recordType!AR Order.fields.shipDate,
      ascending: false
    )
  )
).data
```

**Expected result**

This query returns the following data. Since the AR Order record type has thousands of rows of order data, the _pagingInfo_ parameter in the query will ensure that only the last three shipped orders are returned.

`[AR Order id=1, total=3235.96, shipDate=6/24/2025 7:00 AM GMT+00:00];` `[AR Order id=4, total=2649.67, shipDate=7/17/2020 11:19 PM GMT+00:00];` `[RE Order id=5, total=6482.59, shipDate=12/11/2019 12:01 AM GMT+00:00]`

## Filter by multiple values

**Goal**: Only return customers who joined in the last month from the Midwest of the United States.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: {
    recordType!AR Customer.fields.fullName,
    recordType!AR Customer.fields.createdOn,
    recordType!AR Customer.relationships.region.fields.value,
  },
/* The a!queryLogicalExpression function allows you to specify how multiple queryFilter functions are combined  */
  filters: a!queryLogicalExpression(
    operator: "AND",
    filters: {
    a!queryFilter(
      field: recordType!AR Customer.fields.createdOn,
      operator: "between",
      /* Month to Date */
      value: {toDatetime(eomonth(today(),-1) + 1), now()}
    ),
    a!queryFilter(
      field: recordType!AR Customer.relationships.region.fields.value,
      operator: "="
      value: "Midwest"
    )
  }
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 3
  )
).data
```

**Expected result**

This query returns the following data:

`[AR Customer id=1, name= Olivia Chen, createdOn=6/24/2025 7:00 AM GMT+00:00, region=[AR Region id=25, firstName=Sheppard]];` `[AR Customer id=3961, name= Sam Jones, createdOn=6/24/2025 7:10 AM GMT+00:00, region=[AR Region id=25, firstName=Sheppard]];` `[AR Customer id=3962, name= Pete Smith, createdOn=6/24/2025 7:10 AM GMT+00:00, region=[AR Region id=92, firstName=Reade]]`

## Filter by one-to-many data

**Goal**: Return customers who made a purchase greater than $100,000 from a specific salesperson.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: a!aggregationFields(
    groupings: a!grouping(
      field: recordType!AR Customer.fields.fullName,
      alias: "customerName"
    )
  ),
 /* By default, a list of queryFilter will be combined with an 'AND' operator */
  filters: {
    a!queryFilter(
      field: recordType!Customer.relationships.order.fields.salesPerson,
      operator: "=",
      value: 275
    ),
    a!queryFilter(
      field: recordType!AR Customer.relationships.order.fields.total,
      operator: ">",
      value: 100000
    )
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100
  )
).data
```

**Expected result**

This query filters customers by its one-to-many relationship with orders. When you filter by a related record field from a one-to-many relationship (that is, the "many" side of the relationship), the filter will return all records from the base record type (the "one" side of the relationship) that have at least one related record that meets the filter condition.

In this example, the query returns the customers who made at least one purchase greater than $100,000 from a specific salesperson (in this case, with the ID `275`). If a customer made a purchase from a different salesperson or if their purchase was less than the dollar amount specified, that customer will not appear in the results.

This query returns the following data:

`Barbara J. Calone; Dave P. Browning; Elizabeth J. Sullivan; Helen J. Dennis; Janet M. Gates; Kirk DeGrasse; Robert R. Vessa; Stacey M. Cereghino; Valerie M. Hendricks`

## Return data between two dates

**Goal**: Return orders created over a weekend.

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
a!queryRecordType(
  recordType: recordType!AR Order,
  fields: recordType!AR Order.fields.id,
  filters: a!queryFilter(
    field: recordType!AR Order.fields.submittedOn,
  /* The 'between' operator will include both the lower and upper values as matches when the query is run */
    operator: "between",
    value: todatetime({"06/08/2019", "06/09/2019"})
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 10
  )
).data
```

**Expected result**

This query returns the following data:

`43728; 43729; 43730; 43731; 43732; 43733; 43734; 43735; 43736; 143728`

## Exclude data from a query

**Goal**: Only return the most recent Sales in North America. Do not include sales from other regions like Europe or the Pacific.

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
a!queryRecordType(
  recordType: recordType!AR Order,
  fields: {
    recordType!AR Order.fields.id,
    recordType!AR Order.relationships.region.fields.countryRegionCode
  },
  filters: a!queryFilter(
    field: recordType!AR Order.relationships.region.fields.countryRegionCode,
  /* The 'not in' operator is a simpler way to write multiple '<>' filters */
    operator: "not in",
    value: {"FR", "DE", "AU", "GB"}
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5
  )
).data
```

**Expected result**

This query returns the following data. Notice that the primary key field from the AR Region record type (`countryRegionCode`) is returned by default. The primary key field from any queried record type will always be returned.

`[AR Order id=1, region=[AR Region id=4, countryRegionCode=US]];` `[AR Order id=4, region=[AR Region id=4, countryRegionCode=US]];` `[AR Order id=5, region=[AR Region id=4, countryRegionCode=US]];` `[AR Order id=13, region=[AR Region id=4, countryRegionCode=US]];` `[AR Order id=25, region=[AR Region id=4, countryRegionCode=US]];`

## Sort on multiple fields in a selection

**Goal**: Return the top five customers who purchased the widest variety of products and who spent the most overall.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: {
    recordType!AR Customer.fields.fullName,
    recordType!AR Customer.fields.uniqueNumberOfProducts,
    recordType!AR Customer.fields.sumOfSales
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5,
    sort: {
      a!sortInfo(
        field: recordType!AR Customer.fields.uniqueNumberOfProducts,
        ascending: false
      ),
      a!sortInfo(
        field: recordType!AR Customer.fields.sumOfSales,
        ascending: false
      )
    }
  )
).data
```

**Expected result**

This query returns the following data. The first sort on `uniqueNumberOfProducts` will serve as the initial sort, then those results will be sorted by the `sumOfSales`.

In these results, you can see that Klara Ifill, Rhys Molen, and Querida Hardcastle all purchased 12 unique products. Since these three customers have the same unique number of products, they are then sorted in descending order by the sum of sales.

`[AR Customer id=163, fullName=Archie Pellman, uniqueNumberOfProducts=13, sumOfSales=10718.39];` `[AR Customer id=272, fullName=Klara Ifill, uniqueNumberOfProducts=12, sumOfSales=23066.69];` `[AR Customer id=61, fullName=Rhys Molen, uniqueNumberOfProducts=12, sumOfSales=16733.02];` `[AR Customer id=244, fullName=Querida Hardcastle, uniqueNumberOfProducts=12, sumOfSales=13781.05];` `[AR Customer id=39, fullName=Hendrika Planke, uniqueNumberOfProducts=11, sumOfSales=27953.81]`

## Sort on multiple fields in an aggregation

**Goal**: Return the US territories that had the most online orders.

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
a!queryRecordType(
  recordType: recordType!AR Order,
  filters: a!queryFilter(
    field: recordType!AR Order.relationships.region.fields.countryRegionCode,
    operator: "=",
    value: "US"
  ),
  fields: a!aggregationFields(
    groupings: {
      a!grouping(
        field: recordType!AR Order.relationships.region.fields.territory,
        alias: "territory"
      )
    },
    measures: a!measure(
      field: recordType!AR Order.fields.onlineOrder,
      function: "COUNT",
      filters: a!queryFilter(
        field: recordType!AR Order.fields.onlineOrder,
        operator: "=",
        value: true
      ),
      alias: "onlineOrderCount"
    )
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5,
    sort: {
      a!sortInfo(
    /* Notice that the sort field references the alias from the measure parameter */
        field: "onlineOrderCount",
        ascending: false
        )
    }
  )
).data
```

**Expected result**

This query returns the following data:

`[territory:Southwest, onlineOrderCount:44546];` `[territory:Northwest, onlineOrderCount:32956];` `[territory:Southeast, onlineOrderCount:138];` `[territory:Northeast, onlineOrderCount:80];` `[territory:Central, onlineOrderCount:72]`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...