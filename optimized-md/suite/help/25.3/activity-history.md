---
source_url: https://docs.appian.com/suite/help/25.3/activity-history.html
original_path: activity-history.html
version: "25.3"
title: "Activity History Pattern"
page_id: "activity-history"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Activity History Pattern

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

The Activity History pattern provides a common style and format for displaying an organization's activity measures. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![activity_history.png](images/patterns/activity_history.png)

## Design structure

The main components in this pattern are rich text display components, side by side layouts, and stamp fields. These components are configured to stack based on the device width in which you're viewing the activity history. The image below shows the pattern with callouts for the main components. You can examine the entire expression or jump down to the subsections with referenced line numbers to see a detailed breakdown of the main components and explanations for how each component is used.

![activity_history_details.png](images/patterns/activity_history_details.png)

### Pattern expression

When you drag and drop the activity history pattern onto your interface, 91 lines of expression will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!actionHistory: {
      a!map(icon: "group",        title: "You updated your Jun 1 contacts.",          timestamp: now()           ),
      a!map(icon: "qrcode",       title: "Your work pass was scanned.",               timestamp: now() - hour()  ),
      a!map(icon: "check-circle", title: "You completed your Jun 1 check-in survey.", timestamp: now() - 2*hour())
    },
    {
      if(
        a!isPageWidth("PHONE"),
        /* Show center-aligned activity history on phones */
        {
          a!forEach(
            items: local!actionHistory,
            expression: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!stampField(
                      icon: fv!item.icon,
                      backgroundColor: "#efefef",
                      contentColor: "STANDARD",
                      size: "TINY",
                      align: "CENTER"
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      value: {
                        fv!item.title,
                        char(10),
                        a!richTextItem(
                          /* Update the second parameter in this text() function */
                          /* to view the date in a different format */
                          text: text(fv!item.timestamp, "DDDD MMM dd, yyyy HH:MM AM/PM"),
                          color: "SECONDARY"
                        )
                      },
                      align: "CENTER"
                    )
                  )
                },
                alignVertical: "MIDDLE",
                marginBelow: "STANDARD",
                stackWhen: "PHONE"
              )
            }
          )
        },
        {
          /* Show left-aligned activity history on desktops and tablets */
          a!forEach(
            items: local!actionHistory,
            expression: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!stampField(
                      icon: fv!item.icon,
                      backgroundColor: "#efefef",
                      contentColor: "STANDARD",
                      size: "TINY"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      value: {
                        fv!item.title,
                        char(10),
                        a!richTextItem(
                          /* Update the second parameter in this text() function */
                          /* to view the date in a different format */
                          text: text(fv!item.timestamp, "DDDD MMM dd, yyyy HH:MM AM/PM"),
                          color: "SECONDARY"
                        )
                      }
                    )
                  )
                },
                alignVertical: "MIDDLE",
                marginBelow: "STANDARD",
                stackWhen: "PHONE"
              )
            }
          )
        }
      )
    }
  )
}
```

### \[Line 1-7\] Define your action history

At the top of the pattern, local variables set up a common icon and associated activity title, as well as the formula that will be used to display an activity's history.

```sail
1
2
3
4
5
6
7
{
  a!localVariables(
    local!actionHistory: {
      a!map(icon: "group",        title: "You updated your Jun 1 contacts.",          timestamp: now()           ),
      a!map(icon: "qrcode",       title: "Your work pass was scanned.",               timestamp: now() - hour()  ),
      a!map(icon: "check-circle", title: "You completed your Jun 1 check-in survey.", timestamp: now() - 2*hour())
    },
```

### \[Line 8-11\] Optimize your mobile layout

We use an [if()](fnc_logical_if.html) statement to determine the stacking behavior of the pattern based on the device width. The [a!isPageWidth()](fnc_scripting_a_isPageWidth.html) function determines the device width. Here, the function will tell the components to stack if the screen is about the width of a phone. This conditional styling is recommended to make configuration for multiple device widths easier and provide a better user experience.

```sail
8
9
10
11
    {
      if(
        a!isPageWidth("PHONE"),
        /* Show center-aligned activity history on phones */
```

### \[Line 12-49\] Use stamp and rich text display components in a side by side layout

Before getting started, you'll notice that the entire pattern is wrapped in the [a!forEach()](fnc_looping_a_foreach.html) looping function. We use this to iterate over every type of activity that's mapped out in the local variables section of the expression. Once we have the looping function, we then use the `a!sideBySideLayout()` function to set up the stamps and rich text we want to display in the activity history. This conditional styling based on the data that's displayed makes it easy for the viewer to quickly see each activity's history. Once your side by side items are set up, you can configure how they will stack based on your device width using the `stackWhen` parameter.

```sail
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
        {
          a!forEach(
            items: local!actionHistory,
            expression: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!stampField(
                      icon: fv!item.icon,
                      backgroundColor: "#efefef",
                      contentColor: "STANDARD",
                      size: "TINY",
                      align: "CENTER"
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      value: {
                        fv!item.title,
                        char(10),
                        a!richTextItem(
                          /* Update the second parameter in this text() function */
                          /* to view the date in a different format */
                          text: text(fv!item.timestamp, "DDDD MMM dd, yyyy HH:MM AM/PM"),
                          color: "SECONDARY"
                        )
                      },
                      align: "CENTER"
                    )
                  )
                },
                alignVertical: "MIDDLE",
                marginBelow: "STANDARD",
                stackWhen: "PHONE"
              )
            }
          )
        },
```

The expression on lines 50-91 can be configured the same way as 12-49, but will be displayed for desktop and tablet widths, rather than phone widths.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...