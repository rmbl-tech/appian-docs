---
source_url: https://docs.appian.com/suite/help/25.3/Inline_Image_Component.html
original_path: Inline_Image_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rich Text Image

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-rich-text.html">SAIL Design System guidance available for Rich Text</a><p class="ds-release-notice-p">Enhance readability and comprehension on your interface by using rich text formatting to visually differentiate text.</p></td></tr></tbody></table>

## Function

**a!richTextImage**( _image, showWhen_ )

Displays an icon-sized image within a [rich text display](Rich_Text_Component.html) component. To show icons within rich text, see [Rich Text Icon](Styled_Icon_Component.html).

**See also**: [Rich text style guidance](sail/ux-rich-text.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Image

 |

`image`

 |

_Image_

 |

Required image to display in the node, created with [a!documentImage()](Document_Image_Component.html),[a!userImage()](User_Image_Component.html), and [a!webImage()](Web_Image_Component.html).

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

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Inline icons

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
a!richTextDisplayField(
  labelPosition: "COLLAPSED",
  value: {
    "Happy Face ",
    a!richTextImage(
      image: a!documentImage(
        document: a!iconIndicator(
          icon: "FACE_HAPPY"
        )
      )
    ),
    "Indifferent Face ",
    a!richTextImage(
      image: a!documentImage(
        document: a!iconIndicator(
          icon: "FACE_INDIFFERENT"
        )
      )
    ),
    "Sad Face ",
    a!richTextImage(
      image: a!documentImage(
        document: a!iconIndicator(
          icon: "FACE_SAD"
        )
      )
    )
  }
)
```

Displays the following:

![screenshot of icons in embedded in a line of text](images/richtext-inline-images.png)

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

The following patterns include usage of the Rich Text Image.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...