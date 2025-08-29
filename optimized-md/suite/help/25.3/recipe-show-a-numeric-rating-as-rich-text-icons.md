---
source_url: https://docs.appian.com/suite/help/25.3/recipe-show-a-numeric-rating-as-rich-text-icons.html
original_path: recipe-show-a-numeric-rating-as-rich-text-icons.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Show a Numeric Rating as Rich Text Icons

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

Dynamically show a star rating based on a numeric score.

This example uses a familiar set of star icons to display an aggregated value taken from many previous rating. To see how to capture and display an individual rating, see the [Set a Numeric Rating Using Rich Text Icons](recipe-set-a-numeric-rating-using-rich-text-icons.html) recipe.

This scenario demonstrates:

-   How to use `a!forEach()` within rich text.
-   How to dynamically set a parameter within an interface component.

![images:SAIL_Recipe_Inline_Star_Rating.png](images/SAIL_Recipe_Inline_Star_Rating.png)

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
  local!score: 5.88,
  local!limit: 10,
  a!richTextDisplayField(
    value: {
      a!forEach(
        items: enumerate(local!limit) + 1,
        expression: a!richTextIcon(
          color: "ACCENT",
          icon: if(
            fv!index <= local!score,
            "star",
            if(
              fv!index - 1 < local!score,
              "star-half-o",
              "star-o"
            )
          )
        )
      )
    }
  )
)
```

## Test it out

1.  Change the value of `local!limit` and click **TEST** to reload the interface.
    -   Observe that the number of total stars will change.
2.  Change the value of `local!score` and click **TEST** to reload the interface.
    -   Observe that the number filled in stars will change.

## Notable implementation details

-   The calculation does no rounding on the score. Any score between a whole number will receive a partial star. This can be easily adjusted in the second `if()` statement, providing a different value than `1` when running the index comparison against `local!score`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...