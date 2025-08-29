---
source_url: https://docs.appian.com/suite/help/25.3/trend-over-time-report-pattern.html
original_path: trend-over-time-report-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Trend-Over-Time Report

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

This report provides an attractive, interactive design for exploring different series of data over time. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

## Design structure

The main components in this pattern are [cards](card_layout.html) used to switch data series and a [line chart](Line_Chart_Component.html) to display the data.

![trend-over-time-sail-image.png](images/patterns/trend-over-time-sail-image.png)

### Pattern expression

This pattern introduces a 312-line expression to the interface.

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
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
{
  a!localVariables(
    /* The value of the data point when clicked. In this template it has no       *
     * functional impact, but can be used to enhance the behavior available here. */
    local!stockDataPoint,

    local!timeRangeLabels: {"1M", "2M", "3M", "6M", "1Y", "2Y", "3Y", "5Y"},
    local!timeRangeDates: {
      edate(today(), -1),
      edate(today(), -2),
      edate(today(), -3),
      edate(today(), -6),
      edate(today(), -12),
      edate(today(), -24),
      edate(today(), -36),
      edate(today(), -60)
    },

    /* A 6-month range is selected by default */
    local!selectedView: 4,
    local!timeRangeSelection: local!timeRangeDates[4],

    /* Sample data for 4 different stocks, where the first half is for the current date,        *
     * and the second half is for the previous day. Used in the left nav cards.                 *
     * When replacing with a query, sort on date descending so that the right data is returned. */
    local!latestPrices: todatasubset({
      {id: 30892, name: "AMZN", description: "Amazon", close: 1939.28},
      {id: 30782, name: "APPN", description: "Appian Corporation", close: 32.41},
      {id: 30894, name: "IBM", description: "IBM Corporation", close: 138.82},
      {id: 30893, name: "INTC", description: "Intel Corporation", close: 50.23},
      {id: 5003, name: "AMZN", description: "Amazon", close: 1941.02},
      {id: 30781, name: "APPN", description: "Appian Corporation", close: 31.42},
      {id: 30620, name: "IBM", description: "IBM Corporation", close: 138.27},
      {id: 16560, name: "INTC", description: "Intel Corporation", close: 50.78}
    }),

    /* Because local!latestPrices accounts for today and yesterday, knowing the length of *
     * half of the data set will be useful in a number of places in this expression.      */
    local!halfPricesLength: local!latestPrices.totalCount / 2,

    /* Initial stock selection. This variable is not used in this interface because the       *
     * sample data is hardcoded, but in a real query this would be used in a query filter on  *
     * load to get trend data for the chart for a single stock. After the initial load, then  *
     * local!selectedStock.name is instead used for the query filter.                         */
    local!initialStock: "AMZN",
    local!selectedStockIndex: 1,
    local!selectedStock: index(local!latestPrices.data, local!selectedStockIndex, {}),

    /* The following datasubset shows total price history for a single stock.                   *
     * This dashboard is configured so that the data will update correctly when replacing the   *
     * datasubset with a query that filters on stock name (using local!selectedStock.name) and  *
     * a time range (using local!timeRangeSelection, and today())                               *
     * NOTE: This is sample data and does not reflect the actual value of this stock.           */
    local!stocksDataSubset: todatasubset({
      { close: 168.97, low: 168.53, high: 169.75, open: 168.81, date: date(2019, 2, 28), name: "IBM", id: 30615},
      { close: 168.69, low: 168.53, high: 169.4, open: 168.69, date: date(2019, 3, 1), name: "IBM", id: 30614},
      { close: 168.77, low: 168.3, high: 169.3, open: 169.12, date: date(2019, 3, 2), name: "IBM", id: 30613},
      { close: 169.32, low: 167.86, high: 169.8, open: 168.77, date: date(2019, 3, 3), name: "IBM", id: 30612},
      { close: 168.6, low: 166.98, high: 168.99, open: 167.56, date: date(2019, 3, 4), name: "IBM", id: 30611},
      { close: 168.66, low: 168.23, high: 170.28, open: 169.92, date: date(2019, 3, 5), name: "IBM", id: 30610},
      { close: 169.62, low: 168.4, high: 170.45, open: 169.24, date: date(2019, 3, 6), name: "IBM", id: 30609},
      { close: 169.58, low: 167.66, high: 169.86, open: 168.87, date: date(2019, 3, 7), name: "IBM", id: 30608},
      { close: 168.71, low: 168.67, high: 171.0, open: 170.78, date: date(2019, 3, 8), name: "IBM", id: 30607},
      { close: 170.48, low: 169.94, high: 170.95, open: 170.43, date: date(2019, 3, 9), name: "IBM", id: 30606},
      { close: 170.43, low: 170.43, high: 171.54, open: 171.04, date: date(2019, 3, 10), name: "IBM", id: 30605},
      { close: 171.97, low: 171.57, high: 173.68, open: 173.15, date: date(2019, 3, 11), name: "IBM", id: 30604},
      { close: 170.58, low: 169.56, high: 171.03, open: 170.49, date: date(2019, 3, 12), name: "IBM", id: 30603},
      { close: 170.5, low: 170.01, high: 171.57, open: 170.95, date: date(2019, 3, 13), name: "IBM", id: 30602},
      { close: 171.21, low: 171.17, high: 172.77, open: 172.57, date: date(2019, 3, 14), name: "IBM", id: 30601},
      { close: 172.55, low: 172.14, high: 174.15, open: 172.91, date: date(2019, 3, 15), name: "IBM", id: 30600},
      { close: 171.92, low: 170.65, high: 173.92, open: 173.83, date: date(2019, 3, 16), name: "IBM", id: 30599},
      { close: 174.11, low: 173.97, high: 175.58, open: 175.38, date: date(2019, 3, 17), name: "IBM", id: 30598},
      { close: 175.01, low: 174.84, high: 175.9, open: 175.34, date: date(2019, 3, 18), name: "IBM", id: 30597},
      { close: 175.1, low: 174.23, high: 175.61, open: 174.38, date: date(2019, 3, 19), name: "IBM", id: 30596},
      { close: 174.7, low: 174.43, high: 175.93, open: 174.69, date: date(2019, 3, 20), name: "IBM", id: 30595},
      { close: 175.16, low: 175.06, high: 176.48, open: 176.48, date: date(2019, 3, 21), name: "IBM", id: 30594},
      { close: 176.55, low: 174.68, high: 177.12, open: 175.11, date: date(2019, 3, 22), name: "IBM", id: 30593},
      { close: 174.48, low: 174.01, high: 175.26, open: 174.04, date: date(2019, 3, 23), name: "IBM", id: 30592}
    }),
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                /* Use the first half of the data to make cards, because it represents today's prices. */
                items: rdrop(local!latestPrices.data, local!halfPricesLength),
                expression: a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            /* Label is set for accessibility purposes even though it is not displayed. */
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fv!item.name,
                              color: "ACCENT",
                              size: "MEDIUM"
                            )}
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fixed(fv!item.close),
                              size: "MEDIUM"
                            )},
                            align: "RIGHT"
                          )
                        )
                      },
                      marginbelow: "NONE"
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fv!item.description,
                              size: "SMALL"
                            )}
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {
                              /* Compare price today to yesterday;                 *
                               * if the price went up, use a +, otherwise use a -. */
                              if(
                                todecimal(fv!item.close) > todecimal(local!latestPrices.data.close[fv!index + local!halfPricesLength]),
                                a!richTextItem(
                                  text: "+",
                                  color: "POSITIVE"
                                ),
                                a!richTextItem(
                                  text: "-",
                                  color: "NEGATIVE"
                                )
                              ),
                              a!richTextItem(
                                /* Set the text for the percent change section,           *
                                /* including the math for calculating the percent change. */
                                text: abs(round(100 * (todecimal(fv!item.close) - todecimal(local!latestPrices.data.close[fv!index + local!halfPricesLength])) / todecimal(fv!item.close), 2)) & "%",
                                /* Change the color of the rich text to be POSITIVE or NEGATIVE depending on the price change */
                                color: if(
                                  todecimal(fv!item.close) > todecimal(local!latestPrices.data.close[fv!index+ local!halfPricesLength]) ,
                                  "POSITIVE",
                                  "NEGATIVE"
                                ),
                                size: "SMALL"
                              )
                            },
                            align: "RIGHT"
                          )
                        )
                      },
                      marginbelow: "NONE"
                    )
                  },
                  /* Clicking on the card will not do anything until local!selectedStock *
                   * is used in a query filter of a query that returns real data.        */
                  link: if(
                    local!selectedStock.name = tostring(fv!item.name),
                    {},
                    a!dynamicLink(saveInto: {
                      a!save(local!selectedStock, fv!item),
                      a!save(local!selectedStockIndex, fv!index)
                    })
                  ),
                  style: if(
                    local!selectedStock.name = tostring(fv!item.name),
                    "ACCENT",
                    "NONE"
                  ),
                  marginBelow: "STANDARD"
                )
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: local!selectedStock.name,
                          color: "ACCENT",
                          size: "LARGE_PLUS",
                          style: "STRONG"
                        ),
                        char(10),
                        a!richTextItem(
                          text: local!selectedStock.description,
                          color: "SECONDARY",
                          size: "MEDIUM"
                        )
                      }
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      value: {
                        a!richTextItem(
                          text: local!selectedStock.close,
                          size: "LARGE",
                          style: "STRONG"
                        ),
                        "   ",
                        if(
                          /* Compare price today to yesterday;                 *
                           * if the price went up, use a +, otherwise use a -. */
                          todecimal(local!selectedStock.close) > todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close),
                          a!richTextItem(
                            text: "+",
                            color: "POSITIVE"
                          ),
                          a!richTextItem(
                            text: "-",
                            color: "NEGATIVE"
                          )
                        ),
                        a!richTextItem(
                          /* Set the text for the percent change section,           *
                           * including the math for calculating the percent change. */
                          text: abs(round(100 * (todecimal(local!selectedStock.close) - todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close)) / todecimal(local!selectedStock.close), 2)) & "%",
                          /* Change the color of the rich text to be POSITIVE or NEGATIVE depending on the price change */
                          color: if(
                            todecimal(local!selectedStock.close) > todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close),
                            "POSITIVE",
                            "NEGATIVE"
                          ),
                          size: "SMALL"
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "TOP",
                stackWhen: {
                  "PHONE",
                  "TABLET_PORTRAIT"
                }
              ),
              /* Clicking on the button will not do anything until local!timeRangeSelection *
               * is used in a query filter of a query that returns real data.               */
              a!buttonArrayLayout(
                buttons: {
                  a!forEach(
                    items: local!timeRangeLabels,
                    expression: a!buttonWidget(
                      label: fv!item,
                      saveInto: {
                        a!save(local!timeRangeSelection, local!timeRangeDates[fv!index]),
                        a!save(local!selectedView, fv!index)
                      },
                      style: if(
                        local!selectedView = fv!index,
                        "SOLID",
                        "LINK"
                      )
                    )
                  )
                },
                align: "START"
              ),
              if(
                local!stocksDataSubset.totalCount > 0,
                a!lineChartField(
                  labelPosition: "ABOVE",
                  categories: index(local!stocksDataSubset.data, "date", null),
                  series: {
                    a!chartSeries(
                      label: "Close Price",
                      data: index(local!stocksDataSubset.data, "close", null),
                      links: a!forEach(
                        items: index(local!stocksDataSubset.data, "date", null),
                        expression: a!dynamicLink(
                          value: fv!item,
                          saveInto: local!stockDataPoint
                        )
                      )
                    )
                  },
                  yAxisTitle: "Close Price",
                  showLegend: false,
                  showTooltips: true,
                  connectNulls: true
                ),
                {}
              )
            }
          )
        }
      )
    }
  )
}
```

### \[Line 1-79\] Set local variables

The local variables defined in this section all feature hard-coded data that would normally come from queries.

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
{
  a!localVariables(
    /* The value of the data point when clicked. In this template it has no       *
     * functional impact, but can be used to enhance the behavior available here. */
    local!stockDataPoint,

    local!timeRangeLabels: {"1M", "2M", "3M", "6M", "1Y", "2Y", "3Y", "5Y"},
    local!timeRangeDates: {
      edate(today(), -1),
      edate(today(), -2),
      edate(today(), -3),
      edate(today(), -6),
      edate(today(), -12),
      edate(today(), -24),
      edate(today(), -36),
      edate(today(), -60)
    },

    /* A 6-month range is selected by default */
    local!selectedView: 4,
    local!timeRangeSelection: local!timeRangeDates[4],

    /* Sample data for 4 different stocks, where the first half is for the current date,        *
     * and the second half is for the previous day. Used in the left nav cards.                 *
     * When replacing with a query, sort on date descending so that the right data is returned. */
    local!latestPrices: todatasubset({
      {id: 30892, name: "AMZN", description: "Amazon", close: 1939.28},
      {id: 30782, name: "APPN", description: "Appian Corporation", close: 32.41},
      {id: 30894, name: "IBM", description: "IBM Corporation", close: 138.82},
      {id: 30893, name: "INTC", description: "Intel Corporation", close: 50.23},
      {id: 5003, name: "AMZN", description: "Amazon", close: 1941.02},
      {id: 30781, name: "APPN", description: "Appian Corporation", close: 31.42},
      {id: 30620, name: "IBM", description: "IBM Corporation", close: 138.27},
      {id: 16560, name: "INTC", description: "Intel Corporation", close: 50.78}
    }),

    /* Because local!latestPrices accounts for today and yesterday, knowing the length of *
     * half of the data set will be useful in a number of places in this expression.      */
    local!halfPricesLength: local!latestPrices.totalCount / 2,

    /* Initial stock selection. This variable is not used in this interface because the       *
     * sample data is hardcoded, but in a real query this would be used in a query filter on  *
     * load to get trend data for the chart for a single stock. After the initial load, then  *
     * local!selectedStock.name is instead used for the query filter.                         */
    local!initialStock: "AMZN",
    local!selectedStockIndex: 1,
    local!selectedStock: index(local!latestPrices.data, local!selectedStockIndex, {}),

    /* The following datasubset shows total price history for a single stock.                   *
     * This dashboard is configured so that the data will update correctly when replacing the   *
     * datasubset with a query that filters on stock name (using local!selectedStock.name) and  *
     * a time range (using local!timeRangeSelection, and today())                               *
     * NOTE: This is sample data and does not reflect the actual value of this stock.           */
    local!stocksDataSubset: todatasubset({
      { close: 168.97, low: 168.53, high: 169.75, open: 168.81, date: date(2019, 2, 28), name: "IBM", id: 30615},
      { close: 168.69, low: 168.53, high: 169.4, open: 168.69, date: date(2019, 3, 1), name: "IBM", id: 30614},
      { close: 168.77, low: 168.3, high: 169.3, open: 169.12, date: date(2019, 3, 2), name: "IBM", id: 30613},
      { close: 169.32, low: 167.86, high: 169.8, open: 168.77, date: date(2019, 3, 3), name: "IBM", id: 30612},
      { close: 168.6, low: 166.98, high: 168.99, open: 167.56, date: date(2019, 3, 4), name: "IBM", id: 30611},
      { close: 168.66, low: 168.23, high: 170.28, open: 169.92, date: date(2019, 3, 5), name: "IBM", id: 30610},
      { close: 169.62, low: 168.4, high: 170.45, open: 169.24, date: date(2019, 3, 6), name: "IBM", id: 30609},
      { close: 169.58, low: 167.66, high: 169.86, open: 168.87, date: date(2019, 3, 7), name: "IBM", id: 30608},
      { close: 168.71, low: 168.67, high: 171.0, open: 170.78, date: date(2019, 3, 8), name: "IBM", id: 30607},
      { close: 170.48, low: 169.94, high: 170.95, open: 170.43, date: date(2019, 3, 9), name: "IBM", id: 30606},
      { close: 170.43, low: 170.43, high: 171.54, open: 171.04, date: date(2019, 3, 10), name: "IBM", id: 30605},
      { close: 171.97, low: 171.57, high: 173.68, open: 173.15, date: date(2019, 3, 11), name: "IBM", id: 30604},
      { close: 170.58, low: 169.56, high: 171.03, open: 170.49, date: date(2019, 3, 12), name: "IBM", id: 30603},
      { close: 170.5, low: 170.01, high: 171.57, open: 170.95, date: date(2019, 3, 13), name: "IBM", id: 30602},
      { close: 171.21, low: 171.17, high: 172.77, open: 172.57, date: date(2019, 3, 14), name: "IBM", id: 30601},
      { close: 172.55, low: 172.14, high: 174.15, open: 172.91, date: date(2019, 3, 15), name: "IBM", id: 30600},
      { close: 171.92, low: 170.65, high: 173.92, open: 173.83, date: date(2019, 3, 16), name: "IBM", id: 30599},
      { close: 174.11, low: 173.97, high: 175.58, open: 175.38, date: date(2019, 3, 17), name: "IBM", id: 30598},
      { close: 175.01, low: 174.84, high: 175.9, open: 175.34, date: date(2019, 3, 18), name: "IBM", id: 30597},
      { close: 175.1, low: 174.23, high: 175.61, open: 174.38, date: date(2019, 3, 19), name: "IBM", id: 30596},
      { close: 174.7, low: 174.43, high: 175.93, open: 174.69, date: date(2019, 3, 20), name: "IBM", id: 30595},
      { close: 175.16, low: 175.06, high: 176.48, open: 176.48, date: date(2019, 3, 21), name: "IBM", id: 30594},
      { close: 176.55, low: 174.68, high: 177.12, open: 175.11, date: date(2019, 3, 22), name: "IBM", id: 30593},
      { close: 174.48, low: 174.01, high: 175.26, open: 174.04, date: date(2019, 3, 23), name: "IBM", id: 30592}
    }),
```

