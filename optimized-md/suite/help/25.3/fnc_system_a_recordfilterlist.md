---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_recordfilterlist.html
original_path: fnc_system_a_recordfilterlist.html
version: "25.3"
title: "a!recordFilterList() Function"
page_id: "fnc_system_a_recordfilterlist"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordFilterList() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!recordFilterList**( _name, options, defaultOption, isVisible, allowMultipleSelections_ )

Creates a list user filter that can be used in a [record list](record-list.html) or [records-powered grid](Using_the_Records_Tab.html#read-only-grid).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The name of the user filter that displays to users.

 |
|

`options`

 |

_FacetOption Array_

 |

Array of filter options created with [a!recordFilterListOption()](fnc_system_a_recordfilterlistoption.html).

 |
|

`defaultOption`

 |

_Text_

 |

Determines which, if any, filter options are applied when a record list first loads. If _allowMultipleSelections_ is `false`, only one default option will be automatically applied.

 |
|

`isVisible`

 |

_Boolean_

 |

Determines whether the filter is visible to the user at runtime. Default is `true`.

 |
|

`allowMultipleSelections`

 |

_Boolean_

 |

Determines if the filter will allow the user to select a single option or multiple options. Default is `true`.

 |

## Returns

Facet

## Usage considerations

### Where to use this function

This function can only be used in a record type to create a [user filter](filter-the-record-list.html#user-filters).

### Create filter options

To create the options within `a!recordFilterList()`, use the [a!recordFilterListOption()](fnc_system_a_recordfilterlistoption.html) function.

Since users can [save filter values](filter-the-record-list.html#user-saved-filters), try to use expressions that rarely change the options available. If users save an option that is not available the next time they load the record, a warning message will display and the user may need to update their saved filter.

### Use the defaultOption parameter

The _defaultOption_ parameter allows developers to choose one or more filter options to apply when a record list first loads. The number of default options you can specify depends on the _allowMultipleSelections_ parameter.

By default, the _allowMultipleSelections_ is set to true, so you can apply one or more values in the _defaultOption_ parameter. However, if you change _allowMultipleSelections_ to false, then you can only apply one value in the _defaultOption_ parameter.

## Example

The following examples reference a Customer record type, which has a [many-to-one relationship](record-type-relationships.html) with the Region record type.

For additional examples, see [Expression user filter configuration](filter-the-record-list.html#expression-user-filter-configuration).

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### User filter for active or inactive customers

In this example, we're adding a "Status" user filter on the Customer record type, so users can filter by active or inactive customers.

By default, the user filter will have "Active" selected, so users only see active customers when the record list first loads.

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

### User filter for customer regions

In this example, we're adding a "Region" user filter on the Customer record type, so users can filter by customer regions in the United States.

By default, the user filter will have "North" and "East" selected, so users only see customers in the North and East regions on the United States when the record list first loads.

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
a!recordFilterList(
  name: "Region",
  options: a!localVariables(
    local!fieldValues: a!queryRecordType(
      recordType: recordType!Region,
      fields: recordType!Region.fields.name,
      pagingInfo: a!pagingInfo(
        1,
        5000
      )
    ).data,
    a!forEach(
      items: local!fieldValues,
      expression: a!recordFilterListOption(
        id: fv!index,
        name: fv!item[recordType!Region.fields.name],
        filter: a!queryFilter(
          field: recordType!Customer.fields.regionId,
          operator: "=",
          value: fv!item[recordType!Region.fields.id]
        )
      )
    )
  ),
  defaultOption: {"North", "East"},
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