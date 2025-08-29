---
source_url: https://docs.appian.com/suite/help/25.3/stamp-steps-pattern.html
original_path: stamp-steps-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Stamp Steps (Numbered)

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

Use the stamp steps (numbered) pattern to show steps that require context or explanation. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![stamp steps pattern with the phone device width](images/patterns/stampStepsNumbered.png)

## Design structure

This page will break down the expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

### Pattern expression

When you drag and drop the stamp steps (numbered) pattern onto your interface, 47 lines of expressions will be added to the section where you dragged it.

### \[Line 1-7\] Define local variables

At the top of the expressions, local variables are used to define the name and description for each of the steps.

```sail
1
2
3
4
5
6
7
{
  a!localVariables(
    local!numberedStampSteps: {
      a!map(name: "Enter Travel Dates",  description: "Select the dates you would like to travel. Use the calendar to select multiple days at a time."),
      a!map(name: "Search Flight Deals", description: "Browse through flight options. Find the best deals based on your search criteria."),
      a!map(name: "Check Out",           description: "Purchase travel package and get notified of flight updates to keep your travel plans on track.")
    },
```

### \[Line 8-47\] Display stamp steps

This section creates each stamp step in the milestone using `a!forEach()`, cards, stamps, and [rich text items](Styled_Text_Component.html). Each step is constructed with a card layout that contains a stamp above a rich text display field. The expression that constructs each step is iterated through using `a!forEach()`.

```sail
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
    a!columnsLayout(
      columns: {
        a!columnLayout(),
        a!forEach(
          items: local!numberedStampSteps,
          expression: a!columnLayout(
            contents: a!cardLayout(
              contents: {
                a!stampField(
                  labelPosition: "COLLAPSED",
                  text: fv!index,
                  backgroundColor: "TRANSPARENT",
                  contentColor: "ACCENT",
                  size: "SMALL",
                  align: "CENTER"
                ),
                a!richTextDisplayField(
                  value: {
                    fv!item.name,
                    char(10),
                    a!richTextItem(
                      text: fv!item.description,
                      color: "SECONDARY",
                      size: "SMALL"
                    )
                  },
                  align: "CENTER"
                )
              },
              padding: "STANDARD"
            ),
            width: "NARROW"
          )
        ),
        a!columnLayout()
      },
      stackWhen: {"TABLET_PORTRAIT", "PHONE"}
    )
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...