### \[Line 80-258\] Card selectors

In this section, you can see the card is formatted with [rich text items](Styled_Text_Component.html). Rather than create 4 separate cards, use the `forEach` function to create them from a list. By looping over a single card definition, you can easily make changes to the card design/formatting without needing to repeat changes.

```sail
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
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
       {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!forEach(
                /* Use the first half of the data to make cards, because it represents today's prices. */
                items: rdrop(local!latestPrices.data, local!halfPricesLength),
                expression: a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            /* Label is set for accessibility purposes even though it is not displayed. */
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fv!item.name,
                              color: "ACCENT",
                              size: "MEDIUM"
                            )}
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fixed(fv!item.close),
                              size: "MEDIUM"
                            )},
                            align: "RIGHT"
                          )
                        )
                      },
                      marginbelow: "NONE"
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {a!richTextItem(
                              text: fv!item.description,
                              size: "SMALL"
                            )}
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            label: "Rich Text",
                            labelPosition: "COLLAPSED",
                            value: {
                              /* Compare price today to yesterday;                 *
                               * if the price went up, use a +, otherwise use a -. */
                              if(
                                todecimal(fv!item.close) > todecimal(local!latestPrices.data.close[fv!index + local!halfPricesLength]),
                                a!richTextItem(
                                  text: "+",
                                  color: "POSITIVE"
                                ),
                                a!richTextItem(
                                  text: "-",
                                  color: "NEGATIVE"
                                )
                              ),
                              a!richTextItem(
                                /* Set the text for the percent change section,           *
                                /* including the math for calculating the percent change. */
                                text: abs(round(100 * (todecimal(fv!item.close) - todecimal(local!latestPrices.data.close[fv!index + local!halfPricesLength])) / todecimal(fv!item.close), 2)) & "%",
                                /* Change the color of the rich text to be POSITIVE or NEGATIVE depending on the price change */
                                color: if(
                                  todecimal(fv!item.close) > todecimal(local!latestPrices.data.close[fv!index+ local!halfPricesLength]) ,
                                  "POSITIVE",
                                  "NEGATIVE"
                                ),
                                size: "SMALL"
                              )
                            },
                            align: "RIGHT"
                          )
                        )
                      },
                      marginbelow: "NONE"
                    )
                  },
                  /* Clicking on the card will not do anything until local!selectedStock *
                   * is used in a query filter of a query that returns real data.        */
                  link: if(
                    local!selectedStock.name = tostring(fv!item.name),
                    {},
                    a!dynamicLink(saveInto: {
                      a!save(local!selectedStock, fv!item),
                      a!save(local!selectedStockIndex, fv!index)
                    })
                  ),
                  style: if(
                    local!selectedStock.name = tostring(fv!item.name),
                    "ACCENT",
                    "NONE"
                  ),
                  marginBelow: "STANDARD"
                )
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: local!selectedStock.name,
                          color: "ACCENT",
                          size: "LARGE_PLUS",
                          style: "STRONG"
                        ),
                        char(10),
                        a!richTextItem(
                          text: local!selectedStock.description,
                          color: "SECONDARY",
                          size: "MEDIUM"
                        )
                      }
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      value: {
                        a!richTextItem(
                          text: local!selectedStock.close,
                          size: "LARGE",
                          style: "STRONG"
                        ),
                        "   ",
                        if(
                          /* Compare price today to yesterday;                 *
                           * if the price went up, use a +, otherwise use a -. */
                          todecimal(local!selectedStock.close) > todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close),
                          a!richTextItem(
                            text: "+",
                            color: "POSITIVE"
                          ),
                          a!richTextItem(
                            text: "-",
                            color: "NEGATIVE"
                          )
                        ),
                        a!richTextItem(
                          /* Set the text for the percent change section,           *
                           * including the math for calculating the percent change. */
                          text: abs(round(100 * (todecimal(local!selectedStock.close) - todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close)) / todecimal(local!selectedStock.close), 2)) & "%",
                          /* Change the color of the rich text to be POSITIVE or NEGATIVE depending on the price change */
                          color: if(
                            todecimal(local!selectedStock.close) > todecimal(local!latestPrices.data[local!selectedStockIndex + local!halfPricesLength].close),
                            "POSITIVE",
                            "NEGATIVE"
                          ),
                          size: "SMALL"
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "TOP",
                stackWhen: {
                  "PHONE",
                  "TABLET_PORTRAIT"
                }
              ),
```

