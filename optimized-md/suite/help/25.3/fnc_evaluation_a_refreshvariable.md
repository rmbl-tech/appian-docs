---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_a_refreshvariable.html
original_path: fnc_evaluation_a_refreshvariable.html
version: "25.3"
title: "a!refreshVariable() Function"
page_id: "fnc_evaluation_a_refreshvariable"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!refreshVariable() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use the Refresh Variable Function

This video from [Academy Online](https://academy.appian.com/) explains how to use the refresh variable function.

## Function

**a!refreshVariable**( _value, refreshAlways, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, refreshAfter_ )

The configuration for a specific local variable for use within a!localVariables(). When used within an interface, the value of the variable can be refreshed under a variety of conditions. When used outside of an interface, all refresh properties are ignored.

**See also**: [a!localVariables()](Local_Variables.html#refresh-after)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value of the local variable when it is created and what the variable is set to each time it is refreshed in an interface.

 |
|

`refreshAlways`

 |

_Boolean_

 |

When `true`, the value of this local variable will be refreshed after each user interaction and each interval refresh. Because the variable is continually refreshed, you cannot update its value by saving into it. Default is `false`.

 |
|

`refreshInterval`

 |

_Number (Decimal)_

 |

How often the variable value gets refreshed in minutes. When null, the variable will not be refreshed on an interval. Because the variable is periodically refreshed, you cannot update its value by saving into it. Valid values include 0.5, 1, 2, 3, 4, 5, 10, 30, 60.

 |
|

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When `true`, the value of this local variable will be refreshed each time the value of any variable it references within the value parameter is updated. To refresh the local variable when another variable that is not used within value changes, use refreshOnVarChange. Default is `true`.

 |
|

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes the value of the local variable each time any of these specific variables change. This allows you to refresh the value when a variable that is not referenced within the value parameter is updated.

 |
|

`refreshAfter`

 |

_List of Text String_

 |

Refreshes the value of the local variable after a record action, such as a related action or a record list action configured within a [record type](Record_Type_Object.html), completes from a dialog window within the [Record Action Component](Record_Action_Component.html). Instead of requiring the entire page to reload, this parameter allows you to refresh a local variable value on an interface after a record action completes. Valid values include `RECORD_ACTION`.

 |

## Returns

Any Type

## Usage considerations

You can define `refreshOnVarChange` either using a single variable (e.g. `refreshOnVarChange: local!var1`) or a list of variables (e.g. `refreshOnVarChange: {local!var1, local!var2}`).

For more information about how to use `a!localVariables` and `a!refreshVariable`, including detailed examples, see [Local Variables](Local_Variables.html) and [Record Action Component](Record_Action_Component.html). The [Configuring Refresh Behavior](Local_Variables.html#configuring-refresh-behavior) section contains specific information about the different parameters of `a!refreshVariable` and how to use them.

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