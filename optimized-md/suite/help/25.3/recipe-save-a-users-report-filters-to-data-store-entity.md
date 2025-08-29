---
source_url: https://docs.appian.com/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html
original_path: recipe-save-a-users-report-filters-to-data-store-entity.html
version: "25.3"
title: "Save a User's Report Filters to a Data Store Entity"
page_id: "recipe-save-a-users-report-filters-to-data-store-entity"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Save a User's Report Filters to a Data Store Entity

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

Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

![](images/SailSmartServicesReportRecipe.png)

This scenario demonstrates:

-   How to use the Write to Data Store smart service from a report.

**Tip:**  Since users can [save filters on a record list](filter-the-record-list.html#user-saved-filters) without any additional configuration, consider using the record list instead of using this recipe when displaying a grid of records.

## Setup

For this recipe, you'll want to use a report with some actual data. If you haven't already set up the [Update an Entity-Backed Record Type from its Summary View recipe](recipe-update-an-entity-backed-record-from-its-summary-view.html), do that now you can use that recipe's record type.

Before you put in the [report expression](#expression), you'll first need to create a place to store user filters:

![](images/SailSmartServicesReportRecipeDataType.png)

1.  From the **Customer Support Request System** application, click **NEW > Data Type**.
2.  Enter `SupportRequestReportFilter` in the **Name** field.
3.  Click **Create**. This displays the data type object.
4.  Click **New Field** three times.
5.  For each field, configure the following name and data type:

    | Field Name | Data Type |
    | --- | --- |
    | `username` | Text |
    | `status` | Text |
    | `priority` | Text |

6.  For the **username** field, click on the key icon and select **Primary Key**.
7.  Click **OK**.
8.  Click **Save** to create the data type.

Now that you've created the data type, you'll need to make a data store entity so you can write the data to your database.

1.  Back in the **Build** view, filter by **Data Stores** and open the **Support Requests** data store.
2.  Click **Add Entity**.
3.  Enter `SupportRequestReportFilter` in the **Name** field.
4.  Select `SupportRequestReportFilter` in the **Type** field.
5.  Click **Save**.
6.  Click **Verify**.
7.  Click **Save & Publish** to save and publish the data store entity.

Now you need to create a constant pointing at the data store entity so it can be used in an expression:

1.  Back in the **Build** view, click **NEW > Constant**.
2.  Enter `CSRS_FILTER_ENTITY` in the **Name** field.
3.  Select `Data Store Entity` for the **Type** field.
4.  Select `Support Requests` for the **Data Store** field.
5.  Select `SupportRequestReportFilter` for the **Entity** field.
6.  Enter `CSRS Rules and Constants` in the **Save In** field, then select the folder from the suggestions.

7.  Click **Create** to create the constant.

Now you're ready to build the actual report.

1.  In the **Build** view, click **NEW > Interface**.
2.  Enter a name in the **Name** field.
3.  Enter `CSRS Rules and Constants` in the **Save In** field, then select the folder from the suggestions.
4.  Click **Create**.
5.  Switch to the expression view and paste in the following expression:

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
a!localVariables(
  local!persistedFilterData: a!queryEntity(
    entity: cons!CSRS_FILTER_ENTITY,
    query: a!query(
      filter: a!queryFilter(field: "username", operator: "=", value: loggedInUser()),
      pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 1)
    ),
    fetchTotalCount: true
  ),
  local!persistedFilter: if(
    local!persistedFilterData.totalCount = 0,
    /* There's no existing filter for this user, so create a new one */
    'type!{urn:com:appian:types}SupportRequestReportFilter'(username: loggedInUser()),
    cast('type!{urn:com:appian:types}SupportRequestReportFilter', local!persistedFilterData.data[1])
  ),
  local!saveFilterError: false,
  /* Store the current filter separate from the persisted filter so we know when they are the same */
  local!filter: local!persistedFilter,
  local!allPriorities: rule!CSRS_GetAllPriority().value,
  local!allStatuses: rule!CSRS_GetAllStatus().value,
  local!pagingInfo: a!pagingInfo(1, -1, a!sortInfo("createdOn", false)),
  local!filterChanged: not(exact(local!persistedFilter, local!filter)),
  /* Data that will be displayed in the grid given the *
   * current search terms and applied filters          */
  {
    a!sectionLayout(
      contents:{
        a!columnsLayout(
          columns:{
            a!columnLayout(
              contents:{
                a!dropdownField(
                  label: "Priority",
                  labelPosition: "ADJACENT",
                  placeholder: "All Priorities",
                  choiceLabels: local!allPriorities,
                  choiceValues: local!allPriorities,
                  value: local!filter.priority,
                  saveInto: local!filter.priority
                ),
                a!dropdownField(
                  label: "Status",
                  labelPosition: "ADJACENT",
                  placeholder: "All Statuses",
                  choiceLabels: local!allStatuses,
                  choiceValues: local!allStatuses,
                  value: local!filter.status,
                  saveInto: local!filter.status
                )
              }
            ),
            a!columnLayout(
              contents:{
                a!buttonLayout(
                  secondaryButtons: {
                    if(
                      local!saveFilterError,
                      a!buttonWidget(
                        label: "Could not save filters",
                        disabled: true
                      ),
                      a!buttonWidget(
                        label: "Save Filters",
                        disabled: not(local!filterChanged),
                        saveInto: a!writeToDataStoreEntity(
                          dataStoreEntity: cons!CSRS_FILTER_ENTITY,
                          valueToStore: local!filter,
                          onSuccess: {
                            a!save(local!persistedFilter, local!filter)
                          },
                          onError: {
                            a!save(local!saveFilterError, true)
                          }
                        )
                      )
                    )
                  }
                )
              }
            )
          }
        )
      }
    ),
    a!gridField(
      emptyGridMessage: "No Support Requests available",
      data: a!queryEntity(
        entity: cons!CSRS_SUPPORT_REQUEST_DSE,
        query: a!query(
          selection: a!querySelection(
            columns: {
              a!queryColumn(field: "id"),
              a!queryColumn(field: "title"),
              a!queryColumn(field: "status"),
              a!queryColumn(field: "priority")
            }
          ),
          logicalExpression: a!queryLogicalExpression(
            operator: "AND",
            filters: {
              a!queryFilter(
                field: "status.value",
                operator: "=",
                value: local!filter.status
              ),
              a!queryFilter(
                field: "priority.value",
                operator: "=", value:
                local!filter.priority
              )
            },
            ignoreFiltersWithEmptyValues: true
          ),
          pagingInfo: fv!pagingInfo
        ),
        fetchTotalCount: true
      ),
      columns: {
        a!gridColumn(
          label: "Title",
          sortField: "title",
          value: fv!row.title
        ),
        a!gridColumn(
          label: "Status",
          sortField: "status.value",
          value: index(fv!row.status, "value", {})
        ),
        a!gridColumn(
          label: "Priority",
          sortField: "priority.value",
          value: a!imageField(
            images: rule!CSRS_GetIconForPriority(index(fv!row.priority, "value", {}))
          ),
          width: "NARROW",
          align: "CENTER"
        ),
        /*a!gridColumn(*/
        /*label: "Priority",*/
        /*sortField: "priority.value",*/
        /*value: a!richTextDisplayField(*/
        /*value: a!richTextIcon(*/
        /*icon: displayvalue(*/
        /*index(fv!row.priority, "value", {}),*/
        /* Priority values */
        /*{"Low", "Medium", "High", "Critical"},*/
        /* Corresponding icons for each priority */
        /*{"arrow-circle-down", "arrow-circle-right", "arrow-circle-up", "exclamation-circle"},*/
        /*"circle"*/
        /*),*/
        /*size: "MEDIUM",*/
        /*color: if(*/
        /*contains(*/
        /*{"High", "Critical"},*/
        /*index(fv!row.priority, "value", {}),*/
        /*),*/
        /*"NEGATIVE",*/
        /*"SECONDARY"*/
        /*)*/
        /*)*/
        /*),*/
        /*align: "CENTER",*/
        /*width: "NARROW"*/
        /*)*/
      },
      rowHeader: 1
    )
  }
)
```

## Test it out

1.  Change the filters and notice how the **Save Filters** button becomes enabled.
2.  Click the **Test** button and notice how the filters are gone. This is equivalent to leaving and returning to the report.
3.  Use the **Save Filters** button to save a particular combination of filters.
4.  Change the filters again.
5.  Now click the **Test** button again and notice how the filters are put back to their previously saved values.
6.  Change the filters, then change them back. Notice how the **Save Filters** button becomes disabled when returning to the saved filters.
7.  Try logging in with a different user and trying the same expression (you'll have to give them access to the data store if they don't have it already). Notice how their filter is saved and loaded independently of your original user.

## To use as an actual report

1.  Save your interface if you haven't already.
2.  Open the settings menu , then click **Save as…**. This will display the **Save Interface As** form.
3.  Enter your desired report name and application.
4.  Click **Save**.

## Notable implementation details

-   The currently selected filter and the persisted filters are kept in separate `a!localVariables()` variables so that they can be compared. Not only does this mean the user knows when they have changed the filter (because the button is enabled) but also provides feedback that the filters have been saved (when it becomes disabled).
-   If there's an error writing the filters, the `onError` parameter is used to change the button label.
-   For simple filters like these, notice they could be saved as soon as the dropdowns are changed (much like the dropdown in the [Update an Entity-Backed Record from its Summary View recipe](recipe-update-an-entity-backed-record-from-its-summary-view.html)). This would save the user a click but depending on the situation you may need to alert the user to the fact their filter will be saved. If the user doesn't notice the filters were retained when they arrive back, they could be confused or think the report is broken.

See also: [Executing Smart Services](executing_smart_services.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...