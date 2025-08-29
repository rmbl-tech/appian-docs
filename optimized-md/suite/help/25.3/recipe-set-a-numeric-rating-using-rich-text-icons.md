---
source_url: https://docs.appian.com/suite/help/25.3/recipe-set-a-numeric-rating-using-rich-text-icons.html
original_path: recipe-set-a-numeric-rating-using-rich-text-icons.html
version: "25.3"
title: "Set a Numeric Rating Using Rich Text Icons"
page_id: "recipe-set-a-numeric-rating-using-rich-text-icons"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set a Numeric Rating Using Rich Text Icons

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

Save a numeric score using a set of clickable rich text icons.

This example uses a familiar set of star icons capture a user's sentiment. To see how to display an aggregated set of rankings rating, see the [Show a Numeric Rating as Rich Text Icons](recipe-show-a-numeric-rating-as-rich-text-icons.html) recipe.

This scenario demonstrates:

-   How to use `a!forEach()` within rich text.
-   How to set a parameter dynamically within an interface component.
-   How to reset a value back to its initial value.

![images:SAIL_Recipe_Inline_Star_Rating.png](images/SAIL_Recipe_Inline_Star_Rating_Set.png)

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
a!localVariables(
  local!rating: 0,
  local!totalStars: 10,
  a!richTextDisplayField(
    value: {
      a!foreach(
        items: enumerate(local!totalStars) + 1,
        expression: {
          a!richTextIcon(
            icon: if(
              fv!index <= local!rating,
              "star",
              "star-o"
            ),
            color: "ACCENT",
            linkstyle: "STANDALONE",
            link: a!dynamicLink(
              value: if(local!rating=fv!index, 0, fv!index),
              saveInto: local!rating
            )
          )
        }
      )
    }
  )
)
```

## Test it out

1.  Click on a random star. Notice that this and all previous stars will fill in.
2.  Click on another random star. Notice that the total number of stars will change.
3.  Click on the same star again. Notice that the stars will reset to zero.

## Notable implementation details

-   The calculation does no rounding on the score. Any score between two whole numbers will receive a partial star. This can be easily adjusted in the second `if()` statement, providing a different value than `1` when running the index comparison against `local!score`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...