---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_ws_a_wsusernametokenscs.html
original_path: fnc_connector_ws_a_wsusernametokenscs.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!wsUsernameTokenScs() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!wsUsernameTokenScs**( _systemKey, usePerUser_ )

Constructs a WsUsernameTokenScs object for use with `a!wsConfig`. This object will cause the credentials to be retrieved from the secure credentials store at runtime.

**See also**: [Secure Credentials Store](Secure_Credentials_Store.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`systemKey`

 |

_Text_

 |

The key of the corresponding external system in the secure credentials store. Credentials associated with this external system will be retrieved.

 |
|

`usePerUser`

 |

_Boolean_

 |

If `true`, the current user's credentials for the external system will be used. If `false`, the system-wide credentials for the external system will be used.

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