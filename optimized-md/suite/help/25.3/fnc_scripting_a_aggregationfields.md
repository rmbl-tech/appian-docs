---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_a_aggregationfields.html
original_path: fnc_scripting_a_aggregationfields.html
version: "25.3"
title: "a!aggregationFields() Function"
page_id: "fnc_scripting_a_aggregationfields"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!aggregationFields() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!aggregationFields**( _groupings, measures_ )

Used to define a query against record data that performs an aggregation in [a!queryRecordType()](fnc_system_queryrecordtype.html). Uses [a!grouping()](Grouping_Component.html) and [a!measure()](Measure_Component.html) to define aggregate fields.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`groupings`

 |

_Any Type_

 |

Fields to group by using a list of `a!grouping()`.

 |
|

`measures`

 |

_Any Type_

 |

Calculations to perform using a list of `a!measure()`.

 |

## Returns

Aggregation Fields

## Usage considerations

### Supported use case

This configuration should always be used within the _fields_ parameter of `a!queryRecordType()` to define the fields returned when aggregating data.

### Using the grouping and measure parameters

-   [a!grouping()](Grouping_Component.html) and [a!measure()](Measure_Component.html) must be used to define the groupings and calculations.
-   You can provide both groupings and measures, or you can choose to include only measures or groupings.
-   For each grouping or measure provided, the alias is required.

## Examples

This expression uses the record type **Cases** for the purpose of illustration only. If you copy and paste the expression below into an expression, it will not evaluate in your interface. Use it as a reference only. This is an example of using **one** grouping and **one** measure to return the total number of cases for each month.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: a!aggregationFields(
    groupings: {
      a!grouping(
        field: recordType!Case.fields.dateSubmitted,
        interval: "MONTH",
        alias: "month_submitted"
    )
   },
    measures: {
      a!measure(
      field: recordType!Case.fields.id,
      function: "COUNT",
      alias: "count_id"
    )
   }
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5000)
```

This expression uses the record type **Cases** for the purpose of illustration only. If you copy and paste the expression below into an expression, it will not evaluate in your interface. Use it as a reference only. This is an example of using **no** groupings and **one** measure to return the total number of cases.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: a!aggregationFields(
    measures: {
      a!measure(
        field: recordType!Case.fields.id,
        function: "COUNT",
        alias: "count_id"
    )
   }
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5000)
```

This expression uses the record type **Cases** for the purpose of illustration only. If you copy and paste the expression below into an expression, it will not evaluate in your interface. Use it as a reference only. This is an example of using **one** grouping and **no** measures to return the distinct status values for each case.

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: a!aggregationFields(
    groupings: {
      a!grouping(
        field: recordType!Case.fields.status,
        alias: "case_status"
    )
   }
  ),
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5000)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
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