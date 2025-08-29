---
source_url: https://docs.appian.com/suite/help/25.3/navigation-patterns.html
original_path: navigation-patterns.html
version: "25.3"
title: "Navigation Patterns"
page_id: "navigation-patterns"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Navigation Patterns

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

Use the navigation patterns to help orient users and enable them to easily navigate pages and content. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

There are five options for navigation patterns which provide a way to structure a group of pages with icon/text-based left navigation. When an icon/title is selected, the corresponding page is displayed. All five patterns have similar functionality, design, and data sets. They all are located under the **PATTERNS** tab under **PALETTE** in your interface. Test out all five to see which option works best for you.

When you're adapting one of these patterns, be sure to follow UX design best practices, like adding a descriptive caption to the icons and using `accessibilityText` to help screen reader users know when icons or cards are selected.

Let's take a closer look at the Navigation (Collapsible) pattern.

## Navigation (Collapsible)

The main components in this pattern are a [column layout](Column_Layout.html) that changes between `"EXTRA-NARROW"` and `"NARROW"` widths, [card layouts](card_layout.html) with links, and a set of [rich text icons](Styled_Icon_Component.html) and titles.

![gif of the the collapsible navigation pattern, showing the navigation text collapsing to icons](images/patterns/navigationCollapsiblePattern.gif)

### Pattern expression

When you drag and drop the collapsible navigation pattern onto your interface, 203 lines of expressions will be added to the section where you dragged it.

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
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
{
  a!localVariables(
    /* Defines whether or not to collapse the side nav */
    local!collapseNav: false,
    /* The selected navigation section */
    local!activeCollapsibleNavSection: 1,
    /* The navigation sections */
    local!collapsibleNavSections: {
      a!map(name: "Workspace", icon: "briefcase"),
      a!map(name: "Tasks",     icon: "tasks"),
      a!map(name: "Requests",  icon: "paper-plane"),
      a!map(name: "Calendar",  icon: "calendar"),
      a!map(name: "My Time",   icon: "clock-o"),
      a!map(name: "Expenses",  icon: "money")
    },
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                items: local!collapsibleNavSections,
                expression: if(
                  local!collapseNav,
                  {
                    a!richTextDisplayField(
                      value: {
                        a!richTextIcon(
                          icon: fv!item.icon,
                          caption: fv!item.name,
                          link: a!dynamicLink(
                            value: fv!index,
                            saveInto: local!activeCollapsibleNavSection
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            fv!index = local!activeCollapsibleNavSection,
                            "ACCENT",
                            "SECONDARY"
                          ),
                          size: "LARGE"
                        )
                      },
                      align: "CENTER",
                      accessibilityText: if(
                        fv!index = local!activeCollapsibleNavSection,
                        fv!item.name & " " & "selected",
                        ""
                      )
                    )
                  },
                  a!cardLayout(
                    contents: a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: a!richTextIcon(
                              icon: fv!item.icon,
                              color: "SECONDARY",
                              size: if(local!collapseNav, "LARGE", "MEDIUM")
                            ),
                            align: "LEFT"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: a!richTextItem(
                              text: fv!item.name,
                              color: "ACCENT",
                              size: "MEDIUM",
                              style: if(
                                fv!index = local!activeCollapsibleNavSection,
                                "STRONG",
                                "PLAIN"
                              )
                            )
                          ),
                          showWhen: not(local!collapseNav)
                        )
                      },
                      alignVertical: "MIDDLE"
                    ),
                    link: a!dynamicLink(
                      value: fv!index,
                      saveInto: local!activeCollapsibleNavSection
                    ),
                    style: if(
                      fv!index = local!activeCollapsibleNavSection,
                      "ACCENT",
                      "NONE"
                    ),
                    showBorder: false,
                    accessibilityText: if(
                      fv!index = local!activeCollapsibleNavSection,
                      fv!item.name & " " & "selected",
                      ""
                    )
                  )
                )
              ),
              a!richTextDisplayField(
                value: a!richTextIcon(
                  icon: if(
                    local!collapseNav,
                    "angle-double-right",
                    "angle-double-left"
                  ),
                  caption: if(
                    local!collapseNav,
                    "Expand navigation bar",
                    "Collapse navigation bar"
                  ),
                  link: a!dynamicLink(
                    value: not(local!collapseNav),
                    saveInto: local!collapseNav
                  ),
                  linkStyle: "STANDALONE",
                  color: "SECONDARY",
                  size: "MEDIUM"
                ),
                align: "CENTER"
              ),
              /* This card is used to set a minimum height on the column so that the *
               * divider takes up more screen space when there is minimal content.   *
               * Once content is added to the main column, this can be removed.      */
              a!cardLayout(
                height: "TALL",
                showWhen: not(a!isPageWidth("PHONE")),
                showBorder: false
              )
            },
            width: if(local!collapseNav, "EXTRA_NARROW", "NARROW")
          ),
          a!columnLayout(
            contents: {
              /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!collapisbleNavSections, you will need to make sure *
               * the list of sections here is the correct length.         */
              choose(
                local!activeCollapsibleNavSection,
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                )
              )
            }
          )
        },
        spacing: "SPARSE",
        showDividers: true
      )
    }
  )
}
```

### Design structure

#### \[Line 1-15\] Set local variables

At the beginning of the expression, three local variables are set up: `local!collapseNav`, which stores whether or not the side navigation is collapsed, `local!activeCollapsibleNavSection`, which stores the current selection, and `local!collapsibleNavSections`, which stores the list of page names and their respective icons. `local!activeCollapsibleNavSection` is initialized to the first page by default.

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
10
11
12
13
14
15
{
  a!localVariables(
    /* Defines whether or not to collapse the side nav */
    local!collapseNav: false,
    /* The selected navigation section */
    local!activeCollapsibleNavSection: 1,
    /* The navigation sections */
    local!collapsibleNavSections: {
      a!map(name: "Workspace", icon: "briefcase"),
      a!map(name: "Tasks",     icon: "tasks"),
      a!map(name: "Requests",  icon: "paper-plane"),
      a!map(name: "Calendar",  icon: "calendar"),
      a!map(name: "My Time",   icon: "clock-o"),
      a!map(name: "Expenses",  icon: "money")
    },
```

