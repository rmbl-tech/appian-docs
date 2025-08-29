---
source_url: https://docs.appian.com/suite/help/25.3/Web_Video_Component.html
original_path: Web_Video_Component.html
version: "25.3"
title: "Web Video"
page_id: "Web_Video_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web Video

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!webVideo**( _source, tooltip, showWhen_ )

Displays a video from the web for use in a [video](Video_Component.html) component.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Source

 |

`source`

 |

_SafeURI_

 |

Location of the video. See [SafeURI](Appian_Data_Types.html#safeuri).

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Optional text to display in the mouseover text for the video.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Using the source parameter

-   The _source_ parameter must contain a URL that links directly to the source video. A URL to a website containing a video (for example, a Youtube link) will not work.
-   Appian documents cannot be used as the source video.

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