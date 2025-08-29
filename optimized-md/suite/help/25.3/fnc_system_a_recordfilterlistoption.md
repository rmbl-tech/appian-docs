---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_recordfilterlistoption.html
original_path: fnc_system_a_recordfilterlistoption.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordFilterListOption() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!recordFilterListOption**( _id, name, filter, dataCount_ )

Creates a filter option for the [a!recordFilterList()](fnc_system_a_recordfilterlist.html) function.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`id`

 |

_Integer_

 |

The unique identifier for the filter option. This must be unique across other filter options within the same user filter.

 |
|

`name`

 |

_Text_

 |

The name of the filter option that is displayed to users.

 |
|

`filter`

 |

_QueryFilter_

 |

Filter to apply when the filter option is selected, created with [a!queryFilter()](fnc_system_a_queryfilter.html).

 |
|

`dataCount`

 |

_Integer_

 |

An optional value that defines how many items in the data set will be selected if this filter option is selected.

 |

## Returns

FacetOption

## Usage considerations

This function, when used within the _options_ parameter in the [a!recordFilterList()](fnc_system_a_recordfilterlist.html) function, creates a user filter option.

## Example

The following example creates a new "Status" user filter on a Customer record type. By default, the user filter will have "Active" selected, so users only see active customers when the record list first loads.

For additional examples, see [Expression user filter configuration](filter-the-record-list.html#expression-user-filter-configuration).

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

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
=a!recordFilterList(
  name: "Status",
  options: {
    a!recordFilterListOption(
      id: 1,
      name: "Active",
      filter: a!queryFilter(
        field: recordType!Customer.fields.status,
        operator: "=",
        value: true
      )
    ),
    a!recordFilterListOption(
      id: 2,
      name: "Inactive",
      filter: a!queryFilter(
        field: recordType!Customer.fields.status,
        operator: "=",
        value: false
      )
    )
  },
  defaultOption: "Active",
  isVisible: true,
  allowMultipleSelections: true
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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