#### \[Line 16-136\] Left navigation

The left navigation is constructed in two different ways depending on whether or not it's collapsed. When expanded, the left navigation is built using card layouts with [dynamic link](Dynamic_Link_Component.html) and [rich text display](Rich_Text_Component.html) components inside a `NARROW` column. When collapsed, the left navigation is built using `LARGE` rich text icons with dynamic links inside an `EXTRA-NARROW` column.

Inside of the first column, we iterate over each section defined in `local!collapsibleNavSections` using [a!forEach()](fnc_looping_a_foreach.html). This is where we then determine what size navigation to show by checking the value of `local!collapseNav`. The components used for each size vary, but both use `fv!index` to save the index of the selected section to `local!activeCollapsibleNavSection` in the dynamic link.

There are a couple of small details that have been added in for better functionality and user experience. We set `showBorder` parameter to `false` for the card layouts and used a rich text icon with a dynamic link to change the width of the navigation at the bottom of the list of icons.

```sail
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
     {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                items: local!collapsibleNavSections,
                expression: if(
                  local!collapseNav,
                  {
                    a!richTextDisplayField(
                      value: {
                        a!richTextIcon(
                          icon: fv!item.icon,
                          caption: fv!item.name,
                          link: a!dynamicLink(
                            value: fv!index,
                            saveInto: local!activeCollapsibleNavSection
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            fv!index = local!activeCollapsibleNavSection,
                            "ACCENT",
                            "SECONDARY"
                          ),
                          size: "LARGE"
                        )
                      },
                      align: "CENTER",
                      accessibilityText: if(
                        fv!index = local!activeCollapsibleNavSection,
                        fv!item.name & " " & "selected",
                        ""
                      )
                    )
                  },
                  a!cardLayout(
                    contents: a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: a!richTextIcon(
                              icon: fv!item.icon,
                              color: "SECONDARY",
                              size: if(local!collapseNav, "LARGE", "MEDIUM")
                            ),
                            align: "LEFT"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: a!richTextItem(
                              text: fv!item.name,
                              color: "ACCENT",
                              size: "MEDIUM",
                              style: if(
                                fv!index = local!activeCollapsibleNavSection,
                                "STRONG",
                                "PLAIN"
                              )
                            )
                          ),
                          showWhen: not(local!collapseNav)
                        )
                      },
                      alignVertical: "MIDDLE"
                    ),
                    link: a!dynamicLink(
                      value: fv!index,
                      saveInto: local!activeCollapsibleNavSection
                    ),
                    style: if(
                      fv!index = local!activeCollapsibleNavSection,
                      "ACCENT",
                      "NONE"
                    ),
                    showBorder: false,
                    accessibilityText: if(
                      fv!index = local!activeCollapsibleNavSection,
                      fv!item.name & " " & "selected",
                      ""
                    )
                  )
                )
              ),
              a!richTextDisplayField(
                value: a!richTextIcon(
                  icon: if(
                    local!collapseNav,
                    "angle-double-right",
                    "angle-double-left"
                  ),
                  caption: if(
                    local!collapseNav,
                    "Expand navigation bar",
                    "Collapse navigation bar"
                  ),
                  link: a!dynamicLink(
                    value: not(local!collapseNav),
                    saveInto: local!collapseNav
                  ),
                  linkStyle: "STANDALONE",
                  color: "SECONDARY",
                  size: "MEDIUM"
                ),
                align: "CENTER"
              ),
              /* This card is used to set a minimum height on the column so that the *
               * divider takes up more screen space when there is minimal content.   *
               * Once content is added to the main column, this can be removed.      */
              a!cardLayout(
                height: "TALL",
                showWhen: not(a!isPageWidth("PHONE")),
                showBorder: false
              )
            },
            width: if(local!collapseNav, "EXTRA_NARROW", "NARROW")
          ),
```

