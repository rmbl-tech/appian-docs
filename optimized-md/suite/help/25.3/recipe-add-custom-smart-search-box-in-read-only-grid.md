---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html
original_path: recipe-add-custom-smart-search-box-in-read-only-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Custom Smart Search Box in a Read-only Grid

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

Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

This scenario demonstrates how to build your own search box for more flexibility and fine-grained control over the search experience, such as when you want to add filters, buttons, custom styling, or integrate smart search into a larger filtering workflow.

## Create this pattern

To build a custom smart search experience, use `a!gridField()` with `a!recordData()` and configure your own query logic, follow these steps.

_This recipe uses references to record types and record fields. To use this recipe, you will need to update the references to record types and record fields in your application._

1.  Hide the default search box.

    ```
    1
    2
    3
    4
     a!gridField(
      showSearchBox: false,
      /* other grid settings */
    )
    ```

2.  Fetch data with `a!recordData()`: Pass in your record type, filters, paging, and sorting.
3.  Enable smart search with the _search_ operator

    ```
    1
    2
    3
    4
    5
    6
    a!queryFilter(
      field: 'recordType!SSTA Case.fields.title',
      operator: "search",
      value: local!searchTerm,
      applyWhen: a!isNotNullOrEmpty(local!searchTerm)
    )
    ```

4.  Add any custom filters (status, priority, date ranges, etc.).

    ```
    1
    2
    3
    4
    5
    6
    a!queryFilter(
      field: 'recordType!Case.relationships.Status.fields.Id',
      operator: "in",
      value: local!statusSelection,
      applyWhen: a!isNotNullOrEmpty(local!statusSelection)
    )
    ```

5.  (Optional) Include a similarity score filter using the _similarityScore_ field to prioritize relevant results. For example:

    ```
    1
    2
    3
    4
    5
    a!queryFilter(
      field: 'recordType!Case.searchResults.document.similarityScore',
      operator: ">=",
      value: 0.00209,
    )
    ```

**Note:**  Do not use the `similarityScoreThreshold` parameter.

#### Example expression

This example uses custom filters to create a tailored search and filtering experience for support cases. Instead of using the standard keyword search, the design uses smart search only and searches across the case title and description with additional filters for case status and priority. It also applies a minimum similarity score to prioritize more relevant search results. This approach provides your users with fine-grained control over the results, ensuring that the grid displays only high-quality matches that meet specific filter criteria.

