---
source_url: https://docs.appian.com/suite/help/25.3/document-list-pattern.html
original_path: document-list-pattern.html
version: "25.3"
title: "Document List Pattern"
page_id: "document-list-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document List Pattern

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

Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are card layouts, side by side layouts, and rich text. The image below displays how the pattern looks on a blank interface. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the document list pattern](images/patterns/document_list_pattern.png)

### Pattern expression

When you drag and drop the document list pattern onto your interface, 312 lines of expressions will be added to the section where you dragged it.

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
    local!searchText,
    local!documents: {
      a!map(
        name: "Proof of Identity",
        fileName: "bowan_driver_license.jpg",
        uploadDate: "August 4",
        size: "89KB",
        type: "image"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_aug2018.pdf",
        uploadDate: "August 4",
        size: "102KB",
        type: "pdf"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_jul2018.pdf",
        uploadDate: "August 4",
        size: "103KB",
        type: "pdf"
      ),
      a!map(
        name: "Bank Statement",
        fileName: "bowan_checking_aug2018.doc",
        uploadDate: "August 4",
        size: "92KB",
        type: "word"
      ),
      a!map(
        name: "Monthly Statement",
        fileName: "bowan_checking_2018.xls",
        uploadDate: "July 31",
        size: "96KB",
        type: "excel"
      ),
      a!map(
        name: "Proof of Identity",
        fileName: "bowan_driver_license.jpg",
        uploadDate: "July 30",
        size: "89KB",
        type: "image"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_aug2017.pdf",
        uploadDate: "July 27",
        size: "102KB",
        type: "pdf"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_jul2017.pdf",
        uploadDate: "July 27",
        size: "103KB",
        type: "pdf"
      ),
      a!map(
        name: "Bank Statement",
        fileName: "bowan_checking_aug2017.doc",
        uploadDate: "July 26",
        size: "92KB",
        type: "word"
      ),
      a!map(
        name: "Monthly Statement",
        fileName: "bowan_checking_2017.xls",
        uploadDate: "July 20",
        size: "96KB",
        type: "excel"
      )
    },
    /* This value determines the max number of documents *
     * to display on each page of the document list.     */
    local!docBatchSize: 5,
    local!docStartIndex: 1,
    /* This document dataSubset can be replaced with a query */
    local!docDatasubset: a!refreshVariable(
      refreshOnReferencedVarChange: true,
      value: todatasubset(
        if(
          a!isNullOrEmpty(local!searchText),
          local!documents,
          index(
            local!documents,
            where(
              a!forEach(
                local!documents,
                search(local!searchText, fv!item.name, 1) > 0
              )
            ),
            {}
          )
        ),
        a!pagingInfo(local!docStartIndex, local!docBatchSize)
      )
    ),
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "folder-open",
                          color: "SECONDARY",
                          size: "MEDIUM"
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!headingField(
                      text: "Documents",
                      size: "MEDIUM",
                      color: "SECONDARY",
                      marginBelow: "NONE"
                    )
                  )
                },
                alignVertical: "MIDDLE"
              ),
              /* Search field */
              a!textField(
                label: "Search Documents",
                labelPosition: "COLLAPSED",
                placeholder: "Search documents...",
                value: local!searchText,
                saveInto: {
                  local!searchText,
                  a!save(local!docStartIndex, 1)
                },
                refreshAfter: "KEYPRESS"
              ),
              /* Message announced to screen reader users to let them know how many results were returned */
              a!messageBanner(
                primaryText: local!docDatasubset.totalCount & if(local!docDatasubset.totalCount = 1, " result found", " results found"),
                showWhen: a!isNotNullOrEmpty(local!searchText),
                announceBehavior: "ANNOUNCE_ONLY"
              ),
              /* Displays a card for each document in the dataSubset */
              a!forEach(
                items: local!docDataSubset.data,
                expression: if(
                  or(
                    a!isNullOrEmpty(local!searchText),
                    search(local!searchText, fv!item.name, 1) > 0
                  ),
                  a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                /* Displays an icon for the corresponding document type */
                                a!richTextIcon(
                                  icon: "file-" & fv!item.type & "-o",
                                  color: "ACCENT",
                                  size: "LARGE"
                                )
                              }
                            ),
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item.name,
                                  color: "STANDARD",
                                  style: "STRONG"
                                ),
                                char(10),
                                a!richTextItem(text: fv!item.fileName, color: "#767676")
                              }
                            )
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: fv!item.uploadDate),
                                char(10),
                                a!richTextItem(text: fv!item.size, color: "SECONDARY")
                              },
                              align: "RIGHT"
                            ),
                            width: "MINIMIZE"
                          )
                        },
                        alignVertical: "MIDDLE"
                      )
                    },
                    link: a!dynamicLink(),
                    height: "AUTO",
                    marginBelow: "STANDARD"
                  ),
                  {}
                )
              ),
              /* Document list paging */
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "chevron-left",
                          link: a!dynamicLink(
                            value: local!docStartIndex - local!docBatchSize,
                            saveInto: local!docStartIndex,
                            showWhen: not(local!docStartIndex = 1)
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            not(local!docStartIndex = 1),
                            "ACCENT",
                            "#bbb"
                          ),
                          size: "MEDIUM"
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        /* Displays a number range which indicates     *
                         * the current subset of documents in the list */
                        a!richTextItem(
                          text: local!docStartIndex & a!localVariables(
                            local!docEndIndex: if(
                              (
                                local!docStartIndex + local!docBatchSize - 1
                              ) > local!docDataSubset.totalCount,
                              local!docDataSubset.totalCount,
                              local!docStartIndex + local!docBatchSize - 1
                            ),
                            if(
                              local!docStartIndex = local!docEndIndex,
                              "",
                              " - " & local!docEndIndex
                            )
                          ),
                          style: "STRONG"
                        ),
                        /* Displays the total number of documents */
                        a!richTextItem(
                          text: " of " & local!docDataSubset.totalCount
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "chevron-right",
                          link: a!dynamicLink(
                            value: local!docStartIndex + local!docBatchSize,
                            saveInto: local!docStartIndex,
                            showWhen: not(
                              (local!docStartIndex + local!docBatchSize) > local!docDataSubset.totalCount
                            )
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            not(
                              (local!docStartIndex + local!docBatchSize) > local!docDataSubset.totalCount
                            ),
                            "ACCENT",
                            "#bbb"
                          ),
                          size: "MEDIUM"
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "MIDDLE",
                showWhen: local!docDataSubset.totalCount > local!docBatchSize
              )
            },
            width: "MEDIUM_PLUS"
          )
        }
      )
    }
  )
}
```

### \[Line 1-100\] Define local variables

The local variables at the top of the expression are used to define the data that will be displayed for each document in the list, as well as the batch size and data subset.

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
{
  a!localVariables(
    local!searchText,
    local!documents: {
      a!map(
        name: "Proof of Identity",
        fileName: "bowan_driver_license.jpg",
        uploadDate: "August 4",
        size: "89KB",
        type: "image"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_aug2018.pdf",
        uploadDate: "August 4",
        size: "102KB",
        type: "pdf"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_jul2018.pdf",
        uploadDate: "August 4",
        size: "103KB",
        type: "pdf"
      ),
      a!map(
        name: "Bank Statement",
        fileName: "bowan_checking_aug2018.doc",
        uploadDate: "August 4",
        size: "92KB",
        type: "word"
      ),
      a!map(
        name: "Monthly Statement",
        fileName: "bowan_checking_2018.xls",
        uploadDate: "July 31",
        size: "96KB",
        type: "excel"
      ),
      a!map(
        name: "Proof of Identity",
        fileName: "bowan_driver_license.jpg",
        uploadDate: "July 30",
        size: "89KB",
        type: "image"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_aug2017.pdf",
        uploadDate: "July 27",
        size: "102KB",
        type: "pdf"
      ),
      a!map(
        name: "Pay Statement",
        fileName: "bowan_pay_stub_jul2017.pdf",
        uploadDate: "July 27",
        size: "103KB",
        type: "pdf"
      ),
      a!map(
        name: "Bank Statement",
        fileName: "bowan_checking_aug2017.doc",
        uploadDate: "July 26",
        size: "92KB",
        type: "word"
      ),
      a!map(
        name: "Monthly Statement",
        fileName: "bowan_checking_2017.xls",
        uploadDate: "July 20",
        size: "96KB",
        type: "excel"
      )
    },
    /* This value determines the max number of documents *
     * to display on each page of the document list.     */
    local!docBatchSize: 5,
    local!docStartIndex: 1,
    /* This document dataSubset can be replaced with a query */
    local!docDatasubset: a!refreshVariable(
      refreshOnReferencedVarChange: true,
      value: todatasubset(
        if(
          a!isNullOrEmpty(local!searchText),
          local!documents,
          index(
            local!documents,
            where(
              a!forEach(
                local!documents,
                search(local!searchText, fv!item.name, 1) > 0
              )
            ),
            {}
          )
        ),
        a!pagingInfo(local!docStartIndex, local!docBatchSize)
      )
    ),
```

