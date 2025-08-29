---
source_url: https://docs.appian.com/suite/help/25.3/recipe-expand-collapse-rows-in-a-tree-grid.html
original_path: recipe-expand-collapse-rows-in-a-tree-grid.html
version: "25.3"
title: "Expand/Collapse Rows in a Tree Grid"
page_id: "recipe-expand-collapse-rows-in-a-tree-grid"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Expand/Collapse Rows in a Tree Grid

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

Create a grid that shows hierarchical data and allows users to dynamically expand and collapse rows within the grid.

![a screenshot of a tree grid inside an editable grid](images/TreeGrid.png)

This scenario demonstrates:

-   How to use the rich text display component inside an editable grid to create a tree grid.
-   How to use a rich text display component to create a dynamic link used to expand and collapse the rows in an editable grid.
-   How to create a rich text bulleted list within a rich text display component inside each collapsible row in the tree grid.

## Setup

For this recipe, you'll need two Data Store Entities that are populated with data:

1.  Create a custom data type called `PurchaseRequest` with the following fields:
    -   id (Number (Integer))
    -   summary (Text)
2.  Designate the id field as the primary key and set to generate value.
    -   See also: [Primary Keys](Generating_Database_Tables_from_CDTs.html#primary-keys)
3.  Save and publish the CDT.
4.  Create a custom data type called `PurchaseRequestItem` with the following fields:
    -   id (Number (Integer))
    -   summary (Text)
    -   qty (Number (Integer))
    -   unitPrice (Number (Decimal))
    -   purchaseRequest (PurchaseRequest)
5.  Designate the id field as the primary key and set to generate value.
6.  Save and publish the CDT.
7.  Create a Data Store called "Purchase Request" with two entities, one of each data type that was just created:
    -   PurchaseRequests (PurchaseRequest)
    -   PurchaseRequestItems (PurchaseRequestItem)
8.  Insert the following values into `PurchaseRequest`:

    | id | summary |
    | --- | --- |
    | 1 | PR 1 |
    | 2 | PR 2 |

9.  Insert the following values into `PurchaseRequestItem`:

    | id | summary | qty | unitPrice | purchaseRequest.id |
    | --- | --- | --- | --- | --- |
    | 1 | Item 1 | 2 | 10 | 1 |
    | 2 | Item 2 | 3 | 50 | 1 |
    | 3 | Item 3 | 1 | 100 | 1 |
    | 4 | Item 4 | 3 | 75 | 2 |
    | 5 | Item 5 | 10 | 25 | 2 |

Now that we have the data, let's create a couple of supporting constants:

-   `PR_ENTITY`: A constant of type Data Store Entity with value `PurchaseRequests`.
-   `PR_ITEM_ENTITY`: A constant of type Data Store Entity with value `PurchaseRequestItems`.

Now that we have created all of the supporting objects, let's move on to the main expression.

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
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
a!localVariables(
  local!prs: a!queryEntity(
    entity: cons!PR_ENTITY,
    query: a!query(
      /* To return all fields, leave the selection parameter blank. `*/
      /*`If you are not displaying all fields, use the selection    `*/
      /*` parameter to only return the necessary fields              */
      pagingInfo: a!pagingInfo(startIndex: 1, batchSize: -1)
    )
  ).data,
  local!items: a!queryEntity(
    entity: cons!PR_ITEM_ENTITY,
    query: a!query(
      pagingInfo: a!pagingInfo(startIndex: 1, batchSize: -1)
    )
  ).data,
  a!gridLayout(
    headerCells: {
      a!gridLayoutHeaderCell(label: "Summary"),
      a!gridLayoutHeaderCell(label: "Qty", align: "RIGHT"),
      a!gridLayoutHeaderCell(label: "Unit Price", align: "RIGHT"),
      a!gridLayoutHeaderCell(label: "Total Price", align: "RIGHT")
    },
    columnConfigs: {
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 4),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2)
    },
    rowHeader: 1,
    rows: a!forEach(
      items: local!prs,
      expression: a!localVariables(
        local!expanded: false,
        local!itemsForPr: index(
          local!items,
          /* Must cast to integer because a!queryEntity() returns a dictionary */
          wherecontains(tointeger(fv!item.id), local!items.purchaseRequest.id),
          {}
        ),
        local!totalPrice: sum(
          a!forEach(
            items: local!itemsForPr,
            expression:
            tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
          )
        ),
        {
          a!gridRowLayout(
            contents: {
              a!richTextDisplayField(
                label: "Summary " & fv!index,
                value: {
                  if(
                    length(local!itemsForPr)=0,
                    fv!item.summary,
                    a!richTextItem(
                      text: if(local!expanded, "-", "+") &" "& fv!item.summary,
                      link: a!dynamicLink(
                        value: not(local!expanded),
                        saveInto: local!expanded
                      )
                    )
                  )
                }
              ),
              a!textField(
                label: "Qty " & fv!index,
                readOnly: true
              ),
              a!textField(
                label: "Unit Price " & fv!index,
                readOnly: true
              ),
              a!textField(
                label: "Total Price " & fv!index,
                value: a!currency(
                  isoCode: "USD",
                  value: local!totalPrice
                ),
                readOnly: true,
                align: "RIGHT"
              )
            }
          ),
          if(
            local!expanded,
            a!forEach(
              items: local!itemsForPr,
              expression: a!gridRowLayout(contents: {
                a!richTextDisplayField(
                  label: "Item Summary " & fv!index,
                  value: a!richTextBulletedList(
                    items: fv!item.summary
                  )
                ),
                a!integerField(
                  label: "Item Qty " & fv!index,
                  value: fv!item.qty,
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!textField(
                  label: "Item Unit Price " & fv!index,
                  value: a!currency(
                    isoCode: "USD",
                    value: fv!item.unitPrice)
                    ,
                  readOnly: true,
                  align: "RIGHT"
                ),
                a!textField(
                  label: "Item Total Price " & fv!index,
                  value: a!currency(
                    isoCode: "USD",
                    value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
                  ),
                  readOnly: true,
                  align: "RIGHT"
                )
              })
            ),
            {}
          )
        }
      )
    )
  )
)
```

## Test it out

1.  Click on **\+ PR 1** in the **Summary** column to expand to show the item rows corresponding to PR 1.
2.  Click on **\- PR 1** to hide the item rows for PR 1 again.
3.  The same can be done for PR 2.

## Notable implementation details

-   Notice that we used a rich text display component to create a dynamic link used to expand and collapse the item rows for each purchase request. Alternatively, we could have used a link component containing the same dynamic link. The rich text display component would be useful here if a rich text style (e.g. underline) needed to be applied to the purchase request summary or if the summary needed to be a combination of links and normal text.
-   The bullet appearing in front of each item summary is made possible by using a rich text bulleted list within a [rich text display component](Rich_Text_Component.html).
-   We left the `selection` parameter blank in our `a!query()`function because we wanted to return all fields of the entities that we were querying.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...