**Note:**  This expression includes detailed inline comments to explain how search behavior and filtering are handled. Make sure to review the comments carefully to understand why certain configurations, such as custom filters and the similarity score threshold, are applied.

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
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
a!localVariables(
  /* searchTerm: stores the user's free-text search input */
  local!searchTerm,

  /* searchThreshold: minimum similarity score to include records */
   local!searchThreshold: 0.0025,

  /* Loads the available case statuses so they can be used in the filter checkboxes*/
  local!statusList: a!queryRecordType(
    recordType: recordType!ACME Case Status,
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 50
    )
  ),
  /* Keeps track of which status IDs the user has selected */
  local!statusSelection,

  /* Loads the available case priorities so they can populate the filter checkboxes */
  local!priorityList: a!queryRecordType(
    recordType: recordType!ACME Case Priority,
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 50
    )
  ),
  /* Keeps track of which priority IDs the user has selected */
  local!prioritySelection,

  /* Main container for the Support Cases UI */
  a!sectionLayout(
    label: "Support Cases",
    contents: {
      a!columnsLayout(
        columns: {

          /* Left column: Search & Filter card */
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!sectionLayout(
                    label: "Search & Filter",
                    labelSize: "SMALL",
                    contents: {

                      /* A search bar that includes a text field for entering your query, a clear icon to reset it, and an optional button to perform the search */
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            /* Text field for searchTerm, saved on blur */
                            item: a!textField(
                              label: "",
                              labelPosition: "ABOVE",
                              placeholder: "Search case title or desc.",
                              value: local!searchTerm,
                              saveInto: local!searchTerm,
                              refreshAfter: "UNFOCUS",
                              validations: {}
                            ),
                            width: "6X"
                          ),
                          a!sideBySideItem(
                            /* Icon to clear the searchTerm */
                            item: a!richTextDisplayField(
                              value: {
                                a!richTextIcon(
                                  icon: "window-close",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!searchTerm, "")
                                  ),
                                  color: "ACCENT"
                                )
                              },
                              align: "LEFT",
                              marginBelow: "LESS"
                            ),
                            width: "1X"
                          ),
                          a!sideBySideItem(
                            /* (Optional) manual search button */
                            item: a!buttonArrayLayout(
                              buttons: {
                                a!buttonWidget(
                                  label: "",
                                  icon: "search",
                                  size: "SMALL"
                                )
                              },
                              align: "START",
                              marginBelow: "NONE"
                            ),
                            width: "1X"
                          )
                        },
                        alignVertical: "BOTTOM",
                        spacing: "DENSE",
                        marginAbove: "NONE",
                        stackWhen: {"PHONE"}
                      ),

                      /* Collapsible filters section */
                      a!sectionLayout(
                        label: "Filters",
                        labelIcon: "filter",
                        labelSize: "EXTRA_SMALL",
                        contents: {
                          /* Status checkbox list */
                          a!checkboxField(
                            choiceLabels: index(
                              local!statusList.data,
                              recordType!ACME Case Status.fields.value
                            ),
                            choiceValues: index(
                              local!statusList.data,
                              recordType!ACME Case Status.fields.id
                            ),
                            label: "Status",
                            labelPosition: "ABOVE",
                            value: local!statusSelection,
                            saveInto: local!statusSelection,
                            validations: {}
                          ),
                          /* Priority checkbox list */
                          a!checkboxField(
                            choiceLabels: index(
                              local!priorityList.data,
                              recordType!ACME Case Priority.fields.value
                            ),
                            choiceValues: index(
                              local!priorityList.data,
                              recordType!ACME Case Priority.fields.id
                            ),
                            label: "Priority",
                            labelPosition: "ABOVE",
                            value: local!prioritySelection,
                            saveInto: local!prioritySelection,
                            validations: {}
                          )
                        },
                        isCollapsible: true,
                        isInitiallyCollapsed: false
                      )
                    },
                    marginAbove: "NONE"
                  )
                },
                height: "EXTRA_TALL",
                style: "STANDARD",
                marginBelow: "STANDARD",
                decorativeBarPosition: "NONE"
              )
            }
          ),

          /* Results grid that displays search results for both the 'title' and 'description' fields using an OR operator*/
          a!columnLayout(
            contents: {
              a!gridField(
                labelPosition: "ABOVE",
                data: a!recordData(
                  recordType: recordType!ACME Case,
                  filters: a!queryLogicalExpression(
                    operator: "AND",
                    logicalExpressions: a!queryLogicalExpression(
                      operator: "OR",
                      filters: {
                        /* Search title if searchTerm is present */
                        a!queryFilter(
                          field: recordType!ACME Case.fields.title,
                          operator: "search",
                          value: local!searchTerm,
                          applyWhen: a!isNotNullOrEmpty(local!searchTerm)
                        ),
                        /* Search description if searchTerm is present */
                        a!queryFilter(
                          field: recordType!ACME Case.fields.description,
                          operator: "search",
                          value: local!searchTerm,
                          applyWhen: a!isNotNullOrEmpty(local!searchTerm)
                        )
                      }
                    ),
                    filters: {
                      /* Additional filter for similarity score. Only includes records whose */
                      /*similarity score meets or exceeds the specified threshold, filtering out */
                      /* less relevant matches */
                      a!queryFilter(
                        field: recordType!ACME Case.searchResults.allSearchFields.similarityScore,
                        operator: ">=",
                        value: local!searchThreshold,
                        applyWhen: a!isNotNullOrEmpty(local!searchTerm)
                      ),
                      /* Filter by selected statuses */
                      a!queryFilter(
                        field: recordType!ACME Case.relationships.status.fields.id,
                        operator: "in",
                        value: local!statusSelection,
                        applyWhen: a!isNotNullOrEmpty(local!statusSelection)
                      ),
                      /* Filter by selected priorities */
                      a!queryFilter(
                        field: recordType!ACME Case.relationships.priority.fields.id,
                        operator: "in",
                        value: local!prioritySelection,
                        applyWhen: a!isNotNullOrEmpty(local!prioritySelection)
                      )
                    }
                  )
                ),
                columns: {
                  /* No similarityScoreThreshold. Since you manually filter based on similarityScore and */
                  /* are not using the keyword search box, you cannot use similarityScoreThreshold directly */
                  /* as a property. */
                  a!gridColumn(
                    label: "Id",
                    sortField: recordType!ACME Case.fields.id,
                    value: a!richTextDisplayField(
                      value: {
                        a!richTextItem(
                          text: if(
                            index(fv!row, recordType!ACME Case.fields.id) < 100000,
                            text(
                              index(fv!row, recordType!ACME Case.fields.id),
                              "#00"
                            ),
                            index(fv!row, recordType!ACME Case.fields.id)
                          ),
                          link: a!recordLink(
                            recordType: recordType!ACME Case,
                            identifier: fv!identifier
                          ),
                          linkStyle: "STANDALONE"
                        )
                      }
                    ),
                    width: "NARROW"
                  ),
                  /* Title column: shows placeholder if empty */
                  a!gridColumn(
                    label: "Title",
                    sortField: recordType!ACME Case.fields.title,
                    value: a!defaultValue(
                      index(fv!row, recordType!ACME Case.fields.title),
                      "-"
                    ),
                    width: "NARROW_PLUS"
                  ),
                  /* Description column: shows placeholder if empty */
                  a!gridColumn(
                    label: "Description",
                    sortField: recordType!ACME Case.fields.description,
                    value: a!defaultValue(
                      index(fv!row, recordType!ACME Case.fields.description),
                      "-"
                    ),
                    width: "MEDIUM"
                  ),
                  /* Shows each case's current status in the Status column */
                  a!gridColumn(
                    label: "Status",
                    sortField: recordType!ACME Case.relationships.status.fields.value,
                    value: index(
                      fv!row,
                      recordType!ACME Case.relationships.status.fields.value
                    ),
                    width: "NARROW"
                  ),
                  /* Uses colored tags to display each case's priority in the Priority column */
                  a!gridColumn(
                    label: "Priority",
                    sortField: recordType!ACME Case.relationships.priority.fields.value,
                    value: if(
                      isnull(
                        index(fv!row, recordType!ACME Case.relationships.priority)
                      ),
                      "-",
                      a!tagField(
                        tags: {
                          a!tagItem(
                            text: index(
                              fv!row,
                              recordType!ACME Case.relationships.priority.fields.value
                            ),
                            /* Tag background color chosen by priority ID */
                            backgroundColor: a!match(
                              value: index(
                                fv!row,
                                recordType!ACME Case.relationships.priority.fields.id
                              ),
                              equals: 1, then: "#e4fcdc",
                              equals: 2, then: "#fcefca",
                              equals: 3, then: "#fcdcdc",
                              default: "#f0f0f0"
                            ),
                            textColor: "STANDARD"
                          )
                        }
                      )
                    ),
                    align: "CENTER",
                    width: "NARROW"
                  ),

                  /* Uses up to three colored circles in the Score column to represent each record's similarity score.*/
                  a!gridColumn(
                    label: "Score",
                    sortField: recordType!ACME Case.searchResults.allSearchFields.similarityScore,
                    value: a!localVariables(
                      /* Capture the raw similarityScore */
                      local!scoreValue: fv!row[recordType!ACME Case.searchResults.allSearchFields.similarityScore],
                      /* Number of circles to render */
                      local!circleCount: {1,1,1},
                      /* Determine circle color by score range */
                      local!color: a!match(
                        value: local!scoreValue,
                        whenTrue: fv!value >= 0.00389, then: "#0f9037",
                        whenTrue: and(fv!value >= 0.0027, fv!value < 0.00389), then: "#119f3d",
                        whenTrue: and(fv!value >= 0.0025, fv!value < 0.0027), then: "#12a740",
                        default: "#83f9a8"
                      ),
                      /* Shows a placeholder when no score is available; otherwise, displays colored circles to represent the score */
                      if(
                        a!isNullOrEmpty(local!scoreValue),
                        "---",
                        a!richTextDisplayField(
                          value: a!forEach(
                            items: local!circleCount,
                            expression: a!richTextIcon(icon: "circle", color: local!color)
                          ),
                          tooltip: a!match(
                            value: local!scoreValue,
                            whenTrue: fv!value >= 0.00389, then: "Great",
                            whenTrue: and(fv!value >= 0.0027, fv!value < 0.00389), then: "Good",
                            whenTrue: and(fv!value >= 0.0025, fv!value < 0.0027), then: "Ok",
                            default: "Not good"
                          )
                        )
                      )
                    )
                  )
                },
                pagesize: 10,
                /* Sorts first by descending similarity, then ascending ID */
                /*If a search term is present, sorts results by similarity score in descending order so better matches appear at the top of the grid */
                initialSorts: {
                  a!sortInfo(
                    field: recordType!ACME Case.searchResults.allSearchFields.similarityScore,
                    ascending: false
                  ),
                  a!sortInfo(
                    field: recordType!ACME Case.fields.id,
                    ascending: true()
                  )
                },
                /* Refresh the grid after any record action (edit, save, etc.) */
                refreshAfter: "RECORD_ACTION",
                /* Hides the keyword search box because you have custom filters */
                showSearchBox: false,
                validations: {}
              )
            },
            width: "4X"
          )
        }
      )
    }
  )
)
```

## Test it out

1.  With the grid displayed, enter a search term into the search box. This can be a single word or a phrase that you expect to find in the indexed fields.
2.  Verify the search results. Look for records that are semantically related to your search term, even if the exact words aren't present. These are the smart search matches, and they will have a `similarityScore` of less than 1.

Here's what the interface looks like when you use this expression.

[![images/automation/custom-smartsearch-example.png](images/automation/custom-smartsearch-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img4)

[![](images/automation/custom-smartsearch-example.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...