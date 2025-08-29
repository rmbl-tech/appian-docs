---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html
original_path: recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add, Edit, and Remove Data in an Inline Editable Grid

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

Allow the user to change data directly in an inline editable grid.

![](images/SAIL-recipe-inline-editable-grid.png)

This scenario demonstrates:

-   How to use the grid layout component to build an inline editable grid
-   How to allow users to add and remove rows in the grid
-   How to pass in a default value initially and while adding a new row

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
a!localVariables(
  /*
  * local!employess is provided in this recipe as a way to start with hard-coded
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
    titleBar: "Example: Add,Update, or Remove Employee Data",
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
                saveInto: fv!item.phoneNumber
              ),
              /* For the Start Date Column*/
              a!dateField(
                label: "start date " & fv!index,
                value: fv!item.startDate,
                saveInto: fv!item.startDate,
                required:true,
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
          value: {
            startDate: today() + 1
          },
          saveInto: {
            a!save(local!employees, append(local!employees, save!value))
          }
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

1.  Edit values in an existing row.
2.  Click the **Add Employee** link to insert a new row into the editable grid. Add values to that row.
3.  Delete a row by clicking on the red **X** at the end of a row. Notice the remaining rows will adjust automatically.

## Notable implementation details

-   The component in each cell has a label, but the label isn't displayed. Labels and instructions aren't rendered within a grid cell. It is useful to enter a label for expression readability, and to help identify which cell has an expression error since the label is displayed in the error message. Labels are also necessary to meet accessibility requirements, so that a screen reader can properly parse the grid.
-   To keep track of which items are removed so that you can execute the Delete from Data Store Entity smart service for the removed items, see the [Track Adds and Deletes in an Inline Editable Grid](recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) recipe.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...