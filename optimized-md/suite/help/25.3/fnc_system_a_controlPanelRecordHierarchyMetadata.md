---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_controlPanelRecordHierarchyMetadata.html
original_path: fnc_system_a_controlPanelRecordHierarchyMetadata.html
version: "25.3"
title: "a!controlPanelRecordHierarchyMetadata Function"
page_id: "fnc_system_a_controlPanelRecordHierarchyMetadata"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!controlPanelRecordHierarchyMetadata Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!applyValidations**( _controlPanel, recordUuid_ )

Returns relevant information for the specified category or type and its parent(s). This includes record fields and other information associated with the category or type, such as the display name, icon, and color.

This function can only be used to reference [control panel objects](control-panel-object.html) and the record types associated with them.

**See also:**

-   [a!controlPanelRecord](fnc_evaluation_a_controlPanelRecords.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`controlPanel`

 |

_Control panel object reference_

 |

A reference to a control panel object. The reference structure is: `controlPanel![control panel name]`.

 |
|

`recordUuid`

 |

_Text_

 |

The UUID of the individual record for the specified category or type. This is the value of the "uuid" field in the Hierarchy record type.

 |

## Returns

Record metadata

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