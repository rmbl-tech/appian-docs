---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_a_automationid.html
original_path: fnc_informational_a_automationid.html
version: "25.3"
title: "a!automationId Function"
page_id: "fnc_informational_a_automationid"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!automationId Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!automationId**( _automationTypes_ )

Returns the automation identifier for the automation type provided. Use this function to write the automation identifier for record events.

**See also**: [a!automationType()](fnc_informational_a_automationtype.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`automationTypes`

 |

_List of Text_

 |

The text or list of text to convert to an automation identifier. Valid values include: `"NONE"`, `"RPA"`, `"AI"`, `"INTEGRATION"`, `"OTHER"`. Use `"NONE"` to indicate the event was completed by a user.

 |

## Returns

List of Number (Integer)

## Usage considerations

Use `a!automationId()` to write the [automation identifier](record-events-automation.html) for the type of automation that completed an [event](record-events.html) in a [Write Records](Write_Records_Smart_Service.html) node.

If you use the guided experience in the **Setup** tab and choose an automation type from a dropdown, Appian will automatically write the identifier for the selected automation type.

If you use an expression to specify the automation type, write the automation identifier for the automation type you want to specify. You cannot write the automation type directly, like RPA or AI.

The following table lists the each automation type and its corresponding identifier:

| Automation Type | Identifier |
| --- | --- |
| `"NONE"` | 1 |
| `"RPA"` | 2 |
| `"AI"` | 3 |
| `"INTEGRATION"` | 4 |
| `"OTHER"` | 5 |

## Examples

### Retrieving an event automation type identifier

```
1
a!automationId("RPA")
```

Returns `{2}`.

### Conditionally writing an automation type

```
1
if(pv!isError, a!automationId("NONE"), a!automationId("RPA"))
```

Returns `{1}` if RPA failed to complete the event and a user completed the event instead. Otherwise, returns `{2}`. In this example, `pv!isError` is a process variable that tracks whether RPA successfully completed a task.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Incompatible |  |
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