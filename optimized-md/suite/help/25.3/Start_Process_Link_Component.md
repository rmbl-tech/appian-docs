---
source_url: https://docs.appian.com/suite/help/25.3/Start_Process_Link_Component.html
original_path: Start_Process_Link_Component.html
version: "25.3"
title: "Start Process Link"
page_id: "Start_Process_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Process Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!startProcessLink**( _label, processModel, processParameters, bannerMessage, showWhen_ )

Defines a link to start a process and navigates the user through any initial chained forms. Users are shown the start form or first chained attended node and any subsequent chained forms. When the user submits the last form, the chain completes and the original interface is reloaded. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Starting Processes From an Interface](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-an-interface)
-   [Process Model Type](Appian_Data_Types.html#process-model)
-   [Link](Link_Component.html), [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text associated with this link.

 |
|

Process Model

 |

`processModel`

 |

_[Process Model](Appian_Data_Types.html#process-model)_

 |

The process model to start. You must provide a constant referencing the process model or a process model UUID.

 |
|

Process Parameters

 |

`processParameters`

 |

_Dictionary_

 |

A dictionary containing the parameters for the process model and their values.

 |
|

Banner Message

 |

`bannerMessage`

 |

_Text_

 |

The text shown in the banner when a process starts successfully after completing any initial chained forms. When not provided, no banner is displayed.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the link is displayed in the component. When set to false, the link is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Using start process links offline

Start process links will not function on the mobile application on a form that is configured to be [available offline](offline-mobile-overview.html).

### Starting autoscaled processes

You can select a process model with autoscale enabled, but any process started with the link will run without autoscaling regardless of its configuration. To monitor any processes started with the link, use the [Process Activity tab](monitoring_view.html#process-activity) in the Monitor view.

## Examples

_Since process model constants are specific to each system, this example does not evaluate in your Test Rules interface. Use it only as a reference._

### Start process link that passes parameter data to the process model

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
11
12
a!linkField(
  links: {
    a!startProcessLink(
      label: "Update Customer Details",
      processModel: cons!UPDATE_CUSTOMER_DETAILS_PM,
      processParameters: {
        customerId: ri!customer.id
      },
      bannerMessage: "Updated details for " & ri!customer.name
    )
  }
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

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
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...