---
source_url: https://docs.appian.com/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html
original_path: recipe-update-an-entity-backed-record-from-its-summary-view.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update an Entity-Backed Record Type from its Summary View

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

Enable users to make quick changes to a record by updating it right from a record view.

**Note:**  This recipe uses example data and objects created through the [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) recipe. Make sure you've completed that recipe in your environment first.

![](images/SailSmartServicesRecordViewRecipe.png)

This scenario demonstrates:

-   How to use the Write to Data Store smart service to update an entity-backed record type in response to a [user interaction](executing_smart_services.html).

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
a!localVariables(
  /* In a real app, these values should be held in the database or in a constant */
  local!departments: { "Corporate", "Engineering", "Finance", "HR", "Professional Services", "Sales" },
  /*
  * Employee data is being passed in via a query and converted
  * back to CDT.
  *
  * To use your date, replace the employee local variable with the
  * appropriate data and update the component fields to fit your
  * CDT data points.
  */
  local!employee: cast(
  'type!{urn:com:appian:types:Employee}Employee',
    a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        selection: a!querySelection(columns: {
          a!queryColumn( field: "id"),
          a!queryColumn( field: "firstName"),
          a!queryColumn( field: "lastName"),
          a!queryColumn( field: "department"),
          a!queryColumn( field: "title"),
          a!queryColumn( field: "phoneNumber"),
          a!queryColumn( field: "startDate")
        }),
        /*
        * Replace the hard-coded value of 1 with your primary key
        * via a rule input to bring back a single row of data
        */
        filter: a!queryFilter( field: "id", operator:"=", value:1 ),
        pagingInfo: a!pagingInfo(1,1)
      )
    ).data
  ),
  local!isTransfer: false,
  /* Used to keep changes in a sandbox. */
  local!updatedEmployeeData,
  a!columnsLayout(
    columns:{
      a!columnLayout(
        contents:{
          a!textField(
            label: "First Name",
            labelPosition: "ADJACENT",
            value: local!employee.firstName,
            readOnly: true
          ),
          a!textField(
            label: "Last Name",
            labelPosition: "ADJACENT",
            value: local!employee.lastName,
            readOnly: true
          ),
          a!textField(
            label: "Phone Number",
            labelPosition: "ADJACENT",
            value: local!employee.phoneNumber,
            readOnly: true
          )
        }
      ),
      a!columnLayout(
        contents:{
          if(
            local!isTransfer,
            {
              a!dropdownField(
                label: "New Department",
                labelPosition: "ADJACENT",
                choiceLabels: local!departments,
                choiceValues: local!departments,
                value: local!updatedEmployeeData.department,
                saveInto: local!updatedEmployeeData.department
              ),
              a!textField(
                label: "New Title",
                labelPosition: "ADJACENT",
                required: true,
                value: local!updatedEmployeeData.title,
                saveInto: local!updatedEmployeeData.title
              )
            },
            {
              a!textField(
                label: "Department",
                labelPosition: "ADJACENT",
                value: local!employee.department,
                readOnly: true
              ),
              a!textField(
                label: "Title",
                labelPosition: "ADJACENT",
                value: local!employee.title,
                readOnly: true
              )
            }
          ),
          a!textField(
            label: "Start Date",
            labelPosition: "ADJACENT",
            value: text( local!employee.startDate, "mmm dd, yyyy"),
            readOnly: true
          ),
          a!linkField(
            labelPosition: "ADJACENT",
            links: a!dynamicLink(
              label: "Transfer employee",
              value: true,
              saveInto: {
                local!isTransfer,
                a!save( local!updatedEmployeeData, local!employee)
              }
            ),
            showWhen: not( local!isTransfer)
          ),
          a!buttonLayout(
            primaryButtons:{
              a!buttonWidget(
                label: "Transfer",
                validate: true,
                saveInto:{
                  a!writeToDataStoreEntity(
                     dataStoreEntity: cons!EMPLOYEE_ENTITY,
                     valueToStore: local!employee,
                     onSuccess: a!save(local!employee, local!updatedEmployeeData)
                  ),
                  a!save( local!isTransfer, false)
                }
              )
            },
            secondaryButtons:{
              a!buttonWidget(
                label: "Go Back",
                value: false,
                saveInto: local!isTransfer
              )
            },
            showWhen: local!isTransfer
          )
        }
      )
    }
  )
)
```

## Test it Out

1.  Click on the link **Transfer Employee**. Notice that department and title have now been turned into editable fields.
2.  Change the value of _New Department_ and _New Title_ and click **Transfer**. Notice the entered values remain.
3.  Click on the link **Transfer Employee**. Change the value of _New Department_ and _New Title_ and click **Go Back**. Notice the previous values are shown.

## Notable implementation details

-   The ability to persist data directly to the database from the summary view should be considered when the desired outcome it to simply spot update data. If other things need to happen as a result of the change, it's best to move this to a related action to allow a process to manage the update.
-   This recipe provides only the interface example and assumes that this dashboard would go in an employee entity-backed record. However, this expression could be used in any user interface that makes sense.
-   If an error occurs updating the status, you can see the specific error encountered while testing the interface, but the end user will see the configured error message in the dropdown field's validation message. When saving multiple fields at once, consider using a section validation error or a rich text display component with an error icon to display the message.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...