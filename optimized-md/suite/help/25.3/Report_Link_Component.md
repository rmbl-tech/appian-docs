---
source_url: https://docs.appian.com/suite/help/25.3/Report_Link_Component.html
original_path: Report_Link_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Report Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!reportLink**( _label, report, showWhen, openLinkIn_ )

Defines a link to a report. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Report Type](Appian_Data_Types.html#report)
-   [Task Report Type](Appian_Data_Types.html#task-report)
-   [Link](Link_Component.html)
-   [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Report

 |

`report`

 |

_Report or Task Report_

 |

The linked report or task report.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the link is displayed in the component. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Open Link In

 |

`openLinkIn`

 |

_Text_

 |

(Browser-Only) Determines where the linked content should open. Valid values: `"SAME_TAB"` (default), `"NEW_TAB"`.

 |

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

**Note:**  Since report constants are specific to each system, this example does not evaluate in your interface. Use it only as a reference.

### Basic report link

```
1
2
3
4
5
6
7
8
a!linkField(
  links: {
    a!reportLink(
      label: "Department Summary",
      report: cons!DEPARTMENT_SUMMARY_REPORT
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