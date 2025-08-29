---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_match.html
original_path: fnc_logical_match.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!match() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use a!match() to Create Dynamic Interfaces

Watch this video to learn how to use the `a!match()` function.

## Function

**a!match**( _value_, _equals_, _then_, _whenTrue_, _then_, _default_ )

Evaluates the _value_ against multiple conditions and returns a value based on a match. If no match is found, the _default_ is returned. For example, if "a" then "b" else "c".

**See also**:

-   [if()](fnc_logical_if.html): Similar to `a!match()` but only evaluates a single logical statement and returns different results if the value is true or false.
-   [choose()](fnc_logical_choose.html): Evaluates a single result from a list based on the index provided.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to match. This value can be accessed in other parameters using the function variable `fv!value`. This parameter is required.

 |
|

`equals`

 |

_Any Type_

 |

This value is considered a match if it equals the _value_ parameter. This parameter is best to use when evaluating literal values (for example, 1, "Red", etc.) Text values are case sensitive, so the casing must match that of the _value_ parameter.

 |
|

`whenTrue`

 |

_Boolean_

 |

The expression considered a match if it evaluates to _true_. You can use the `fv!value` variable to reference the _value_ parameter in your expression. For example, `fv!value > 100`.

 |
|

`then`

 |

_Any Type_

 |

The value to return when the _equals_ or _whenTrue_ parameter matches the _value_ parameter. If you use multiple condition pairs, only the first match will be returned. You can use the `fv!value` variable to reference the _value_ parameter in your expression.

 |
|

`default`

 |

_Any Type_

 |

The value to return if there are no _equals_ or _whenTrue_ parameters that match the _value_ parameter. You can use the `fv!value` variable to reference the _value_ parameter in your expression. This parameter is required.

 |

## Returns

Any Type

## Usage considerations

### When to use a!match()