#### \[Line 137-203\] Selected section

Once the user clicks on an icon or a card in the left navigation pane, the selected section will render in the right column. In this pattern, we have only configured a basic section layout to display. You'll want to add your components to the contents of the section or replace the section with an interface object for the associated section.

To create a better division between our navigation and section contents, we've used the `showDividers` parameter in our [Columns Layout](Columns_Layout.html).

```sail
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
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
                    a!columnLayout(
            contents: {
              /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!collapisbleNavSections, you will need to make sure *
               * the list of sections here is the correct length.         */
              choose(
                local!activeCollapsibleNavSection,
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!collapsibleNavSections.name,
                    local!activeCollapsibleNavSection,
                    ""
                  ),
                  contents: {}
                )
              )
            }
          )
        },
        spacing: "SPARSE",
        showDividers: true
      )
    }
  )
}
```

## Additional navigation patterns

In addition to the Navigation (Collapsible) pattern described above, the Navigation, Navigation (Stamp), Navigation (Subsections), and Navigation (Lightweight) patterns are also available in your interface. They're located in **PALETTE**, under the **PATTERNS** tab.

### Navigation

This pattern is a simplified version of the Navigation (Collapsible) pattern, using only a `"NARROW"` column with the card layouts.

![screenshot of the navigation pattern](images/patterns/navigation-pattern.png)

#### Pattern expression

