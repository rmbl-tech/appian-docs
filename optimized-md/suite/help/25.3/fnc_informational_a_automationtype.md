---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_a_automationtype.html
original_path: fnc_informational_a_automationtype.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!automationType Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!automationType**( _automationIds_ )

Returns the automation type for the automation identifier provided, translated according to the user’s language preferences.

**See also**: [a!automationId()](fnc_informational_a_automationid.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`automationIds`

 |

_List of Number (Integer)_

 |

The number (integer) or list of number (integer) to convert to an automation type. Valid values include: `1`, `2`, `3`, `4`, `5`.

 |

## Returns

List of Text

## Usage considerations

Use `a!automationType()` to display the automation type for the given automation identifier. The automation type represents the automation that completed a [record event](record-events.html).

You can use `a!automationType()` wherever you want to display the name for the automation type, like a [chart](SAIL_Components.html#charts) or the _details_ parameter of the [event history list component](Event_History_List_Component.html#display-automation-types). The automation type is automatically translated according to the user's language preferences.

The following table lists the each automation type and its corresponding identifier:

| Automation Type | Identifier |
| --- | --- |
| `"NONE"` | 1 |
| `"RPA"` | 2 |
| `"AI"` | 3 |
| `"INTEGRATION"` | 4 |
| `"OTHER"` | 5 |

## Examples

### Retrieving an event automation type

```
1
a!automationType(1)
```

Returns `{"None (User)"}`.

### Displaying automation types in an event history list

You could use the following expression in the _details_ parameter of the [a!eventData()](Event_Data_Component.html) function to display the automation type that completed an an order.

```
1
2
3
4
5
if(
  isNullOrEmpty(recordType!Order Event History.fields.user),
  a!automationType(recordType!Order Event History.fields.automationId) & " completed this order."
  {}
)
```

If the event was completed by robotic process automation, for example, this returns `RPA completed this order.`

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