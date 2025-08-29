---
source_url: https://docs.appian.com/suite/help/25.3/Billboard_Layout_19r1.html
original_path: Billboard_Layout_19r1.html
version: "25.3"
title: "a!billboardLayout\_19r1 Component"
page_id: "Billboard_Layout_19r1"
section: "Billboard"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!billboardLayout\_19r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Billboard Layout](/suite/help/25.3/Billboard_Layout.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Billboard_Layout.html#Old_Version)

## Billboard

**Function**: `a!billboardLayout_19r1()`

Displays a background color, image, or video with optional overlay content.

**Parameters**

| Name | Keyword | Type | Description |
| --- | --- | --- | --- |
| Background Media | backgroundMedia | Any Type | Determines the background content. Takes priority over background color. Configure with [a!documentImage()](Document_Image_Component.html), [a!webImage()](Web_Image_Component.html), or [a!webVideo()](Web_Video_Component.html) |
| Background Color | backgroundColor | Text | Determines the background color. When background media is also specified, the background color shows while media is loading or when background image is transparent. Must be a valid hex code. Default is `#f0f0f0`. |
| Bar Overlay Position | overlayPositionBar | Text | Determines where the bar overlay appears. Takes priority over column overlay when both are specified. Valid values: `"TOP"`, `"MIDDLE"`, `"BOTTOM"` (default). |
| Column Overlay Position | overlayPositionColumn | Text | Determines where the column overlay appears. Ignored when a bar overlay is also specified. Valid values: `"START"`, `"CENTER"`, `"END"`. |
| Column Overlay Width | overlayColumnWidth | Text | Determines the column overlay width. Ignored when a bar overlay is also specified. Valid values: `"NARROW"`, `"MEDIUM"` (default), `"WIDE"`. |
| Overlay Style | overlayStyle | Text | Determines the overlay style. Valid values: `"DARK"` (default), `"LIGHT"`, `"NONE"`. |
| Overlay Contents | overlayContents | Any Type | The interface to display on top of the background. Accepts layouts and display components. Supported layouts and components: Button, Columns, Image, Link, Milestone, Progress Bar, Rich Text, Section, Side by Side. |
| Height | height | Text | Determines the layout height. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`. |
| Show When | showWhen | Boolean | Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true. |
| Margin Below | marginBelow | Text | Determines how much space is added below the layout. Valid values: `“NONE”` (default), `“STANDARD”`. |

**Notes**

-   A billboard layout may have either a bar overlay or a column overlay.
-   When overlay content does not fit within the layout, it scrolls vertically.
-   When a video is used as the background, it plays automatically and does not have audio.
-   A billboard layout displays background media as large as possible to fill the available width. When the background media's aspect ratio is different from the layout's aspect ratio, the background will be cut off at the top and bottom. It's recommended to use this layout for decoration, rather than for displaying content that must be fully visible at all times.

**Examples**

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
=a!billboardLayout_19r1(
  backgroundColor: "#619ed6",
  overlayPositionBar: "BOTTOM",
  overlayStyle: "DARK",
  overlayContents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: "Finance Summary",
                  size: "LARGE"
                )
              }
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      label: "Total Spending",
                      value: a!richTextItem(
                        text: "$31,000.00",
                        size: "MEDIUM"
                      )
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      label: "Remaining Budget",
                      value: a!richTextItem(
                        text: a!richTextItem(
                          text: "79%",
                          size: "MEDIUM"
                        ),
                        color: "POSITIVE"
                      )
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      label: "Open Requests",
                      value: a!richTextItem(
                        text: "36",
                        size: "MEDIUM"
                      )
                    )
                  }
                )
              },
              alignVertical: "TOP"
            )
          }
        )
      },
      alignVertical: "MIDDLE"
    )
  },
  height: "SHORT",
  marginBelow: "STANDARD"
)
```

Displays the following:

![](images/billboard-172.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...