---
source_url: https://docs.appian.com/suite/help/25.3/recipe-show-percentage-of-sales.html
original_path: recipe-show-percentage-of-sales.html
version: "25.3"
title: "Percentage of Online Sales"
page_id: "recipe-show-percentage-of-sales"
section: "Scenario"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Percentage of Online Sales

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component. This pattern also provides a sample scenario to show how you can take common business requirements and quickly turn them into a report.

You'll notice that this pattern provides more than just an expression, it shows you the fastest way to build reports in Design Mode. To get the most out of this pattern, follow the steps in [Create this pattern](#create-this-pattern) to learn how to build advanced reports using the latest low-code features.

## Scenario

Account managers at the [Appian Retail company](report-with-records.html) want to know how much of their 2021 sales were generated from online sales so they can determine if they need to do more online advertising, or hire more in-person staff.

To show the percentage of online sales, you’ll use the pattern on this page to create a query using `a!queryRecordType()` to calculate the sum of sales for all orders purchased in 2021 and the sum of sales for orders purchased online in 2021. Then, you'll uses a gauge component to calculate and display the percentage of online sales generated in 2021.

To allow account managers to better understand whether online sales are growing, stagnant, or decreasing, you'll also create a second gauge component that shows the percentage of online sales generated in 2020.

The report will look like this:

[![images/ytd-and-ly-ytd.png](images/ytd-and-ly-ytd.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img13)

[![](images/ytd-and-ly-ytd.png)](#_)

## Setup

This pattern uses data from the Appian Retail application, available for free in [Appian Community Edition](https://community.appian.com/p/my-learning-journey/). To follow along with this pattern, [log in](https://explore.appian.community/suite/webapi/global-redirect) to Appian Community and register for Appian Community Edition.

In Appian Community Edition, [create a test application](Application_Building_Tutorial.html) to follow along with patterns and examples using data from the Appian Retail application.

This pattern will use data from the following record types in the Appian Retail application:

-   **Order record type**: Contains order information like the order number, date, status, and whether it was purchased online or in stores. For example, order number SO43659 was purchased in stores on 5/31/2019 and the order is closed.
-   **Order Detail record type**: Contains specific order details like the number of order items, order totals, promo codes applied, and products. For example, the order above contained one product that cost $2,024.99.

## Create this pattern

To create this pattern, you will:

1.  [Get the sum of total sales and the sum of online sales for orders purchased in 2021.](#step-1)
2.  [Show the percentage of online sales in 2021.](#step-2)
3.  [Get the sum of total sales and the sum of online sales for orders purchased in 2020.](#step-3)
4.  [Show the percentage of online sales in 2020.](#step-4)

### Step 1: Get the sum of total sales and the sum of online sales for orders purchased in 2021

Your first step is to get the sum of sales for all orders purchased in 2021, and the sum of sales for orders purchased online this year. To calculate these values, you'll create a query using [a!queryRecordType()](fnc_system_queryrecordtype.html) and save the value in a local variable within an interface.

In the query, you'll filter the data so you only return orders from 2021. Then, you'll group by the year when the order was made, and calculate two measures: the sum of all orders, and the sum of orders that have the `onlineOrderFlag` equal to `1`, where `1` means the order was made online, and `0` means the order was made in-stores.

We'll use this query in the next step to calculate the percentage in the gauge component.

To calculate these values:

1.  In your test application in Appian Community Edition, go to the **Build** view.
2.  Click **NEW** > **Interface**.
3.  Configure the interface properties and click **CREATE**.
4.  In the interface header, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
5.  Copy and paste the following expression. This creates a local variable with our query, and includes a column layout that we'll use later in this pattern:

    **Note:**  These record type references are specific to the Appian Retail application. If you're following along in a test application in Appian Community Edition, you can copy and paste this expression to reference these record types without updating the record type references.

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
     a!localVariables(
       local!onlineSales2021: a!queryRecordType(
         recordType: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order',
         /* Only include orders created in 2021 */
         filters: {
           a!queryFilter(
             field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
             operator: "BETWEEN",
             value: {
               todatetime("01/01/2021"),
               todatetime("12/31/2021")
             }
           )
         },
         fields: {
           a!aggregationFields(
             /* Group by the order date year */
             groupings: a!grouping(
               field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
               interval: "YEAR",
               alias: "orderDateYear"
             ),
             measures: {
               /* Get the sum of all orders */
               a!measure(
                 field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
                 function: "SUM",
                 alias: "totalSales"
               ),
               /* Get the sum of all orders that have an online order flag */
               a!measure(
                 field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
                 function: "SUM",
                 alias: "onlineSales",
                 filters: {
                   a!queryFilter(
                     field: 'recordType!{bec4a875-9980-4bbf-a38c-c492ebed065a}Order Detail.relationships.{e6b1dbca-6c3c-4540-a093-3c581a73ad17}order.fields.{5bade7d5-5fbc-4cc4-807f-907f8f65969b}onlineOrderFlag',
                     operator: "=",
                     value: 1
                   ),

                 }
               )
             }
           )
         },
         pagingInfo: a!pagingInfo(1, 10)
       ).data,
       /* Column layout that we'll use for our gauge components */
       {
         a!columnsLayout(
           columns: {
             a!columnLayout(contents: {}),
             a!columnLayout(contents: {})
           }
         )
       }
     )
    ```

### Step 2: Show the percentage of online sales in 2021

Now that you have a query that calculates your total sales in 2021 and your sales from online orders that year, you can calculate the percentage of online sales directly in a gauge component.

To calculate and display the percentage of online sales in 2021:

1.  In your interface header, click **Design mode** ![design mode icon](images/design-mode-icon.svg). A column layout with two columns appears.
2.  From the **PALETTE**, drag a **GAUGE** component into the left column layout.
3.  In the **Gauge** component configuration, hover over **Fill Percentage** and click **Edit as Expression**.
4.  In the **Fill Percentage** dialog, replace the existing value with the following expression. This will calculate the percent of online sales:

    ```
    1
     local!onlineSales2021.onlineSales / local!onlineSales2021.totalSales * 100
    ```

5.  Click **OK**.
6.  In **Secondary Text**, enter `2021`.
7.  Hover over **Tooltip** and click **Edit as Expression** .
8.  In the **Tooltip** dialog, enter the following expression. This will display the sum of sales for this year.

    ```
    1
    2
    3
    4
     "Online Sales: " & a!currency(
       isoCode: "USD",
       value: a!defaultValue(local!onlineSales2021.onlineSales,0)
     )
    ```

9.  Click **OK**.

The interface will look something like this:

![Single gauge component with this year's percent of online sales](images/ytd-sales-percent.png)

### Step 3: Get the sum of total sales and the sum of online sales for orders purchased in 2020

Now you need to calculate the percentage of online sales in 2020.

To get this percentage, you first need to gets the sum of sales for all orders purchased in 2020, as well as the sum of sales for orders purchased online that year.

To calculate these values:

1.  In your interface header, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
2.  In the **Interface Definition**, enter a new line after line 48.
3.  Copy and paste the following expression on line 49. This creates a second local variable with our second query:

    **Note:**  You can copy and paste this expression into an interface in a Appian Community Edition testing application to see the fully configured pattern. These record type references are specific to the Appian Retail application, so you will only need to replace the record field references if you're following along in a different environment.

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
     local!onlineSales2020: a!queryRecordType(
         recordType: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order',
         /* Only include orders created in 2020 */
         filters: {
         a!queryFilter(
             field:'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
             operator: "BETWEEN",
             value: {
               todatetime("01/01/2020"),
               todatetime("12/31/2020")
             }
         )
         },
         fields: {
         a!aggregationFields(
             /* Group by the order date year */
             groupings: a!grouping(
             field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
             interval: "YEAR",
             alias: "orderDateYear"
             ),
             measures: {
             /* Get the sum of all orders */
             a!measure(
                 field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}salesOrderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
                 function: "SUM",
                 alias: "totalSales2020"
             ),
             /* Get the sum of all orders that have an online order flag */
             a!measure(
                 field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}salesOrderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
                 function: "SUM",
                 alias: "onlineSales2020",
                 filters: {
                 a!queryFilter(
                     field: 'recordType!{bec4a875-9980-4bbf-a38c-c492ebed065a}Order Detail.relationships.{e6b1dbca-6c3c-4540-a093-3c581a73ad17}salesOrderHeader.fields.{5bade7d5-5fbc-4cc4-807f-907f8f65969b}onlineOrderFlag',
                     operator: "=",
                     value: 1
                 ),
                 }
             )
             }
         )
         },
         pagingInfo: a!pagingInfo(1,10)
     ).data,
    ```

### Step 4: Show the percentage of online sales last year

Now that you have your query, you'll add a second gauge component to calculate and display the online sales percentage for 2020.

To calculate and display the percentage of online sales in 2020:

1.  In your interface header, click **Design mode** ![design mode icon](images/design-mode-icon.svg).
2.  From the **PALETTE**, drag a **GAUGE** component into the right column layout.
3.  In the **Gauge** component configuration, hover over **Fill Percentage** and click **Edit as Expression** .
4.  In the **Fill Percentage** dialog, replace the existing value with the following expression:

    ```
    1
     local!onlineSales2020.onlineSales2020 / local!onlineSales2020.totalSales2020 * 100
    ```

5.  Click **OK**.
6.  In **Secondary Text**, enter `2020`.
7.  Hover over **Tooltip** and click **Edit as Expression** .
8.  In the **Tooltip** dialog, enter the following expression:

    ```
    1
    2
    3
    4
    "Online Sales: " & a!currency(
      isoCode: "USD",
      value: a!defaultValue(local!onlineSales2020.onlineSales2020,0)
    )
    ```

9.  Click **OK**.
10.  From the **PALETTE**, drag a **RICH TEXT** component above the columns layout and configure the following:
     -   In **Display Value**, keep the default selection of **Use editor**.
     -   In the editor, enter `Percent of Online Sales`.
     -   In the editor, highlight the text, then click **Size** ![Size icon](images/size-in-editor.png) and select **Medium Header**.
11.  Click **SAVE**.

     ![Gauge component showing percentage of online sales this year](images/ytd-and-ly-ytd.png)

## Full expression

The resulting expression will look like this:

**Note:**  You can copy and paste this expression into an interface in a Appian Community Edition testing application to see the fully configured pattern. These record type references are specific to the Appian Retail application, so you will only need to replace the record field references if you're following along in a different environment.

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
130
131
132
133
134
135
136
137
138
139
140
a!localVariables(
  local!onlineSales2021: a!queryRecordType(
    recordType: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order',
    /* Only include orders created in 2021 */
    filters: {
      a!queryFilter(
        field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
        operator: "BETWEEN",
        value: {
          todatetime("01/01/2021"),
          todatetime("12/31/2021")
        }
      )
    },
    fields: {
      a!aggregationFields(
        /* Group by the order date year */
        groupings: a!grouping(
          field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
          interval: "YEAR",
          alias: "orderDateYear"
        ),
        measures: {
          /* Get the sum of all orders */
          a!measure(
            field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
            function: "SUM",
            alias: "totalSales"
          ),
          /* Get the sum of all orders that have an online order flag */
          a!measure(
            field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
            function: "SUM",
            alias: "onlineSales",
            filters: {
              a!queryFilter(
                field: 'recordType!{bec4a875-9980-4bbf-a38c-c492ebed065a}Order Detail.relationships.{e6b1dbca-6c3c-4540-a093-3c581a73ad17}order.fields.{5bade7d5-5fbc-4cc4-807f-907f8f65969b}onlineOrderFlag',
                operator: "=",
                value: 1
              ),

            }
          )
        }
      )
    },
    pagingInfo: a!pagingInfo(1, 10)
  ).data,
  local!onlineSales2020: a!queryRecordType(
    recordType: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order',
    /* Only include orders created in 2020 */
    filters: {
      a!queryFilter(
        field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
        operator: "BETWEEN",
        value: {
          todatetime("01/01/2020"),
          todatetime("12/31/2020")
        }
      )
    },
    fields: {
      a!aggregationFields(
        /* Group by the order date year */
        groupings: a!grouping(
          field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.fields.{fbcc99f6-1ddf-4923-903b-18122a1737c6}orderDate',
          interval: "YEAR",
          alias: "orderDateYear"
        ),
        measures: {
          /* Get the sum of all orders */
          a!measure(
            field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
            function: "SUM",
            alias: "totalSales2020"
          ),
          /* Get the sum of all orders that have an online order flag */
          a!measure(
            field: 'recordType!{ad898682-e651-4b2d-af67-47c1fcb1171f}Order.relationships.{0bde4028-fd7a-411f-97ad-7ad5b84e0d18}orderDetail.fields.{db456082-5f77-4765-bc3e-f662651e0d52}lineTotal',
            function: "SUM",
            alias: "onlineSales2020",
            filters: {
              a!queryFilter(
                field: 'recordType!{bec4a875-9980-4bbf-a38c-c492ebed065a}Order Detail.relationships.{e6b1dbca-6c3c-4540-a093-3c581a73ad17}order.fields.{5bade7d5-5fbc-4cc4-807f-907f8f65969b}onlineOrderFlag',
                operator: "=",
                value: 1
              ),

            }
          )
        }
      )
    },
    pagingInfo: a!pagingInfo(1, 10)
  ).data,
  /* Column layout that we'll use for our gauge components */
  {
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextHeader(text: { "Percent of Online Sales" })
      }
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!gaugeField(
              labelPosition: "COLLAPSED",
              percentage: local!onlineSales2021.onlineSales / local!onlineSales2021.totalSales * 100,
              primaryText: a!gaugePercentage(),
              secondaryText: "2021",
              tooltip: "Online Sales: " & a!currency(
                isoCode: "USD",
                value: a!defaultValue(local!onlineSales2021.onlineSales, 0)
              )
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!gaugeField(
              labelPosition: "COLLAPSED",
              percentage: local!onlineSales2020.onlineSales2020 / local!onlineSales2020.totalSales2020 * 100,
              primaryText: a!gaugePercentage(),
              secondaryText: "2020",
              tooltip: "Online Sales: " & a!currency(
                isoCode: "USD",
                value: a!defaultValue(
                  local!onlineSales2020.onlineSales2020,
                  0
                )
              )
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