---
source_url: https://docs.appian.com/suite/help/25.3/Header_Template_Full.html
original_path: Header_Template_Full.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Full Header Template

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!headerTemplateFull**( _title, secondaryText, titleColor, secondaryTextColor, backgroundColor, stampIcon, stampColor_ )

A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include an optional decorative stamp.

![example full header template with annotations](images/header-template-full-annotated.png)

You can also choose a [simple header](Header_Template_Simple.html), [image header](Header_Template_Image.html), or [sidebar](Sidebar_Template.html) template. See the SAIL Design System for guidelines about [when to choose each template](sail/ux-form-layout.html#choosing-a-title-bar-template).

![simple and image header](images/header-template-compare-simple-image.png)

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

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the title bar background color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"WHITE"`, `"CHARCOAL_SCHEME"`, `"NAVY_SCHEME"`, `"PLUM_SCHEME"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Determines either the icon color or the stamp background color, depending on contrast. Ignored if a stamp icon isn't specified. Valid values: any valid hex color or `"ACCENT"` (default), `"SECONDARY"`, `"POSITIVE"`, `"NEGATIVE"`, `"TRANSPARENT"`.

 |

## Usage considerations

### Stamp icon colors

When you use `"ACCENT"` for the title bar _backgroundColor_ and _stampColor_, the stamp icon color will be the accent color defined in the site or portal object. The stamp _background color_ will be either black or white, depending on contrast.

![Full header with icon on dark and light accent colors](images/full_header_stamp_color.png)

If you use a custom hex code for _stampColor_, the stamp _icon color_ will be black or white, depending on contrast.

![Full header with icon on dark and light custom stamp colors](images/full_header_stamp_color_hex.png)

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

The following patterns include usage of the Full Header Template.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...