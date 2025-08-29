---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryselection.html
original_path: fnc_system_a_queryselection.html
version: "25.3"
title: "a!querySelection() Function"
page_id: "fnc_system_a_queryselection"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!querySelection() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!querySelection**( _columns_ )

Returns a `Selection` object for use inside a `Query` object.

**See also:** [Column](Appian_Data_Types.html#column), [Query](Appian_Data_Types.html#query), [Selection](Appian_Data_Types.html#selection)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`columns`

 |

_List of Column_

 |

A list of Columns that indicate which fields to retrieve, created with [a!queryColumn()](fnc_system_a_querycolumn.html).

 |

## Returns

Selection

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