---
source_url: https://docs.appian.com/suite/help/25.3/sail/popular-patterns.html
original_path: sail/popular-patterns.html
version: "25.3"
title: "Popular Patterns"
page_id: "sail/popular-patterns"
section: "Vertical timeline"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Popular Patterns \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](/suite/help/25.3/sail/page-titles.html)
    -   [Content Structure](/suite/help/25.3/sail/content-structure.html)
    -   [Page Headers](/suite/help/25.3/sail/page-headers.html)
    -   [Secondary Navigation](/suite/help/25.3/sail/secondary-navigation.html)
-   Page Types
    -   [Employee Home Pages](/suite/help/25.3/sail/employee-home-pages.html)
    -   [Visitor Landing Pages](/suite/help/25.3/sail/visitor-landing-pages.html)
    -   [Dashboards](/suite/help/25.3/sail/dashboards.html)
    -   [Forms](/suite/help/25.3/sail/forms.html)
    -   [Record Views](/suite/help/25.3/sail/record-views.html)
    -   [Online Shopping Journey](/suite/help/25.3/sail/online-shopping-journey.html)
-   Page Content
    -   [Popular Patterns](#)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Popular Patterns

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Save time and achieve better results by using these patterns for common features in Appian applications.

* * *

## Vertical timeline

Shows process milestones, including future events. This pattern scales better than horizontal timelines for varied numbers of milestones.

See a usage example on the [Record Views](record-views.html#case-summary-record-view) page.

![](ds-images/image84.png)

Copy expression

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
a!localVariables(
  local!processTitle: "Claim Progress",
  local!listOfMilestones: {
    "Loss Occurred",
    "Claim Filed",
    "Vehicle Inspected",
    "Estimate Issued",
    "Payment Sent",
    "Claim Closed"
  },
  local!listOfIconsForMilestones: {
    "car-crash",
    "file-o",
    "search",
    "file-text-o",
    "money",
    "stamp"
  },
  local!listOfDatesOfStepCompletions: { now() - 3, now() - 2, now() - 1 },
  local!currentMilestone: count(local!listOfDatesOfStepCompletions),
  a!sectionLayout(
    label: local!processTitle,
    labelSize: "MEDIUM",
    labelColor: "STANDARD",
    contents: {
      a!forEach(
        items: local!listOfMilestones,
        expression: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!stampField(
                    labelPosition: "COLLAPSED",
                    icon: if(
                      and(
                        not(fv!isFirst),
                        fv!index <= local!currentMilestone
                      ),
                      "check-circle-o",
                      index(
                        local!listOfIconsForMilestones,
                        fv!index,
                        "star"
                      )
                    ),
                    backgroundColor: if(
                      fv!index <= local!currentMilestone,
                      "POSITIVE",
                      "#d9d9d9"
                    ),
                    contentColor: if(
                      fv!index <= local!currentMilestone,
                      "STANDARD",
                      "#666666"
                    ),
                    size: "TINY",
                    align: "CENTER",
                    marginAbove: "NONE",
                    marginBelow: "NONE",
                    accessibilityText: "Completed Step"
                  )
                },
                width: "EXTRA_NARROW"
              ),
              a!columnLayout(
                contents: {
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: { fv!item },
                        size: "STANDARD",
                        style: {
                          if(
                            fv!index <= local!currentMilestone,
                            "STRONG",
                            null
                          )
                        }
                      )
                    },
                    preventWrapping: true,
                    align: "LEFT",
                    marginAbove: "NONE",
                    marginBelow: "NONE"
                  ),
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          text(
                            index(
                              local!listOfDatesOfStepCompletions,
                              fv!index
                            ),
                            "MMMM dd"
                          )
                        },
                        size: "SMALL"
                      )
                    },
                    preventWrapping: true,
                    showWhen: a!isNotNullOrEmpty(
                      index(
                        local!listOfDatesOfStepCompletions,
                        fv!index,
                        null
                      )
                    ),
                    align: "LEFT",
                    marginAbove: "NONE",
                    marginBelow: "NONE"
                  )
                }
              )
            },
            alignVertical: "MIDDLE",
            marginAbove: if(fv!isFirst, "STANDARD", "NONE"),
            marginBelow: "NONE",
            spacing: "NONE"
          ),
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!imageField(
                    label: "",
                    labelPosition: "COLLAPSED",
                    images: {
                      a!documentImage(
                        document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                      )
                    },
                    size: "TINY",
                    isThumbnail: false,
                    style: "STANDARD",
                    align: "CENTER"
                  )
                },
                width: "EXTRA_NARROW"
              ),
              a!columnLayout(contents: {})
            },
            alignVertical: "MIDDLE",
            showWhen: not(fv!isLast),
            marginBelow: "NONE",
            spacing: "NONE"
          )
        }
      )
    }
  )
)
```

## Comment thread (full page)

Consider using a full-page UI for discussion threads to maximize usability. This design makes it easy to read longer posts and to skim long threads by scrolling.

You may also use this pattern at the bottom of a page, below other content.

![](ds-images/image39.png)

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
  header: {},
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Let's brainstorm ideas for how to 10x our search engine marketing success",
              labelSize: "LARGE",
              labelColor: "STANDARD",
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        a!richTextIcon(icon: "chevron-left"),
                        " Back to all topics"
                      },
                      link: a!safeLink(
                        uri: "www.appian.com",
                        openLinkIn: "NEW_TAB"
                      ),
                      linkStyle: "STANDALONE"
                    )
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!imageField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          images: {
                            a!webImage(
                              source: "https://randomuser.me/api/portraits/women/90.jpg"
                            )
                          },
                          size: "SMALL",
                          isThumbnail: false,
                          style: "AVATAR"
                        )
                      },
                      width: "EXTRA_NARROW"
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
                                    text: { "Irena Kim" },
                                    size: "MEDIUM",
                                    style: { "STRONG" }
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
                                    text: { "4 days ago" },
                                    color: "SECONDARY",
                                    size: "STANDARD"
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "BOTTOM",
                          spacing: "STANDARD"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      }
                    )
                  },
                  marginAbove: "MORE",
                  spacing: "DENSE"
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: { "4 Comments" },
                      size: "MEDIUM",
                      style: { "STRONG" }
                    )
                  },
                  marginAbove: "MORE",
                  marginBelow: "MORE"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!imageField(
                        label: "",
                        labelPosition: "COLLAPSED",
                        images: {},
                        size: "TINY",
                        isThumbnail: false,
                        style: "AVATAR"
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!paragraphField(
                        label: "Post a Comment",
                        labelPosition: "COLLAPSED",
                        placeholder: "Type your comment here...",
                        saveInto: {},
                        refreshAfter: "UNFOCUS",
                        height: "MEDIUM",
                        validations: {}
                      )
                    )
                  },
                  alignVertical: "TOP"
                ),
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(label: "Post Comment", style: "SOLID")
                  },
                  align: "END",
                  marginBelow: "MORE"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!imageField(
                        label: "",
                        labelPosition: "COLLAPSED",
                        images: {
                          a!webImage(
                            source: "https://randomuser.me/api/portraits/women/90.jpg"
                          )
                        },
                        size: "TINY",
                        isThumbnail: false,
                        style: "AVATAR"
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: { "Irena Kim " }, style: { "STRONG" }),
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          char(10),
                          char(10),
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ",
                          a!richTextItem(
                            text: {
                              a!richTextItem(text: { "...more" }, style: { "STRONG" })
                            },
                            link: a!safeLink(
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            ),
                            linkStyle: "STANDALONE"
                          ),
                          char(10),
                          a!richTextItem(
                            text: { "5 minutes ago" },
                            color: "SECONDARY",
                            size: "SMALL"
                          )
                        },
                        /*marginAbove: "LESS"*/
                      )
                    )
                  },
                  alignVertical: "TOP",
                  marginBelow: "MORE"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!imageField(
                        label: "",
                        labelPosition: "COLLAPSED",
                        images: {
                          a!webImage(
                            source: "https://randomuser.me/api/portraits/men/80.jpg"
                          )
                        },
                        size: "TINY",
                        isThumbnail: false,
                        style: "AVATAR"
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: { "Logan Douglas " },
                            style: { "STRONG" }
                          ),
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          char(10),
                          a!richTextItem(
                            text: { "2 hours ago" },
                            color: "SECONDARY",
                            size: "SMALL"
                          )
                        },
                        /*marginAbove: "LESS"*/
                      )
                    )
                  },
                  alignVertical: "TOP",
                  marginBelow: "MORE"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!imageField(
                        label: "",
                        labelPosition: "COLLAPSED",
                        images: {
                          a!webImage(
                            source: "https://randomuser.me/api/portraits/women/90.jpg"
                          )
                        },
                        size: "TINY",
                        isThumbnail: false,
                        style: "AVATAR"
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: { "Irena Kim " }, style: { "STRONG" }),
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          char(10),
                          a!richTextItem(
                            text: { "Yesterday 10:19AM" },
                            color: "SECONDARY",
                            size: "SMALL"
                          )
                        },
                        /*marginAbove: "LESS"*/
                      )
                    )
                  },
                  alignVertical: "TOP",
                  marginBelow: "MORE"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!imageField(
                        label: "",
                        labelPosition: "COLLAPSED",
                        images: {
                          a!webImage(
                            source: "https://randomuser.me/api/portraits/women/53.jpg"
                          )
                        },
                        size: "TINY",
                        isThumbnail: false,
                        style: "AVATAR"
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: { "Cheryl Hale " }, style: { "STRONG" }),
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          char(10),
                          a!richTextItem(
                            text: { "2 days ago" },
                            color: "SECONDARY",
                            size: "SMALL"
                          )
                        },
                        /*marginAbove: "LESS"*/
                      )
                    )
                  },
                  alignVertical: "TOP"
                )
              }
            )
          },
          width: "WIDE"
        ),
        a!columnLayout(contents: {})
      }
    )
  },
  backgroundColor: "WHITE"
)
```

