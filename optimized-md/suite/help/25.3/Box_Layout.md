---
source_url: https://docs.appian.com/suite/help/25.3/Box_Layout.html
original_path: Box_Layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Box Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-box-layout.html">SAIL Design System guidance available for Box Layout</a><p class="ds-release-notice-p">Box layouts help draw attention to groupings of related components such as important prompts or error messages. Learn how to use the box layout to create strong visual groups for your interface.</p></td></tr></tbody></table>

## Function

**a!boxLayout**( _label, contents, style, showWhen, isCollapsible, isInitiallyCollapsed, marginBelow, accessibilityText, padding, shape, marginAbove, showBorder, showShadow, labelSize, labelHeadingTag_ )

Displays any arrangement of layouts and components within a box on an interface.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the box's title.

 |
|

Contents

 |

`contents`

 |

_Any Type_

 |

Components and layouts to display within the box.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the color of the label and box outline. Valid values: Any valid hex color or hex color including transparency, or `"STANDARD"` (default), `"ACCENT"`, `"SUCCESS"`, `"INFO"`, `"WARN"`, `"ERROR"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Collapsible

 |

`isCollapsible`

 |

_Boolean_

 |

Determines if an expand/collapse control appears in the box header. Default: false.

 |
|

Initially Collapsed

 |

`isInitiallyCollapsed`

 |

_Boolean_

 |

Determines if the box is collapsed when the interface first loads. Default: false.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Padding

 |

`padding`

 |

_Text_

 |

Determines the space between the box edges and its contents. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"` (default), `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Shape

 |

`shape`

 |

_Text_

 |

Determines the box shape. Valid values: `"SQUARED"` (default), `"SEMI_ROUNDED"`, `"ROUNDED"`.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Show border

 |

`showBorder`

 |

_Boolean_

 |

Determines whether the layout has an outer border. Default: true.

 |
|

Show shadow

 |

`showShadow`

 |

_Boolean_

 |

Determines whether the layout has an outer shadow. Default: false.

 |
|

Label Size

 |

`labelSize`

 |

_Text_

 |

Determines the label size. Valid values: "LARGE\_PLUS", "LARGE", "MEDIUM\_PLUS", "MEDIUM", "SMALL", "EXTRA\_SMALL" (default).

 |
|

Accessibility Heading Tag

 |

`labelHeadingTag`

 |

_Text_

 |

Determines the heading tag associated with the label for use by screen readers; produces no visible change. Valid values: "H1", "H2", "H3", "H4", "H5", "H6". The default is dependent on the chosen label size. See [accessibility design guidance](sail/ux-accessibility.html#use-accessible-headers) for more details to associate the proper heading tag with the box label to follow accessibility standards.

 |

## Usage considerations

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Box layout with success style

This example uses a box layout with the "SUCCESS" style. It displays the following interface.

![screenshot of a box layout with green success styling and a confirmation message](images/success_box_layout_example.png)

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
a!boxLayout(
  label: "Success! Your order was successfully processed",
  style: "SUCCESS",
  marginBelow: "STANDARD",
  contents: {
    a!textField(
      labelPosition: "COLLAPSED",
      value: "Your credit card has been charged.",
      readOnly: true
    )
  }
)
```

### Collapsible box layout with custom style

This example uses a collapsible box layout with a custom style for the header color. It displays the following interface.

![screenshot of a box layout with burgundy styling and a list of students](images/box_layout_example_custom.gif)

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
a!boxLayout(
    label: "Enrolled Students",
    style: "#98002E",
    marginBelow: "STANDARD",
    isCollapsible: true,
    contents: {
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: a!richTextBulletedList(
          items: {
            "Elizabeth Ward",
            "Fatima Cooper",
            "Jaylen Smith",
            "Michael Johnson",
            "Jade Rao",
          }
        )
      )
    }
  )
```

### Box layout with label size and shadow

This example uses a box layout with a "MEDIUM" label size. It displays the following interface.

![screenshot of a box layout with custom styling and medium label size](images/box_layout_current_classes.png)

Because the header content layout uses a transparent background, we are using a shadow instead of a border. See the [box layout design guidance](sail/ux-box-layout.html#when-to-use-borders-and-shadows) for more information on using borders and shadows.

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
a!localVariables(
  local!currentClasses: {
    a!map(courseNum: "JPN 202", title: "Intermediate Japanese II", students: 14),
    a!map(courseNum: "JPN 270", title: "Intro to Japanese Culture", students: 8),
    a!map(courseNum: "JPN 360", title: "Japanese Modern Women Writers", students: 5)
  },
  a!headerContentLayout(
    contents: a!boxLayout(
      label: "Current Classes",
      labelSize: "MEDIUM",
      contents: {
        a!forEach(
          items: local!currentClasses,
          expression: a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    fv!item.courseNum,
                    "   ",
                    a!richTextItem(
                      text: {fv!item.title},
                      link: a!dynamicLink(),
                      linkStyle: "STANDALONE",
                      color: "#1a73e7"
                    )
                  }
                ),
                width: "AUTO"
              ),
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    fv!item.students,
                    " ",
                    a!richTextIcon(icon: "users")
                  }
                ),
                width: "MINIMIZE"
              )
            }
          )
        )
      },
      style: "#1a73e7",
      marginBelow: "STANDARD",
      showBorder: false,
      showShadow: true
    ),
    backgroundColor: "TRANSPARENT"
  )
)
```

### Rounded box layouts

This example uses a box layout with a rounded shape. It displays the following interface.

![screenshot of a student dashboard with multiple rounded box layouts](images/rounded_boxes.png)

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
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
a!columnsLayout(
  columns: {
    a!columnLayout(
      contents: {
        a!boxLayout(
          label: "Current Courses",
          contents: {
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "CRW470"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "Advanced Fiction Workshop"
                    }
                  )
                )
              }
            ),
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "ENG463"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "Literature on the Move: Stories of Migration"
                    }
                  )
                )
              }
            ),
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "ENG327"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "The Next Great American Graphic Novel"
                    }
                  )
                )
              }
            )
          },
          style: "#363535",
          shape: "ROUNDED",
          marginBelow: "STANDARD"
        )
      }
    ),
    a!columnLayout(
      contents: {
        a!boxLayout(
          label: "Past Courses",
          contents: {
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "CRW370"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "Intermediate Fiction Workshop"
                    }
                  )
                )
              }
            ),
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "ENG222"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "Literature of Regency England: Jane Austen "
                    }
                  )
                )
              }
            ),
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "ENG301"
                        },
                        size: "STANDARD"
                      )
                    }
                  ),
                  width: "MINIMIZE"
                ),
                a!sideBySideItem(
                  item: a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "How to Study Literature"
                    }
                  )
                )
              }
            )
          },
          style: "#363535",
          shape: "ROUNDED",
          marginBelow: "STANDARD"
        )
      }
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