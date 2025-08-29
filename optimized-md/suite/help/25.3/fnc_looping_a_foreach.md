---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_a_foreach.html
original_path: fnc_looping_a_foreach.html
version: "25.3"
title: "a!forEach() Function"
page_id: "fnc_looping_a_foreach"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!forEach() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use a!forEach() to Display a Dynamic List of Interface Components

Watch this video to learn how to use the looping function `a!forEach()` in your interfaces to dynamically display components from a changing list of items.

## Function

**a!forEach**( _items, expression_ )

Evaluates an expression for each item in a list and returns a new array of the results.

**See also**: [Arrays in Expressions](parts-of-an-expression.html#arrays), [Looping Recipes](SAIL_Recipes.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`items`

 |

_Any Type Array_

 |

An array or [DataSubset](Appian_Data_Types.html#datasubset) containing the items to iterate over.

 |
|

`expression`

 |

_Any Type_

 |

An expression that will be evaluated for each item. See **Usage considerations** for more information.

 |

## Returns

Any Type Array

## Usage considerations

### Function variables

The following [function variables](parts-of-an-expression.html#function-variables) are available when configuring the `expression` input:

-   _fv!item_ (Any Type): The current item
-   _fv!index_ (Integer): The current item's index in the items array
-   _fv!identifer_ (Any Type Array): When _items_ is a DataSubset with identifiers, the current item's identifier, otherwise null
-   _fv!isFirst_ (Boolean): True for the first item in the items array, otherwise false
-   _fv!isLast_ (Boolean): True for the last item in the items array, otherwise false
-   _fv!itemCount_ (Integer): The total number of items (including nulls)

### Using the items parameter

When _items_ is null or an empty list, `a!forEach()` returns an empty list of the same type as _items_. It does not evaluate the _expression_ in these cases.

`a!forEach(items: null, expression: length(fv!item))` returns `{}`

When _items_ is passed a [DataSubset](Appian_Data_Types.html#datasubset):

-   `a!forEach()` iterates through the DataSubset's _data_ field.
-   If the DataSubset's identifiers are populated, it must be an array of unique items and must be the same length as the _data_ field.
-   When present in an interface, DataSubset identifiers are used to associate local variables with particular rows.

`a!forEach(items: a!dataSubset(data: {1, 2, 3 }), expression: fv!item + 2)` returns `{3, 4, 5}`

If a two-dimensional array is passed to the _items_ parameter, `a!forEach()` evaluates the _expression_ once for each item in the outer array. In these cases `fv!item` may be an array.

`a!forEach(items: merge({1,2}, {10,20}), expression: fv!item[1] + fv!item[2])` returns `{11, 22}`

`fv!item` is always cast to its runtime type and will not appear to be Any Type even if that is what was passed in to _items_.

`a!forEach(items: {1, "hello"}, expression: typename(typeof(fv!item)))` returns `{"Number (Integer)", "Text"}`

### Using the expression parameter

The _expression_ parameter can be configured with any valid expression, including any number of rules, functions, constants, etc.

`a!forEach(items: {1, null, 3}, expression: if(isnull(fv!item), "No Value", "Value: " & fv!item))` returns `{"Value: 1", "No Value", "Value: 3"}`

If the _expression_ parameter contains a data query, each loop iteration may be [evaluated in parallel](expressions-parallel-evaluation.html) to reduce the overall evaluation time.

The result of each _expression_ evaluation is appended to the returned list in the same order as the corresponding item in _items_.

`a!forEach(items: {100, 200, 300}, expression: fv!item + 1)` returns `{101, 201, 301}`

When passed a single non-null value that is not a DataSubset, `a!forEach()` evaluates the _expression_ once for that value and returns the result in a single-item list.

`a!forEach(items: 3, expression: fv!item + 1)` returns `{4}`

If the result of any _expression_ is an array, `a!forEach()` returns a two-dimensional array. Two-dimensional arrays can be useful when processing data, but not all functions support them. Two-dimensional arrays are auto-flattened into one-dimensional arrays upon being stored in a process variable, node input, typed rule input, or custom data type field. Local variables, however, can store the two-dimensional array without flattening them.

`a!forEach(items: {1, 2, 3}, expression: enumerate(fv!item)))` returns a 3 item list consisting of `{0}`, `{0, 1}`, and `{0, 1, 2}`

You can use [a!flatten()](fnc_array_a_flatten.html) on the result of `a!forEach()` to convert to a one-dimensional array.

## Examples

### Use the same variable multiple times

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
concat(
  a!forEach(
  items: {"the", "variables", "fv!isFirst", "and", "fv!isLast", "are", "helpful"},
    expression: concat(
      if(
        fv!isFirst,
        proper(fv!item),
        fv!item
      ),
      if(
        fv!isLast,
        "!",
        " "
      )
    )
  )
)
```

returns: `"The variables fv!isFirst and fv!isLast are helpful!"`

### Using multiple function variables

```
1
2
3
4
a!forEach(
  items: {"apple", "pear", "banana"},
  expression: "Word " & fv!index & " is length: " & len(fv!item)
)
```

returns: `{"Word 1 is length: 5", "Word 2 is length: 4", "Word 3 is length: 6"}`

### Using a!forEach with interface components

In the interface, the _expression_ parameter can contain interface components, [a!localVariables()](fnc_evaluation_load.html) variables, and [load()](fnc_evaluation_load.html) variables. To edit the current array item, interface components should save values into `fv!item` instead of indexing back into the original array so that `a!forEach()` can keep local variables associated with the correct rows.

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
a!localVariables(
  local!names: {"Alice", "Bob", "Carol"},
  a!forEach(
    items: local!names,
    expression: a!localVariables(
      local!modified,
      a!textField(
        instructions: if(local!modified, "Modified!", ""),
        value: fv!item,
        saveInto: {
          fv!item,
          a!save(local!modified, true)
        }
      )
    )
  )
)
```

If the original array needs to be modified without writing to `fv!item`, either because it is being changed outside the `a!forEach()` loop or because a loop iteration is modifying an item besides the current one, then use a DataSubset with identifiers to make sure local variables are associated with the correct rows.

### Using a!forEach with record data in interface components

Using `a!forEach()`, you can create a list of record field values without knowing the size of the final list.

In this example, we'll query the Department record type with [a!queryRecordType()](fnc_system_queryrecordtype.html) and then store the result in a local variable. Use `a!forEach()` to iterate over the list of departments and build a list from the `value` field of each record.

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
a!localVariables(
  local!records: a!queryRecordType(
    recordType: recordType!AT Department,
    fields: recordType!AT Department.fields.value,
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 10,
      sort: a!sortInfo(
        field: recordType!AT Department.fields.value,
        ascending: true()
      )
    ),
  ).data,
  {
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextItem(
          text: a!forEach(
            items: local!records,
            expression: if(
              condition: fv!isLast,
              valueIfTrue: "and " & fv!item[recordType!AT Department.fields.value] & ".",
              valueIfFalse: fv!item[recordType!AT Department.fields.value] & ", "
            )
          )
        ),
      }
    )
  }
)
```

The resulting interface will look similar to this example:

![Example interface created from record data with a forEach loop](images/forEachUsingRecords_25_2.png)

### Nesting a!forEach

If you need to nest an `a!forEach()` inside another `a!forEach()` and want to refer to the outer `fv!item`, you can either put it in a local variable before calling the second `a!forEach()` or put the inner call in a separate rule and pass in `fv!item` via a rule input. For example:

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
a!forEach(
  items: {"January", "February", "March"},
  expression: a!localVariables(
    local!month: fv!item,
    a!forEach(
      items: {1, 15},
      expression: local!month & " " & fv!item
    )
  )
)
```

The above expression returns a three item list containing `{"January 1", "January 15"}`, `{"February 1", "February 15"}`, and `{"March 1", "March 15"}`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...