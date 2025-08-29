---
source_url: https://docs.appian.com/suite/help/25.3/recipe-disable-automatic-refresh-after-user-saves-into-a-variable.html
original_path: recipe-disable-automatic-refresh-after-user-saves-into-a-variable.html
version: "25.3"
title: "Disable Automatic Refresh After User Saves Into a Variable"
page_id: "recipe-disable-automatic-refresh-after-user-saves-into-a-variable"
section: "Expression"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Disable Automatic Refresh After User Saves Into a Variable

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This scenario demonstrates:

-   How to disable the automatic recalculation of a variable's default value once a user has edited that variable directly.

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
a!localVariables(
  local!startDate: today(),
  local!endDateEdited: false,
  local!endDate: a!refreshVariable(
    value: local!startDate + 7,
    refreshOnReferencedVarChange: not(local!endDateEdited)
  ),
  {
    a!dateField(
      label: "Start Date",
      value: local!startDate,
      saveInto: local!startDate
    ),
    a!dateField(
      label: "End Date",
      value: local!endDate,
      saveInto: {
        local!endDate,
        a!save(local!endDateEdited, true)
      }
    )
  }
)
```

## Test it out

1.  Select a new value for **Start Date**. Notice that `local!endDate` is updated based on the new value for `local!startDate`.
2.  Select a value for **End Date**
3.  Select a new value for **Start Date**. Notice that `local!endDate` retains the user's input and does not automatically update.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...