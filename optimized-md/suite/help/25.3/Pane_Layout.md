---
source_url: https://docs.appian.com/suite/help/25.3/Pane_Layout.html
original_path: Pane_Layout.html
version: "25.3"
title: "Pane Layout"
page_id: "Pane_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Pane Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-pane-layout.html">SAIL Design System guidance available for Pane Layout</a><p class="ds-release-notice-p">When users need to scroll through information but also leave part of the interface static, use the pane layout. Learn how to use two- and three-pane layouts to build flexible interfaces with greater user control.</p></td></tr></tbody></table>

## Function

**a!paneLayout**( _panes, showWhen, showPaneDividers_ )

Displays two or three vertical panes, each with independent scrolling. Can be used as a top-level layout, or in the contents parameter of a form or header content layout.

**See also**:

-   [Responsive Design](responsive_design.html)
-   [Pane Component](Pane_Component.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Pane

 |

`panes`

 |

_Any Type_

 |

List of two or three [a!pane()](Pane_Component.html) components to display in the pane layout.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true.

 |
|

Show pane dividers

 |

`showPaneDividers`

 |

_Boolean_

 |

Determines whether to display a divider line to separate the panes. Default: true

 |

## Usage considerations

### Using pane layout

The pane layout is primarily a [top-level layout](#using-a-pane-layout-as-a-top-level-layout) designed to structure an entire interface.

You can also use it within an a [form layout](#using-a-pane-layout-in-a-form-layout) or [header content layout](#using-a-pane-layout-in-a-header-content-layout) to create interfaces with independently scrolling sections below a common header or within a form structure.

#### Using a pane layout as a top-level layout

When used as a top-level layout, the pane layout takes up the full width and height of the screen.

Because it is designed to structure an entire page, there are several limitations on how you can use a pane layout:

-   You cannot place other components next to a pane layout or nest it inside other components (except a form layout or header content layout).
-   You cannot nest a pane layout inside of another pane layout.
-   An interface can only contain one pane layout.

![pane_top_level.png](images/pane_top_level_simple.png)

#### Using a pane layout in a form layout

_Related style guidelines: [Turn off pane dividers in forms with header and button footer dividers](sail/ux-pane-layout.html#turn-off-pane-dividers-in-forms-with-header-and-button-footer-dividers)_

You can place a single [pane layout](Pane_Component.html) within the _contents_ parameter of a [form layout](Form_Layout.html) to create forms with multiple, independently scrolling columns of content.

When a pane layout is used in a form layout:

-   The form's header and button footer will span across the top and bottom of all panes.
-   The _contentsWidth_ parameter of the form layout will always use "FULL". The panes will always occupy the entire width of the form's content area.

![pane layout in form layout example](images/pane_in_form_simple.png)

#### Using a pane layout in a header content layout

You can place a single [pane layout](Pane_Layout.html) inside the _contents_ parameter of a [header content layout](Header_Layout.html).This is useful when you need a consistent header that spans across multiple, independently scrollable content sections.

When a pane layout is used in a header content layout:

-   The _fixedHeader_ parameter of the header content layout is ignored.
-   The _contentsPadding_ parameter of the header content layout will apply to the area around the pane layout.

![pane layout in header content layout example](images/pane_in_hcl_simple.png)

### Adjusting for different screen sizes

The user's screen size should be considered when designing a paned interface. Let's look at the message inbox template as an example.

On a large, wide screen, such as a laptop display, this interface uses three panes so users can scroll both the list of messages and the message contents.

[![Message Inbox interface on desktop](images/pane-layout-inbox-desktop.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img85)

[![](images/pane-layout-inbox-desktop.gif)](#_)

For smaller screens, we recommend considering alternative layouts to better accommodate the contents of the panes.

You can reuse the wide display for a tablet in landscape mode, but the user will not have the ability to scroll the panes independently.

For a tablet in portrait mode, moving the navigation elements to a top bar helps save some space so users can still comfortably see the list of messages and message details.

[![Message Inbox interface on tablet in portrait mode](images/pane-layout-inbox-tablet-portrait.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img86)

[![](images/pane-layout-inbox-tablet-portrait.gif)](#_)

On phone screens, you can display the list of messages separately from the message contents to give users the ability to navigate each set of information freely.

[![Message Inbox interface on phone](images/pane-layout-inbox-phone.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img87)

[![](images/pane-layout-inbox-phone.gif)](#_)

### Appian Mobile considerations

Panes have different behavior when the interface is viewed in the [Appian Mobile](Appian_for_Mobile_Devices.html) app. Panes are converted to columns, so the contents cannot be scrolled independently. Larger devices like tablets will display the columns side by side, while phones and other smaller devices will show the panes as stacked columns. This may result in very long pages depending on a pane's contents.

**Note:**  Panes are not converted for mobile browsers. Users viewing the paned interface this way will have a similar experience to those using a desktop browser. See [Adjusting for different screen sizes](#adjusting-for-different-screen-sizes) to learn how to adapt the layout for smaller screens.

## Examples

### Pane layout with two panes

This example shows a two-pane layout for a dashboard with filter controls. Users can select from the available filters to apply to the dashboard data. Each pane can be scrolled while the other remains fixed.

![Order Summary interface with filter controls pane and data pane](images/pane_layout.gif)

### Pane layout with three panes

This example shows a three-pane layout from an insurance claim processing app. The layout includes a timeline, claim details, and input fields for the claim reviewer to add their findings. Each pane can be scrolled while the others remain fixed.

![Order Summary interface with filter controls pane and data pane](images/three_pane_layout.gif)

### Empty form with panes

This example shows an empty [pane layout](Pane_Layout.html) within a [form layout](Form_Layout.html).

_To experiment with this example, copy and paste the expression into an interface object, or select the **Form with Panes** template from an empty interface object._

![screenshot of how to select form with panes template in an interface object](images/form_with_panes_selection.png)

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
a!formLayout(
  titleBar: a!headerTemplateFull(
    title: "Form",
    secondaryText: "Enter your details",
    secondaryTextColor: "SECONDARY",
    backgroundColor: "ACCENT"
  ),
  showTitleBarDivider: false,
  contents: {
 a!paneLayout(
      panes: {
        a!pane(contents: {}, width: "NARROW_PLUS"),
        a!pane(contents: {}, width: "AUTO")
      }
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
        saveInto: ri!cancel,
        submit: true,
        style: "OUTLINE",
        validate: false
      )
    }
  ),
  showButtonDivider: true
)
```

### Pane layout in form layout

This example shows a document review form created with a [pane layout](Pane_Layout.html) in a [form layout](Form_Layout.html). It displays the following interface.

![a pane layout in form layout with a document viewer in one pane and form fields in another pane](images/pane_layout_in_form_example.png)

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
a!formLayout(
  titleBar: a!headerTemplateSimple(
    title: "Review Form Data",
    secondaryText: "Review the information extracted from the submitted document. Compare the details below with the form on the left. Correct any fields that are inaccurate before submitting.",
    secondaryTextColor: "STANDARD"
  ),
  showTitleBarDivider: true,
  contents: {
    a!paneLayout(
      panes: {
        a!pane(
          contents: {
            a!documentViewerField(
              labelPosition: "COLLAPSED",
              /* Replace this with a document constant in your environment */
              /* document: cons!DOC_EXAMPLE, */
              height: "TALL"
            )
          },
          width: "AUTO",
          padding: "NONE"
        ),
        a!pane(
          contents: {
            a!textField(
              label: "Name"
            ),
            a!textField(
              label: "Street Address"
            ),
            a!textField(
              label: "City"
            ),
            a!dropdownField(
              data: null,
              label: "State",
              placeholder: "Select a state"
            ),
            a!integerField(
              label: "Zip Code"
            ),
            a!textField(
              label: "Phone Number"
            ),
            a!textField(
              label: "Email"
            ),
            a!paragraphField(
              label: "Supporting Information",
              height: "TALL"
            ),
            a!dateField(
              label: "Start Date"
            ),
            a!dateField(
              label: "End Date"
            )
          },
          width: "NARROW_PLUS",
          backgroundColor: "GRAY"
        )
      },
      showPaneDividers: false
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
        style: "SOLID"
      )
    },
    secondaryButtons: {
      a!buttonWidget(
        label: "Cancel"
      )
    }
  ),
  showButtonDivider: true
)
```

### Pane layout with billboard header

This example shows a two-pane layout within a billboard [header content layout](Header_Layout.html). It displays the following interface.

![A billboard header with a pane layout](images/headerContentLayout_billboard_pane_example.png)

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
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundMedia: a!documentImage(document: a!EXAMPLE_BILLBOARD_IMAGE()),
      backgroundColor: "#f0f0f0",
      marginBelow: "NONE",
      overlay: a!fullOverlay(
        alignVertical: "BOTTOM",
        contents: {
          a!cardLayout(
            contents: {
              a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextItem(text: "Properties / First Property / "),
                  a!richTextItem(text: "Messages", style: "STRONG"),
                  char(10),
                  char(10)
                }
              ),
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: "First Property",
                          size: "LARGE",
                          style: "STRONG"
                        ),
                        char(10),
                        a!richTextItem(text: "Address, City, VA 99999"),
                        char(10)
                      }
                    )
                  )
                },
                alignVertical: "MIDDLE"
              )
            },
            style: "TRANSPARENT",
            padding: "NONE",
            marginBelow: "NONE",
            showBorder: false
          )
        },
        style: "SEMI_DARK"
      )
    )
  },
  contents: a!paneLayout(
    panes: {
      a!pane(
        contents: {
          a!sectionLayout(
            label: "",
            contents: {
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: a!richTextHeader(text: "Inbox")
                        ),
                        width: "MINIMIZE"
                      )
                    },
                    alignVertical: "MIDDLE",
                    marginAbove: "STANDARD",
                    marginBelow: "STANDARD"
                  )
                },
                height: "AUTO",
                style: "TRANSPARENT",
                marginBelow: "NONE",
                showBorder: false
              )
            },
            marginAbove: "EVEN_LESS",
            marginBelow: "EVEN_LESS"
          ),
          a!cardLayout(contents: {}, height: "EXTRA_TALL"),
          a!cardLayout(contents: {}, height: "EXTRA_TALL")
        },
        width: "MEDIUM",
        padding: "NONE"
      ),
      a!pane(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(text: "Messages", size: "MEDIUM_PLUS")
                      },
                      preventWrapping: true
                    )
                  )
                },
                alignVertical: "MIDDLE"
              )
            },
            height: "AUTO",
            style: "#ffffff",
            shape: "SEMI_ROUNDED",
            padding: "STANDARD",
            marginBelow: "NONE",
            showBorder: false
          ),
          a!cardLayout(contents: {}, height: "EXTRA_TALL"),
          a!cardLayout(contents: {}, height: "EXTRA_TALL"),
          a!horizontalLine(marginAbove: "NONE", marginBelow: "NONE")
        },
        width: "AUTO",
        backgroundColor: "GRAY",
        padding: "STANDARD"
      )
    }
  ),
  contentsPadding: "NONE"
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