### \[Line 259-280\] Time range selectors

The time-range selectors over the chart are a series of simple buttons.

```sail
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
               /* Clicking on the button will not do anything until local!timeRangeSelection *
               * is used in a query filter of a query that returns real data.               */
              a!buttonArrayLayout(
                buttons: {
                  a!forEach(
                    items: local!timeRangeLabels,
                    expression: a!buttonWidget(
                      label: fv!item,
                      saveInto: {
                        a!save(local!timeRangeSelection, local!timeRangeDates[fv!index]),
                        a!save(local!selectedView, fv!index)
                      },
                      style: if(
                        local!selectedView = fv!index,
                        "SOLID",
                        "LINK"
                      )
                    )
                  )
                },
                align: "START"
              ),
```

### \[Line 281-312\] Line chart

Since the line chart shows linear data, it is simple to setup. Note that while the dynamic link on **line 292** lets you store the stock data into a local variable, we aren't using it in this pattern. This is added so that you may configure additional components if necessary. For example, you could use that information to filter a grid below the chart.

```sail
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
              if(
                local!stocksDataSubset.totalCount > 0,
                a!lineChartField(
                  labelPosition: "ABOVE",
                  categories: index(local!stocksDataSubset.data, "date", null),
                  series: {
                    a!chartSeries(
                      label: "Close Price",
                      data: index(local!stocksDataSubset.data, "close", null),
                      links: a!forEach(
                        items: index(local!stocksDataSubset.data, "date", null),
                        expression: a!dynamicLink(
                          value: fv!item,
                          saveInto: local!stockDataPoint
                        )
                      )
                    )
                  },
                  yAxisTitle: "Close Price",
                  showLegend: false,
                  showTooltips: true,
                  connectNulls: true
                ),
                {}
              )
            }
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