---
source_url: https://docs.appian.com/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html
original_path: recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html
version: "25.3"
title: "Limit the Number of Rows in a Grid That Can Be Selected"
page_id: "recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Limit the Number of Rows in a Grid That Can Be Selected

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

Limit the number of rows that can be selected to an arbitrary number.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

![limit-number-of-rows-selected.png](images/limit-number-of-rows-selected_23_4.png)

This scenario demonstrates:

-   How to configure grid selection in a Read-Only Grid.
-   How to limit selection to an arbitrary number.
-   How to remove selections without clicking through pages.

## Expression

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
a!localVariables(
  local!selection,
  /* This is the maximum number of rows you can select from the grid. */
  local!selectionLimit: 2,
  /*This variable would be used to pass the full rows of data on the selected items out of this interface, such as to a process model. */
  local!selectedEmployees,
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!gridField(
              label: "Employees",
              labelPosition: "ABOVE",
              instructions: "Select up to " & local!selectionLimit & " employees.",
              data: recordType!Employee,
              columns: {
                a!gridColumn(
                  label: "ID",
                  sortField: "id",
                  value: fv!row[recordType!Employee.fields.id],
                  width: "ICON"
                ),
                a!gridColumn(
                  label: "First Name",
                  sortField: "firstName",
                  value: fv!row[recordType!Employee.fields.firstName]
                ),
                a!gridColumn(
                  label: "Last Name",
                  sortField: "lastName",
                  value: fv!row[recordType!Employee.fields.lastName]
                ),
                a!gridColumn(
                  label: "Phone Number",
                  sortField: "phoneNumber",
                  value: fv!row[recordType!Employee.fields.phoneNumber]
                )
              },
              pagesize: 10,
              selectable: true,
              selectionstyle: "ROW_HIGHLIGHT",
              /* This is where we pass the maximum number of rows you can select into the grid. */
              maxSelections: local!selectionLimit,
              selectionvalue: local!selection,
              showSelectionCount: "ON",
              selectionSaveInto: {
                local!selection,
                /*This save adds the full rows of data for items selected in the most recent user interaction to local!selectedEmployees. */
                a!save(
                  local!selectedEmployees,
                  append(
                    local!selectedEmployees,
                    fv!selectedRows
                  )
                ),
                /*This save removes the full rows of data for items deselected in the most recent user interaction to local!selectedEmployees. */
                a!save(
                  local!selectedEmployees,
                  difference(
                    local!selectedEmployees,
                    fv!deselectedRows
                  )
                )
              }
            ),
          },
          width: "WIDE"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Selected Employees",
              contents: {
                a!richTextDisplayField(
                  value: if(
                    or(
                      isnull(local!selectedEmployees),
                      length(local!selectedEmployees) = 0
                    ),
                    a!richTextItem(text: "None", style: "EMPHASIS"),
                    {}
                  ),
                  marginBelow: "NONE"
                ),
                a!forEach(
                  local!selectedEmployees,
                  a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              value: {
                                if(
                                  or(
                                    isnull(local!selectedEmployees),
                                    length(local!selectedEmployees) = 0
                                  ),
                                  a!richTextItem(text: "None", style: "EMPHASIS"),
                                  {
                                    a!richTextIcon(icon: "USER-CIRCLE", color: "ACCENT")

                                  }
                                )
                              },
                              marginBelow: "LESS"
                            ),
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              value: {
                                if(
                                  or(
                                    isnull(local!selectedEmployees),
                                    length(local!selectedEmployees) = 0
                                  ),
                                  a!richTextItem(text: "None", style: "EMPHASIS"),
                                  { a!richTextItem(text: fv!item.[recordType!Employee.fields.firstName] & " " & fv!item.[recordType!Employee.fields.lastName] ) }
                                )
                              },
                              marginBelow: "LESS"
                            )
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              value: {
                                if(
                                  or(
                                    isnull(local!selectedEmployees),
                                    length(local!selectedEmployees) = 0
                                  ),
                                  a!richTextItem(text: "None", style: "EMPHASIS"),
                                  {
                                    a!richTextIcon(
                                      icon: "times",
                                      link: a!dynamicLink(
                                        value: fv!index,
                                        saveInto: {
                                          a!save(
                                            local!selection,
                                            remove(local!selection, fv!index)
                                          ),
                                          a!save(
                                            local!selectedEmployees,
                                            remove(local!selectedEmployees, fv!index)
                                          )
                                        }
                                      ),
                                      linkStyle: "STANDALONE",
                                      color: "SECONDARY"
                                    ),
                                    char(10)
                                  }
                                )
                              },
                              marginBelow: "LESS"
                            ),
                            width: "MINIMIZE"
                          )
                        }
                      )
                    },
                    marginBelow: "EVEN_LESS"
                  )
                )
              }
            ),
          }
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...