### \[Line 101-143\] Create title and search field

This section uses rich text icon, heading, and text components to create the list header and search field. Here, the example search field is a placeholder that you can configure to work with your own data when you adapt this pattern to fit your use case.

```sail
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
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "folder-open",
                          color: "SECONDARY",
                          size: "MEDIUM"
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!headingField(
                      text: "Documents",
                      size: "MEDIUM",
                      color: "SECONDARY",
                      marginBelow: "NONE"
                    )
                  )
                },
                alignVertical: "MIDDLE"
              ),
              /* Search field */
              a!textField(
                label: "Search Documents",
                labelPosition: "COLLAPSED",
                placeholder: "Search documents...",
                value: local!searchText,
                saveInto: {
                  local!searchText,
                  a!save(local!docStartIndex, 1)
                },
                refreshAfter: "KEYPRESS"
              ),
```

### \[Line 144-149\]

This [message banner](Message_Banner.html) doesn't display on the screen because _announceBehavior_ is set to "ANNOUNCE\_ONLY". When the list is filtered by the search term, screen readers will announce how many results were returned.

```sail
144
145
146
147
148
149
              /* Message announced to screen reader users to let them know how many results were returned */
              a!messageBanner(
                primaryText: local!docDatasubset.totalCount & if(local!docDatasubset.totalCount = 1, " result found", " results found"),
                showWhen: a!isNotNullOrEmpty(local!searchText),
                announceBehavior: "ANNOUNCE_ONLY"
              ),
```

