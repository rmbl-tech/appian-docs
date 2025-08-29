---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html
original_path: recipe-use-guage-fraction-and-percentage-configurations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use the Gauge Fraction and Gauge Percentage Configurations

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

This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

![recipe_gauge_both.png](images/recipe-gauge-both.png)

**Tip:**  If you already know about the assistive features for configuring the gauge component from design mode, and just want to see the resulting expression, you can [skip to the end](#expression).

## Walkthrough

In this scenario, we are creating a gauge to show that a user has completed 5 of their 11 tasks. When adapting this pattern for your application, you will likely either query for the number of tasks completed and total tasks, or use a rule input.

### Setup

Let's start with a new interface where we'll set up our local variables and layout.

1.  Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg), then enter the following expression:

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
      local!tasksCompleted: 5,
      local!totalTasks: 11,
      {
        a!sectionLayout(
          label: "My Tasks",
          contents: {}
        )
      }
    )
    ```

2.  Switch back to **Design mode** ![design mode icon](images/design-mode-icon.svg).
3.  From the component **PALETTE**, drag a **GAUGE** component into the content section of the Section layout.
4.  From the **COMPONENT CONFIGURATION**, delete the value for **Label** (`Gauge`), and set **Label Position** to `HIDDEN` so it doesn't leave an empty space above the component.

### Using the Gauge Percentage

When you add a Gauge component to your interface in design mode, the default configuration includes `a!guagePercentage()` as the **Primary Text** component with a default **Fill Percentage** value of `60.1`.

Let's change the percentage value to an expression that calculates a new value from our local variables.

1.  From the **COMPONENT CONFIGURATION**, hover over **Fill Percentage** until the _Edit as Expression_ icon () appears, then click it.

    ![recipe_gauge_edit_icon.png](images/recipe_gauge_edit_icon.png)

2.  In the expression editor, replace the default value of `60.1` with the following expression: `local!tasksCompleted/local!totalTasks * 100`

Your interface should now look like this:

![recipe_guage_45.png](images/recipe-gauge-45.png)

If you click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg), you should see this interface expression:

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
  local!tasksCompleted: 5,
  local!totalTasks: 11,
  {
    a!sectionLayout(
      label: "My Tasks",
      contents: {
        a!gaugeField(
          label: "",
          labelposition: "COLLAPSED",
          percentage: local!tasksCompleted/local!totalTasks * 100,
          primaryText: a!gaugePercentage()
        )
      }
    )
  }
)
```

### Using the Gauge Fraction

From design mode, we can easily switch to using `a!gaugeFraction()` to display the same value we entered for the percentage.

-   From the **COMPONENT CONFIGURATION**, under **Primary Text**, select **Fraction**.

Notice that by default, the fraction shows `45/100`. This is the same _percentage_ value calculated over a denominator of 100, which is the default value for `a!gaugeFraction()`. Let's change it so it correctly displays `5/11`.

1.  Hover over **Denominator** until the _Edit as Expression_ icon () appears, then click it.
2.  In the expression editor, enter the following expression: `local!totalTasks`
3.  For **Secondary Text**, enter `Completed`.

Your interface should now look like this:

![recipe_gauge_completed.png](images/recipe-gauge-completed.png)

Notice that the text automatically increased in size to better fit the gauge.

Similar to `a!gaugePercentage()`, `a!gaugeFraction()` works by automatically calculating the numerator based on the _fill percentage_ value and the _denominator_, rounded to the nearest integer. Because the configuration rounds to an integer, it only works well if you are calculating the percentage from a fractional value, as we did in this example.

And that's it! We are able to configure a gauge with either the Gauge Percentage or Gauge Fraction configurations.

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
a!localVariables(
  local!tasksCompleted: 5,
  local!totalTasks: 11,
  {
    a!sectionLayout(
      label: "My Tasks",
      contents: {
        a!columnsLayout(
          columns: {
              a!columnLayout(
                contents: {
                  a!gaugeField(
                    label: "",
                    labelposition: "COLLAPSED",
                    percentage: local!tasksCompleted/local!totalTasks * 100,
                    primaryText: a!gaugeFraction(
                      denominator: 11
                    ),
                    secondarytext: "Completed"
                  )
                }
            ),
            a!columnLayout(
              contents: {
                a!gaugeField(
                  label: "",
                  labelposition: "COLLAPSED",
                  percentage: local!tasksCompleted/local!totalTasks * 100,
                  primaryText: a!gaugePercentage(),
                  secondarytext: "Completed"
                )
              }
            )
          }
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...