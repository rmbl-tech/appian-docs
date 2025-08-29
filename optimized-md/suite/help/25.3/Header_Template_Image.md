---
source_url: https://docs.appian.com/suite/help/25.3/Header_Template_Image.html
original_path: Header_Template_Image.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Image Header Template

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!headerTemplateImage**( _title, secondaryText, titleColor, secondaryTextColor, backgroundColor, image, imageSize_ )

A title bar template that displays a prominent header with a background color at the top of the [form](Form_Layout.html) or [wizard](Wizard_Layout.html). The header spans the full width of the page and can include a decorative image next to the title.

![example image header template with annotations](images/header-template-image-annotated.png)

You can also choose a [simple header](Header_Template_Simple.html), [full header](Header_Template_Full.html), or [sidebar](Sidebar_Template.html) template. See the SAIL Design System for guidelines about [when to choose each template](sail/ux-form-layout.html#choosing-a-title-bar-template) as well as [using the image header template](sail/ux-form-layout.html#image-header-template-guidelines).

![simple and full header](images/header-template-compare-simple-full.png)

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

Image

 |

`image`

 |

_Any Type_

 |

Image to display next to the title and secondary text in the title bar. Configured using [a!webImage()](Web_Image_Component.html), [a!userImage](User_Image_Component.html), or [a!documentImage](Document_Image_Component.html).

 |
|

Image Size

 |

`imageSize`

 |

_Text_

 |

Determines the image size. Valid values: `"SMALL_PLUS"` (default), `"MEDIUM"`, `"MEDIUM_PLUS"`.

 |

## Usage considerations

### Responsiveness on smaller screen sizes

The image is hidden on smaller screens because it is automatically responsive.

## Example

![image-header-example](images/image-header-example.png)

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
a!formLayout(
  titleBar: a!headerTemplateImage(
    title: "License Application",
    secondaryText: "Complete this for to apply for a license, providing all required personal information.",
    titleColor: "STANDARD",
    secondaryTextColor: "STANDARD",
    backgroundColor: "ACCENT",
    image: a!documentImage(
      document: a!EXAMPLE_TITLE_BAR_IMAGE()
    ),
    imageSize: "MEDIUM"
  ),
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!textField(
              label: "First Name",
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Last Name",
            )
          }
        )
      }
    ),
    a!textField(
      label: "Email",
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
        submit: true,
        style: "SOLID",
        loadingIndicator: true
      )
    },
    secondaryButtons: {
      a!buttonWidget(
        label: "Cancel",
        value: true,
        submit: true,
        style: "OUTLINE",
        validate: false
      )
    }
  )
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