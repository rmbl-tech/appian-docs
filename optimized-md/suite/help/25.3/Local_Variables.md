---
source_url: https://docs.appian.com/suite/help/25.3/Local_Variables.html
original_path: Local_Variables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Local Variables

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use Local Variables

This video from [Academy Online](https://academy.appian.com/) explains how to use local variables.

This page is an overview of what local variables are and how to use them.

For a detailed description of how to use `a!localVariables()` relative to the `load()` and `with()` functions, see [Updating Expressions to Use a!localVariables](Updating_Expressions_to_Use_a_localVariables.html).

#### Related Patterns

-   [Disable Automatic Refresh After User Saves Into a Variable](/suite/help/25.3/recipe-disable-automatic-refresh-after-user-saves-into-a-variable.html) (_Auto-Refresh_): Automatically update a variable when its dependencies change until the user saves their own value into that variable.

-   [Display Last Refresh Time](/suite/help/25.3/recipe-display-last-refresh-time.html) (_Auto-Refresh, Grids, Records_): Display the last time the interface was updated, either based on a user interaction or a timer.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Refresh Data Using a Refresh Button](/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html) (_Auto-Refresh_):

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

## Overview

[Variables](parts-of-an-expression.html#variables) store data that can be used when evaluating an expression. Local variables are a specific type of variable that are only available within the context of a particular expression and can only be accessed within the function that defines them.

Local variables are useful when you only need that data within a particular expression. For example, if you need to reuse a calculated value in multiple places within a single expression, you can store that in a local variable. Additionally, if you need to store a user input that doesn't need to be stored elsewhere, such as a search term, you can also use a local variable for that.

## Defining local variables

Local variables are defined in the [a!localVariables()](fnc_evaluation_a_localvariables.html) function. You can define both the name and the value of the local variable, then use those variables in the last parameter of the function:

```
1
2
3
4
5
a!localVariables(
  local!a: 1,
  local!b: 2,
  local!a + local!b
)
```

Variables may also be defined without an initial value. This is most commonly used when the variable is intended to store a user's input that doesn't have a default value.

```
1
2
3
4
5
6
7
8
a!localVariables(
  local!input,
  a!textField(
    label: "Input",
    value: local!input,
    saveInto: local!input
  )
)
```

All local variables must be defined within the `local!` domain and must have a unique name within that same function.

### Referencing other variables

When defining the value of a local variable, you may use other types of variables. This includes process variables, rule inputs, and other local variables that were previously defined.

```
1
2
3
4
5
a!localVariables(
  local!record: rule!getRecordForId(ri!id),
  local!attachments: folder(local!record.folderId, "documentChildren"),
  rule!displayAttachments(local!attachments)
)
```

Referencing another local variable creates a dependency between the two variables and ensures that the referenced variable is always evaluated first. All variables that are independent of each other may be evaluated in [parallel](expressions-parallel-evaluation.html), while variables that depend on each other are always sequentially evaluated.

### Components in local variables

A component should **never** be used as the value of a local variable. While no error will be shown, placing a component in a local variable may result in unexpected or inconsistent behavior. Instead, components should be reused by defining them in a new interface rule.

## Using local variables

Once a local variable is defined, it can be used only within the function that defined it. It can be used both in the definition of other local variables defined after it or within the _expression_ parameter. It can be used inside any number of functions within the expression parameter, no matter how deeply nested they are. However, it cannot be used directly within another rule, as described [below](#local-variables-in-other-rules).

### Nesting a!localVariables()

When you use `a!localVariables()` inside another `a!localVariables()`, you can reference local variables created in the parent function.

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
a!localVariables(
  local!cases: rule!getAllCases(),
  local!drilldownId,
  if(
    isnull(local!drilldownId),
    rule!displayCasesSection(local!cases),
    a!localVariables(
      local!case: rule!getCaseById(local!drilldownId),
      rule!displayCaseSection(local!case)
    )
  )
)
```

In this example, `local!case` can reference `local!drilldownId` because they are defined within the same expression and `local!drilldownId` is still being used inside the _expression_ parameter.

### Local variables in other parts of the expression

Variables defined in a totally different part of the expression cannot be referenced. Doing so will result in an error.

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
a!columnsLayout(
  columns: {
    a!columnLayout(
      contents: {
        a!localVariables(
          local!input,
          a!textField(
            label: "Input",
            value: local!input,
            saveInto: local!input
          )
        )
      }
    ),
    a!columnLayout(
      contents: {
        a!textField(
          label: "Input Entered?",
          value: if(isnull(local!input), "No", "Yes"),
          readOnly: true
        )
      }
    )
  }
)
```

In this example, the **Input Entered** field cannot reference `local!input` because it isn't within the _expression_ parameter of the `a!localVariables()` where `local!input` was defined. Only the **Input** field has access to `local!input`.

If you need to access the same variable in multiple parts of your expression, be sure to define that variable early enough so that each location can access it.

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
a!columnsLayout(
  columns: {
    a!localVariables(
      local!input,
      {
        a!columnLayout(
          contents: {
            a!textField(
              label: "Input",
              value: local!input,
              saveInto: local!input
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Input Entered?",
              value: if(isnull(local!input), "No", "Yes"),
              readOnly: true
            )
          }
        )
      }
    )
  }
)
```

In this case, the `local!input` would need to be defined at least at the _columns_ parameter of `a!columnsLayout()` so that both components could access it, though it is more common to define these types of variables at the top of the expression.

### Local variables in other rules

Local variables created in other rules cannot be used.

Say in the following example you wanted to reference `local!drilldownId` within `rule!DisplayCaseSection()` in order to query the case.

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
a!localVariables(
  local!cases: rule!getAllCases(),
  local!drilldownId,
  if(
    isnull(local!drilldownId),
    rule!displayCasesSection(local!cases),
    rule!displayCaseSection()
  )
)
```

`rule!displayCaseSection()` cannot reference `local!drilldownId` directly because it wasn't defined within that rule. Instead, you should create a rule input and pass `local!drilldownId` in, as shown below.

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
a!localVariables(
  local!cases: rule!getAllCases(),
  local!drilldownId,
  if(
    isnull(local!drilldownId),
    rule!displayCasesSection(cases: local!cases),
    rule!displayCaseSection(caseId: local!drilldownId)
  )
)
```

### Local variables with the same name

While local variables within the same function must have unique names, it is possible to create local variables with the same name in different parts of the expression. When this occurs, the variable defined the innermost variable of that name will be used.

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
a!localVariables(
  local!var1: 1,
  a!localVariables(
    local!var2: local!var1 + 1,
    local!var1: 10,
    local!var3: local!var1 + 1,
    local!var3
  )
)
```

In this example, `local!var2` uses the original value for `local!var1` and therefore is `2`. However, `local!var3` uses the new value for `local!var1` as defined in the lower scope and therefore is `11`. As this can often cause confusion, it is not recommended to use the same local variable names within the same interface.

## Local variable types

Local variables do not have a defined type. The type of a local variable is determined by the value of the variable at any given time.

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
a!localVariables(
  local!isActive: true,
  local!activeEmployees: a!queryEntity(
    entity: cons!EMPLOYEE_DSE,
    query: a!query(
      filter: a!queryFilter("active", "=", local!isActive),
      pagingInfo: a!pagingInfo(1, 10)
    )
  ).data,
  local!activeEmployees
)
```

In this example, `local!isActive` is of type Boolean and `local!activeEmployees` is of type [Dictionary](parts-of-an-expression.html#dictionaries).

### Variables without an initial value

Local variables that do not have an initial value are of type Null. This can often cause errors when trying to pass the local variable to a function, so you may need to cast it to the expected type.

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
a!localVariables(
  local!quantity,
  a!integerField(
    label: "Quantity",
    value: local!quantity,
    saveInto: local!quantity,
    validations: if(
      local!quantity<0,
      "Quantity must be greater than 0",
      ""
    )
  )
)
```

In this example, `local!quantity<0` fails because the variable is not an integer. You can solve this by casting the variable before doing comparisons using the `tointeger()` function.

### Updating a variable value

The type of a local variable can change if it is saved into from a component within an interface. The variable will now be of the same type as the new value that was saved into it.

```
1
2
3
4
5
6
7
8
a!localVariables(
  local!number: 1,
  a!floatingPointField(
    label: "Number",
    value: local!number,
    saveInto: local!number
  )
)
```

In this example, `local!number` starts out as an Integer. However, once a user interacts with the **Number** field, a Decimal value will be saved into `local!number`.

## Configuring refresh behavior

Local variables that are used within interfaces can refresh their values under a variety of conditions. When a variable is refreshed, the value of that variable is recalculated and the variable is updated with the latest value.

By default, all variables defined within the `a!localVariables()` function refresh when a referenced variable in the value configuration changes. You can change these refresh behaviors using the `a!refreshVariable()` function. These configurations are only available within an interface; they are ignored when used in an expression outside of an interface.

This table contains a summary of each refresh configuration, which is described in further details in the sections below:

| Refresh Behavior | `a!refreshVariable()` configuration | Valid Save Target? |
| --- | --- | --- |
| Never refresh because variable has no dependencies | None (default behavior) | ✓ |
| Never refresh even when dependencies change | `refreshOnReferencedVarChange: false` | ✓ |
| Refresh when any referenced variable changes | None (default behavior) | ✓ |
| Refresh when a specific variable changes | `refreshOnVarChange: {local!var}` | ✓ |
| Refresh on a timer | `refreshInterval: 1` | ✗ |
| Refresh after every user interaction | `refreshAlways: true` | ✗ |
| Refresh after a record action event completes | `refreshAfter: "RECORD_ACTION"` | ✓ |

See [Refresh Behavior in Interfaces](refresh-behavior-interfaces.html#combining-refresh-configurations) to see how you can combine different refresh behavior.

### Never refresh

By default, variables with no dependencies will never refresh, even without using `a!refreshVariable()` to disable it.

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
a!localVariables(
  local!comment,
  local!commenter: loggedInUser(),
  local!commentDate: today(),
  a!paragraphField(
    label: "Comments",
    value: local!comment,
    saveInto: local!comment
  )
)
```

In the example above, none of the local variables will ever be refreshed because their values do not depend on other variables.

However, local variables that depend on other variables will be refreshed automatically when those dependencies are updated. To disable that behavior, see [Disabling Refresh When Referenced Variables Change](#disabling-refresh-when-referenced-variables-change).

### Refresh when referenced variables change

Any variable defined without using `a!refreshVariable()` will automatically refresh its value when any variable it depends on changes. Additionally, the value will not be refreshed until something it depends on changes.

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
a!localVariables(
  local!checkIn: today(),
  local!checkOutDate: local!checkIn+1,
  local!checkOutTime: if(weekday(local!checkOutDate, 2)<6, time(11, 0, 0), time(12, 0, 0)),
  local!numOfRooms: 1,
  {
    a!dateField(
      label: "Check in",
      value: local!checkIn,
      saveInto: local!checkIn
    ),
    a!dateField(
      label: "Check out",
      value: local!checkOutDate,
      saveInto: local!checkOutDate,
      instructions: "Check out time is at " & local!checkOutTime
    ),
    a!integerField(
      label: "Number of Rooms",
      value: local!numOfRooms,
      saveInto: local!numOfRooms
    )
  }
)
```

In this example, the local variables have the following refresh behaviors:

-   `local!checkIn` and `local!numOfRooms` will never be refreshed because they do not depend on any other variables
-   When the value of `local!checkIn` changes, both `local!checkOutDate` and `local!checkOutTime` will be refreshed; `local!checkOutDate` because it depends on `local!checkIn` and `local!checkOutTime` because it depends on `local!checkOutDate`
-   `local!checkOutTime` will also be refreshed when `local!checkOutDate` is updated by interacting with the **Check out** date field

#### Referencing specific fields within a variable

Variables that depend on a specific field within another variable (for example, local variables, rule inputs, etc.) will only refresh when that field is updated, rather than the entire variable.

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
a!localVariables(
  local!departments: rule!getAllDepartments(),
  local!titles: rule!getTitlesByDepartment(ri!employee.department),
  {
    a!textField(
      label: "Name",
      value: ri!employee.name,
      saveInto: ri!employee.name
    ),
    a!dropdownField(
      label: "Departments",
      placeholder: "Select a department",
      choiceLabels: local!departments,
      choiceValues: local!departments,
      value: ri!employee.department,
      saveInto: ri!employee.department
    ),
    a!dropdownField(
      label: "Titles",
      showWhen: not(isnull(ri!employee.department)),
      placeholder: "Select a title",
      choiceLabels: local!titles,
      choiceValues: local!titles,
      value: ri!employee.title,
      saveInto: ri!employee.title
    )
  }
)
```

In this example, when either the `name` or `title` field of `ri!employee` changes, `local!titles` will not be queried again since `ri!employee.department` has not changed.

The same concept applies not only when using dot indexing, but also with bracket indexing. For example:

```
1
local!titles: rule!getTitlesByDepartment(ri!employee["department"])
```

In addition, this will also work for array indexing.

If you need to use the index function to provide a default value, then you need to place the index function in an intermediate local variable to achieve the same behavior. For our example, you could do the following:

```
1
2
local!department: index(ri!employee, "department", "None"),
local!titles: rule!getTitlesByDepartment(local!department),
```

While `local!department` depends on the entire value of `ri!employee` and will update whenever any field within it changes, `local!titles` will only update when the value of `local!department` changes. Since the value of `local!department` won't change unless the `"department"` field changes, the same effect is achieved.

#### What is Considered a "Referenced Variable"?

All variables are considered dependencies even if they are only used within a part of the expression that isn't evaluated.

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
a!localVariables(
  local!countCharacters: false,
  local!text,
  local!textLength: if(
    local!countCharacters,
    len(local!text),
    ""
  ),
  {
    a!radioButtonField(
      label: "Count Characters",
      choiceLabels: {"Yes", "No"},
      choiceValues: {true, false},
      value: local!countCharacters,
      saveInto: local!countCharacters
    ),
    a!paragraphField(
      label: "Text",
      value: local!text,
      saveInto: local!text,
      instructions: if(isnull(local!textLength), "", local!textLength & " characters")
    )
  }
)
```

In this example, `local!text` is still considered a dependency of `local!textLength`, even when it's in a branch of the `if()` that doesn't get evaluated. Therefore, updating `local!text` will cause `local!textLength` to get refreshed automatically even when `local!countCharacters` is `false`.

#### Saving into variables with dependencies

Even though these variables can be updated automatically, you can still save into them.

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
a!localVariables(
  local!checkIn: today(),
  local!checkOut: local!checkIn+1,
  {
    a!dateField(
      label: "Check in",
      value: local!checkIn,
      saveInto: local!checkIn
    ),
    a!dateField(
      label: "Check out",
      value: local!checkOut,
      saveInto: local!checkOut
    )
  }
)
```

In this example, you can update the value of `local!checkOut` by interacting with the **Check out** field. However, when you interact with the **Check in** field, `local!checkOut` is refreshed and the value is overwritten.

#### Disabling refresh when referenced variables change

You may want to disable this behavior if you want to make a copy of a variable for later comparison or if you simply don't want something to be calculated each time a variable it depends on changes. To disable this feature, set the _refreshOnReferencedVarChange_ parameter to `false`.

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
a!localVariables(
  local!original: 1,
  local!copy: a!refreshVariable(
    value: local!original,
    refreshOnReferencedVarChange: false
  ),
  {
    a!textField(label: "Original", value: local!original, saveInto: local!original),
    a!textField(label: "Copy", value: local!copy, saveInto: local!copy)
  }
)
```

In the example, updating `local!original` does not refresh the value of `local!copy`.

The _refreshOnReferencedVarChange_ parameter is calculated every evaluation, even if the value of the variable is not. This is to enable you to dynamically change the refresh behavior as data changes within the interface.

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
  local!checkIn: today(),
  local!checkOutEdited: false,
  local!checkOut: a!refreshVariable(
    value: local!checkIn+1,
    refreshOnReferencedVarChange: not(local!checkOutEdited)
  ),
  {
    a!dateField(
      label: "Check in",
      value: local!checkIn,
      saveInto: local!checkIn
    ),
    a!dateField(
      label: "Check out",
      value: local!checkOut,
      saveInto: {
        local!checkOut,
        a!save(local!checkOutEdited, true)
      }
    )
  }
)
```

In this example, `local!checkOut` starts out by refreshing automatically each time `local!checkIn` is updated. However, when you update the value of `local!checkOutEdited` to be `true`, `local!checkOut` no longer updates when `local!checkIn` changes.

### Refresh when specific variables change

If you need a variable to refresh when a variable it doesn't directly depend on changes, you can use the _refreshOnVarChange_ parameter. Simply define one or more variables that this variable indirectly depends on to automatically update it when one of them changes.

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
a!localVariables(
  local!name: "John Smith",
  local!username: "john.smith",
  local!usernameEditedTimestamp: a!refreshVariable(
    value: now(),
    refreshOnVarChange: local!username
  ),
  {
    a!textField(
      label: "Name",
      value: local!name,
      saveInto: local!name
    ),
    a!textField(
      label: "Username",
      value: local!username,
      saveInto: local!username
    ),
    a!dateTimeField(
      label: "Username Last Edited",
      value: local!usernameEditedTimestamp,
      readOnly: true
    )
  }
)
```

In this example, `local!usernameEditedTimestamp` will be updated each time you change `local!username` even though its value doesn't directly depend on it. However, `local!usernameEditedTimestamp` won't be updated when you change `local!name`.

The _refreshOnVarChange_ parameter can only be defined as a single variable (`refreshOnVarChange: local!var1`) or a list of variables (`refreshOnVarChange: {local!var1, local!var2}`). It may not be dynamically calculated using any rules or functions. For example, it cannot be defined as `if([some condition], local!a, local!b)`.

### Refresh interval

If you need a variable to refresh periodically on a time-based interval, you can use the _refreshInterval_ parameter. This will allow your data to get refreshed even when the user doesn't interact with the interface.

You cannot save into variables that are configured to refresh on an interval.

#### Conditionally enabling an interval

The _refreshInterval_ parameter is calculated on every evaluation, even if the value of the variable is not. This is to enable you to dynamically change the value as data changes within the interface, particularly to enable and disable timers.

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
a!localVariables(
  local!enableTimer: false,
  local!value: a!refreshVariable(
    value: rand(),
    refreshInterval: if(local!enableTimer, 0.5, null)
  ),
  {
    a!buttonArrayLayout(buttons: {
      a!buttonWidget(
        label: if(local!enableTimer, "Disable", "Enable") & " Timer",
        saveInto: a!save(local!enableTimer, not(local!enableTimer))
      )
    }),
    a!textField(label: "Value", value: local!value, readOnly: true)
  }
)
```

In this example, changing the value of `local!enableTimer` does not cause the value of `local!value` to refresh, but it does enable and disable the timer.

#### Conditionally enabling an interval based on the current variable value

When configuring the value of _refreshInterval_, you have access to the current value of the variable using `fv!value`. This will allow you to enable or disable timers based on the current value of the variable.

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
a!localVariables(
  local!testRunId,
  local!testRunStatus: a!refreshVariable(
    value: if(isnull(local!testRunId), null, a!testRunStatusForId(local!testRunId)),
    refreshInterval: if(or(isnull(fv!value), fv!value = "COMPLETE"), null, 0.5)
  ),
  local!testRunResults: if(
    local!testRunStatus = "COMPLETE",
    a!testRunResultForId(local!testRunId),
    null
  ),
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Run All Tests",
          saveInto: a!startRuleTestsAll(onSuccess: {
            a!save(local!testRunId, fv!testRunId)
          })
        )
      }
    ),
    rule!displayTestResults(local!testRunResults)
  }
)
```

In this example, you can dynamically enable the _refreshInterval_ for `local!testRunStatus` once a new test run has been started and disable the timer again when the status is `"COMPLETE"`.

Before adding _refreshInteval_ to your interface, see the [performance considerations](refresh-behavior-interfaces.html#performance-considerations).

### Refresh always

A variable can also refresh on every evaluation, regardless of whether its dependencies change. The variable would be refreshed after any user interaction and after any timer causes a variable to refresh. This is configured using the _refreshAlways_ parameter.

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
a!localVariables(
  local!name: "John Smith",
  local!username: "john.smith",
  local!lastEditedTimestamp: a!refreshVariable(
    value: now(),
    refreshAlways: true
  ),
  {
    a!textField(
      label: "Name",
      value: local!name,
      saveInto: local!name
    ),
    a!textField(
      label: "Username",
      value: local!username,
      saveInto: local!username
    ),
    a!dateTimeField(
      label: "Username Last Edited",
      value: local!lastEditedTimestamp,
      readOnly: true
    )
  }
)
```

When using the _refreshAlways_ configuration, there's no need to configure either the _refreshOnReferencedVarChange_ or _refreshOnVarChange_ parameters. This is because the variable will always evaluate regardless of whether its dependencies change or not.

Generally, you won't need to use this configuration unless your variable needs to be updated very often because the data is constantly changing outside the interface. If your variable has dependencies, you usually only want to refresh that variable when its dependencies change to improve the performance of your evaluation.

#### Using local variables in the definition of refreshing variables

When you define the value of a local variable using a rule that itself contains local variables, _refreshAlways_ may be required to get the desired behavior. By default, local variables only update their values when their dependencies change. This includes variables defined _inside_ the definition of other variables.

For example, say you have the following interface:

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
a!localVariables(
  local!employee: a!refreshVariable(
    value: rule!getFormattedEmployeeInfo(ri!id),
    refreshInterval: 0.5
  ),
  {
    a!textField(label: "Name", value: local!employee.name, readOnly: true),
    a!textField(label: "Start Date", value: local!employee.startDate, readOnly: true),
  }
)
```

where `rule!getFormattedEmployeeInfo` is defined as:

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
  local!origEmployeeData: a!queryEntity(
    entity: cons!EMPLOYEE_ENTITY,
    query: a!query(
      logicalexpression: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(field: "id", operator: "=", value: ri!id)
        },
        ignoreFiltersWithEmptyValues: true
      ),
      pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 1)
    ),
    fetchTotalCount: false
  ).data,
  local!employeeName: concat(local!origEmployeeData.firstName, " ", local!origEmployeeData.lastName),
  local!formattedStartDate: text(local!origEmployeeData.startDate, "mmm d, yyyy"),
  {
    name: local!employeeName,
    startDate: local!formattedStartDate
  }
)
```

Because local variables only refresh when their dependencies change by default, `local!origEmployeeData` does not automatically refresh when the 30 second timer on `local!employee` is triggered. Therefore, the data for `local!employee` will not change when the timer goes off, even if the underlying data has been updated in the database.

To ensure that the employee data is requeried when the timer goes off, `local!origEmployeeData` needs to includes the `a!refreshVariable()` function with the _refreshAlways_ configuration to force the query to reevaluate even when its dependencies have not changed. Don't worry, that doesn't mean the query will happen on every evaluation of the interface; because the parent variable `local!employee` is only evaluated on a timer, this expression will only be evaluated when the timer goes off. This configuration simply ensures that the query is always executed each time the timer goes off.

Therefore, the definition of `rule!getFormattedEmployeeInfo` needs to be updated to:

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
a!localVariables(
!  local!origEmployeeData: a!refreshVariable(
!    value: a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        logicalexpression: a!queryLogicalExpression(
          operator: "AND",
          filters: {
            a!queryFilter(field: "id", operator: "=", value: ri!id)
          },
          ignoreFiltersWithEmptyValues: true
        ),
        pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 1)
      ),
      fetchTotalCount: false
    ).data,
!    refreshAlways: true
!  ),
  local!employeeName: concat(local!origEmployeeData.firstName, " ", local!origEmployeeData.lastName),
  local!formattedStartDate: text(local!origEmployeeData.startDate, "mmm d, yyyy"),
  {
    name: local!employeeName,
    startDate: local!formattedStartDate
  }
)
```