### \[Line 150-212\] Configure cards and document details

This section uses [a!forEach()](fnc_looping_a_foreach.html) to define the display and details for each document using card layouts, rich text, and side by side layouts. The expression is set up so that each document has its own card, an icon for the document type, file name, and upload date. The `a!forEach()` function loops through this expression for each document and creates a unique card with details for each.

```sail
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
              /* Displays a card for each document in the dataSubset */
              a!forEach(
                items: local!docDataSubset.data,
                expression: if(
                  or(
                    a!isNullOrEmpty(local!searchText),
                    search(local!searchText, fv!item.name, 1) > 0
                  ),
                  a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                /* Displays an icon for the corresponding document type */
                                a!richTextIcon(
                                  icon: "file-" & fv!item.type & "-o",
                                  color: "ACCENT",
                                  size: "LARGE"
                                )
                              }
                            ),
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item.name,
                                  color: "STANDARD",
                                  style: "STRONG"
                                ),
                                char(10),
                                a!richTextItem(text: fv!item.fileName, color: "#767676")
                              }
                            )
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: fv!item.uploadDate),
                                char(10),
                                a!richTextItem(text: fv!item.size, color: "SECONDARY")
                              },
                              align: "RIGHT"
                            ),
                            width: "MINIMIZE"
                          )
                        },
                        alignVertical: "MIDDLE"
                      )
                    },
                    link: a!dynamicLink(),
                    height: "AUTO",
                    marginBelow: "STANDARD"
                  ),
                  {}
                )
              ),
```

### \[Line 213 - 312\] Paging

This section defines the paging information for the list and sets up rich text formatting for the dynamic links that allow for navigation through the list pages.

```sail
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
              /* Document list paging */
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "chevron-left",
                          link: a!dynamicLink(
                            value: local!docStartIndex - local!docBatchSize,
                            saveInto: local!docStartIndex,
                            showWhen: not(local!docStartIndex = 1)
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            not(local!docStartIndex = 1),
                            "ACCENT",
                            "#bbb"
                          ),
                          size: "MEDIUM"
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        /* Displays a number range which indicates     *
                         * the current subset of documents in the list */
                        a!richTextItem(
                          text: local!docStartIndex & a!localVariables(
                            local!docEndIndex: if(
                              (
                                local!docStartIndex + local!docBatchSize - 1
                              ) > local!docDataSubset.totalCount,
                              local!docDataSubset.totalCount,
                              local!docStartIndex + local!docBatchSize - 1
                            ),
                            if(
                              local!docStartIndex = local!docEndIndex,
                              "",
                              " - " & local!docEndIndex
                            )
                          ),
                          style: "STRONG"
                        ),
                        /* Displays the total number of documents */
                        a!richTextItem(
                          text: " of " & local!docDataSubset.totalCount
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "chevron-right",
                          link: a!dynamicLink(
                            value: local!docStartIndex + local!docBatchSize,
                            saveInto: local!docStartIndex,
                            showWhen: not(
                              (local!docStartIndex + local!docBatchSize) > local!docDataSubset.totalCount
                            )
                          ),
                          linkStyle: "STANDALONE",
                          color: if(
                            not(
                              (local!docStartIndex + local!docBatchSize) > local!docDataSubset.totalCount
                            ),
                            "ACCENT",
                            "#bbb"
                          ),
                          size: "MEDIUM"
                        )
                      },
                      align: "RIGHT"
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "MIDDLE",
                showWhen: local!docDataSubset.totalCount > local!docBatchSize
              )
            },
            width: "MEDIUM_PLUS"
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