When you drag and drop the Navigation pattern onto your interface, 152 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    /* The selected navigation section */
    local!activeNavSection: 1,
    /* The navigation sections */
    local!navSections: {
      a!map(name: "Workspace", icon: "briefcase"),
      a!map(name: "Tasks",     icon: "tasks"),
      a!map(name: "Requests",  icon: "paper-plane"),
      a!map(name: "Calendar",  icon: "calendar"),
      a!map(name: "My Time",   icon: "clock-o"),
      a!map(name: "Expenses",  icon: "money")
    },
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                items: local!navSections,
                expression: a!cardLayout(
                  contents: a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: a!richTextIcon(
                            icon: fv!item.icon,
                            color: if(
                              fv!index = local!activeNavSection,
                              "STANDARD",
                              "SECONDARY"
                            ),
                            size: "MEDIUM"
                          ),
                          align: "LEFT"
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: a!richTextItem(
                            text: fv!item.name,
                            color: "ACCENT",
                            size: "MEDIUM",
                            style: if(
                              fv!index = local!activeNavSection,
                              "STRONG",
                              "PLAIN"
                            )
                          )
                        )
                      )
                    },
                    alignVertical: "MIDDLE"
                  ),
                  link: a!dynamicLink(
                    value: fv!index,
                    saveInto: local!activeNavSection
                  ),
                  style: if(
                    fv!index = local!activeNavSection,
                    "ACCENT",
                    "NONE"
                  ),
                  showBorder: false,
                  accessibilityText: if(
                    fv!index = local!activeNavSection,
                    fv!item.name & " " & "selected",
                    ""
                  )
                )
              ),
              /* This card is used to set a minimum height on the column so that the *
               * divider takes up more screen space when there is minimal content.   *
               * Once content is added to the main column, this can be removed.      */
              a!cardLayout(
                height: "TALL",
                showWhen: not(a!isPageWidth("PHONE")),
                showBorder: false
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!navSections, you will need to make sure            *
               * the list of sections here is the correct length.         */
              choose(
                local!activeNavSection,
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!navSections.name,
                    local!activeNavSection,
                    ""
                  ),
                  contents: {}
                )
              )
            }
          )
        },
        spacing: "SPARSE",
        showDividers: true
      )
    }
  )
}
```

### Navigation (Stamps)

This pattern is a lightweight version of the Navigation (Collapsible) pattern. Instead of using a combination of icons and titles, this pattern uses stamps with dynamic links to create an easy to use and visually pleasing side navigation.

![screenshot of the navigation stamps pattern](images/patterns/navigation_stamps.png)

#### Pattern expression

When you drag and drop the Navigation (Stamp) pattern onto your interface, 129 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    /* Defines whether or not to collapse the side nav */
    local!stampNav: false,
    /* The selected navigation section */
    local!activeStampNavSection: 1,
    /* The navigation sections */
    local!stampNavSections: {
      a!map(name: "Workspace", icon: "briefcase"),
      a!map(name: "Tasks",     icon: "tasks"),
      a!map(name: "Requests",  icon: "envelope-o"),
      a!map(name: "Calendar",  icon: "calendar"),
      a!map(name: "My Time",   icon: "clock-o"),
      a!map(name: "Expenses",  icon: "money")
    },
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!forEach(
                    items: local!stampNavSections,
                    expression: a!sideBySideItem(
                      item: a!stampField(
                        icon: fv!item.icon,
                        backgroundColor: if(
                          fv!index = local!activeStampNavSection,
                          "ACCENT",
                          "TRANSPARENT"
                        ),
                        contentColor: if(
                          fv!index = local!activeStampNavSection,
                          "STANDARD",
                          "ACCENT"
                        ),
                        link: a!dynamicLink(
                          value: fv!index,
                          saveInto: local!activeStampNavSection
                        ),
                        size: "SMALL",
                        tooltip: fv!item.name,
                        accessibilityText: if(
                          fv!index = local!activeStampNavSection,
                          fv!item.name & " " & "selected",
                          ""
                        )
                      )
                    )
                  )
                },
                spacing: "DENSE",
                stackWhen: {
                  "DESKTOP_WIDE",
                  "DESKTOP",
                  "DESKTOP_NARROW",
                  "TABLET_LANDSCAPE",
                  "TABLET_PORTRAIT"
                }
              )
            },
            width: "EXTRA_NARROW"
          ),
          a!columnLayout(
            contents: {
              /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!stampNavSections, you will need to make sure       *
               * the list of sections here is the correct length.         */
              choose(
                local!activeStampNavSection,
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                ),
                a!sectionLayout(
                  label: index(
                    local!stampNavSections.name,
                    local!activeStampNavSection,
                    ""
                  ),
                  contents: {}
                )
              )
            }
          )
        }
      )
    }
  )
}
```

### Navigation (Subsections)

This pattern is another variation of the Navigation pattern. It follows a similar style, but allows you to group sections for better organization.

![screenshot of the navigation subsections pattern](images/patterns/navigationSubsectionsPattern.png)

#### Pattern expression

