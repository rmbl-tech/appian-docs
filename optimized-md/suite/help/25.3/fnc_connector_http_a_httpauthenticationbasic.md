---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_http_a_httpauthenticationbasic.html
original_path: fnc_connector_http_a_httpauthenticationbasic.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpAuthenticationBasic() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

_Note: this function is used only for the HTTP Upload and HTTP Download smart services. Authentication for general HTTP requests is managed using [integrations](Integration_Object.html) and [HTTP](http-connected-system.html) or [Open API](openapi-connected-system.html) connected systems._

## Function

**a!httpAuthenticationBasic**( _username, password, preemptive_ )

Creates an object that contains the information required to perform HTTP Basic authentication.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_Text_

 |

The username to use during the authentication. Created with `a!scsField()`.

 |
|

`password`

 |

_Text_

 |

The password to use during the authentication. Created with `a!scsField()`.

 |
|

`preemptive`

 |

_Boolean_

 |

Determines whether or not authentication credentials are sent only after a 401 Not Authorized response or, when true, before the system has challenged. Default: false.

 |

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