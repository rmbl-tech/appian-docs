---
source_url: https://docs.appian.com/suite/help/25.3/Header_Template_Simple.html
original_path: Header_Template_Simple.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Simple Header Template

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!headerTemplateSimple**( _title, secondaryText, titleColor, secondaryTextColor, stampIcon, stampColor_ )

A title bar template that displays a simple text header at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header aligns with the width of the contents and can include an optional decorative stamp.

![example simple header template with annotations](images/header-template-simple-annotated.png)

You can also choose a [full header](Header_Template_Full.html), [image header](Header_Template_Image.html), or [sidebar](Sidebar_Template.html) template. See the SAIL Design System for guidelines about [when to choose each template](sail/ux-form-layout.html#choosing-a-title-bar-template) as well as [using the simple header template](sail/ux-form-layout.html#simple-header-template-guidelines).

![full and image header](images/header-template-compare-full-image.png)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Title

 |

`title`

 |

_Text_

 |

Text to display as the header title.

 |
|

Secondary Text

 |

`secondaryText`

 |

_Text_

 |

Optional text to display below the title.

 |
|

Title Color

 |

`titleColor`

 |

_Text_

 |

Determines the title text color. Valid values: Any valid hex color or `"STANDARD"` (default), `"ACCENT"`, `"SECONDARY"`.

 |
|

Secondary Text Color

 |

`secondaryTextColor`

 |

_Text_

 |

Determines the secondary text color. Valid values: Any valid hex color or `"STANDARD"` (default), `"ACCENT"`, `"SECONDARY"`.

 |
|

Stamp Icon

 |

`stampIcon`

 |

_Text_

 |

Icon to display in a stamp next to the title. Valid values: Any icon key. See [Appian Icons](Appian_Icons.html#standard-icons) for available icons.

In the component configuration pane, you can click **SUGGEST ICON** to use AI to suggest an icon based on the title and secondary text. If both the title and the secondary text aren't simple text strings, this option is disabled.

 |
|

Stamp Color

 |

`stampColor`

 |

_Text_

 |

Determines the stamp background color. Ignored if a stamp icon isn't specified. Valid values: any valid hex color or `"ACCENT"` (default), `"SECONDARY"`, `"POSITIVE"`, `"NEGATIVE"`, `"TRANSPARENT"`.

 |

## Usage considerations

### Title bar width

For the simple header template, the title bar divider's width depends on the _isTitleBarFixed_ parameter:

-   If _isTitleBarFixed_ is false, the divider's width matches the content width.
-   If _isTitleBarFixed_ is true, the divider extends to the full width of the screen or dialog.

![header-template-simple-divider-compare](images/header-template-simple-divider-compare.png)

Additionally, if the title bar is displayed in a [wizard layout](Wizard_Layout.html), the title bar will take up the entire width of the screen, instead of being constrained to the width of the wizard contents.

![header-template-simple-width-compare](images/header-template-simple-width-compare.png)

## Examples

Use the interactive editor below to test out the example code.

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

## Related Patterns

The following patterns include usage of the Simple Header Template.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Set the Default Value of CDT Fields Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html) (_Default Value_): Set the value of a CDT field based on a user input.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...