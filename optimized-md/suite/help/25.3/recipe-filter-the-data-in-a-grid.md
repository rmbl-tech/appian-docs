---
source_url: https://docs.appian.com/suite/help/25.3/recipe-filter-the-data-in-a-grid.html
original_path: recipe-filter-the-data-in-a-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Filter the Data in a Grid

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

Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

![/SAIL Recipe Filter Data in a Grid](images/SAIL_Recipe_Filter_Data_in_a_Grid.png)

## Filter the rows in a grid

User filters on your read-only grid allow users to select a filter and return only the records that match the filter value. When you use a record type as the data source for your read-only grid, there are two ways to configure user filters on the grid.

In design mode, you can quickly and easily bring any user filters configured in the record type into your grid. In expression mode, you can use the filter parameter in the `a!recordData()` function to manually configure a user filter for a specific grid. This type of user filter is considered single-use because it is not configured in the record type.

The patterns on this page demonstrate both methods for configuring user filters on your grid.

## Applying a filter from the record type

Walk through the steps below to bring a user filter configured on a record type into your read-only grid.

Replace the _Employee_ record type used in this example with a record type in your environment. Be sure there is at least one user filter configured on your record type.

To add a user filter from your record type to the grid:

**Note:**  This example will not evaluate in your test interface and should only be used as a reference.

1.  In the **Build** view of your application, click **NEW** > **Interface**.
2.  From the **COMPONENTS PALETTE**, drag and drop the **READ-ONLY GRID** component onto your interface.
3.  From the **DATA** section in the **COMPONENT CONFIGURATION** pane, select **Record Type** as your **Data Source**.
4.  In the **Search record types** field, enter the **Employee** record type. Note: Replace **Employee** with the name of your record type.
5.  From the **RECORD LIST** section in the **COMPONENT CONFIGURATION** pane, select the **Department** user filter in the **User Filter** dropdown. Note: Replace **Department** with the name of the user filter configured on your record type.

    The _Department_ user filter is applied to the grid. When the user selects a specific department, the grid will only display the records that match the filter value.

    ![/SAIL Recipe Filter Data in a Grid](images/SAIL_Recipe_Filter_Data_in_a_Grid.png)

You can test the grid by selecting a title from the filter dropdown. Notice that only the employee records that match the selected title are visible in the grid. The result displays on page 1 even if the user was previously on a different page number.

See [Create a Record Type](Create_a_Record_Type.html) for more information about configuring user filters on a record type and [Configuring the Read-Only Grid](read-only-grid-configuration.html) for more information about configuring a read-only grid.

## Manually creating a filter on the grid

This pattern demonstrates how to use `a!gridField()` to configure a read-only grid and manually configure a user filter dropdown for the grid.

![/SAIL Recipe Filter Records in a Grid Manual](images/SAIL_Recipe_Filter_Records_in_a_Grid_Manual.png)

Use the pattern in this example as a template to configure a user filter for a specific grid only. If you plan to reuse the user filter across multiple read-only grids, it is best practice to configure the user filter in the record type. This allows you to quickly and easily bring the filter into any grid that uses the record type as the data source.

**Tip:**  Filters can work with URL parameters to:

