---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryfilter.html
original_path: fnc_system_a_queryfilter.html
version: "25.3"
title: "a!queryFilter() Function"
page_id: "fnc_system_a_queryfilter"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryFilter() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryFilter**( _field, operator, value, applyWhen_ )

Creates a value of type `QueryFilter` for use with [a!pickerFieldRecords()](Record_Picker_Component.html), [a!queryRecordType()](fnc_system_queryrecordtype.html), [a!recordData()](fnc_system_recorddata.html), [a!relatedRecordData()](fnc_system_relatedrecorddata.html), [a!recordFilterListOption()](fnc_system_a_recordfilterlistoption.html), or [a!query()](fnc_system_a_query.html).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`field`

 |

_Any Type_

 |

The name of the field or relationship to be filtered. When filtering record data, use the `recordType!` domain to reference a record field, related record field, or record type relationship. For example, `recordType!Case.fields.caseName`. When filtering data from a data store entity, use the field name in quotations. For example, `"department"`.

 |
|

`operator`

 |

_Text_

 |

Filter operator to apply to the data. Valid values: `"="`, `"<>"`, `">"`, `">="`, `"<"`, `"<="`, `"between"`, `"in"`, `"not in"`, `"is null"`, `"not null"`, `"starts with"`, `"not starts with"`, `"ends with"`, `"not ends with"`, `"includes"`, `"not includes"`, `"search"`.

 |
|

`value`

 |

_Any Type_

 |

The value to compare to the given field using the given operator. Can be entered as an expression. Optional if the operator value is `"is null"` or `"not null"`. Filter is ignored if value is empty or null and operator is neither `"is null"` or `"not null"`.

 |
|

`applyWhen`

 |

_Boolean_

 |

Determines whether the filter is applied on the query. When set to false, the filter is not evaluated. Default: true.

 |

## Returns

