---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_getDataSourceForPlugin.html
original_path: fnc_system_a_getDataSourceForPlugin.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!getDataSourceForPlugin() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!getDataSourceForPlugin**( _dataSourceConnectedSystem_ )

Provides capability for plug-ins to connect to [Data Source Connected Systems](data-source-connected-systems.html) and apply corresponding role map security configurations.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`dataSourceConnectedSystem`

 |

_Any Type_

 |

Constant that references a Data Source Connected System value.

 |

## Returns

Text

## Usage Considerations

The user must have at least **Viewer** permission to the Data Source Connected System in order to call the function.

[Review security role map permissions](Connected_System_Object.html) for a Data Source Connected System.

## Example

Invoking `a!getDataSourceForPlugin` within `executestoredprocedure` plug-in function.

```
1
2
3
4
5
6
7
8
9
10
executestoredprocedure(
  dataSourceName: a!getDataSourceForPlugin(cons!APP_DATA_SOURCE_POINTER),
  procedureName: "spRetrieveData",
  inputs: {
    a!storedProcedureInput(
      name: "input",
      value: 0
    )
  }
)
```

**See also:** [Data Source Connected Systems](data-source-connected-systems.html)

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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