-   [Set default values for the filters](url-parameters.html#determine-whether-to-use-a-default-value).
-   [Create a link to a page with certain filter values automatically selected](url-parameters.html#link-to-a-page-using-url-parameters).
-   [Allow users to share links with their selected filters](url-parameters.html#allow-users-to-share-links-with-their-selected-filters).
-   [Remember filter selections when users return to a previously filtered page](url-parameters.html#remember-filter-selections-when-returning-to-a-previously-filtered-page).

To enable this, you would design your interface to use a rule input to set the value of the filter. For an example interface expression, see [Use URL Parameters for Site and Portal Navigation](url-parameters.html#example-setting-up-a-filter-to-work-with-url-parameters).

### Expression

The expression pattern below shows you how to:

-   Manually configure a user filter for a specific grid only.
-   Use `a!localVariables` to store the filter value a user selects.
-   Use `a!dropdownField()` to configure a filter dropdown for the grid.

**Note:**  If you plan to reuse a user filter across multiple read-only grids, it is best practice to configure the user filter in the record type. This allows you to quickly and easily bring the filter into any grid that uses the record type as the data source. See [Applying a filter from the record type](#applying-a-filter-from-the-record-type)

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
a!localVariables(
  /* In your application, replace the values used in local!titles with a
   * constant that stores the filter values you want to use in your grid.
   * Then use cons!<constant name> to reference the constant in
   * local!titles. */
  local!titles: {"Analyst", "Consultant", "Director", "Manager", "Sales Associate", "Software Engineer"},

  /* Use a local variable to hold the name of the title filter the user
   * selects in the filter dropdown. This example, uses
   * local!selectedTitle */
  local!selectedTitle,

   a!sectionLayout(
       contents: {
         a!columnsLayout(
           columns: {
             a!columnLayout(
               contents: {
                 a!richTextDisplayField(
                   label: "",
                   labelPosition: "COLLAPSED",
                   value: {
                     a!richTextItem(
                       /* We used ampersand (&) to concatenate the title
                        * text we want to display at the top of the grid.
                        * When the user selects a title filter in the
                        * dropdown list, the grid will display "ALL
                        * <local!selectedTitle> EMPLOYEES". If no filter
                        * is selected, the grid * will display "ALL
                        * EMPLOYEES". */
                       text: {
                         "All"& " "&if(isnull(local!selectedTitle),"EMPLOYEE", upper(local!selectedTitle))&"S"
                       },

                       size: "MEDIUM_PLUS",
                       style: {
                         "STRONG"
                       }
                     )
                   }
                 ),
                 a!dropdownField(
                   label: "Title",
                   labelPosition: "ABOVE",
                   placeholder: "-- Filter By Title --",
                   choiceLabels: local!titles,
                   choiceValues: local!titles,
                   value: local!selectedTitle,
                   saveInto: local!selectedTitle
                 )
               },
               width: "MEDIUM"
             )
           }
         ),
         a!gridField(
           labelPosition: "ABOVE",
           data: a!recordData(
             recordType: recordType!Employee,
             filters: a!queryFilter(
               field: recordType!Employee.fields.title,
               operator: if(isnull(local!selectedTitle), "not null", "="),
               value: local!selectedTitle
             )
           ),
           columns: {
             a!gridColumn(
               label: "Name",
               sortField: recordType!Employee.fields.lastName,
               value: a!linkField(
                 links: a!recordLink(
                   label: fv!row[recordType!Employee.fields.firstName] & " " & fv!row[recordType!Employee.fields.lastName],
                   recordType: {
                     recordType!Employee
                   },
                   identifier: fv!row[recordType!Employee.fields.lastName]
                 )
               ),
               width: "1X"
             ),
             a!gridColumn(
               label: "Title",
               sortField: recordType!Employee.fields.title,
               value: fv!row[recordType!Employee.fields.title],
               width: "1X"
             ),
             a!gridColumn(
               label: "Department",
               sortField: recordType!Employee.fields.department,
               value: fv!row[recordType!Employee.fields.department],
               width: "1X"
             )
           },
           pageSize: 10,
           showSearchBox: false,
           showRefreshButton: false,
        )
      }
    )
  )
```

## Test the filter and grid

1.  After entering the expression pattern in your interface, click **SAVE**.
2.  Click **TEST** to refresh your interface and test the grid features.
3.  To filter the grid, select a title from the dropdown. Notice that only the employee records that match the selected title are visible in the grid.

    ![/SAIL Recipe Filter Records in a Grid Test](images/SAIL_Recipe_Filter_Records_in_a_Grid_Test.png)

4.  Select "Filter By Title" from the dropdown. All employees will return to the grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...