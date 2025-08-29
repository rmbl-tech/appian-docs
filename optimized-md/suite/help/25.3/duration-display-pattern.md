---
source_url: https://docs.appian.com/suite/help/25.3/duration-display-pattern.html
original_path: duration-display-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Duration Display

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Use the duration display pattern to show the amount of time in between events in a quick, easy-to-read way. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the duration display pattern](images/patterns/duration_display_pattern.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are side-by-side layouts and rich text. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the duration display pattern with callouts for the main components](images/patterns/duration_display_details.png)

### Pattern expression

When you drag and drop the duration display pattern onto your interface, 111 lines of expressions will be added to the section where you dragged it.

### \[Line 1-8\] Define local variables and mappings

The local variables at the top of the expression are used to define:

-   The data that will be displayed for the opened and closed dates.
-   The amount of days in between those dates.
-   The target duration.

The `local!events` variable uses the `a!map()` function to link the opened and closed values to their corresponding dates.

```sail
1
2
3
4
5
6
7
8
{
  a!localVariables(
    local!events: {
      a!map(name: "Opened", date: today() - 10),
      a!map(name: "Closed", date: today())
    },
    local!duration: tointeger(local!events[2].date - local!events[1].date),
    local!targetDuration: 10,
```

### \[Line 9-36\] Define the opened date display

This section:

-   Contains the first side-by-side layout.
-   Defines the display for the opened date.
-   Creates the formatting for the first set of rich text dividers.

The divider utilizes the horizontal line component that creates a responsive line in between the opened date and the rich text duration display.

```sail
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
     {
      a!sideBySideLayout(
        items: {
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text:  text(local!events[1].date, "m/d"),
                  size: "MEDIUM_PLUS"
                ),
                char(10),
                a!richTextItem(
                  text: upper(local!events[1].name),
                  color: "SECONDARY"
                )
              },
              align: "CENTER"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            item: a!horizontalLine(
              weight: "MEDIUM",
              marginBelow: "NONE"
            ),
            width: "1X"
          ),
```

### \[Line 52-94\] Define the event duration display

This section uses an `if()` statement to conditionally display the amount of days between the opened and closed dates or a warning icon. The warning icon only appears if the amount of days between the opened and closed date exceeds the target duration. If the amount of days exceeds the target duration, the tooltip will also display the message `Number of days between events exceeds target duration`.

```sail
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
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                if(
                  local!duration > local!targetDuration,
                  a!richTextIcon(
                    icon: "exclamation-circle",
                    altText: "warning",
                    color: "NEGATIVE",
                    size: "MEDIUM_PLUS"
                  ),
                  a!richTextIcon(
                    icon: "clock-o",
                    altText: "clock",
                    color: "SECONDARY",
                    size: "MEDIUM_PLUS"
                  )
                ),
                "  ",
                a!richTextItem(
                  text: {
                    a!richTextItem(
                      text: local!duration,
                      style: "STRONG"
                    ),
                    " ",
                    upper("Days")
                  },
                  size: "MEDIUM_PLUS"
                )
              },
              /* Consider changing the tooltip and styling of the richText *
               * if the duration is greater than a target value            */
              tooltip: if(
                local!duration > local!targetDuration,
                "Number of days between events exceeds target duration",
                "Number of days between events"
              ),
              align: "CENTER"
            ),
            width: "MINIMIZE"
          ),
```

![screenshot of the error icon and tooltip message](images/duration_display_warning.png)

### \[Lines 37-79\] Define the closed date display

This section contains:

-   The final sets of side-by-side layouts.
-   The last rich text divider.
-   The closed date.

This section is similar to the [first set of side-by-side layouts](#first), but in the reverse order.

```sail
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
 a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                if(
                  local!duration > local!targetDuration,
                  a!richTextIcon(
                    icon: "exclamation-circle",
                    altText: "warning",
                    color: "NEGATIVE",
                    size: "MEDIUM_PLUS"
                  ),
                  a!richTextIcon(
                    icon: "clock-o",
                    altText: "clock",
                    color: "SECONDARY",
                    size: "MEDIUM_PLUS"
                  )
                ),
                "  ",
                a!richTextItem(
                  text: {
                    a!richTextItem(
                      text: local!duration,
                      style: "STRONG"
                    ),
                    " ",
                    upper("Days")
                  },
                  size: "MEDIUM_PLUS"
                )
              },
              /* Consider changing the tooltip and styling of the richText *
               * if the duration is greater than a target value            */
              tooltip: if(
                local!duration > local!targetDuration,
                "Number of days between events exceeds target duration",
                "Number of days between events"
              ),
              align: "CENTER"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            item: a!horizontalLine(
              weight: "MEDIUM",
              marginBelow: "NONE"
            ),
            width: "1X"
          ),
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: text(local!events[2].date, "m/d"),
                  size: "MEDIUM_PLUS"
                ),
                char(10),
                a!richTextItem(
                  text: upper(local!events[2].name),
                  color: "SECONDARY"
                )
              },
              align: "CENTER"
            ),
            width: "MINIMIZE"
          )
        },
        alignVertical: "MIDDLE",
        spacing: "DENSE"
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...