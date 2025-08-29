---
source_url: https://docs.appian.com/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html
original_path: recipe-refresh-data-after-executing-a-smart-service.html
version: "25.3"
title: "Refresh Data After Executing a Smart Service"
page_id: "recipe-refresh-data-after-executing-a-smart-service"
section: "Expression"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Refresh Data After Executing a Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This scenario demonstrates:

-   How to force a variable to be refreshed after a smart service is executed to get the latest data.

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
a!localVariables(
  local!updateCounter: 0,
  local!employee: a!refreshVariable(
    value: a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        logicalExpression: a!queryLogicalExpression(
          operator: "AND",
          filters: {
            a!queryFilter(field: "id", operator: "=", value: 1)
          },
          ignoreFiltersWithEmptyValues: true
        ),
        pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 1)
      ),
      fetchTotalCount: false
    ).data[1],
    refreshOnVarChange: local!updateCounter
  ),
  local!edit: false,
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!textField(
              label: "First Name",
              value: local!employee.firstName,
              saveInto: local!employee.firstName,
              readOnly: not(local!edit)
            ),
            a!textField(
              label: "Last Name",
              value: local!employee.lastName,
              saveInto: local!employee.lastName,
              readOnly: not(local!edit)
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Department",
              value: local!employee.department,
              saveInto: local!employee.department,
              readOnly: not(local!edit)
            ),
            a!textField(
              label: "Title",
              value: local!employee.title,
              saveInto: local!employee.title,
              readOnly: not(local!edit)
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Phone Number",
              value: local!employee.phoneNumber,
              saveInto: local!employee.phoneNumber,
              readOnly: not(local!edit)
            ),
            a!dateField(
              label: "Start Date",
              value: local!employee.startDate,
              saveInto: local!employee.startDate,
              readOnly: not(local!edit)
            )
          }
        )
      }
    ),
    a!sideBySideLayout(
      items: {
        a!sideBySideItem(
          item: a!buttonArrayLayout(
            buttons: {
              a!buttonWidget(
                label: "Cancel",
                style: "OUTLINE",
                color: "SECONDARY",
                value: false,
                saveInto: local!edit,
                showWhen: local!edit
              )
            },
            align: "START"
          )
        ),
        a!sideBySideItem(
          item: a!buttonArrayLayout(
            buttons: {
              a!buttonWidget(
                label: "Edit",
                value: true,
                saveInto: local!edit,
                showWhen: not(local!edit)
              ),
              a!buttonWidget(
                label: "Save",
                style: "SOLID",
                showWhen: local!edit,
                value: false,
                saveInto: {
                  local!edit,
                  a!writeToDataStoreEntity(
                    dataStoreEntity: cons!EMPLOYEE_ENTITY,
                    valueToStore: local!employee,
                    onSuccess: a!save(
                      local!updateCounter,
                      local!updateCounter + 1
                    )
                  )
                }
              )
            },
            align: "END"
          )
        )
      }
    )
  }
)
```

## Test it out

1.  Click the **Edit** button
2.  Edit one of the employee fields
3.  Click the **Save** button

## Notable implementation details

-   The **Save** button increments a counter to make sure the value of `local!updateCounter` always changes. Using a boolean flag that gets set to true when you click the button wouldn't work because the value wouldn't change between the first and second time you clicked the button.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...