## Comment thread (widget)

Use this pattern to display a comment thread alongside other related content.

Display comments in their own column or at the bottom of the page so that users can skim long threads by scrolling. While you may add paging controls for traversing long threads, aim to minimize the need to paginate.

![](ds-images/image45.png)

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
{
 a!sectionLayout(
   label: "",
   contents: {
     a!sideBySideLayout(
       items: {
         a!sideBySideItem(
           item: a!imageField(
             label: "",
             labelPosition: "COLLAPSED",
             images: {},
             size: "TINY",
             isThumbnail: false,
             style: "AVATAR"
           ),
           width: "MINIMIZE"
         ),
         a!sideBySideItem(
           item: a!paragraphField(
             label: "Post a Comment",
             labelPosition: "COLLAPSED",
             placeholder: "Type your comment here...",
             saveInto: {},
             refreshAfter: "UNFOCUS",
             height: "MEDIUM",
             validations: {}
           )
         )
       },
       alignVertical: "TOP"
     ),
     a!buttonArrayLayout(
       buttons: {
         a!buttonWidget(label: "Post Comment", style: "SOLID")
       },
       align: "END",
       marginBelow: "NONE"
     )
   },
   divider: "BELOW"
 ),
 a!richTextDisplayField(
   labelPosition: "COLLAPSED",
   value: {
     a!richTextItem(
       text: { "4 Comments" },
       size: "MEDIUM",
       style: { "STRONG" }
     )
   },
   marginAbove: "EVEN_LESS",
   marginBelow: "MORE"
 ),
 a!sideBySideLayout(
   items: {
     a!sideBySideItem(
       item: a!imageField(
         label: "",
         labelPosition: "COLLAPSED",
         images: {
           a!webImage(
             source: "https://randomuser.me/api/portraits/women/90.jpg"
           )
         },
         size: "TINY",
         isThumbnail: false,
         style: "AVATAR"
       ),
       width: "MINIMIZE"
     ),
     a!sideBySideItem(
       item: a!richTextDisplayField(
         labelPosition: "COLLAPSED",
         value: {
           a!richTextItem(text: { "Irena Kim " }, style: { "STRONG" }),
           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           char(10),
           char(10),
           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse ",
           a!richTextItem(
             text: {
               a!richTextItem(text: { "...more" }, style: { "STRONG" })
             },
             link: a!safeLink(
               uri: "www.appian.com",
               openLinkIn: "NEW_TAB"
             ),
             linkStyle: "STANDALONE"
           ),
           char(10),
           a!richTextItem(
             text: { "5 minutes ago" },
             color: "SECONDARY",
             size: "SMALL"
           )
         },
         marginAbove: "LESS"
       )
     )
   },
   alignVertical: "TOP"
 ),
 a!sideBySideLayout(
   items: {
     a!sideBySideItem(
       item: a!imageField(
         label: "",
         labelPosition: "COLLAPSED",
         images: {
           a!webImage(
             source: "https://randomuser.me/api/portraits/men/80.jpg"
           )
         },
         size: "TINY",
         isThumbnail: false,
         style: "AVATAR"
       ),
       width: "MINIMIZE"
     ),
     a!sideBySideItem(
       item: a!richTextDisplayField(
         labelPosition: "COLLAPSED",
         value: {
           a!richTextItem(
             text: { "Logan Douglas " },
             style: { "STRONG" }
           ),
           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           char(10),
           a!richTextItem(
             text: { "2 hours ago" },
             color: "SECONDARY",
             size: "SMALL"
           )
         },
         marginAbove: "LESS"
       )
     )
   },
   alignVertical: "TOP"
 ),
 a!sideBySideLayout(
   items: {
     a!sideBySideItem(
       item: a!imageField(
         label: "",
         labelPosition: "COLLAPSED",
         images: {
           a!webImage(
             source: "https://randomuser.me/api/portraits/women/90.jpg"
           )
         },
         size: "TINY",
         isThumbnail: false,
         style: "AVATAR"
       ),
       width: "MINIMIZE"
     ),
     a!sideBySideItem(
       item: a!richTextDisplayField(
         labelPosition: "COLLAPSED",
         value: {
           a!richTextItem(text: { "Irena Kim " }, style: { "STRONG" }),
           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           char(10),
           a!richTextItem(
             text: { "Yesterday 10:19AM" },
             color: "SECONDARY",
             size: "SMALL"
           )
         },
         marginAbove: "LESS"
       )
     )
   },
   alignVertical: "TOP"
 ),
 a!sideBySideLayout(
   items: {
     a!sideBySideItem(
       item: a!stampField(
         labelPosition: "COLLAPSED",
         text: "CH",
         backgroundColor: "#3c78d8",
         contentColor: "STANDARD",
         size: "TINY"
       ),
       width: "MINIMIZE"
     ),
     a!sideBySideItem(
       item: a!richTextDisplayField(
         labelPosition: "COLLAPSED",
         value: {
           a!richTextItem(text: { "Cheryl Hale " }, style: { "STRONG" }),
           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           char(10),
           a!richTextItem(
             text: { "2 days ago" },
             color: "SECONDARY",
             size: "SMALL"
           )
         },
         marginAbove: "LESS"
       )
     )
   },
   alignVertical: "TOP"
 )
}
```

## Dual picklist (simple)

Use this pattern on a form to allow users to select one or more items from a moderately long list of available choices.

Use standard checkboxes instead for short lists of available choices.

Use pickers instead for very long lists of available choices that cannot easily be browsed by scrolling.

![](ds-images/dual_picklist_simple.png)

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
a!localVariables(
  /*All available items that have not been selected  */
  local!availableList: {
    a!map(id: "AL", name: "Alabama"),
    a!map(id: "AK", name: "Alaska"),
    a!map(id: "AZ", name: "Arizona"),
    a!map(id: "AR", name: "Arkansas"),
    a!map(id: "AS", name: "American Samoa"),
    a!map(id: "CA", name: "California"),
    a!map(id: "CO", name: "Colorado"),
    a!map(id: "CT", name: "Connecticut"),
    a!map(id: "DE", name: "Delaware"),
    a!map(id: "DC", name: "District of Columbia"),
    a!map(id: "FL", name: "Florida"),
    a!map(id: "GA", name: "Georgia"),
    a!map(id: "GU", name: "Guam"),
    a!map(id: "HI", name: "Hawaii"),
    a!map(id: "ID", name: "Idaho"),
    a!map(id: "IL", name: "Illinois"),
    a!map(id: "IN", name: "Indiana"),

  },
  /*All items that have been selected  */
  local!selectedList: {
    a!map(id: "IA", name: "Iowa"),
    a!map(id: "KS", name: "Kansas"),
    a!map(id: "KY", name: "Kentucky"),

  },
  /*Checked items in available list  */
  local!availableListChoices: { "AL" },
  /*Checked items in selected list  */
  local!selectedListChoices,
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}),
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                "Available States and Territories",
                " ",
                a!richTextItem(
                  text: "(" & length(local!availableList) & ")",
                  style: "STRONG"
                )
              }
            ),
            a!cardLayout(
              contents: {
                a!checkboxField(
                  label: "Available Items",
                  labelPosition: "COLLAPSED",
                  choiceLabels: local!availableList.name,
                  choiceValues: local!availableList.id,
                  value: local!availableListChoices,
                  saveInto: local!availableListChoices,
                  showWhen: length(local!availableList) > 0,
                  choiceLayout: "STACKED",
                  choiceStyle: "CARDS"
                )
              },
              height: "MEDIUM_PLUS",
              marginBelow: "STANDARD"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(
          contents: {
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Add Selected",
                  icon: if(
                    a!isPageWidth("PHONE"),
                    "chevron-down",
                    "chevron-right"
                  ),
                  saveInto: {
                    /* Add chosen available items to selected list */
                    a!save(
                      local!selectedList,
                      cast(
                        typeof(local!selectedList),
                        todatasubset(
                          arrayToPage: append(
                            local!selectedList,
                            index(
                              local!availableList,
                              wherecontains(
                                local!availableListChoices,
                                local!availableList.id
                              ),
                              {}
                            )
                          ),
                          pagingConfiguration: a!pagingInfo(
                            startIndex: 1,
                            batchSize: - 1,
                            sort: a!sortInfo(field: "id", ascending: true)
                          )
                        ).data
                      )
                    ),
                    /* Remove from available list */
                    a!save(
                      local!availableList,
                      remove(
                        local!availableList,
                        wherecontains(
                          local!availableListChoices,
                          local!availableList.id
                        )
                      )
                    ),
                    /* Clear out choices */
                    a!save(local!availableListChoices, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: or(
                    a!isNullOrEmpty(local!availableListChoices),
                    length(local!availableList) = 0
                  )
                ),
                a!buttonWidget(
                  label: "Add All",
                  icon: "plus",
                  saveInto: {
                    /* Add all available items to selected list */
                    a!save(
                      local!selectedList,
                      cast(
                        typeof(local!selectedList),
                        todatasubset(
                          arrayToPage: append(local!selectedList, local!availableList),
                          pagingConfiguration: a!pagingInfo(
                            startIndex: 1,
                            batchSize: - 1,
                            sort: a!sortInfo(field: "id", ascending: true)
                          )
                        ).data
                      )
                    ),
                    /* Clear available list */
                    a!save(local!availableList, {}),
                    /* Clear out choices */
                    a!save(local!availableListChoices, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: length(local!availableList) = 0
                )
              },
              align: "START",
              marginBelow: "EVEN_MORE"
            ),
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Remove Selected",
                  icon: if(
                    a!isPageWidth("PHONE"),
                    "chevron-up",
                    "chevron-left"
                  ),
                  saveInto: {
                    /* Add chosen selected items to available list */
                    a!save(
                      local!availableList,
                      cast(
                        typeof(local!availableList),
                        todatasubset(
                          arrayToPage: append(
                            local!availableList,
                            index(
                              local!selectedList,
                              wherecontains(
                                local!selectedListChoices,
                                local!selectedList.id
                              ),
                              {}
                            )
                          ),
                          pagingConfiguration: a!pagingInfo(
                            startIndex: 1,
                            batchSize: - 1,
                            sort: a!sortInfo(field: "id", ascending: true)
                          )
                        ).data
                      )
                    ),
                    /* Remove from selected list */
                    a!save(
                      local!selectedList,
                      remove(
                        local!selectedList,
                        wherecontains(
                          local!selectedListChoices,
                          local!selectedList.id
                        )
                      )
                    ),
                    /* Clear out choices */
                    a!save(local!selectedListChoices, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: or(
                    a!isNullOrEmpty(local!selectedListChoices),
                    length(local!selectedList) = 0
                  )
                ),
                a!buttonWidget(
                  label: "Remove All",
                  icon: "times",
                  saveInto: {
                    /* Add all selected items to available list */
                    a!save(
                      local!availableList,
                      cast(
                        typeof(local!availableList),
                        todatasubset(
                          arrayToPage: append(local!availableList, local!selectedList),
                          pagingConfiguration: a!pagingInfo(
                            startIndex: 1,
                            batchSize: - 1,
                            sort: a!sortInfo(field: "id", ascending: true)
                          )
                        ).data
                      )
                    ),
                    /* Clear selected list */
                    a!save(local!selectedList, {}),
                    /* Clear out choices */
                    a!save(local!selectedListChoices, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: length(local!selectedList) = 0
                )
              },
              align: "START"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                "Selected States and Territories",
                " ",
                a!richTextItem(
                  text: "(" & length(local!selectedList) & ")",
                  style: "STRONG"
                )
              }
            ),
            a!cardLayout(
              contents: {
                a!checkboxField(
                  label: "Selected Items",
                  labelPosition: "COLLAPSED",
                  choiceLabels: local!selectedList.name,
                  choiceValues: local!selectedList.id,
                  value: local!selectedListChoices,
                  saveInto: local!selectedListChoices,
                  showWhen: length(local!selectedList) > 0,
                  choiceLayout: "STACKED",
                  choiceStyle: "CARDS"
                )
              },
              height: "MEDIUM_PLUS",
              marginBelow: "STANDARD"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(contents: {})
      },
      alignVertical: "MIDDLE"
    )
  }
)
```

