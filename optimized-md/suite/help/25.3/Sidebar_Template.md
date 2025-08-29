---
source_url: https://docs.appian.com/suite/help/25.3/Sidebar_Template.html
original_path: Sidebar_Template.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Sidebar Template

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!sidebarTemplate**( _title, secondaryText, titleColor, secondaryTextColor, backgroundColor, image, imageSize, width, additionalContents_ )

A title bar template that displays a sidebar in a [form](Form_Layout.html) or [wizard](Wizard_Layout.html). On narrower screens, the sidebar automatically displays as a header. In wizard layouts with a vertical milestone, the sidebar displays the milestone.

![Example of a form with a sidebar template with annotations](images/sidebar-template-annotated.png)

You can also choose a [simple](Header_Template_Simple.html), [full](Header_Template_Full.html), or [image](Header_Template_Image.html) header. See the SAIL Design System for guidelines about [when to choose each template](sail/ux-form-layout.html#choosing-a-title-bar-template) as well as [using the sidebar template](sail/ux-form-layout.html#sidebar-template-guidelines).

![simple, full, and image header](images/header-template-compare-simple-full-image.png)

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

Text to display as the sidebar title.

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

Image

 |

`image`

 |

_Any Type_

 |

Image to display above the title in the sidebar. Configured using [a!webImage()](Web_Image_Component.html), [a!userImage](User_Image_Component.html), or [a!documentImage](Document_Image_Component.html). Hidden when the sidebar displays as a header on narrow screens.

 |
|

Image Size

 |

`imageSize`

 |

_Text_

 |

Determines the image size. Valid values: `"MEDIUM"` (default), `"SMALL_PLUS"`, `"MEDIUM_PLUS"`.

 |
|

Sidebar Width

 |

`width`

 |

_Text_

 |

Sets the width of the sidebar. Valid values: `"MEDIUM"` (default), `"NARROW_PLUS"`, `"MEDIUM_PLUS"`.

 |
|

Additional Contents

 |

`additionalContents`

 |

_Any Type_

 |

Components and layouts to display below the rest of the sidebar content. Use this to provide additional details about the form.

 |

## Usage considerations

### Responsiveness on smaller screen sizes

_Related style guidelines: [Sidebar template guidelines](sail/ux-form-layout.html#sidebar-template-guidelines)_

The sidebar is fully responsive and its appearance will change based on the screen width.

On narrow screens, the sidebar automatically displays as a header at the top of the interface. This includes when it displays in dialogs that use Medium width or narrower.

When the sidebar displays as a header, the `image` is hidden, but any components in the `additionalContents` parameter will still be displayed below the secondary text.

Sidebar on a wider screen:

![a sidebar layout on a wider screen](images/sidebar-responsive-wider.png)

Sidebar on a narrower screen:

![a sidebar layout on a narrower screen](images/sidebar-responsive-narrower.png)

### Wizard layout vertical milestone behavior

When using a sidebar template in an `a!wizardLayout()` with a vertical milestone, the milestone steps will automatically be moved into the sidebar, appearing below the `secondaryText` and above any `additionalContents`.

When the [sidebar's responsive behavior](#sidebar-responsiveness) causes it to display as a header, the milestone will display below the header using the "MINIMAL" style.

![image of a wizard layout that uses the sidebar template](images/sidebar-example.png)

### Sidebar with no image

If you don't include an image in the sidebar, a horizontal line will appear to help balance the sidebar.

![sidebar-no-image](images/sidebar-no-image.png)

## Example

The following example shows an `a!wizardLayout()` that uses `a!sidebarTemplate`. The vertical milestone displays in the sidebar and contact information displays using the `additionalContents` parameter.

![image of a wizard layout that uses the sidebar template](images/sidebar-example.png)

_To experiment with examples, copy and paste the expression into an interface object._

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
a!wizardLayout(
  titleBar: a!sidebarTemplate(
    title: "New License Application",
    secondaryText: "Complete this for to apply for a license, providing all required personal information.",
    backgroundColor: "ACCENT",
    image: a!documentImage(document: a!EXAMPLE_TITLE_BAR_IMAGE()),
    width: "MEDIUM",
    additionalContents: {
      {
        a!cardLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: "Contact Info:",
                  style: "STRONG"
                ),
                char(10),
                a!richTextIcon(icon: "envelope"),
                a!richTextItem(
                  text: " support@company.com",
                  color: "#94B2C0",
                  link: a!safeLink(uri: "mailto:support@company.com")
                ),
                char(10),
                a!richTextIcon(icon: "phone"),
                " 555-123-4567"
              }
            )
          },
          style: "#141494",
          showBorder: false,
          showShadow: true
        )
      }
    }
  ),
  steps: {
    a!wizardStep(
      label: "Personal Information",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: { a!textField(label: "First Name") }
            ),
            a!columnLayout(
              contents: { a!textField(label: "Last Name") }
            )
          }
        ),
        a!textField(label: "Email")
      }
    ),
    a!wizardStep(
      label: "Address",
      contents: {
        a!textField(label: "Street Address"),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: { a!textField(label: "City") }
            ),
            a!columnLayout(
              contents: { a!textField(label: "State") }
            ),
            a!columnLayout(
              contents: { a!integerField(label: "Zip Code") }
            )
          }
        )
      }
    ),
    a!wizardStep(
      label: "Supporting Documents",
      instructions: "Upload supporting documents such as proof of address",
      contents: {
        a!fileUploadField(
          label: "File Upload",
          labelPosition: "COLLAPSED"
        )
      }
    )
  },
  primaryButtons: {
    a!buttonWidget(
      label: "Submit",
      style: "SOLID",
      showWhen: fv!isLastStep
    )
  },
  secondaryButtons: {
    a!buttonWidget(
      label: "Cancel",
      style: "LINK"
    )
  }
)
```

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