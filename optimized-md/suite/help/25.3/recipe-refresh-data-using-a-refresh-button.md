---
source_url: https://docs.appian.com/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html
original_path: recipe-refresh-data-using-a-refresh-button.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Refresh Data Using a Refresh Button

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This scenario demonstrates how to force a variable to be refreshed even if its dependencies haven't changed.

**Tip:**  If you're using a record type as the source of your read-only grid, you don't need to create local variables or a separate button component to create a refresh button. Instead, you can simply select the [**Show refresh button**](read-only-grid-configuration.html#refresh) option to automatically generate a refresh button.

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
a!localVariables(
  local!refreshCounter: 0,
  local!startIndex: a!refreshVariable(
    value: 1,
    refreshOnVarChange: local!refreshCounter
  ),
  local!pagingInfo: a!pagingInfo(local!startIndex, 5),
  local!employees: a!refreshVariable(
    value: a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        pagingInfo: local!pagingInfo
      ),
      fetchTotalCount: true
    ),
    refreshOnVarChange: local!refreshCounter
  ),
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Refresh",
          size: "SMALL",
          style: "OUTLINE",
          color: "SECONDARY",
          saveInto: a!save(local!refreshCounter, local!refreshCounter + 1)
        )
      }
    ),
    a!gridField(
      labelPosition: "COLLAPSED",
      data: local!employees,
      columns: {
        a!gridColumn(label: "Name", value: concat(fv!row.firstName, " ", fv!row.lastName)),
        a!gridColumn(label: "Department", value: fv!row.department),
        a!gridColumn(label: "Title", value: fv!row.title)
      },
      pagingSaveInto: a!save(local!startIndex, fv!pagingInfo.startIndex)
    )
  }
)
```

## Test it out

1.  Update the Employee data in the database
2.  Click the **Refresh** button to see the data change

## Notable implementation details

-   The **Refresh** button increments a counter to make sure the value of `local!refreshCounter` always changes. Using a boolean flag that gets set to true when you click the button wouldn't work because the value wouldn't change between the first and second time you clicked the button.
-   Both `local!startIndex` and `local!employees` need to refresh when the refresh button is clicked. This makes sure that the user is on the first page once they click refresh and that the data is queried even if the start index didn't change (for example, if they were already on the first page).
-   If displaying a refresh button on an interface that is also refreshing on an interval, the [last updated timestamp](recipe-display-last-refresh-time.html) should be displayed next to the **Refresh** button.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...