## Dual picklist (grids)

Use this pattern on a form to allow users to select one or more items from a large set of possible values.

Displaying available and selected items in grids allows additional attributes to be shown.

![](ds-images/dual_picklist_grids.png)

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
a!localVariables(
  /*All items in the Available Products grid */
  local!availableItems: {
    a!map(
      id: 1,
      name: "Polo Shirt",
      price: 63.99,
      totalUnits: 40
    ),
    a!map(
      id: 2,
      name: "Joggers",
      price: 37.50,
      totalUnits: 50
    ),
    a!map(
      id: 3,
      name: "Floral Midi Dress",
      price: 112.50,
      totalUnits: 20
    ),
    a!map(
      id: 4,
      name: "Bucket Hat",
      price: 19.99,
      totalUnits: 25
    ),
    a!map(
      id: 5,
      name: "Mules",
      price: 64.90,
      totalUnits: 30
    ),
    a!map(
      id: 6,
      name: "Leather Boots",
      price: 150.00,
      totalUnits: 60
    ),
    a!map(
      id: 7,
      name: "Power Foundation",
      price: 42.95,
      totalUnits: 200
    ),
    a!map(
      id: 3,
      name: "Hawaiian Shirt",
      price: 23.99,
      totalUnits: 30
    ),
    a!map(
      id: 4,
      name: "Jeans",
      price: 80.00,
      totalUnits: 45
    ),
    a!map(
      id: 5,
      name: "Cocktail Dress",
      price: 80,
      totalUnits: 20
    )
  },
  /*All items in the Selected Products grid*/
  local!selectedItems: {
    a!map(
      id: 1,
      name: "Mascara",
      price: 13.50,
      totalUnits: 100
    ),
    a!map(
      id: 2,
      name: "Denim Shorts",
      price: 12.50,
      totalUnits: 20
    )
  },
  /*Chosen rows in the Available Products grid */
  local!availableListChoices,
  /*Chosen rows in the Selected Products grid */
  local!selectedListChoices,
  /*Grid selection for the Available Products grid */
  local!availableGridSelection,
  /*Grid selection for Selected Products grid*/
  local!selectedGridSelection,
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}),
        a!columnLayout(
          contents: {
            a!gridField(
              label: "Available Products",
              data: local!availableItems,
              columns: {
                a!gridColumn(
                  label: "Name",
                  sortField: "name",
                  value: a!linkField(
                    links: {
                      a!safeLink(
                        label: fv!row.name,
                        uri: "https://www.appian.com/"
                      )
                    }
                  )
                ),
                a!gridColumn(
                  label: "Unit Price",
                  sortField: "price",
                  value: dollar(fv!row.price),
                  align: "END"
                ),
                a!gridColumn(
                  label: "Total Units",
                  sortField: "totalUnits",
                  value: fv!row.totalUnits,
                  align: "END"
                )
              },
              pageSize: 50,
              selectable: true,
              selectionStyle: "ROW_HIGHLIGHT",
              selectionValue: local!availableGridSelection,
              selectionSaveInto: {
                local!availableGridSelection,
                a!save(
                  local!availableListChoices,
                  append(
                    local!availableListChoices,
                    fv!selectedRows
                  )
                ),
                a!save(
                  local!availableListChoices,
                  difference(
                    local!availableListChoices,
                    cast(
                      typeof(local!availableListChoices),
                      fv!deselectedRows
                    )
                  )
                )
              },
              validations: {},
              height: "MEDIUM",
              shadeAlternateRows: false,
              refreshAfter: "RECORD_ACTION"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(
          contents: {
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Add Selected",
                  icon: "chevron-right",
                  saveInto: {
                    /*Add the chosen available items to the selected items*/
                    a!save(
                      local!selectedItems,
                      append(
                        local!selectedItems,
                        local!availableListChoices
                      )
                    ),
                    /*Clear out the grid selection and remove selected items from available list*/
                    a!save(
                      local!availableItems,
                      difference(
                        local!availableItems,
                        local!availableListChoices
                      )
                    ),
                    a!save(local!availableListChoices, null),
                    a!save(local!availableGridSelection, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: a!isNullOrEmpty(local!availableListChoices)
                ),
                a!buttonWidget(
                  label: "Add All",
                  icon: "plus",
                  saveInto: {
                    /*Add all remaining available items to the selected list*/
                    a!save(
                      local!selectedItems,
                      append(
                        local!selectedItems,
                        local!availableItems
                      )
                    ),
                    /*Remove everything from the available list*/
                    a!save(local!availableItems, null),
                    a!save(local!availableGridSelection, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: a!isNullOrEmpty(local!availableItems)
                )
              },
              align: "START",
              marginBelow: "EVEN_MORE"
            ),
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Remove Selected",
                  icon: "chevron-left",
                  saveInto: {
                    /* Move the selected items to the available list                    */
                    a!save(
                      local!availableItems,
                      append(
                        local!availableItems,
                        local!selectedListChoices
                      )
                    ),
                    /*Remove the moved items from the selected list*/
                    a!save(
                      local!selectedItems,
                      difference(
                        local!selectedItems,
                        local!selectedListChoices
                      )
                    ),
                    a!save(local!selectedListChoices, null),
                    a!save(local!selectedGridSelection, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: a!isNullOrEmpty(local!selectedListChoices)
                ),
                a!buttonWidget(
                  label: "Remove All",
                  icon: "times",
                  saveInto: {
                    /*Add all selected items back in the available list                    */
                    a!save(
                      local!availableItems,
                      append(
                        local!availableItems,
                        local!selectedItems
                      )
                    ),
                    /*Clear out selected items and grid selection*/
                    a!save(local!selectedItems, null),
                    a!save(local!selectedListChoices, null),
                    a!save(local!selectedGridSelection, null)
                  },
                  width: "FILL",
                  style: "OUTLINE",
                  color: "SECONDARY",
                  disabled: a!isNullOrEmpty(local!selectedItems)
                )
              },
              align: "START"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!gridField(
              label: "Selected Products",
              data: local!selectedItems,
              columns: {
                a!gridColumn(
                  label: "Name",
                  sortField: "name",
                  value: a!linkField(
                    links: {
                      a!safeLink(
                        label: fv!row.name,
                        uri: "https://www.appian.com/"
                      )
                    }
                  )
                ),
                a!gridColumn(
                  label: "Unit Price",
                  sortField: "price",
                  value: dollar(fv!row.price),
                  align: "END"
                ),
                a!gridColumn(
                  label: "Total Units",
                  sortField: "totalUnits",
                  value: fv!row.totalUnits,
                  align: "END"
                )
              },
              pageSize: 50,
              selectable: true,
              selectionStyle: "ROW_HIGHLIGHT",
              selectionValue: local!selectedGridSelection,
              selectionSaveInto: {
                local!selectedGridSelection,
                a!save(
                  local!selectedListChoices,
                  append(
                    local!selectedListChoices,
                    fv!selectedRows
                  )
                ),
                a!save(
                  local!selectedListChoices,
                  difference(
                    local!selectedListChoices,
                    cast(
                      typeof(local!selectedListChoices),
                      fv!deselectedRows
                    )
                  )
                )
              },
              validations: {},
              height: "MEDIUM",
              shadeAlternateRows: false,
              refreshAfter: "RECORD_ACTION"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(contents: {})
      },
      alignVertical: "MIDDLE"
    )
  }
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.