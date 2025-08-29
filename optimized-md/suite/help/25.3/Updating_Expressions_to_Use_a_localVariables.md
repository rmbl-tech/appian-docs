---
source_url: https://docs.appian.com/suite/help/25.3/Updating_Expressions_to_Use_a_localVariables.html
original_path: Updating_Expressions_to_Use_a_localVariables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Updating Expressions to Use a!localVariables

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The `a!localVariables()` function replaces the [load()](fnc_evaluation_load.html) and [with()](fnc_evaluation_with.html) functions. The page describes how you would use `a!localVariables()` instead of `load()` and `with()` in various scenarios.

The `a!localVariables()` function does everything `load()` and `with()` functions can do, and also provides additional refresh behaviors. When working with local variables in an interface, you cannot rename any local variables if any local variables are defined using `load()` or `with()` functions. For more information, see [Defining local variables](working_in_design_mode.html#defining-local-variables).

**Note:**  All existing expressions that use `load()` and `with()` will continue to work exactly as they did before, so there is no need to remove all instances of those functions in your current applications. However, it is recommended to use the `a!localVariables()` function going forward as it will simplify your interface design and/or improve your interface performance. All three functions work together, so you can update expressions in increments.

## Variable with no dependencies

It is very common to create a local variable that doesn't depend on any other variables, whether you're setting a common default value or running a query with no parameters. This case is configured very similarly between `a!localVariables()` and `load()`.

### Using load()

When using `load()`, you simply define the value of the local variable and then you can update its value from a component.

```
1
2
3
4
5
6
7
8
load(
  local!reportedBy: loggedInUser(),
  a!pickerFieldUsers(
    label: "Reported By",
    value: local!reportedBy,
    saveInto: local!reportedBy
  )
)
```

### Using a!localVariables()

The configuration is exactly the same with `a!localVariables()`.

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
  local!reportedBy: loggedInUser(),
  a!pickerFieldUsers(
    label: "Reported By",
    value: local!reportedBy,
    saveInto: local!reportedBy
  )
)
```

By default, all local variables created using `a!localVariables()` can be saved into, and since it has no dependencies on other variables, the value will only change when it's updated from a component.

## Variable that should update when its dependencies change

If you have a variable that depends on other variables and you want to keep its value up-to-date as those other variables change, there were two main ways to configure that using the `load()` and `with()` functions. However, using `a!localVariables` simplifies this design.

### Using with()

If you wanted the variable to be automatically updated each time its dependencies changed, you would have used `with()` for the dependent variable.

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
load(
  local!startDate: today(),
  with(
    local!endDate: local!startDate + 7,
    {
      a!dateField(
        label: "Start",
        value: local!startDate,
        saveInto: local!startDate
      ),
      a!dateField(
        label: "End",
        value: local!endDate,
        readOnly: true
      )
    }
  )
)
```

However, using `with()` to create this variable has two main implications:

1.  The user cannot update `local!endDate` themselves, because `with()` variables cannot be saved into
2.  The definition of `local!endDate` would be calculated after every user interaction, even if `local!startDate` was not updated. If the calculation was expensive it would affect performance.

### Using load()

Alternatively, you could use `load()` to create this variable so that it isn't updated on every evaluation and so that the user can edit it on their own.

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
load(
  local!startDate: today(),
  local!endDate: local!startDate + 7,
  {
    a!dateField(
      label: "Start",
      value: local!startDate,
      saveInto: {
        local!startDate,
        a!save(local!endDate, local!startDate + 7)
      }
    ),
    a!dateField(
      label: "End",
      value: local!endDate,
      saveInto: local!endDate
    )
  }
)
```

However, using `load()` to create this variable means that it will not automatically be updated, forcing you to duplicate the logic for `local!endDate` so that it is also updated correctly when the user interacts with the **Start** field.

### Using a!localVariables()

This is handled automatically for you in `a!localVariables()`. Variables are automatically updated when their dependencies change (instead of on every evaluation) and you can save into those variables.

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
  local!startDate: today(),
  local!endDate: local!startDate + 7,
  {
    a!dateField(
      label: "Start",
      value: local!startDate,
      saveInto: local!startDate
    ),
    a!dateField(
      label: "End",
      value: local!endDate,
      saveInto: local!endDate
    )
  }
)
```

## Variable that should not update when its dependencies change

You may have a variable that depends on other variables, but you don't want them to stay in sync. This might happen when you need to make a copy of a variable for later comparison. While this was the default behavior for `load()`, you will need to disable the default behavior of `a!localVariables()` using `a!refreshVariable()` to achieve this.

### Using load()

Creating a copy of a variable was very simple to create using `load()` since its initial value is never recalculated.

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
load(
  local!original: ri!text,
  {
    a!textField(
      label: "Text",
      value: ri!text,
      saveInto: ri!text
    ),
    a!textField(
      readOnly: true,
      value: if(
        ri!text = local!original,
        "Value has not changed",
        "Value changed from [" & local!original & "] to [" & ri!text & "]"
      )
    )
  }
)
```

### Using a!localVariables()

Because variables created using `a!localVariables()` update automatically when their dependencies change, you'll need to disable the default behavior using `a!refreshVariable()` when you want to make a copy.

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
a!localVariables(
  local!original: a!refreshVariable(
    value: ri!text,
    refreshOnReferencedVarChange: false
  ),
  {
    a!textField(
      label: "Text",
      value: ri!text,
      saveInto: ri!text
    ),
    a!textField(
      readOnly: true,
      value: if(
        ri!text = local!original,
        "Value has not changed",
        "Value changed from [" & local!original & "] to [" & ri!text & "]"
      )
    )
  }
)
```

## Variable that contains a save or smart service

If you want to reuse logic that will be reused within a _saveInto_ parameter of a component that uses either `a!save()` or a smart service, you previously had to use the `with()` function. When using `a!localVariables()` you'll need to use the `a!refreshVariable()` function to achieve this.

### Using with()

Storing a save or smart service call had to be created using the `with()` function so that it could reevaluate correctly when the user interacted with the component where the variable was used.

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
load(
  local!firstName,
  local!lastName,
  local!updatedOn,
  with(
    local!updatedOnSave: a!save(target: local!updatedOn, value: now()),
    {
      a!textField(
        label: "First Name",
        value: local!firstName,
        saveInto: {
          local!firstName,
          local!updatedOnSave
        }
      ),
      a!textField(
        label: "Last Name",
        value: local!lastName,
        saveInto: {
          local!lastName,
          local!updatedOnSave
        }
      ),
      a!textField(
        label: "Updated On",
        value: local!updatedOn,
        readOnly: true
      )
    }
  )
)
```

### Using a!localVariables()

In order to ensure that the save or smart service gets appropriately evaluated when the user interacts with the component, you need to make the variable refresh on every evaluation using `a!refreshVariable()`.

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
a!localVariables(
  local!firstName,
  local!lastName,
  local!updatedOn,
  local!updatedOnSave: a!refreshVariable(
    value: a!save(target: local!updatedOn, value: now()),
    refreshAlways: true
  ),
  {
    a!textField(
      label: "First Name",
      value: local!firstName,
      saveInto: {
        local!firstName,
        local!updatedOnSave
      }
    ),
    a!textField(
      label: "Last Name",
      value: local!lastName,
      saveInto: {
        local!lastName,
        local!updatedOnSave
      }
    ),
    a!textField(
      label: "Updated On",
      value: local!updatedOn,
      readOnly: true
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...