---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_a_controlPanelRecords.html
original_path: fnc_evaluation_a_controlPanelRecords.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!controlPanelRecords Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!controlPanelRecords**( _controlPanel, record_ )

Function that either creates a map or returns the data for an individual record in the base record type for a control panel.

This function can only be used to reference [control panel objects](control-panel-object.html) and the base record type associated with them.

**See also:**

-   [a!controlPanelRecordMetadata](fnc_system_a_controlPanelRecordHierarchyMetadata.html)

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

`record`

 |

_Any Type_

 |

An individual record in the base record type for the control panel.

 |

## Returns

Record data or creates a shell for a new record that you submit data to create a new record.

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