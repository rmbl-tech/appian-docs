---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_a_urlfortask.html
original_path: fnc_scripting_a_urlfortask.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!urlfortask() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!urlForTask**( _taskIds, returnTaskPathOnly_ )

This function returns the URL of a process task given the task ID.

**See also**: [Process Task Link](Process_Task_Link_Component.html): Use this component to within a [Link Field](Link_Component.html) to create a link to a process task.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`taskIds`

 |

_List of Number (Integer)_

 |

Task IDs of process tasks to generate links.

 |
|

`returnTaskPathOnly`

 |

_Boolean_

 |

If true, only the last path segment to the task is included; if false, the full URL of the task is returned. Default: false

 |

## Returns

Text Array

## Usage considerations

-   The `taskIds` parameter is required. If no task exists with the provided ID number, a URL is still returned.
-   If `returnTaskPathOnly` is true, only the task path after `/task` is returned.
-   If `returnTaskPathOnly` is false, the URL will return the Tempo URL for the task.
-   To create a URL to a site, use `returnTaskPathOnly=true` and append the path only to the end of the site URL in the following format: `<base_url>/suite/sites/<site_name>/task/<task_path>`.
-   If a user does not have viewer rights to the task in the returned URL, the user will see an error when trying to open the URL.

-   Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

These examples are designed to illustrate how to use the `a!urlForTask()` function in the [Expression Rule Interface](Expression_Rules.html).

**URL for a Single Task**

`a!urlForTask(taskIds: 123456, returnTaskPathOnly: false)`

returns `"https://tasks.appian.com/suite/tasks/task/WrxYT3TYySQZTUwm"`

**URLs for Multiple Tasks**

`a!urlForTask(taskIds: {123456, 654321}, returnTaskPathOnly: false)`

returns `{"https://tasks.appian.com/suite/tasks/task/WrxYT3TYySQZTUwm", "https://tasks.appian.com/suite/tasks/task/BU8YV4nEFVwMuc3U"}`

**Return the Task Path Only**

`a!urlForTask(taskIds: {12345, 54321}, returnTaskPathOnly: true)`

returns `"WrxYT3TYySQZTUwm"`

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

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...