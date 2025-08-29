---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryaggregation.html
original_path: fnc_system_a_queryaggregation.html
version: "25.3"
title: "a!queryAggregation() Function"
page_id: "fnc_system_a_queryaggregation"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryAggregation() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryAggregation**( _aggregationColumns_ )

Creates an `Aggregation` object for use inside a `Query` object.

**See also:** [Aggregation](Appian_Data_Types.html#aggregation), [AggregationColumn](Appian_Data_Types.html#aggregationcolumn), [Query](Appian_Data_Types.html#query)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`aggregationColumns`

 |

_List of AggregationColumn_

 |

A list of AggregationColumns that indicate which fields to group or aggregate, created with [a!queryAggregationColumn](fnc_system_a_queryaggregationcolumn.html).

 |

## Returns

Aggregation

## Usage consideration

### Required parameter

The _aggregationColumns_ parameter is required.

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