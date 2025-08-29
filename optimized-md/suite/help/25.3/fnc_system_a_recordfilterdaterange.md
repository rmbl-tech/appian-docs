---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_recordfilterdaterange.html
original_path: fnc_system_a_recordfilterdaterange.html
version: "25.3"
title: "a!recordFilterDateRange() Function"
page_id: "fnc_system_a_recordfilterdaterange"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordFilterDateRange() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!recordFilterDateRange**( _name, field, isVisible, defaultFrom, defaultTo_ )

Creates a user filter for a record list.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

Name of the date range user filter.

 |
|

`field`

 |

_Record Field_

 |

The record field or related record field the filter will apply to.

 |
|

`isVisible`

 |

_Boolean_

 |

Determines whether the filter is visible to the user. Default is `true`.

 |
|

`defaultFrom`

 |

_Date_

 |

Determines the default start date, if any, for the date range filter.

 |
|

`defaultTo`

 |

_Date_

 |

Determines the default end date, if any, for the date range filter.

 |

## Returns

Facet

## Usage considerations

This function creates a [Facet type object](Appian_Data_Types.html#facet), and is used within a [Record Type Object](Record_Type_Object.html) for creating and configuring date range user filters.

## Example

```
1
2
3
4
5
6
7
=a!recordFilterDateRange(
   name: "Hire Date",
   field: recordType!Employee.fields.hireDate,
   defaultFrom: "today()",
   defaultTo: "today() + 365",
   isVisible: true
)
```

See [more examples](filter-the-record-list.html#expression-user-filter-configuration).

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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!recordFilterDateRange\_20r2](/suite/help/25.3/fnc_system_a_recordfilterdaterange_20r2.html) |
Supports updated record types that use record type field references.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...