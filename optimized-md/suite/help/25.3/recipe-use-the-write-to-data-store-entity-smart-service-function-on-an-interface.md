---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html
original_path: recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use the Write to Data Store Entity Smart Service Function on an Interface

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

Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

![SAIL_Recipe_Use_Smart_Service_Function.png](images/SAIL_Recipe_Use_Smart_Service_Function.png)

Follow this pattern to create example data and supporting objects to use with other interface patterns (including those that use record types). After using this pattern, [review other patterns](SAIL_Recipes.html) to learn how to build reports and interfaces using this data in different components.

This scenario demonstrates:

-   How to use the [a!writeToDataStoreEntity()](Write_to_Data_Store_Entity_Smart_Service.html#awritetodatastoreentity) smart service function to persist data directly from an interface.
-   How to use the _showWhen_ parameter of an interface component to choose one component or another, based off a user's interactions.

## Setup

**Tip:**  Try to follow these setup steps verbatim. However, if you do need to adjust any of the values, you'll need to ensure that you make the necessary modifications to interface patterns that depend on this data.

For this pattern, we'll use a [custom data type](Custom_Data_Types.html#create) (CDT), then a smart service function to populate the related table with example data.

To set up this pattern:

1.  [Create a CDT](#create-a-cdt).
2.  [Create a data store](#create-a-data-store).
3.  [Create a constant for the data store entity](#create-a-constant-for-the-data-store-entity).
4.  [Create an interface](#create-an-interface).
5.  [Test it out](#test-it-out).

**Note:**  For certain design objects, we recommend starting [object names](Standard_Object_Names.html) with a short, unique prefix specific to the related application. To follow that best practice, start the object names used in this pattern with your application's prefix.

### Create a CDT

To create the CDT you'll need for this pattern:

1.  In the **Build** view of your application, click **New > Data Type**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Namespace** | Leave the default value. |
    | **Name** | Keep the [application prefix](Standard_Object_Names.html#process-objects) that prepopulates this property, and add `employee`, so that the name is `<prefix>_employee`. |
    | **Description** | (Optional) Enter a brief description of the data type. |

3.  Click **CREATE**.
4.  Add the primary key field:
    -   Click **New Field**.
    -   For **Name**, enter `id`.
    -   For **Type**, select **Number (Integer)**.
    -   Click the **Key** icon.
    -   Select **Primary Key**.
    -   Select **Auto-generate …** to let the database handle value assignment.
    -   Click **OK**.
5.  For each field in the following table, click **New Field**, then set the properties as specified:

    | Name | Type |
    | --- | --- |
    | `firstName` | Text |
    | `lastName` | Text |
    | `department` | Text |
    | `title` | Text |
    | `phoneNumber` | Text |
    | `startDate` | Date |

6.  Click **SAVE**.

### Create a data store

Next, [create a data store](Data_Stores.html#create) named `<prefix> Employee DS` in the same application where you created the CDT. Add an entity to the data store with the **Name** property set to `<prefix> employee` and the **Type** property set to the employee CDT you created.

### Create a constant for the data store entity

Next, let's create a [constant](Constants.html) for the data store entity, so we can use the newly created data store in an expression.

[Create a constant](Constants.html#create-the-object) with following properties:

| Property | Description |
| --- | --- |
| **Name** | Enter: `<prefix>_EMPLOYEE_ENTITY` |
| **Type** | Select **Data Store Entity**. |
| **Data Store** | Select the **<prefix> Employee DS** data store you created. |
| **Entity** | Select the **<prefix>\_employee** entity you created. |
| **Save In** | Select the appropriate folder in your application or, if it doesn't exist, create it by clicking the **Create New Rule Folder** link. |

**Note:**  Constants inherit security from the parent folder.

### Create an interface

Finally, let's create an [interface](interface_object.html) to display the example data in a grid and trigger the smart service function to publish the data to your data store entity.

To create this interface:

1.  In the **Build** view of your application, click **NEW > Interface**.
2.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter: `<prefix>_employeeGrid` |
    | **Description** | Enter: `Grid of employees` |
    | **Folder** | Select the appropriate folder in your application or, if it doesn't exist, create it by clicking the **Create New Rule Folder** link. |

3.  Click **CREATE**.
4.  In your new interface, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
5.  In the **Interface Definition** pane, paste the [expression](#expression) below.
6.  If you started your object names with an application prefix, customize the expression:
    -   In the type constructor (line 4), replace `'type!{urn:com:appian:types}employee?list'` with your data type's namespace and name. The format is: `type!{<Namespace>}<Name>?list`.
    -   Throughout the expression, replace the constant references (**cons!EMPLOYEE\_ENTITY**) with the constant name you used.
7.  Click **SAVE**.

### Test it out

To test the expression out:

1.  In the interface, click **TEST**.
2.  Click **PUBLISH DATA**.

Notice the ID values went from all **N/A** to a sequential value when shown in the new grid.

After data has been published to the relational database table, the button text changes to **DATA ALREADY PUBLISHED**. The button will stay disabled and remain disabled as long as there is employee data present in the relational database table.

**Note:**  To customize this pattern to fit your business cases, see the section, [Substitute with Manual Data](#substitute-with-manual-data).

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
a!localVariables(
  /* The data to load into the data store entity. */
  local!dataToLoad: cast(
    'type!{urn:com:appian:types}employee?list',
    {
      a!map( firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
      a!map( firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
      a!map( firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
      a!map( firstName: "Angela" , lastName: "Cooper" , department: "Sales" , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
      a!map( firstName: "Elizabeth" , lastName: "Ward" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
      a!map( firstName: "Daniel", lastName: "Lewis" , department: "HR" , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
      a!map( firstName: "Paul" , lastName: "Martin" , department: "Finance" , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
      a!map( firstName: "Jessica" , lastName: "Peterson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
      a!map( firstName: "Mark" , lastName: "Hall" , department: "Professional Services" , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
      a!map( firstName: "Rebecca" , lastName: "Wood" , department: "Engineering" , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
      a!map( firstName: "Pamela" , lastName: "Sanders" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
      a!map( firstName: "Christopher" , lastName: "Morris" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
      a!map( firstName: "Kevin" , lastName: "Stewart" , department: "Professional Services" , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
      a!map( firstName: "Stephen" , lastName: "Edwards" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
      a!map( firstName: "Janet", lastName:"Coleman" , department: "Finance" , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
      a!map( firstName: "Scott" , lastName: "Bailey" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
      a!map( firstName: "Andrew" , lastName: "Nelson" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
      a!map( firstName: "Michelle" , lastName: "Foster" , department: "HR" , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
      a!map( firstName: "Laura" , lastName:"Bryant" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
      a!map( firstName: "William" , lastName: "Ross" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
      a!map( firstName: "Arya" , lastName:"Colson" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )

    }
  ),
  /* This value gets updated when the user clicks on the PUBLISH DATA button in order to disable it
     so the user can't click it multiple times. */
  local!submitted: false,
  /* The refresh variable watches local!submitted and reruns the query when it changes. */
  local!datasubset: a!refreshVariable(
    value: a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        pagingInfo: a!pagingInfo(
          startIndex: 1,
          batchSize: -1,
          sort: a!sortInfo(field: "id", ascending: true)
        )
      ),
      fetchTotalCount: true
    ),
    refreshOnVarChange: local!submitted
  ),
  local!hasData: not(local!datasubset.totalCount=0),
  a!sectionLayout(
    contents: {
      a!buttonLayout(
        secondaryButtons:{
          a!buttonWidget(
            label: if(local!hasData, "Data Already Published", "Publish Data"),
            saveInto: {
              a!writeToDataStoreEntity(
                dataStoreEntity: cons!EMPLOYEE_ENTITY,
                valueToStore: local!dataToLoad,
                /* Since the writeToDataStoreEntity function doesn't change values in the
                 interface, we add an additional save to update a local variable so the
                 the query in local!datasubset runs again. */
                onSuccess: a!save(local!submitted, true)
              )
            },
            submit: true,
            style: "SOLID",
            disabled: or(local!hasData, local!submitted)
          )
        }
      ),
      a!gridField(
        label: "DATA TO WRITE",
        labelPosition: "ABOVE",
        data: local!dataToLoad,
        columns: {
          a!gridColumn(
            label: "ID",
            value: if(isnull(fv!row.id), "N/A", fv!row.id)
          ),
          a!gridColumn(
            label: "First Name",
            value: fv!row.firstName
          ),
          a!gridColumn(
            label: "Last Name",
            value: fv!row.lastName
          ),
          a!gridColumn(
            label: "Department",
            value: fv!row.department
          ),
          a!gridColumn(
            label: "Title",
            value: fv!row.title
          ),
          a!gridColumn(
            label: "Phone Number",
            value: fv!row.phoneNumber
          ),
          a!gridColumn(
            label: "Start Date",
            value: fv!row.startDate
          )
        },
        validations: {},
        showWhen: local!datasubset.totalCount = 0
      ),
      a!gridField(
        label: "DATA WRITTEN",
        labelPosition: "ABOVE",
        data: a!queryEntity(
          entity: cons!EMPLOYEE_ENTITY,
          query: a!query(pagingInfo: fv!pagingInfo),
          fetchTotalCount: true
        ),
        columns: {
          a!gridColumn(
            label: "ID",
            value: fv!row.id
          ),
          a!gridColumn(
            label: "First Name",
            value: fv!row.firstName
          ),
          a!gridColumn(
            label: "Last Name",
            value: fv!row.lastName
          ),
          a!gridColumn(
            label: "Department",
            value: fv!row.department
          ),
          a!gridColumn(
            label: "Title",
            value: fv!row.title
          ),
          a!gridColumn(
            label: "Phone Number",
            value: fv!row.phoneNumber
          ),
          a!gridColumn(
            label: "Start Date",
            value: fv!row.startDate
          )
        },
        initialSorts: a!sortInfo("id", true),
        showWhen: not(local!datasubset.totalCount = 0)
      )
    }
  )
)
```

## Notable implementation details

-   Two grids are configured in this example, but only one will ever show at a time. Instead of writing the logic in each of the grid text columns, we are showing a grid with hard-coded data when nothing is in the database table and the other grid when there is database data available.

## Substitute with Manual Data

This section describes how you can use the following manual data in place of an entity query featured in an interface pattern.

### Manual Data

The following data is what you'll use in place of the entity query in the subsequent examples:

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
{
      a!map( firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
      a!map( firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
      a!map( firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
      a!map( firstName: "Angela" , lastName: "Cooper" , department: "Sales" , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
      a!map( firstName: "Elizabeth" , lastName: "Ward" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
      a!map( firstName: "Daniel", lastName: "Lewis" , department: "HR" , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
      a!map( firstName: "Paul" , lastName: "Martin" , department: "Finance" , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
      a!map( firstName: "Jessica" , lastName: "Peterson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
      a!map( firstName: "Mark" , lastName: "Hall" , department: "Professional Services" , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
      a!map( firstName: "Rebecca" , lastName: "Wood" , department: "Engineering" , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
      a!map( firstName: "Pamela" , lastName: "Sanders" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
      a!map( firstName: "Christopher" , lastName: "Morris" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
      a!map( firstName: "Kevin" , lastName: "Stewart" , department: "Professional Services" , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
      a!map( firstName: "Stephen" , lastName: "Edwards" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
      a!map( firstName: "Janet", lastName:"Coleman" , department: "Finance" , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
      a!map( firstName: "Scott" , lastName: "Bailey" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
      a!map( firstName: "Andrew" , lastName: "Nelson" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
      a!map( firstName: "Michelle" , lastName: "Foster" , department: "HR" , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
      a!map( firstName: "Laura" , lastName:"Bryant" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
      a!map( firstName: "William" , lastName: "Ross" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
      a!map( firstName: "Arya" , lastName:"Colson" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )

    }
```

### Example: Full Query Replace

Whether the query is in a local variable, or in the data parameter of a grid, you can replace it with the manual data. First, identify the entity query (`a!queryEntity`) in the expression.

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
a!gridField(
  label: "Read-only Grid",
  labelPosition: "ABOVE",
  data: `a!queryEntity(`
    `entity: cons!EMPLOYEE_ENTITY,`
    `query: a!query(`
      `selection: a!querySelection(`
        `columns: {`
          `a!queryColumn(field: "firstName"),`
          `a!queryColumn(field: "lastName"),`
          `a!queryColumn(field: "department"),`
          `a!queryColumn(field: "title"),`
          `a!queryColumn(field: "startDate")`
        `}`
      `),`
      `pagingInfo: fv!pagingInfo`
    `),`
    `fetchTotalCount: true`
  `)`,
  columns: {
...
```

Next, replace it with the manual data:

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
a!gridField(
  label: "Read-only Grid",
  labelPosition: "ABOVE",
!  data: {
a!map( firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
      a!map( firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
      a!map( firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
      a!map( firstName: "Angela" , lastName: "Cooper" , department: "Sales" , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
      a!map( firstName: "Elizabeth" , lastName: "Ward" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
      a!map( firstName: "Daniel", lastName: "Lewis" , department: "HR" , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
      a!map( firstName: "Paul" , lastName: "Martin" , department: "Finance" , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
      a!map( firstName: "Jessica" , lastName: "Peterson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
      a!map( firstName: "Mark" , lastName: "Hall" , department: "Professional Services" , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
      a!map( firstName: "Rebecca" , lastName: "Wood" , department: "Engineering" , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
      a!map( firstName: "Pamela" , lastName: "Sanders" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
      a!map( firstName: "Christopher" , lastName: "Morris" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
      a!map( firstName: "Kevin" , lastName: "Stewart" , department: "Professional Services" , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
      a!map( firstName: "Stephen" , lastName: "Edwards" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
      a!map( firstName: "Janet", lastName:"Coleman" , department: "Finance" , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
      a!map( firstName: "Scott" , lastName: "Bailey" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
      a!map( firstName: "Andrew" , lastName: "Nelson" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
      a!map( firstName: "Michelle" , lastName: "Foster" , department: "HR" , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
      a!map( firstName: "Laura" , lastName:"Bryant" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
      a!map( firstName: "William" , lastName: "Ross" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
      a!map( firstName: "Arya" , lastName:"Colson" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )
!  },
  columns: {
```

### Example: Just the Data

When just the data is being used from a query, it's usually defined in a local variable. You can tell because the query has a `.data` suffix.

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
a!localVariables(
  /* This variable stores the grid's selection. */
  local!selection,
  /* This variable stores the row information for the grid's selection. */
  local!selectedRows,
  local!removedIds,
  local!employeeData: `a!queryEntity(`
    entity: cons!EMPLOYEE_ENTITY,
    query: a!query(
      selection: a!querySelection(
        columns: {
          a!queryColumn(field: "id"),
          a!queryColumn(field: "firstName"),
          a!queryColumn(field: "lastName"),
          a!queryColumn(field: "department"),
          a!queryColumn(field: "title"),
        }
      ),
      pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 10)
    ),
    fetchTotalCount: true
  )`.data`,
```

Replace the entire query, including `.data`, with your manual data:

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
a!localVariables(
  /* This variable stores the grid's selection. */
  local!selection,
  /* This variable stores the row information for the grid's selection. */
  local!selectedRows,
  local!removedIds,
  local!employeeData: `{`
    a!map( firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 ),
      a!map( firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 ),
      a!map( firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 ),
      a!map( firstName: "Angela" , lastName: "Cooper" , department: "Sales" , title: "Manager" , phoneNumber: "555-123-4567" , startDate: today()-240 ),
      a!map( firstName: "Elizabeth" , lastName: "Ward" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-240 ),
      a!map( firstName: "Daniel", lastName: "Lewis" , department: "HR" , title: "Manager" , phoneNumber: "555-876-5432" , startDate: today()-180 ),
      a!map( firstName: "Paul" , lastName: "Martin" , department: "Finance" , title: "Analyst" , phoneNumber: "555-609-3691" , startDate: today()-150 ),
      a!map( firstName: "Jessica" , lastName: "Peterson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-150 ),
      a!map( firstName: "Mark" , lastName: "Hall" , department: "Professional Services" , title: "Director" , phoneNumber: "555-012-3456" , startDate: today()-150 ),
      a!map( firstName: "Rebecca" , lastName: "Wood" , department: "Engineering" , title: "Manager" , phoneNumber: "555-210-3456" , startDate: today()-150 ),
      a!map( firstName: "Pamela" , lastName: "Sanders" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate:today()-120 ),
      a!map( firstName: "Christopher" , lastName: "Morris" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-456-7890" , startDate: today()-120 ),
      a!map( firstName: "Kevin" , lastName: "Stewart" , department: "Professional Services" , title: "Manager" , phoneNumber: "555-345-6789" , startDate: today()-120 ),
      a!map( firstName: "Stephen" , lastName: "Edwards" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-765-4321" , startDate: today()-120 ),
      a!map( firstName: "Janet", lastName:"Coleman" , department: "Finance" , title: "Director" , phoneNumber: "555-654-3210" , startDate: today()-90 ),
      a!map( firstName: "Scott" , lastName: "Bailey" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-678-1235" , startDate: today()-30 ),
      a!map( firstName: "Andrew" , lastName: "Nelson" , department: "Professional Services" , title: "Consultant" , phoneNumber: "555-789-4560" , startDate: today()-30 ),
      a!map( firstName: "Michelle" , lastName: "Foster" , department: "HR" , title: "Director" , phoneNumber: "555-345-6789" , startDate: today()-30 ),
      a!map( firstName: "Laura" , lastName:"Bryant" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-987-6543" , startDate: today()-14 ),
      a!map( firstName: "William" , lastName: "Ross" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-123-4567" , startDate: today()-10 ),
      a!map( firstName: "Arya" , lastName:"Colson" , department: "Sales" , title: "Sales Associate" , phoneNumber: "555-927-3343" , startDate: today()-5 )
  `}`,
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...