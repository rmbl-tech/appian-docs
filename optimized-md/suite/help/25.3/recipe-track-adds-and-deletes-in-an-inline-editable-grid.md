---
source_url: https://docs.appian.com/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html
original_path: recipe-track-adds-and-deletes-in-an-inline-editable-grid.html
version: "25.3"
title: "Track Adds and Deletes in Inline Editable Grid"
page_id: "recipe-track-adds-and-deletes-in-an-inline-editable-grid"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Track Adds and Deletes in Inline Editable Grid

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

In an inline editable grid, track the employees that are added for further processing in the next process steps.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

Also track the ids of items that are deleted for use in the Delete from Data Store Entities smart service after the user submits the form.

![](images/SAIL_Recipe_Editable_Grid_Tracking_Adds_and_Deletes.png)

This scenario demonstrates:

-   How to store data into multiple variables when the user interacts with the components in a grid layout.

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
a!localVariables(
  /* In a real app, these values should be held in the database or in a constant */
  local!departments: { "Corporate", "Engineering", "Finance", "HR", "Professional Services", "Sales" },
  /*
  * local!employees is provided in this recipe as a way to start with hard-coded
  * data. However, this data is identical to the data created from the entity-backed
  * tutorial. Replace the hard-coded data with a query to the employee data store
  * entity and all of the employee records from the tutorial will appear.
  *
  * To replace this data with your own, replace (ctrl+H or cmd+H) all references to
  * local!employees with your data source, either via rule input or local variable.
  */
  local!employees: {
    a!map( id: 1, firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
    a!map( id: 2, firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
    a!map( id: 3, firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 )
  },
  local!deletedEmployeeIds,
  a!formLayout(
    titleBar: "Example: Inline Editable Grid Tracking Adds and Deletes",
    contents: {
      a!gridLayout(
        totalCount: count(local!employees),
        headerCells: {
          a!gridLayoutHeaderCell(label: "First Name" ),
          a!gridLayoutHeaderCell(label: "Last Name" ),
          a!gridLayoutHeaderCell(label: "Department" ),
          a!gridLayoutHeaderCell(label: "Title" ),
          a!gridLayoutHeaderCell(label: "Phone Number" ),
          a!gridLayoutHeaderCell(label: "Start Date", align: "RIGHT" ),
          /* For the "Remove" column */
          a!gridLayoutHeaderCell(label: "" )
        },
        /* Only needed when some columns need to be narrow */
        columnConfigs: {
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:3 ),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:3 ),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:3 ),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:3 ),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:3 ),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight:2 ),
          a!gridLayoutColumnConfig(width: "ICON")
        },
        /*
        * a!forEach() will take local!employee data and used that data to loop through an
        * expression that creates each row.
        *
        * When modifying the recipe to work with your data, you only need to change:
        * 1.) the number of fields in each row
        * 2.) the types of fields for each column (i.e. a!textField() for text data elements)
        * 3.) the fv!item elements. For example fv!item.firstName would change to fv!item.yourdata
        */
        rows: a!forEach(
          items: local!employees,
          expression: a!gridRowLayout(
            contents: {
              /* For the First Name Column*/
              a!textField(
                /* Labels are not visible in grid cells but are necessary to meet accessibility requirements */
                label: "first name " & fv!index,
                value: fv!item.firstName,
                saveInto: fv!item.firstName,
                required: true
              ),
              /* For the Last Name Column*/
              a!textField(
                label: "last name " & fv!index,
                value: fv!item.lastName,
                saveInto: fv!item.lastName,
                required: true
              ),
              /* For the Department Column*/
              a!dropdownField(
                label: "department " & fv!index,
                placeholder: "-- Please Select-- ",
                choiceLabels: local!departments,
                choiceValues: local!departments,
                value: fv!item.department,
                saveInto: fv!item.department,
                required: true
              ),
              /* For the Title Column*/
              a!textField(
                label: "title " & fv!index,
                value: fv!item.title,
                saveInto: fv!item.title,
                required: true
              ),
              /* For the Phone Number Column*/
              a!textField(
                label: "phone number " & fv!index,
                placeholder:"555-456-7890",
                value: fv!item.phoneNumber,
                saveInto: fv!item.phoneNumber,
                validations: if( len(fv!item.phoneNumber) > 12, "Contains more than 12 characters. Please reenter phone number, and include only numbers and dashes", null )
              ),
              /* For the Start Date Column*/
              a!dateField(
                label: "start date " & fv!index,
                value: fv!item.startDate,
                saveInto: fv!item.startDate,
                required: true,
                align: "RIGHT"
              ),
              /* For the Removal Column*/
              a!imageField(
                label: "delete " & fv!index,
                images: a!documentImage(
                  document: a!iconIndicator( "REMOVE"),
                  altText: "Remove Employee",
                  caption: "Remove " & fv!item.firstName & " " & fv!item.lastName,
                  link: a!dynamicLink(
                    value: fv!index,
                    saveInto: {
                      if(
                        isnull( fv!item.id),
                        {},
                        a!save( local!deletedEmployeeIds, append(local!deletedEmployeeIds, fv!item.id))
                      ),
                      a!save( local!employees, remove(local!employees, save!value))
                    }
                  )
                ),
                size: "ICON"
              )
            },
            id: fv!index
          )
        ),
        addRowlink: a!dynamicLink(
          label: "Add Employee",
          /*
           * For your use case, set the value to a blank instance of your CDT using
           * the type constructor, e.g. type!Employee(). Only specify the field
           * if you want to give it a default value e.g. startDate: today()+1.
           */
          value: {
            firstName: "",
            lastName: "",
            department: "",
            title: "",
            phoneNumber: "",
            startDate: today() + 1
          },
          saveInto: {
            a!save( local!employees, append(local!employees, save!value))
          }
        ),
        /* This validation prevents existing employee start date from changing to a date in the future*/
        validations: if(
          a!forEach(
            items:local!employees,
            expression: and( not( isnull( fv!item.id)), todate( fv!item.startDate) > today() )
          ),
          "Existing Employees cannot have an effective start date beyond today",
          null
        ),
        rowHeader: 1
      ),
      a!textField(
        label: "New Employees",
        labelPosition: "ADJACENT",
        value: joinarray(
          index(
            local!employees,
            where(
              a!forEach(
                local!employees,
                isnull( fv!item.id)
              )
            ),
            {}
          ),
          char(10)
        ),
        readOnly: true
      ),
      a!textField(
        label: "Deleted Employees",
        labelPosition: "ADJACENT",
        value: local!deletedEmployeeIds,
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

1.  Remove a row from the pre-loaded data set by clicking the "X" link. Notice that the item id is added to the array of deleted item ids.
2.  Add a row, enter values into the blank fields. Notice that the new employee is added to the array of added employees in the _New Employees_ field.

## Notable implementation details

-   New employee values are seen immediately after updating in the _New Employees_ field. This field is simply showing any values in _local!employees_ without an value for _id_.
-   If you intend to immediately write the new and edited items using the Write to Data Store Entities smart service, you don't need to capture the array of added items separately from your items array. This is because the Write to Data Store Entity smart service can do updates and inserts at the same time. See also: [Write to Data Store Entity Smart Service](Write_to_Data_Store_Entity_Smart_Service.html)
-   The array of deleted item ids may contain null values corresponding to newly added items. You don't have to remove the nulls if you are planning on passing the ids to the Delete from Data Store Entities smart service. This is because the smart service ignores the null values. See also: [Delete from Data Store Entities Smart Service](Delete_from_Data_Store_Entities_Smart_Service.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...