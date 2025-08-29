---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_doesUserHaveAccess.html
original_path: fnc_system_doesUserHaveAccess.html
version: "25.3"
title: "a!doesUserHaveAccess() Function"
page_id: "fnc_system_doesUserHaveAccess"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!doesUserHaveAccess() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!doesUserHaveAccess**( _fields_ )

Determines whether the logged in user has access to view a field based on the [field-level security](field-level-security.html) configured on the record type.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`fields`

 |

_Any Type_

 |

A reference to one or more record fields. You must reference a record field from the `recordType!` domain. For example, `recordType!Employee.fields.birthDate`.

 |

## Returns

Boolean

## Usage considerations

In an interface component, like a read-only grid or a KPI, a field will display null values when a user does not have access to a field based on its [field-level security](field-level-security.html).

You can use `a!doesUserHaveAccess()` in the _showWhen_ parameter of an interface component to automatically hide the component when the logged in user does not have access to a field.

## Example

_Record type references are specific to each environment. If you copy and paste the example with record field references into your interface, it will not evaluate. Use that example as a reference only._

### Hide grid columns from users without access

In this example, the Customer record type has field-level security configured on the `ytdPayment` field, so only users in the Account Executives group can view customer's year-to-date payments.

This expression uses the `a!doesUserHaveAccess()` function in the _showWhen_ parameter of a read-only grid column to automatically hide the column from users who do not have access to the `ytdPayment` field.

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
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
{
  a!gridField(
    label: "Customers",
    labelPosition: "ABOVE",
    data: recordType!Customer,
    columns: {
      a!gridColumn(
        label: "Name",
        sortField: recordType!Customer.fields.displayName,
        value: a!linkField(
          links: {
            a!recordLink(
              label: fv!row[recordType!Customer.fields.displayName],
              recordType: {
                recordType!Customer
              },
              identifier: fv!row[recordType!Customer.fields.id]
            )
          }
        )
      ),
      a!gridColumn(
        label: "Active",
        sortField: recordType!Customer.fields.isActive,
        value: if(
          fv!row[recordType!Customer.fields.isActive],
          "Active",
          "Inactive"
        )
      ),
      a!gridColumn(
        label: "YTD Payment",
        sortField: recordType!Customer.fields.ytdPayment,
        value: recordType!Customer.fields.ytdPayment,
        align: "END",
+       showWhen: a!doesUserHaveFieldAccess(
+         fields: recordType!Customer.fields.ytdPayment
+       )
      ),
      a!gridColumn(
        label: "# Payments",
        sortField: recordType!Customer.fields.paymentCount,
        value: fv!row[recordType!Customer.fields.paymentCount],
        align: "END"
      ),
      a!gridColumn(
        label: "Customer Since",
        sortField: recordType!Customer.fields.customerSince,
        value: if(
          isnull(
            fv!row[recordType!Customer.fields.customerSince]
          ),
          fv!row[recordType!Customer.fields.customerSince],
          datetext(
            fv!row[recordType!Customer.fields.customerSince],
            "default"
          )
        ),
        align: "END"
      )
    },
    refreshAfter: "RECORD_ACTION",
    showSearchBox: true,
    showRefreshButton: true,
    recordActions: {
      a!recordActionItem(
        action: recordType!Customer.actions.newCustomer
      )
    }
  )
}
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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