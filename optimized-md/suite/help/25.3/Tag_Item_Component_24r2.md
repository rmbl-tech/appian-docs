---
source_url: https://docs.appian.com/suite/help/25.3/Tag_Item_Component_24r2.html
original_path: Tag_Item_Component_24r2.html
version: "25.3"
title: "a!tagItem\_24r2"
page_id: "Tag_Item_Component_24r2"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!tagItem\_24r2

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Tag Item](/suite/help/25.3/Tag_Item_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Tag_Item_Component.html#Old_Version)

## Function

**a!tagItem\_24r2**( _text, backgroundColor, textColor, tooltip, showWhen, recordLink_ )

Displays a short text label with colored background for use with a!tagField. Tag items can contain a record link or user record link.

**See also**: [Tag Field](Tag_Component.html), [Tag design guidance](sail/ux-tags.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Text

 |

`text`

 |

_Text_

 |

Text to display within the tag. The tag displays a maximum of 40 characters.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the background color. Valid values: Any valid hex color or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`

 |
|

Text Color

 |

`textColor`

 |

_Text_

 |

Determines the text color. Valid values: Any valid hex color or `"STANDARD"` (default).

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display as a tooltip on the tag.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the tag is displayed on the interface. When set to false, the tag is hidden and is not evaluated. Default: true.

 |
|

Record Link

 |

`recordLink`

 |

_Record Link_

 |

The record link to apply to the tag. Create a link with `a!recordLink()` or `a!userRecordLink()`.

 |

## Usage considerations

### Using the text parameter

-   A tag will not render if no _text_ is specified.
-   Any tabs, line breaks, and leading or trailing spaces are trimmed. Spaces between words are trimmed down to one space.
-   If the text is too long to display within a tag, the text is truncated. The full text is shown on hover.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
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