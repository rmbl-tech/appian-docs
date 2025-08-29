---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_integrationerror.html
original_path: fnc_system_a_integrationerror.html
version: "25.3"
title: "a!integrationError() Function"
page_id: "fnc_system_a_integrationerror"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!integrationError() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!integrationError**( _title, message, detail_ )

Creates an integration error value. Use when configuring custom error handling for integration objects.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`title`

 |

_Text_

 |

A short summary of the error or the error type.

 |
|

`message`

 |

_Text_

 |

A description of the error.

 |
|

`detail`

 |

_Text_

 |

Technical details about the error, including error codes or underlying error messages.

 |

## Returns

Integration error value

## Usage considerations

### Get error values

`fv!success`, `fv!error`, and `fv!result` can be used to get response values from any errors.

## Example

In a call to another system that does not support `PUT`, the following error message:

```
1
2
3
4
5
=a!integrationError(
  title: fv!error.title,
  message: fv!result.statusCode & "- " & fv!error.message,
  detail: fv!error.detail
)
```

Results in:

```
1
2
3
4
IntegrationError
    title: "The external system cannot support the request"
    message: "405 - The requested URL does not support the PUT method"
    detail: "HTTP/1.1 405 Method not allowed"
```

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