Notice that `local!employeeName` and `local!formattedStartDate` didn't need to use _refreshAlways_ because they only need to be recalculated if the value of `local!origEmployeeData` changes.

### Refresh after

Finally, you can configure a local variable to refresh after a record action, such as a related action or a record list action, configured within a [record type object](Record_Type_Object.html) completes from a dialog window within the [Record Action Component](Record_Action_Component.html).

For example, you may need to update a local variable in the interface to reflect the changes that resulted after a record action completes, without refreshing the entire interface. When you configure the _refreshAfter_ parameter in the `a!refreshVariable()` function, the value of the local variable refreshes after any record action completes from a dialog from the Record Action Component. The rest of the interface maintains its state.

In the example below, the _refreshAfter_ parameter is configured to update `local!myData` after a user completes the edit action from a dialog window on the _Customer_ record.

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
a!localVariables(
  local!customerId: 1,
  local!myData: a!refreshVariable(
    value: rule!getCustomerbyId(id: local!customerId),
    refreshAfter: "RECORD_ACTION"
  ),
  a!recordActionField(
    actions: a!recordActionItem(
      /* For the "action" parameter below, replace the record-action reference
         * (recordType!Customer.actions.edit) with a valid record-action reference in your environment.
         */
      action: recordType!Customer.actions.edit,
      identifier: local!customerId
    )
  )
)
```

**Note:**  In this example, we are using a rule to get the value of `local!myData`. As described above in [Using Local Variables in the Definition of Refreshing Variables](#using-local-variables-in-the-definition-of-refreshing-variables), local variables used in expression rules will only refresh when their dependencies change by default. When using an expression rule to evaluate the value of a local variable, the local variables inside of the expression rule must be configured to use the `a!refreshVariable()` function with the _refreshAlways_ parameter. This ensures the value is always refreshed even when their dependencies have not changed. Specifically, in the example above, we would need to ensure any local variables used inside of `rule!getCustomerbyID()` are configured to use the `a!refreshVariable()` function with `refreshAlways: true`.

See also: [Record Action Item](Record_Action_Item_Component.html)

### Refresh behavior during a saveInto

When a component's value is updated and its `saveInto` parameter is evaluated, all saves inside of the `saveInto` parameter are evaluated before any local variables are refreshed. This means that saving into a local variable and then attempting to use a second local variable, which depends on the first local variable's value, later in the same `saveInto` will still evaluate using the original value of the second local variable.

Let's look at an example to which illustrates this behavior.

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
  local!number,
  local!greaterThanFive: tointeger(local!number) > 5,
  local!message,
  {
    a!integerField(
      label: "Enter number",
      instructions: local!message,
      value: local!number,
      saveInto: {
        local!number,
        a!save(
          target: local!message,
          value: if(
            local!greaterThanFive,
            "This number is greater than five",
            "This number is less than or equal to five"
          )
        )
      }
    )
  }
)
```