[QueryFilter](Appian_Data_Types.html#queryfilter)

## Usage considerations

### Filter record data

You can filter record data in:

-   [Records-powered charts](#filter-record-data-in-a-chart-or-grid)
-   [Records-powered grids](#filter-record-data-in-a-chart-or-grid)
-   [User filters](fnc_system_a_recordfilterlistoption.html)
-   [a!queryRecordType()](#filter-record-data-in-a-query)
-   [a!measure()](#measure)

#### Filter record data in a chart or grid

When applying a filter to a records-powered chart or grid, you must reference record fields or related record fields from the record type specified in [a!recordData()](fnc_system_recorddata.html).

For example, lets say you want to create a pie chart to show the number of employees per department, and you want to filter by employee status. Since `a!recordData()` references the Employee record type in the _recordType_ parameter, the filter must reference a field starting from `recordType!Employee`.

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
{
  a!pieChartField(
    data: a!recordData(
!     recordType: recordType!Employee,
      filters: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
!           field: recordType!Employee.relationships.employeeStatus.fields.isActive,
            operator: "=",
            value: true
          )
        },
        ignoreFiltersWithEmptyValues: true
      )
    ...
```

#### Filter record data in a query

When applying a filter to a query, you must reference record fields or related record fields from the _recordType_ parameter of the [a!queryRecordType()](fnc_system_queryrecordtype.html) function.

For example, if you're querying data from the Employee record type, your filter must reference a field starting from `recordType!Employee`.

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
a!queryRecordType(
! recordType: recordType!Employee,
  fields: {
     recordType!Employee.fields.fullName,
     recordType!Employee.fields.username,
     recordType!Employee.fields.officeNumber
  },
  filters: a!queryFilter(
!   field: recordType!Employee.fields.isRemote,
    operator: "=",
    value: false
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1, batchSize: 400
  )
).data
```

#### Use the search operator with a!queryRecordType()

The `search` operator is a specialized operator designed to work exclusively with the [a!queryRecordType()](fnc_system_queryrecordtype.html) function and the [a!gridField](Paging_Grid_Component.html) component. It enables a [smart search](records-smart-search.html) of record data by using AI to understand your intent, rather than requiring an exact text match. The search operator is not compatible with other functions or operators outside `a!queryRecordType()` and `a!gridField()`.

Here is an example expression with the search operator:

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
a!queryRecordType(
 recordType: recordType!Case,
 fields: recordType!Case.fields.description,
 filters: {
   a!queryFilter(
    field: recordType!Case.fields.description,
+    operator: "search",
+    value: "power outage"
   ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100)
}
```

#### Filter record data in a!measure

When your record type has [data sync](about-data-sync.html) enabled, you can add filters to the [a!measure()](Measure_Component.html) function to determine which values are calculated.

You can filter on a record field or a related record field, and the field reference must start from the aggregated record type.

For example, you have a Customer record type that has a relationship with the Order record type. In a report, you want to calculate the number of orders for each customer that include the order item "Printer". Since you're aggregating on the Order record type, the field reference in the filter must start from `recordType!Order`.

The `a!measure()` function would look something like this:

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
  a!measure(
    function: "COUNT",
!   field: recordType!Customer.relationships.orders.fields.id,
    alias: "count_of_id",
    /* Since the Order record type is the related record type used in the field parameter,
    we'll use that record type reference in the filter.*/
    filters: {
      a!queryFilter(
!     field: recordType!Order.relationships.orderItem.fields.itemName,
      operator: "=",
      value: "Printer"
        )
      }
    )
```

#### Case sensitivity on record types with data sync enabled

If you are querying a record type with [data sync](about-data-sync.html) enabled—whether it's in an `a!queryRecordType` expression, records-powered chart, or records-powered grid—note that filter values are case sensitive when using the `=` or `<>` operators.

For example, if you only want to return cases that have a status of "Open", your filter value must also be capitalized. If you set the filter value to "open" (lowercase), the filter will not return the expected results.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: recordType!Case.fields.title,
  filters: a!queryFilter(
    field: recordType!Case.relationships.status.fields.value,
    operator: "=",
    value: "Open"
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 500)
)
```

All other operators, like `in`, `starts with`, and `not in` are not case sensitive.

### "At least one" filter behavior

When you filter by a related record field from a one-to-many relationship (i.e., the "many" side of the relationship), the filter will return all records from the base record type (the "one" side of the relationship) that have _at least one_ related record that meets the filter condition.

For example, let's say you have the Order record type and the Order Item record type, and you want to know the number of orders that have at least one order item purchased with a promo code.

Since there is a one-to-many relationship between Order and Order Item (one order can have many items purchased with or without a promo code), you can create a query to count all orders that have at least one order item has `appliedPromoCode = true`.

The expression would look something like this:

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
a!queryRecordType(
  recordType: recordType!Order,
  fields: a!aggregationFields(
    groupings: a!grouping(
      field: recordType!Order.fields.orderDate,
      interval: "YEAR",
      alias: "orderDate"
    ),
    measures: a!measure(
      field: recordType!Order.fields.orderId,
      function: "COUNT",
      alias: "ordersWithPromos",
	/* Only count orders that have at least one item
  purchased with a promo code */
     filters: a!queryFilter(
       field: recordType!Order.relationships.orderItems.fields.appliedPromoCode,
       operator: "=",
       value: true
     )
    )
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1, batchSize: 100
  )
).data
```

This "at least one" behavior applies when there is a one-to-many relationship in the path between where you are **selecting data** or **aggregating data**, and where you are **filtering**.

In this example, we are aggregating on the Order record type, and filtering on the Order Item record type (`Order ---< Order Item`), which is why we observe the "at least one" behavior.

Now, let's say we change our example so promo codes are stored in the Promo Code record type, which has a many-to-one relationship with the Order Items record type (`Order Item >--- Promo Code`).

If you change the above expression to filter on the Promo Code record type, you would still observe the "at least one" behavior because there is a one-to-many relationship in the path between Orders (where you are aggregating) and Promo Codes (where you are filtering). The path looks like this `Orders ---< Order Item >--- Promo Code`.

The expression would look something like this:

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
a!queryRecordType(
  recordType: recordType!Order,
  fields: a!aggregationFields(
    groupings: a!grouping(
      field: recordType!Order.fields.orderDate,
      interval: "YEAR",
      alias: "orderDate"
    ),
    measures: a!measure(
      field: recordType!Order.fields.orderId,
      function: "COUNT",
      alias: "ordersWithPromos",
	/* Only count orders that have at least one item
  purchased with a promo code */
     filters: a!queryFilter(
       field: recordType!Order.relationships.orderItems.relationships.promoCodes.fields.codeName,
       operator: "<>"
       value: "No Promo Code"
     )
    )
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1, batchSize: 100
  )
).data
```

See [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html#prodlink-operators) to learn how to filter by multiple fields from the same one-to-many relationship using the `"AND_ALL"` operator. This is the recommended operator to use when filtering by fields from the same one-to-many relationship.

### Filter related record data returned from a one-to-many relationship

When a query or grid returns data from a one-to-many relationship, up to 10 related records will be returned. You can filter the related records returned from a one-to-many relationship using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

See [Filtering and sorting the related record set](fnc_system_relatedrecorddata.html#filtering-and-sorting-the-related-record-set) for more information.

### Using a relationship reference in the field parameter

You can use a [record type relationship](reference-records.html#reference-a-relationship) reference in the _field_ parameter when the _operator_ is set to `"is null"` or `"not null"`. This allows you to only return records that do or do not have any related records.

For example, the following query will only return employees that are assigned to a team.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: recordType!Case.fields.description,
  filters: {
    a!queryFilter(
      field: recordType!Case.fields.description,
      operator: "search",
      value: "power outage"
    )
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100
  ),
  initialSorts: {
    a!sortInfo(
      field: 'recordType!Case.allSearchFields.similarityScore',
      ascending: false()
    ),
    a!sortInfo(
      field: 'recordType!Case.fields.id',
      ascending: true()
    )
  },
  /* Filters out smart search matches under this threshold */
  similarityScoreThreshold: 0.03
)
```

**Note:**  You can only use a relationship reference to filter your data when configure the filter in expression mode. You cannot filter by a relationship reference in the [query editor](query-editor.html), or in design mode from any records-powered component.

### Using the operator parameter

The following tables explains the behavior of each available operator:

| Operator | Description |
| --- | --- |
| `=` | Equal to |
| `<>` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal |
| `>=` | Greater than or equal |
| `in` | Matches a value in a list of values |
| `not in` | Does not match a value in a list of values |
| `starts with` | Begins with |
| `not starts with` | Does not begin with |
| `ends with` | Ends with |
| `not ends with` | Does not end with |
| `includes` | Includes the specified character(s) |
| `not includes` | Does not include the specified character(s) |
| `is null` | Is null |
| `not null` | Is not null |
| `between` | Is greater than or equal to a minimum value and less than or equal to a maximum value. This operatore requires two values. |
| `search` | Finds records by matching text across [searchable fields](records-smart-search.html). Works with [a!queryRecordType()](fnc_system_queryrecordtype.html). |

**Tip:**  Some databases can store _empty_ text values as either _null_ or as a _zero-length string_ (usually described as ""). When querying against the Cloud Database using the `is null` operator on a text field, the result set will only return results that are explicitly set to _null_. In contrast, other databases may treat these _zero-length strings_ as equivalent to _null_ and thus return results for both _null_ and _empty_ values.

Appian expressions do not distinguish between _null_ and _empty_ regardless of the underlying database. This means that when data is synced from a text field, values that were _null_ or _empty_ are both stored as _null_ in the synced record type. So when you're querying data from a synced record type, the `is null` operator will return values that were both _null_ and _empty_ in the database.

The following table shows which operators can be applied to each data type.

| Data Type | Valid Operators |
| --- | --- |
| Text | `=`, `<>`, `in`, `not in`, `starts with`, `not starts with`, `ends with`, `not ends with`, `includes`, `not includes`, `is null`, `not null`, `search` |
| Integer, Float, Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Date, Date and Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Boolean | `=`, `<>`, `in`, `not in`, `is null`, `not null` |

## Examples

The following examples illustrate how to filter data in `a!queryRecordType()` for a sample Case record type.

See [Recipes for Querying Records](Query_Recipes.html) for more examples filtering data from a record type or from a data store entity.

_Record type references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Return cases created this year

The following query returns all cases created at the beginning of the year until today's date.

For example, if today's date was March 24, 2020, then the query would return all cases created on January 1, 2020 until March 24, 2020.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: {
    recordType!Case.fields.title,
    recordType!Case.fields.assignedEngineer,
    recordType!Case.relationships.priority.fields.value
  },
  filters:
    a!queryFilter(
      field: recordType!Case.fields.createdOn,
      operator: "between",
      /* Year to Date */
      value: { date(year(today()), 1, 1), today() }
      ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
).data
```

**Tip:**  If you use the [query editor](using-the-query-editor.html) to create your query, you can select from a list of Date Presets to easily choose the time frame you want to filter by.

### Return cases for customers in the Retail and Real Estate industries

The following query returns all cases for customers who are in either the Retail or Real Estate industry.

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
  recordType: recordType!Case,
  fields: {
    recordType!Case.fields.title,
    recordType!Case.fields.assignedEngineer,
    recordType!Case.relationships.priority.fields.value
  },
  filters: a!queryFilter(
    field: recordType!Case.relationships.customer.relationships.industry.fields.label,
    operator: "in",
    value: { "Retail", "Real Estate" }
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
).data
```

The `in` operator allows you to provide an array of values, so only records that match one of the provided values are returned. This operator looks for exact matches only. This is different from the `includes` operator, which does not accept an array of values, and will return any records that contain any portion of the provided value.

For example, the following query would return any cases for customers who have an `R` in the industry name.

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
  recordType: recordType!Case,
  fields: {
    recordType!Case.fields.title,
    recordType!Case.fields.assignedEngineer,
    recordType!Case.relationships.priority.fields.value
  },
  filters: a!queryFilter(
        field: recordType!Case.relationships.customer.relationships.industry.fields.label,
        operator: "includes",
        value: "R"
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
).data
```

This means that if there are four types of industries: Retail, Real Estate, Healthcare, and Hotels, the query would only return cases for customers in the Retail, Real Estate, and Healthcare industries since they all contain the letter R.

### Return all open and in progress cases

The following query returns all cases that have a status of "Open" or "In progress". Since there are three total status: Open, In Progress, or Closed, you can use the `<>` operator to return any cases that do not equal "Closed".

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
  recordType: recordType!Case,
  fields: {
    recordType!Case.fields.title,
    recordType!Case.fields.assignedEngineer,
    recordType!Case.relationships.priority.fields.value
  },
  filters: a!queryFilter(
    field: recordType!Case.relationships.status.fields.value,
    operator: "<>",
    value: "Closed"
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
).data
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Partially compatible |
Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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