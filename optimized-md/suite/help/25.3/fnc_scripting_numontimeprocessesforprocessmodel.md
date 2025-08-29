---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_numontimeprocessesforprocessmodel.html
original_path: fnc_scripting_numontimeprocessesforprocessmodel.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# numontimeprocessesforprocessmodel() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**numontimeprocessesforprocessmodel**( _processModelId, includeSubProcessData_ )

This function eturns the number of active and completed processes of the specified process model that are on time (not past the deadline).

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

For active processes, the processes whose deadlines have not yet passed are counted.

For completed processes, the processes that were completed within their deadline are counted.

Processes with no deadline are also counted.

The current user must hold at least viewer rights for the specified process model, in order to execute this function.

Deleted and archived process instances are not counted.

If you do not provide a value for the _includeSubProcessData_ parameter, the default value is taken from the current context or set to `false` if no subprocesses available.

For example, if the function is used on a Web Content with Process Details Channel and the channel's context includes subprocesses, these subprocesses are included by default.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`numontimeprocessesforprocessmodel(processModelId,true)` returns `38`

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