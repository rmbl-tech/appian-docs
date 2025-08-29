---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_storedprocedureinput.html
original_path: fnc_system_a_storedprocedureinput.html
version: "25.3"
title: "a!storedProcedureInput() Function"
page_id: "fnc_system_a_storedprocedureinput"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!storedProcedureInput() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!storedProcedureInput**( _name, value_ )

Creates an input to be passed to the `a!executeStoredProcedureOnSave` or `a!executeStoredProcedureForQuery` functions.

**See also:** [a!executeStoredProcedureOnSave()](Execute_Stored_Procedure_Smart_Service.html#a!executestoredprocedureonsave\(\)), [a!executeStoredProcedureForQuery()](fnc_system_a_executestoredprocedureforquery.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

Name of the input to the stored procedure.

 |
|

`value`

 |

_Any Type_

 |

Value of the input to be passed to the stored procedure.

 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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