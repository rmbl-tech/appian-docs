---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html
original_path: recipe-add-validations-to-an-inline-editable-grid.html
version: "25.3"
title: "Add Validations to an Inline Editable Grid"
page_id: "recipe-add-validations-to-an-inline-editable-grid"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add Validations to an Inline Editable Grid

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

Allows the user to change data directly in a grid, and validate a various entries.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

In this case, the recipe validates for a relevant phone number standard as well as non-sensical dates for existing employees.

![](images/SAIL_Recipe_Inline_Editable_Grid_with_Custom_Validations.png)

This scenario demonstrates:

-   How to configure validation messages that show up as soon as a condition is satisfied
-   How to configure validation messages to appear outside the component where the validation occurred

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
a!localVariables(
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
    a!map( id: 3, firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
  },
  a!formLayout(
    titleBar: a!headerTemplateSimple(
      title: "Add or Update Employee Data",
      secondaryText: "Add, edit, or remove Employee data in an inline editable grid",
    ),
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
                required:true
              ),
              /* For the Department Column*/
              a!dropdownField(
                label: "department " & fv!index,
                placeholder: "-- Select -- ",
                choiceLabels: { "Corporate", "Engineering", "Finance", "Human Resources", "Professional Services", "Sales" },
                choiceValues: { "Corporate", "Engineering", "Finance", "Human Resources", "Professional Services", "Sales" },
                value: fv!item.department,
                saveInto: fv!item.department,
                required:true
              ),
              /* For the Title Column*/
              a!textField(
                label: "title " & fv!index,
                value: fv!item.title,
                saveInto: fv!item.title,
                required:true
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
                required:true,
                validations: if( and( isnull(fv!item.id) , todate(fv!item.startDate)  < today() ), "This Employee cannot have a start date before today.", null),
                align: "RIGHT"
              ),
              /* For the Removal Column*/
              a!richTextDisplayField(
                value: a!richTextIcon(
                  icon: "close",
                  altText: "delete " & fv!index,
                  caption: "Remove " & fv!item.firstName & " " & fv!item.lastName,
                  link: a!dynamicLink(
                    value: fv!index,
                    saveInto: {
                      a!save(local!employees, remove(local!employees, save!value))
                    }
                  ),
                  linkStyle: "STANDALONE",
                  color: "NEGATIVE"
                )
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
          value: {startDate: today() + 1},
          saveInto: {
            a!save(local!employees, append(local!employees, save!value))
          }
        ),
        /* This validation prevents existing employee start date from changing to a date in the future*/
        validations: if(
          a!forEach(
            items: local!employees,
            expression: and( not( isnull( fv!item.id)), todate(fv!item.startDate) > today() )
          ),
          "Existing Employees cannot have an effective start date beyond today",
          null
        ),
        rowHeader: 1
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

1.  Change an employee's _phoneNumber_ to a value greater than 12 digits. Notice that the validation message shows up when you move away from the field.
2.  Change an existing employee's _startDate_ to a date in the future. Notice that the validation message shows up when you move away from the field. Change the date back to a past date
3.  Add a new employee. Change that new employee's _startDate_ to a date in the future. Notice that the validation message does not show up when you move away from the field.

## Notable implementation details

-   The array of validations can contain either text or a validation message created with `a!validationMessage()`. Use the latter when you want the validation message to show up when the user clicks a submit button, or a validating button.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...