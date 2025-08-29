---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_http_a_scsfield.html
original_path: fnc_connector_http_a_scsfield.html
version: "25.3"
title: "a!scsField() Function"
page_id: "fnc_connector_http_a_scsfield"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!scsField() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!scsField**( _externalSystemKey, fieldKey, usePerUser_ )

Creates an object which contains the information required to access data in the Secure Credentials Store.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`externalSystemKey`

 |

_Text_

 |

The key of the corresponding external system in the Third Party Credentials admin console page.

 |
|

`fieldKey`

 |

_Text_

 |

The key for the field which stores the requested data.

 |
|

`usePerUser`

 |

_Boolean_

 |

If `true`, the current user's credentials for the third party system will be used. If `false`, the system-wide credentials for the third party system will be used. Default: `false`.

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