When you drag and drop the Navigation (Subsection) pattern onto your interface, 206 lines of expressions will be added to the section where you dragged it.

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
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
{
  a!localVariables(
    /* The current navigation section */
    local!activeSubNavSection: 1,
    /* The selected navigation subsection */
    local!activeSubNavSubsection: 1,
    /* The navigation sections */
    local!subNavSections: {
      a!map(
        sectionName: "Quick Links",
        subsections: {
          "Workspace",
          "Tasks",
          "Requests",
          "Calendar"
        }
      ),
      a!map(
        sectionName: "Favorites",
        subsections: {
          "My Time",
          "Expenses"
        }
      )
    },
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                items: local!subNavSections,
                expression: a!localVariables(
                  local!parentSection: fv!index,
                  {
                    a!richTextDisplayField(
                      labelPosition: if(fv!isFirst, "COLLAPSED", "ABOVE"),
                      value: {
                        a!richTextItem(
                          text: fv!item.sectionName,
                          size: "MEDIUM",
                          style: "STRONG"
                        )
                      }
                    ),
                    a!forEach(
                      items: fv!item.subsections,
                      expression: a!cardLayout(
                        contents: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                a!richTextItem(
                                  text: fv!item,
                                  color: "ACCENT",
                                  size: "STANDARD",
                                  style: if(
                                    and(
                                      local!parentSection = local!activeSubNavSection,
                                      fv!index = local!activeSubNavSubsection
                                    ),
                                    "STRONG",
                                    "PLAIN"
                                  )
                                )
                              }
                            )
                          }
                        ),
                        link: a!dynamicLink(
                          saveInto: {
                            a!save(local!activeSubNavSubsection, fv!index),
                            a!save(local!activeSubNavSection, local!parentSection)
                          }
                        ),
                        style: if(
                          and(
                            local!parentSection = local!activeSubNavSection,
                            fv!index = local!activeSubNavSubsection
                          ),
                          "ACCENT",
                          "NONE"
                        ),
                        showBorder: false,
                        accessibilityText: if(
                          and(
                            local!parentSection = local!activeSubNavSection,
                            fv!index = local!activeSubNavSubsection
                          ),
                          fv!item & " " & "selected",
                          ""
                        )
                      )
                    )
                  }
                )
              ),
              /* This card is used to set a minimum height on the column so that the *
               * divider takes up more screen space when there is minimal content.   *
               * Once content is added to the main column, this can be removed.      */
              a!cardLayout(
                height: "TALL",
                showWhen: not(a!isPageWidth("PHONE")),
                showBorder: false
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!subNavSections, you will need to make sure         *
               * the list of sections here is the correct length.         */
              choose(
                local!activeSubNavSection,
                choose(
                  local!activeSubNavSubsection,
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  ),
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  ),
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  ),
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  )
                ),
                choose(
                  local!activeSubNavSubsection,
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  ),
                  a!sectionLayout(
                    label: index(
                      index(
                        local!subNavSections.subsections,
                        local!activeSubNavSection,
                        ""
                      ),
                      local!activeSubNavSubsection,
                      ""
                    ),
                    contents: {}
                  )
                )
              )
            }
          )
        },
        spacing: "SPARSE",
        showDividers: true
      )
    }
  )
}
```

### Navigation (Lightweight)

This pattern is another variation of the Navigation pattern. It has a similar style and feel to the "Navigation (subsections)" pattern, but without the groups and with a more subtle selection behavior. The simple, but effective selection behavior was created by adding a [decorative bar](card_layout.html) to a card layout.

![screenshot of the navigation lightweight pattern](images/patterns/navigationLightweightPattern.png)

#### Pattern expression

When you drag and drop the Navigation (Lightweight) pattern onto your interface, 134 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    /* The selected navigation section */
    local!activeLightweightNavSection: 1,
    /* The navigation sections */
    local!lightweightNavSections: {
      "Workspace",
      "Tasks",
      "Requests",
      "Calendar",
      "My Time",
      "Expenses"
    },
    a!columnsLayout(
      columns: {
        /* Navigation column */
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!forEach(
                  items: local!lightweightNavSections,
                  expression: a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item,
                                  color: "ACCENT",
                                  style: if(
                                    local!activeLightweightNavSection = fv!index,
                                    "STRONG",
                                    "PLAIN"
                                  )
                                )
                              }
                            )
                          )
                        }
                      )
                    },
                    link: a!dynamicLink(
                      saveInto: {
                        a!save(local!activeLightweightNavSection, fv!index)
                      }
                    ),
                    style: "#F7F7F7",
                    padding: "NONE",
                    marginBelow: "STANDARD",
                    showBorder: false,
                    decorativeBarPosition: "START",
                    decorativeBarColor: if(
                      local!activeLightweightNavSection = fv!index,
                      "ACCENT",
                      "#F7F7F7"
                    ),
                    accessibilityText: if(
                      fv!index = local!activeLightweightNavSection,
                      "Selected section.",
                      "Unselected section. Press enter to select section."
                    )
                  )
                )
              },
              style: "#F7F7F7",
              padding: "STANDARD",
              showBorder: false
            ),
            a!cardLayout(
              height: "TALL",
              showWhen: not(a!isPageWidth("PHONE")),
              style: "#F7F7F7",
              padding: "STANDARD",
              showBorder: false
            )
          },
          width: "NARROW"
        ),
        /* Content column */
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: a!localVariables(
                local!sectionLabel: index(
                  local!lightweightNavSections,
                  local!activeLightweightNavSection,
                  ""
                ),
                {
                  choose(
                    local!activeLightweightNavSection,
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    ),
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    ),
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    ),
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    ),
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    ),
                    a!sectionLayout(
                      label: local!sectionLabel,
                      contents: {}
                    )
                  )
                }
              ),
              padding: "STANDARD",
              showBorder: "NONE"
            )
          }
        )
      }
    )
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...