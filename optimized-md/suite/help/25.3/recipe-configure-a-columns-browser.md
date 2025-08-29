---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-a-columns-browser.html
original_path: recipe-configure-a-columns-browser.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Browse Hierarchical Data

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

Display a hierarchical data browser.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

This [columns browser](Columns_Browser_Component.html) shows regions, account executives located in each region, and the customers associated with each account executive. Regions, account executives, and customers each have a different display configuration.

![](images/col-browser-recipe.png)

This scenario demonstrates:

-   How to display data in a columns browser
-   How to dynamically retrieve data for each column depending on the level of the hierarchy
-   How to dynamically configure the display of each node depending on the type of data displayed in the hierarchy

## Setup

For this recipe, you'll need a hierarchical data set. Create the following three custom data types with corresponding fields.

EXAMPLE\_Region

-   id (Number (Integer))
-   name (Text)

EXAMPLE\_AccountExec

-   id (Number (Integer))
-   firstName (Text)
-   lastName (Text)
-   regionId (Number (Integer))

EXAMPLE\_Customer

-   id (Number (Integer))
-   name (Text)
-   accountExecId (Number (Integer))

These data types have a hierarchical relationship. Note how EXAMPLE\_AccountExec has a field for region and EXAMPLE\_Customer has a field for account executive.

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
a!localVariables(
  /*
  This is sample data for the recipe. In your columns browser component,
  you'll use data from other sources, like records or entities.
  */
  local!regions:{
    'type!{urn:com:appian:types}EXAMPLE_Region'( id: 1, name: "North America" ),
    'type!{urn:com:appian:types}EXAMPLE_Region'( id: 2, name: "South America" ),
    'type!{urn:com:appian:types}EXAMPLE_Region'( id: 3, name: "EMEA" ),
    'type!{urn:com:appian:types}EXAMPLE_Region'( id: 4, name: "APAC" )
  },
  local!accountExecs:{
    'type!{urn:com:appian:types}EXAMPLE_AccountExec'( id: 1, firstName: "Susan",  lastName: "Taylor", regionId: 1 ),
    'type!{urn:com:appian:types}EXAMPLE_AccountExec'( id: 2, firstName: "Sharon", lastName: "Hill",   regionId: 3 ),
    'type!{urn:com:appian:types}EXAMPLE_AccountExec'( id: 3, firstName: "Kevin",  lastName: "Singh",  regionId: 2 ),
    'type!{urn:com:appian:types}EXAMPLE_AccountExec'( id: 4, firstName: "Daniel", lastName: "Lewis",  regionId: 3 )
  },
  local!customers:{
    'type!{urn:com:appian:types}EXAMPLE_Customer'( id: 1, name: "Lebedev",         accountExecId: 2 ),
    'type!{urn:com:appian:types}EXAMPLE_Customer'( id: 2, name: "Parsec Express",  accountExecId: 3 ),
    'type!{urn:com:appian:types}EXAMPLE_Customer'( id: 3, name: "Dengar Dynamics", accountExecId: 2 ),
    'type!{urn:com:appian:types}EXAMPLE_Customer'( id: 4, name: "Almach",          accountExecId: 1 )
  },
  local!path,
  local!selection,
  a!sectionLayout(
    contents:{
      a!hierarchyBrowserFieldColumns(
        label: "Interface Recipe: Columns Browser",
        /*
        This data comes from a local variable for the recipe. Substitute your
        rule here when you make your own columns browser component.
        */
        firstColumnValues: local!regions,
        /*
        This is where you specify how a node appears in the browser given
        its type. If the node is a region, show the name field. If the node
        is an account executive, show the first name and last name fields.
        */
        nodeConfigs: if(
          typeof(fv!nodeValue) = 'type!{urn:com:appian:types}EXAMPLE_Region',
          a!hierarchyBrowserFieldColumnsNode(
            id: fv!nodeValue.id,
            label: fv!nodeValue.name,
            image: a!documentImage(document: a!iconIndicator("HARVEY_0"))
          ),
          if(
            typeof(fv!nodeValue) = 'type!{urn:com:appian:types}EXAMPLE_AccountExec',
            a!hierarchyBrowserFieldColumnsNode(
              id: fv!nodeValue.id,
              label: fv!nodeValue.firstName & " " & fv!nodeValue.lastName,
              image: a!documentImage(document: a!iconIndicator("HARVEY_50"))
            ),
            if(
              typeof(fv!nodeValue)='type!{urn:com:appian:types}EXAMPLE_Customer',
              a!hierarchyBrowserFieldColumnsNode(
                id: fv!nodeValue.id,
                label: fv!nodeValue.name,
                image: a!documentImage(document: a!iconIndicator("HARVEY_100")),
                isDrillable: false
              ),
              {}
            )
          )
        ),
        pathValue: local!path,
        pathSaveInto: local!path,
        nextColumnValues: if(
          /*
          Check to see if the node is a region. If so, look up account
          executives for that region. Substitute your type and rule here.
          */
          typeof(fv!nodeValue)='type!{urn:com:appian:types}EXAMPLE_Region',
          index(local!accountExecs, wherecontains(fv!nodeValue.id, local!accountExecs.regionId), {}),
          if(
            /*
            Check to see if the node is an account executive. If so, look up customers
            for that account executive. Substitute your type and rule here.
            */
            typeof(fv!nodeValue)='type!{urn:com:appian:types}EXAMPLE_AccountExec',
            index(local!customers, wherecontains(fv!nodeValue.id, local!customers.accountExecId), {}),
            {}
          )
        ),
        selectionValue: local!selection,
        selectionSaveInto: local!selection,
        height: "SHORT"
      ),
      a!textField(
        label: "path",
        instructions: typename(typeof(local!path)),
        value: local!path,
        readOnly: true
      ),
      a!textField(
        label: "selection",
        instructions: typename(typeof(local!selection)),
        value: local!selection,
        readOnly: true
      )
    }
  )
)
```

## Test it out

1.  The resulting display in the live view shows one column of regions. Click different regions in that column to change `path` and `selection`.
2.  Select **EMEA** region. Account executives should appear in the next column.
3.  Select **Sharon Hill**. Sharon Hill's customer accounts should appear.

## Notable implementation details

-   The data provided here is loaded into local variables. Refer to the comments in the example interface to substitute your own data and queries. For heterogenous data sets like this example, remember to specify how each type should retrieve its next column values and how each type should be displayed.
-   The images shown in this example are simple icons configured with [a!iconIndicator](fnc_system_a_iconindicator.html). You can use this function or provide different document or web images. Choose icons that makes sense for your data to create a compelling visual experience in your interfaces.
-   `nodeConfigs` is configured using [a!hierarchyBrowserFieldColumnsNode()](Columns_Browser_Node_Component.html). This determines how items in the hierarchy are displayed. In this snippet, it determines how regions are displayed.
-   `nextColumnValues` determines what appears in the next column based on the type of the current node, `fv!nodeValue`.
-   The customer nodes are configured not to be drillable because we know that this column is the end of the hierarchy.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...