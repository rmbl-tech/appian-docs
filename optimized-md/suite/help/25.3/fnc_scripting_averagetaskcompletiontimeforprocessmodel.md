---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_averagetaskcompletiontimeforprocessmodel.html
original_path: fnc_scripting_averagetaskcompletiontimeforprocessmodel.html
version: "25.3"
title: "averagetaskcompletiontimeforprocessmodel() Function"
page_id: "fnc_scripting_averagetaskcompletiontimeforprocessmodel"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# averagetaskcompletiontimeforprocessmodel() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**averagetaskcompletiontimeforprocessmodel**( _Id, includeSubProcessData_ )

Returns the average elapsed time in days between task assignment and task completion for all assigned, accepted, and completed tasks in all processes started from a given process model.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`Id`

 |

_Integer_

 |

The Id number of the process model.

 |
|

`includeSubProcessData`

 |

_Boolean_

 |

Controls whether data from subprocesses are included in the completion time averages.

 |

## Returns

Decimal

## Usage considerations

Archived and deleted processes are not included.

The current user must hold viewer rights or higher authority for the specified process model, in order to execute this function.

If you do not provide a value for the _includeSubProcessData_ parameter, the default value is taken from the current context or set to `false` if no subprocesses available.

-   For example, if the function is used on a Web Content with Process Details Channel and the channel's context includes subprocesses, these subprocesses are included by default.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`averagetaskcompletiontimeforprocessmodel(4)` returns `0.6979317434217448`

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
| Process Autoscaling | Partially compatible |

This function only returns data when the process model does not have [autoscale](autoscale-processes.html) enabled.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...