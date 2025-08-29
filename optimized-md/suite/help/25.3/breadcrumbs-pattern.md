---
source_url: https://docs.appian.com/suite/help/25.3/breadcrumbs-pattern.html
original_path: breadcrumbs-pattern.html
version: "25.3"
title: "Breadcrumbs Pattern"
page_id: "breadcrumbs-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Breadcrumbs Pattern

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

The breadcrumbs pattern is a good example of breadcrumb-style navigation. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

Breadcrumbs are useful for showing users their location within an organizational hierarchy. This page explains the design structure of the breadcrumbs pattern.

Breadcrumbs can contain links to allow users to navigate to other levels of the hierarchy, but should not be used for showing navigation history. If a user reaches a view by following links from multiple other views, the breadcrumb should always show the same hierarchy. Use the "Strong" style to indicate the current page and the "Standalone" link style for the preceding pages.

Since implementations of breadcrumbs vary widely based on the scenario, this pattern only demonstrates the recommended styling approach.

![screenshot of the breadcrumbs pattern](images/patterns/breadcrumbs_pattern.png)

## Design structure

The main components in this pattern are rich text display items and a rich text display component. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

### Pattern expression

When you drag and drop the breadcrumbs pattern onto your interface, 46 lines of expressions will be added to the section where you dragged it.

### \[Line 1-14\] Define local variables

At the top of the pattern, local variables are set up to define the breadcrumb nodes. The sample data in `local!nodes` should be replaced with a rule.

```sail
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
{
  a!localVariables(
    local!currentNodeId: 4,
    /* This variable would normally be retrieved with a rule like rule!getBreadcrumbsForIdentifier(identifier: local!currentNodeId). */
    local!nodes: a!forEach(
      items: enumerate(local!currentNodeId)+1,
      expression: choose(
        fv!item,
        a!map(name: "Home", identifier: 1),
        a!map(name: "My Documents", identifier: 2),
        a!map(name: "Strategy", identifier: 3),
        a!map(name: "2018 Road Map", identifier: 4)
      )
    ),
```

### \[Line 15-46\] Define breadcrumb nodes

There is only one component for this pattern, which is the rich text display component. Breadcrumb functionality can vary substantially, but we recommend using a `saveInto` in the `a!dynamicLink()` (line 32) to run a query or rule to navigate to other nodes in the breadcrumb.

```sail
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
    {
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!forEach(
            items: local!nodes,
            expression: if(
              fv!isLast,
              a!richTextItem(
                text: fv!item.name,
                style: "STRONG"
              ),
              {
                a!richTextItem(
                  text: fv!item.name,
                  /* The saveInto in this link would run the query or rule necessary to navigate the user to *
                   * the node in the breadcrumbs that they just clicked on.                                  */
                  link: a!dynamicLink(value: fv!item.identifier, `saveInto: local!currentNodeId)`,
                  linkStyle: "STANDALONE"
                ),
                a!richTextItem(
                  text: "  /  ",
                  color: "SECONDARY"
                )
              }
            )
          )
        }
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...