In this example, I have 3 variables: `local!number`, `local!greaterThanFive` , and `local!message`.

-   `local!number` is used to hold the value of the number entered in the integer field.
-   `local!greaterThanFive` checks if `local!number` is greater than 5. This value will automatically refresh when its dependent, `local!number`, is updated.
-   `local!message` will hold a message after entering a number.

Typing a number into the integer field will trigger the saveInto of the integer field to be evaluated. First, the value entered is saved into `local!number`. Then, a message is saved into `local!message`. In this `a!save()`, the value is determined by an `if` statement which uses `local!greaterThanFive` to check if our value is greater than five and returns the corresponding message to be displayed in the instructions.

However, if we test this out by typing in the number `7`, we see that the message returned is `"This number is less than or equal to five"` instead of `"This number is greater than five"`.

The incorrect message is returned because `local!greaterThanFive` does not refresh until all of the saves have completed in the `saveInto` parameter of the integer field.

The correct way to achieve the behavior we are looking for would be the following:

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
  local!number: 0,
  local!message,
  {
    a!integerField(
      label: "Enter number",
      instructions: local!message,
      value: local!number,
      saveInto: {
        local!number,
        a!save(
          target: local!message,
          value: if(
            tointeger(local!number) > 5,
            "This number is greater than five",
            "This number is less than or equal to five"
          )
        )
      }
    )
  }
)
```

In this version, we remove `local!greaterThanFive` and place the logic directly in our `a!save` function, which allows for that condition to correctly be evaluated during the save.

See [Interface Evaluation Lifecycle](SAIL_Performance.html) for more information about saves, local variables, and how interfaces are evaluated.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...