---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html
original_path: recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html
version: "25.3"
title: "Use Selection For Bulk Actions in an Inline Editable Grid"
page_id: "recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use Selection For Bulk Actions in an Inline Editable Grid

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

Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

![](images/sail-recipe-editable-grid-using-selection-for-bulk-actions.png)

This scenario demonstrates:

-   How to use the grid layout component to build an inline editable grid
-   How to use selection to enable bulk actions
-   How to make a cell conditionally required based on the value in another cell

## Setup

This example makes use of a custom data type. Create a `PrItem` custom data type with the following fields:

-   id (Number (Integer))
-   summary (Text)
-   qty (Number (Integer))
-   unitPrice (Number (Decimal))
-   dept (Text)
-   due (Date)
-   decision (Text)
-   reason (Text)

**Tip:**  We use Text as the data type for `dept` and `decision` for simplicity. Typically, these fields would reference a lookup table.

Now that we've created the supporting data type, let's move on to the main expression.

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
a!localVariables(
  local!items: {
    type!PrItem(id: 1, summary: "Item 1", qty: 1, unitPrice: 10, dept: "Sales",   due: today() + 10),
    type!PrItem(id: 2, summary: "Item 2", qty: 2, unitPrice: 20, dept: "Finance", due: today() + 20),
    type!PrItem(id: 3, summary: "Item 3", qty: 3, unitPrice: 30, dept: "Sales",   due: today() + 30)
  },
  local!selectedIndices: tointeger({}),
  a!formLayout(
    titleBar: "Example: Inline Editable Grid using Selection for Bulk Actions",
    contents: {
      a!buttonArrayLayout(buttons: {
        a!buttonWidget(
          label: "Approve",
          value: "Approve",
          /* You can save into a field at many indices at a time `*/
          saveInto: {
            local!items[local!selectedIndices].decision,
            /*`Clear the selected indices after a decision is made `*/
            a!save(local!selectedIndices, tointeger({}))
          },
          disabled: count(local!selectedIndices) = 0
        ),
        a!buttonWidget(
          label: "Reject",
          value: "Reject",
          saveInto: {
            local!items[local!selectedIndices].decision,
            /*`Clear the selected indices after a decision is made `*/
            a!save(local!selectedIndices, tointeger({}))
          },
          disabled: count(local!selectedIndices) = 0
        ),
        a!buttonWidget(
          label: "Need More Info",
          value: "Need More Info",
          saveInto: {
            local!items[local!selectedIndices].decision,
            /*` Clear the selected indices after a decision is made */
            a!save(local!selectedIndices, tointeger({}))
          },
          disabled: count(local!selectedIndices) = 0
        )
      }),
      a!gridLayout(
        headerCells: {
          a!gridLayoutHeaderCell(label: "Summary"),
          a!gridLayoutHeaderCell(label: "Qty", align: "RIGHT"),
          a!gridLayoutHeaderCell(label: "U/P", align: "RIGHT"),
          a!gridLayoutHeaderCell(label: "Amount", align: "RIGHT"),
          a!gridLayoutHeaderCell(label: "Department"),
          a!gridLayoutHeaderCell(label: "Due", align: "RIGHT"),
          a!gridLayoutHeaderCell(label: "Decision"),
          a!gridLayoutHeaderCell(label: "Reason")
        },
        columnConfigs: {
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 5),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3)
        },
        rows: a!forEach(
          items:local!items,
          expression:{
            a!gridRowLayout(
              id: fv!index,
              contents: {
                a!textField(
                  /* Labels are not visible in grid cells but are necessary to meet accessibility requirements */
                  label: "summary " & fv!index,
                  value: fv!item.summary,
                  readOnly: true
                ),
                a!integerField(
                  label: "qty " & fv!index,
                  value: fv!item.qty,
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!floatingPointField(
                  label: "unitPrice " & fv!index,
                  value: fv!item.unitPrice,
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!textField(
                  label: "amount " & fv!index,
                  value: if(
                    or(isnull(fv!item.qty), isnull(fv!item.unitPrice)),
                    null,
                    a!currency(
                      isoCode: "USD",
                      value: fv!item.qty * fv!item.unitPrice
                    )
                  ),
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!dropdownField(
                  label: "dept " & fv!index,
                  choiceLabels: {"Finance", "Sales"},
                  placeholder: "--Select-- ",
                  choiceValues: {"Finance", "Sales"},
                  value: fv!item.dept,
                  disabled: true
                ),
                a!dateField(
                  label: "due " & fv!index,
                  value: fv!item.due,
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!dropdownField(
                  label: "decision " & fv!index,
                  choiceLabels: {"Approve", "Reject", "Need More Info"},
                  placeholder: "--Select-- ",
                  choiceValues: {"Approve", "Reject", "Need More Info"},
                  value: fv!item.decision,
                  saveInto: fv!item.decision,
                  required: true
                ),
                a!textField(
                  label: "reason" & fv!index,
                  value: fv!item.reason,
                  saveInto: fv!item.reason,
                  required: and(
                    not(isnull(fv!item.decision)),
                    fv!item.decision <> "Approve"
                  ),
                  requiredMessage: "A reason is required for items that are not approved"
                )
              }
            )
          }
        ),
        selectable: true,
        selectionValue: local!selectedIndices,
        /* Flatten the selected values so the result is easier to work with */
        /* when the select/deselect all option is used in an editable grid  */
        selectionSaveInto: a!save(local!selectedIndices, a!flatten(save!value)),
        rowHeader: 2
      ),
      a!textField(
        label: "Selected Values",
        labelPosition: "ADJACENT",
        instructions: typename(typeof(local!selectedIndices)),
        value: local!selectedIndices,
        readOnly: true
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: a!buttonWidget(
        label: "Submit",
        submit: true
      )
    )
  )
)
```

## Test it out

1.  Select a decision inline in the grid.
2.  Select a couple rows using the selection checkboxes and notice that the buttons are enabled above the grid. Click on a button and notice that the decision field is updated for the selected rows.
3.  Select "Reject" or "Need More Info", leave the corresponding reason blank, and attempt to submit to see the required message.

## Notable implementation details

-   You can save into a field in an array of custom data type values directly without having to use looping functions or rules i.e. `saveInto: ri!cdtArray[{1,2,3}].fieldName`. Use this design pattern when the form has access to the entire array of data, and the data is not being modified outside the form. Otherwise, create a rule to find the items to update by the item id.
-   Notice that the `a!forEach()` function for the grid rows has access to the items across all rows, as well as all the fields of the item within its own row. This is how you're able to dynamically calculate values across columns, and if necessary, across rows.
-   The component in each cell has a label, but the label isn't displayed. Labels and instructions aren't rendered within a grid cell. It is useful to enter a label for expression readability, and to help identify which cell has an expression error since the label is displayed in the error message. Labels are also necessary to meet accessibility requirements, so that a screen reader can properly parse the grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...