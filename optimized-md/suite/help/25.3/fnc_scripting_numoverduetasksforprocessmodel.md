---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_numoverduetasksforprocessmodel.html
original_path: fnc_scripting_numoverduetasksforprocessmodel.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# numoverduetasksforprocessmodel() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**numoverduetasksforprocessmodel**( _processModelId, includeSubProcessData_ )

Returns the number of tasks in both active and completed process instances of the specified process model, which are currently overdue (if the task is still active) or were completed past their deadline.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`processModelId`

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

Controls whether data from subprocesses are included in the count.

 |

## Returns

Integer

## Usage considerations

The current user must hold at least viewer rights for the specified process model, in order to execute this function.

Deleted and archived process instances are not counted.

If you do not provide a value for the _includeSubProcessData_ parameter, the default value is taken from the current context or set to `false` if no subprocesses available.

For example, if the function is used on a Web Content with Process Details Channel and the channel's context includes subprocesses, these subprocesses are included by default.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`numoverduetasksforprocessmodel(processModelId)` returns `10`

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