Use `a!match()` any time you need to evaluate a value against multiple conditions. You can use a combination of condition pairs within your expression to create more complex logic as needed. For example, you could use the following function syntax: `a!match(value, equals, then, equals, then, whenTrue, then, default)`. See [Using the equals, whenTrue, and then parameters](#using-the-equals-whentrue-and-then-parameters) for an example of an expression using both _equal_ and _whenTrue_ parameters.

Using `a!match()` within a read-only grid allows you to conditionally format grid cells. See [Grid with Heatmap Pattern](grid-with-heatmap-pattern.html) for an example of a conditionally formatted read-only grid.

### Configuring a!match()

The `a!match()` function allows you to specify a series of condition pairs using _equal_ and _then_, or _whenTrue_ and _then_.

-   The combination of the _equal_ and _then_ parameters allow you to specify that if the _value_ parameter equals x, then y. The function syntax here could look like: `a!match(value, equals, then, equals, then, default)`

    For example, if the selected radio button is "Bar chart", then display a bar chart. If the selected radio button is "Column chart", then display a column chart. See [Using the equals and then parameters](#using-the-equals-and-then-parameters) to see this example's configuration.

-   The combination of the _whenTrue_ and _then_ parameters allow you to specify that if the _value_ parameter evaluates to true, then x. The function syntax here could look like: `a!match(value, whenTrue, then, whenTrue, then, default)`

    For example, if a case is closed within 10 days, then display "Less than 10 days." If a case is closed between 30 and 60 days, then display "Between 30 and 60 days." See [Using the whenTrue and then parameters](#using-the-whentrue-and-then-parameters) to see this example configuration.

As you configure your expression, note that you can use an unlimited number of conditions pairs and that keywords are required.

### Evaluation order

Unlike most functions, `a!match()` does not always evaluate all of its parameters.

The function will only evaluate _equals_ and _whenTrue_ parameters until it finds a match to the _value_ parameter. After it finds a match, the following _then_ parameter will be evaluated and any remaining parameters will be ignored.

For example, in the function below, there are three arguments:

-   If the case priority is low, then display a down arrow icon.
-   If the case priority is medium, then display an up arrow icon.
-   If the case priority is high, then display a double up arrow icon.

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
a!localVariables(
  local!casePriority: "Medium",
  a!match(
    value: local!casePriority,
    equals: "Low",
    then: a!stampField(
      labelPosition: "COLLAPSED",
      icon: "angle-down",
      contentColor: "STANDARD"
    ),
    equals: "Medium",
    then: a!stampField(
      labelPosition: "COLLAPSED",
      icon: "angle-up",
      contentColor: "STANDARD"
    ),
    equals: "High",
    then: a!stampField(
      labelPosition: "COLLAPSED",
      icon: "angle-double-up",
      contentColor: "STANDARD",
      backgroundColor: "NEGATIVE"
    ),
    default: "No Priority"
  )
)
```

Since a case can only have one priority level, the function will only evaluate until a match is found. In this example, the function will only evaluate to the second _equals_ and _then_ condition pair since the case priority level is "Medium." This means that the third condition pair and the _default_ parameter will be ignored.

## Examples

The following examples illustrate the different configurations you can make with the `a!match()` function.

_Copy and paste these examples into an Appian Interface to see the results._

### Using the equals and then parameters

In this example, you have three radio buttons: "Bar", "Column", and "Pie". Depending on the radio button selection, you want the corresponding chart to appear. If there is no radio button selected, you want to display the text "No chart type selected."

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
a!localVariables(
  local!options: { "Bar", "Column", "Pie" },
  local!selection,
  a!sectionLayout(
    contents: {
      a!radioButtonField(
        label: "Chart Type",
        labelPosition: "ABOVE",
        choiceLabels: local!options,
        choiceValues: local!options,
        value: local!selection,
        saveInto: local!selection,
        choiceLayout: "STACKED",
        validations: {}
      ),
      a!match(
        value: local!selection,
        equals: "Bar",
        then: a!barChartField(
          categories: { "Category 1", "Category 2", "Category 3" },
          series: {
            a!chartSeries(label: "Chart Series", data: { 1, 2, 3 })
          },

        ),
        equals: "Column",
        then: a!columnChartField(
          categories: { "Category 1", "Category 2", "Category 3" },
          series: {
            a!chartSeries(label: "Chart Series", data: { 1, 2, 3 })
          },

        ),
        equals: "Pie",
        then: a!pieChartField(
          series: {
            a!chartSeries(label: "Chart Series 1", data: 1),
            a!chartSeries(label: "Chart Series 2", data: 2),
            a!chartSeries(label: "Chart Series 3", data: 3)
          },

        ),
        default: a!textField(
          value: "No chart type selected.",
          readOnly: true
        )
      )
    }
  )
)
```

### Using the whenTrue and then parameters

In this example, you want to display a label indicating the range of days a case has been open. If a case does not evaluate to one of the following labels, display the label "Error."

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
a!localVariables(
  local!caseCreatedOn: date(2021, 11, 15),
  a!sectionLayout(
    contents: {
      a!richTextDisplayField(
        value: a!match(
          value: tointeger(today() - local!caseCreatedOn),
          whenTrue: fv!value <= 30,
          then: "Less than 30 days",
          whenTrue: and(fv!value > 30, fv!value <= 60),
          then: "Between 30 and 60 days",
          whenTrue: fv!value > 60,
          then: "More than 60 days",
          default: "Error."
        )
      )
    }
  )
)
```

### Using the equals, whenTrue, and then parameters

In this example, you want to display a label indicating the number of items in a customer's shopping cart. If the number of items doesn't equal any of the following conditions, return "Unknown."

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
a!localVariables(
  local!cartSize: 5,
  a!sectionLayout(
    contents: {
      a!richTextDisplayField(
        value: a!match(
          value: local!cartSize,
          equals: 0,
          then: "Your cart is empty.",
          equals: 1,
          then: "1 item in cart.",
          whenTrue: fv!value > 1,
          then: fv!value & " items in cart.",
          default: "Unknown."
        )
      )
    }
  )
)
```

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