---
source_url: https://docs.appian.com/suite/help/25.3/milestone_bar.html
original_path: milestone_bar.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Milestone Patterns

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

There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

In each of the patterns, the indicators change color to show that the user has completed those steps in the task. These patterns can be used to break up longer forms into more manageable sections and combine smaller forms into a more streamlined process. Both patterns have similar functionality and design, but provide different levels of detail and context for the steps. They are located under the **PATTERNS** tab under **PALETTE** in your interface. Test them out to see which option works best for you.

**Tip:**  For a quicker way to configure milestones, use the [milestone](Milestone_Component.html) component, which allows you to choose between [three different styles](Milestone_Component.html#milestone-display-options), as well as horizontal and vertical orientations.

## Milestone (Vertical)

The Milestone (Vertical) pattern displays a detailed progress indicator to guide users through steps in a task.

The main components of this pattern are [stamps](Stamp_Component.html), [rich text display components](Rich_Text_Component.html), and [column layouts](Columns_Layout.html). They're configured to display the progress of a given task. The image below shows the pattern with callouts for the main components.

This pattern also relies on a few functions to create the milestones, such as [a!forEach()](fnc_looping_a_foreach.html) function and [if()](fnc_logical_if.html) functions.

You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components and functions.

![screenshot showing the main elements of the Milestone(Vertical) pattern](images/patterns/milestone_vertical_details.png)

**Main components:**

1.  Stamp with icon and `"POSITIVE"` background color showing a completed step.
2.  Rich text showing the bolded name of the step and the date completed.
3.  Stamp with icon and grey background color showing a future step.
4.  Rich text showing the name of the step.

### Pattern expression

When you drag and drop the Milestone (Vertical) pattern onto your interface, 121 lines of expression will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!verticalSteps: {
      a!map(name: "Claim Filed",       icon: "archive",     date: today() - 5, isCompleted: true),
      a!map(name: "Vehicle Inspected", icon: "search",      date: today() - 4, isCompleted: true),
      a!map(name: "Estimate Issued",   icon: "file-text-o", date: null,        isCompleted: false),
      a!map(name: "Payment Sent",      icon: "money",       date: null,        isCompleted: false),
      a!map(name: "Claim Closed",      icon: "stamp",       date: null,        isCompleted: false)
    },
    a!sectionLayout(
      label: "Claim Progress",
      labelSize: "MEDIUM",
      labelColor: "STANDARD",
      contents: {
        a!forEach(
          items: local!verticalSteps,
          expression: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    if(
                      fv!item.isCompleted,
                      a!stampField(
                        labelPosition: "COLLAPSED",
                        icon: "check",
                        backgroundColor: "POSITIVE",
                        contentColor: "STANDARD",
                        size: "TINY",
                        align: "CENTER",
                        marginBelow: "NONE",
                        accessibilityText: "Completed Step"
                      ),
                      a!stampField(
                        labelPosition: "COLLAPSED",
                        icon: fv!item.icon,
                        backgroundColor: "#d9d9d9",
                        contentColor: "#666666",
                        size: "TINY",
                        align: "CENTER",
                        marginBelow: "NONE",
                        accessibilityText: "Future Step"
                      )
                    )
                  },
                  width: "EXTRA_NARROW"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: fv!item.name,
                          size: "STANDARD",
                          style: if(
                            fv!item.isCompleted,
                            "STRONG",
                            "PLAIN"
                          )
                        )
                      },
                      preventWrapping: true,
                      marginBelow: "NONE"
                    ),
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: text(fv!item.date, "MMMM D"),
                          size: "SMALL"
                        )
                      },
                      preventWrapping: true,
                      showWhen: fv!item.isCompleted,
                      marginBelow: "NONE"
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              marginAbove: if(
                fv!isFirst,
                "STANDARD",
                "NONE"
              ),
              marginBelow: "NONE",
              spacing: "NONE",
              stackWhen: "NEVER"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                        )
                      },
                      size: "TINY",
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                ),
                a!columnLayout()
              },
              alignVertical: "MIDDLE",
              showWhen: not(fv!isLast),
              marginBelow: "NONE",
              spacing: "NONE",
              stackWhen: "NEVER"
            )
          }
        )
      }
    )
  )
}
```

### \[Line 1-9\] Set local variables

At the beginning of the expression, the `local!verticalSteps` local variables is set up, which provides the titles for the four steps in the milestone.

```sail
1
2
3
4
5
6
7
8
9
{
  a!localVariables(
    local!verticalSteps: {
      a!map(name: "Claim Filed",       icon: "archive",     date: today() - 5, isCompleted: true),
      a!map(name: "Vehicle Inspected", icon: "search",      date: today() - 4, isCompleted: true),
      a!map(name: "Estimate Issued",   icon: "file-text-o", date: null,        isCompleted: false),
      a!map(name: "Payment Sent",      icon: "money",       date: null,        isCompleted: false),
      a!map(name: "Claim Closed",      icon: "stamp",       date: null,        isCompleted: false)
    },
```

### \[Line 9-121\] Define milestone steps

This section creates each step in the milestone using `a!forEach()`, `if()`, stamps, and [rich text items](Styled_Text_Component.html). Each step in the milestone is constructed with a column layout that contains a stamp next to a rich text display field. The expression that constructs each step is iterated through using `a!forEach()`.

The color of the stamp, the boldness of the text, and the icon change as you move through the steps:

-   **Completed steps**: the text is bold and displays the date, the stamp color is `"POSITIVE"`, and the icon is a check mark.
-   **Future steps**: the text is normal and doesn't display the date, the stamp color is light gray, and the icon represents the step purpose.

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
    a!sectionLayout(
      label: "Claim Progress",
      labelSize: "MEDIUM",
      labelColor: "STANDARD",
      contents: {
        a!forEach(
          items: local!verticalSteps,
          expression: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    if(
                      fv!item.isCompleted,
                      a!stampField(
                        labelPosition: "COLLAPSED",
                        icon: "check",
                        backgroundColor: "POSITIVE",
                        contentColor: "STANDARD",
                        size: "TINY",
                        align: "CENTER",
                        marginBelow: "NONE",
                        accessibilityText: "Completed Step"
                      ),
                      a!stampField(
                        labelPosition: "COLLAPSED",
                        icon: fv!item.icon,
                        backgroundColor: "#d9d9d9",
                        contentColor: "#666666",
                        size: "TINY",
                        align: "CENTER",
                        marginBelow: "NONE",
                        accessibilityText: "Future Step"
                      )
                    )
                  },
                  width: "EXTRA_NARROW"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: fv!item.name,
                          size: "STANDARD",
                          style: if(
                            fv!item.isCompleted,
                            "STRONG",
                            "PLAIN"
                          )
                        )
                      },
                      preventWrapping: true,
                      marginBelow: "NONE"
                    ),
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: text(fv!item.date, "MMMM D"),
                          size: "SMALL"
                        )
                      },
                      preventWrapping: true,
                      showWhen: fv!item.isCompleted,
                      marginBelow: "NONE"
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              marginAbove: if(
                fv!isFirst,
                "STANDARD",
                "NONE"
              ),
              marginBelow: "NONE",
              spacing: "NONE",
              stackWhen: "NEVER"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                        )
                      },
                      size: "TINY",
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                ),
                a!columnLayout()
              },
              alignVertical: "MIDDLE",
              showWhen: not(fv!isLast),
              marginBelow: "NONE",
              spacing: "NONE",
              stackWhen: "NEVER"
            )
          }
        )
      }
    )
  )
}
```

## Milestone (Stamp)

The Milestone (Stamp) pattern displays a simple progress indicator to guide users through steps in a task.

The main components of this pattern are [stamps](Stamp_Component.html), [rich text display components](Rich_Text_Component.html), and [side by side layouts](Side_By_Side_Layout.html). They're configured to display the progress of a given task. The image below shows the pattern with callouts for the main components.

![screenshot showing the main elements of the Milestone (Stamp) pattern](images/patterns/milestone_stamp_details.png)

#### Pattern expression

When you drag and drop the Milestone (Stamp) pattern onto your interface, 117 lines of expression will be added to the section where you dragged it.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...