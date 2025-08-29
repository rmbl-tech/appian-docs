---
source_url: https://docs.appian.com/suite/help/25.3/sail/page-headers.html
original_path: sail/page-headers.html
version: "25.3"
title: "Page Headers"
page_id: "sail/page-headers"
section: "Title bar header"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Page Headers \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](/suite/help/25.3/sail/page-titles.html)
    -   [Content Structure](/suite/help/25.3/sail/content-structure.html)
    -   [Page Headers](#)
    -   [Secondary Navigation](/suite/help/25.3/sail/secondary-navigation.html)
-   Page Types
    -   [Employee Home Pages](/suite/help/25.3/sail/employee-home-pages.html)
    -   [Visitor Landing Pages](/suite/help/25.3/sail/visitor-landing-pages.html)
    -   [Dashboards](/suite/help/25.3/sail/dashboards.html)
    -   [Forms](/suite/help/25.3/sail/forms.html)
    -   [Record Views](/suite/help/25.3/sail/record-views.html)
    -   [Online Shopping Journey](/suite/help/25.3/sail/online-shopping-journey.html)
-   Page Content
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Page Headers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Optionally use one or more headers to highlight content at the top of a page.

* * *

## Title bar header

A title bar header draws attention to the page title by showing it on a dedicated header bar with a contrasting background color.

Rich Text Title Size: **Medium Plus** Rich Text Title Style: **Strong**

![](ds-images/image44.png)

Copy expression Launch demo

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!sideBySideLayout(
          alignVertical: "MIDDLE",
          items: {
            a!sideBySideItem(
              width: "MINIMIZE",
              item: a!richTextDisplayField(
                marginBelow: "EVEN_LESS",
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextIcon(
                    icon: "home",
                    size: "MEDIUM_PLUS"
                  ),
                }
              )
            ),
            a!sideBySideItem(
              item: a!headingField(
                marginBelow: "NONE",
                text: "Home",
                fontWeight: "SEMI_BOLD",
                size: "MEDIUM",
                headingTag: "H1"
              )
            )
          }
        )
      },
      height: "AUTO",
      style: "#F0B323",
      padding: "STANDARD",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  contents: {},
  showWhen: true,
  backgroundColor: "WHITE"
)
```

## Title bar header (alternative)

Use this bold title bar style on pages where content is likely to be sparse. This approach is also effective for orienting occasional users by making the purpose of the page very clear.

A tall title bar also easily makes room for additional controls like breadcrumbs or a link to a shopping cart page.

Rich Text Size (Title): **Large Plus** Rich Text Style (Title): **Plain** Rich Text Size (Subtitle): **Medium** Rich Text Style (Subtitle): **Plain**

![](ds-images/image18.png)

Copy expression Launch demo

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!richTextDisplayField(
          marginBelow: "NONE",
          labelPosition: "COLLAPSED",
          value: {
            "Home ",
            a!richTextIcon(
              icon: "chevron-right"
            ),
            " Online Self Service",
          }
        ),
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!headingField(
                text: "Order Fishing License",
                size: "LARGE_PLUS",
                marginBelow: "LESS",
                headingTag: "H1",
                fontWeight: "LIGHT"
              ),
            ),
            a!sideBySideItem(
              item: a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextIcon(
                    icon: "shopping-cart",
                    size: "MEDIUM_PLUS"
                  )
                }
              ),
              width: "MINIMIZE"
            )
          },
          alignVertical: "MIDDLE"
        )
      },
      height: "AUTO",
      style: "#03122a",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  contents: {
    a!cardLayout(
      contents: {},
      height: "EXTRA_SHORT",
      style: "NONE",
      marginBelow: "NONE",
      showBorder: false
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {}
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "",
              labelSize: "LARGE_PLUS",
              labelHeadingTag: "H1",
              labelColor: "STANDARD",
              contents: {
                a!richTextDisplayField(
                  label: "About Fishing Licenses",
                  labelPosition: "ABOVE",
                  value: {
                    "Every person who is required to have a license to fish, hunt, and/or trap must carry such license with them (electronic copy, printed paper, or annual hard card) and show the license immediately upon request of any officer whose duty it is to enforce the game and inland fish laws, or upon the demand of any owner or lessee, or any employee or representative of such owner or lessee, upon whose land or water such person may be hunting, trapping, or fishing."
                  }
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "info-circle",
                      color: "ACCENT"
                    ),
                    " Processing time is approximately 2-3 weeks"
                  }
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                ),
                a!radioButtonField(
                  label: "License Type",
                  labelPosition: "ABOVE",
                  choiceLabels: {"State Freshwater Fishing","State Fresh/Saltwater Fishing"},
                  choiceValues: {1,2},
                  value: 1,
                  saveInto: {},
                  choiceLayout: "COMPACT",
                  choiceStyle: "CARDS",
                  validations: {}
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                ),
                a!radioButtonField(
                  label: "License Validity",
                  labelPosition: "ABOVE",
                  choiceLabels: {"5-day ($10)", "1-year ($22)", "2-year ($43)", "3-year ($65)"},
                  choiceValues: {1,2,3,4},
                  value: 1,
                  saveInto: {},
                  choiceLayout: "STACKED",
                  choiceStyle: "CARDS",
                  validations: {}
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!dateField(
                        label: "First Day of Validity",
                        labelPosition: "ABOVE",
                        value: todate("6/14/2021")
                        ,
                        saveInto: {},
                        validations: {}
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Last Day of Validity",
                        labelPosition: "ABOVE",
                        value: {
                          "6/18/2021"
                        }
                      )
                    )
                  }
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Number of Licenses"
                      },
                      style: {
                        "STRONG"
                      }
                    )
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "",
                                    icon: "minus",
                                    size: "SMALL",
                                    style: "OUTLINE",
                                    color: "SECONDARY",
                                    disabled: true
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!integerField(
                                label: "Quantity",
                                labelPosition: "COLLAPSED",
                                value: 1,
                                saveInto: {},
                                refreshAfter: "UNFOCUS",
                                validations: {}
                              )
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "",
                                    icon: "plus",
                                    size: "SMALL",
                                    style: "OUTLINE",
                                    color: "SECONDARY",
                                    disabled: false
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Add to Cart",
                                    icon: "cart-plus",
                                    size: "LARGE",
                                    style: "OUTLINE"
                                  ),
                                  a!buttonWidget(
                                    label: "Check Out Now",
                                    icon: "shopping-cart",
                                    size: "LARGE",
                                    style: "SOLID"
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      width: "MEDIUM_PLUS"
                    ),
                    a!columnLayout(
                      contents: {}
                    )
                  }
                )
              }
            )
          },
          width: "WIDE"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!headingField(
                  headingTag: "H2",
                  text: "Who can get a license?",
                  size: "SMALL",
                  fontWeight: "SEMI_BOLD"
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "Persons who have been a bonafide resident of the city, county, or state for six consecutive months immediately preceding the date of application for license.",
                    char(10),
                    char(10),
                    "Persons who have been domiciliary residents of the state for at least two months upon approval of a completed affidavit to be furnished by the state.",
                    char(10),
                    char(10),
                    "Any member of the armed forces of the United States, or a member of the immediate family of such a member, upon execution of a certificate of residence if the member (i) resides in the state, (ii) is on active duty, and (iii) is stationed at a military installation within, or in a ship based in, the state.",
                    char(10),
                    char(10),
                    "Students (including nonresident students boarding on campus) residing in the state who are enrolled in bonafide schools."
                  }
                )
              },
              height: "AUTO",
              style: "#f3f5f9",
              padding: "STANDARD",
              marginBelow: "STANDARD",
              showBorder: false
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(
          contents: {}
        )
      },
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT"
      }
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

## Key performance indicators header

Highlights multiple key performance indicators (KPIs) at the top of the page. Optionally preserves space for other content, such as a primary action button.

See [Data Value Display](data-value-display.html).

![](ds-images/image42.png)

## Hero card header

This pattern combines a card header with a site header bar that shares the same background color, producing a hero element that immediately draws a viewer's attention.

This style works best with the "Mercury" header bar style.

![](ds-images/image75.png)

## Filter bar header

This pattern displays filter controls at the top of the page that impact all page contents.

You can configure these filters to work with URL parameters, which will allow you to:

-   [Set default values for the filters](../url-parameters.html#determine-whether-to-use-a-default-value).
-   [Create a link to a page with certain filter values automatically selected](../url-parameters.html#create-a-link-to-a-page-with-certain-filter-values-automatically-selected).
-   [Allow users to share links with their selected filters](../url-parameters.html#allow-users-to-share-links-with-their-selected-filters).
-   [Remember filter selections when users return to a previously filtered page](../url-parameters.html#remember-filter-selections-when-returning-to-a-previously-filtered-page).

**See also**:

-   For an example of an interface expression that uses URL parameters with filters, see [Example: Setting up a filter to work with URL parameters](../url-parameters.html#example-setting-up-a-filter-to-work-with-url-parameters).
-   For instructions on how to configure URL parameters to work in a site or portal page, see [Set up URL parameters](../url-parameters.html#set-up-url-parameters).

![](ds-images/image61.png)

## Decorative billboard header

Billboard headers allow content to be displayed as an overlay on top of decorative photos.

Choose the appropriate shade and transparency for the overlay to allow content to easily be read.

![](ds-images/image82.png)

## Use a card to create high contrast for overlay contents

Optionally include a card as the background for billboard overlay contents to ensure sufficient contrast against the photo.

![](ds-images/image49.png)

## Mix and match header types

Combine multiple types of headers as needed.

This example uses:

-   Decorative billboard
-   Title bar card
-   KPI bar card

![](ds-images/image57.png)

Copy expression Launch demo

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
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundMedia: a!webImage(
        source: "https://images.unsplash.com/photo-1574950333594-f3e9a9446d0f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80"
        /* https://unsplash.com/photos/12R_znWtJHQ */
      ),
      height: "EXTRA_SHORT",
      marginBelow: "NONE"
    ),
    a!cardLayout(
      contents: {
        a!sideBySideLayout(
          alignVertical: "MIDDLE",
          items: {
            a!sideBySideItem(
              width: "MINIMIZE",
              item: a!richTextDisplayField(
                marginBelow: "EVEN_LESS",
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextItem(
                    text: {
                      a!richTextIcon(
                        icon: "tachometer"
                      )
                    },
                    size: "MEDIUM_PLUS",
                  )
                }
              ),
            ),
            a!sideBySideItem(
              item: a!headingField(
                marginBelow: "NONE",
                text: "My Dashboard",
                size: "MEDIUM",
                fontWeight: "SEMI_BOLD",
                headingTag: "H1"
              )
            )
          }
        ),
      },
      height: "AUTO",
      style: "#165C7D",
      padding: "STANDARD",
      marginBelow: "NONE",
      showBorder: false
    ),
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "GIFT DOLLARS TO TARGET" }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "money",
                                    color: "SECONDARY",
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(
                                    text: { " 82.9%" },
                                    size: "MEDIUM_PLUS",
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "caret-up",
                                    color: "POSITIVE",
                                    size: "STANDARD"
                                  ),
                                  a!richTextItem(
                                    text: { "1.9%" },
                                    color: "STANDARD",
                                    size: "STANDARD"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "DONOR RETENTION" }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "user-circle-o",
                                    color: "SECONDARY",
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(
                                    text: { " 74.2%" },
                                    size: "MEDIUM_PLUS",
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "caret-down",
                                    color: "NEGATIVE",
                                    size: "STANDARD"
                                  ),
                                  a!richTextItem(
                                    text: { "2.3%" },
                                    color: "STANDARD",
                                    size: "STANDARD"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "NEW DONORS TO TARGET" }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "user-plus",
                                    color: "SECONDARY",
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(
                                    text: { " 91.6%" },
                                    size: "MEDIUM_PLUS",
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "caret-up",
                                    color: "POSITIVE",
                                    size: "STANDARD"
                                  ),
                                  a!richTextItem(
                                    text: { "3.0%" },
                                    color: "STANDARD",
                                    size: "STANDARD"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "RECURRING GIFT RATE" }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "refresh",
                                    color: "SECONDARY",
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(
                                    text: { " 48.5%" },
                                    size: "MEDIUM_PLUS",
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "caret-down",
                                    color: "NEGATIVE",
                                    size: "STANDARD"
                                  ),
                                  a!richTextItem(
                                    text: { "5.1%" },
                                    color: "STANDARD",
                                    size: "STANDARD"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "ACTIVE CAMPAIGNS" }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "bullhorn",
                                    color: "SECONDARY",
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(
                                    text: { " 11" },
                                    size: "MEDIUM_PLUS",
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      }
                    )
                  },
                  spacing: "SPARSE",
                  showDividers: true
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {}, width: "AUTO"),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "NEW CAMPAIGN",
                      icon: "plus-circle",
                      size: "LARGE",
                      style: "SOLID"
                    )
                  },
                  align: "END",
                  marginBelow: "NONE"
                )
              },
              width: "NARROW"
            )
          },
          alignVertical: "MIDDLE"
        )
      },
      height: "AUTO",
      style: "#eee",
      padding: "STANDARD",
      marginBelow: "NONE"
    )
  },
  contents: {},
  backgroundColor: "WHITE"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.