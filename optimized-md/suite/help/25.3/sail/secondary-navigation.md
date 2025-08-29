---
source_url: https://docs.appian.com/suite/help/25.3/sail/secondary-navigation.html
original_path: sail/secondary-navigation.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Secondary Navigation \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](/suite/help/25.3/sail/page-titles.html)
    -   [Content Structure](/suite/help/25.3/sail/content-structure.html)
    -   [Page Headers](/suite/help/25.3/sail/page-headers.html)
    -   [Secondary Navigation](#)
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

# Secondary Navigation

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use secondary navigation controls to provide access to sub-pages within each site tab.

* * *

**Tip:**  See site [page groups](../sites_object.html#add-a-page-group) to create a nested menu of pages under a page group title. The [sidebar](ux-site-branding.html#sidebar) layout option for sites can also be used to achieve similar outcomes as the patterns on this page. Use these patterns when you want to mix a header bar with a sidebar for secondary navigation.

## Sidebars for secondary navigation

Consider using a sidebar for secondary navigation when you need to show more than six tabs or have multiple levels of sub-navigation. Sidebars scale better to support a large number of pages and instances where more complex navigation is necessary.

**Tip:**  You can use the [heading field](../heading-component.html) throughout these patterns instead of rich text items or section layouts to leverage heading tags and additional formatting options.

### Secondary navigation sidebar

Use this pattern to add an additional level of navigation links to site pages.

![](ds-images/image95.png)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
a!headerContentLayout(
  header: {
    a!cardLayout(
      height: "AUTO",
      showWhen: true,
      padding: "LESS",
      showBorder: false
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
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
                            text: {
                              "Dashboard"
                            },
                            color: "ACCENT",
                            size: "MEDIUM",
                            style: {
                              "STRONG"
                            }
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                saveInto: {}
              ),
              height: "AUTO",
              style: "#ffffff",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#ffffff",
                            size: "LARGE"
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "My Cases"
                            },
                            color: "ACCENT",
                            size: "MEDIUM"
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#ffffff",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#ffffff",
                            size: "LARGE"
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "Overdue Cases"
                            },
                            color: "ACCENT",
                            size: "MEDIUM"
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#ffffff",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#ffffff",
                            size: "LARGE"
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "All Cases"
                            },
                            color: "ACCENT",
                            size: "MEDIUM"
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#ffffff",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#ffffff",
                            size: "LARGE"
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "Advanced Search"
                            },
                            color: "ACCENT",
                            size: "MEDIUM"
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#ffffff",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#ffffff",
                            size: "LARGE"
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        label: "Rich Text",
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "Knowledge Base"
                            },
                            color: "ACCENT",
                            size: "MEDIUM"
                          )
                        }
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "DENSE"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              padding: "NONE",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Dashboard",
              labelSize: "LARGE_PLUS",
              labelHeadingTag: "H1",
              labelColor: "STANDARD",
              contents: {}
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Income",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                ),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Expenses",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                ),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Profit and Loss",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                )
              },
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Hiring",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                ),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Attrition",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                ),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Customer Satisfaction",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "MEDIUM_PLUS",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  width: "AUTO"
                )
              },
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            )
          }
        )
      },
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE",
        "DESKTOP_NARROW"
      }
    )
  },
  showWhen: true,
  backgroundColor: "WHITE"
)
```

### Secondary navigation sidebar with transparent page background

On pages with content displayed within cards, the sidebar should be rendered directly on the transparent page background. No divider line or bounding card is necessary.

![](ds-images/image70.png)

### Secondary navigation within header scope

Use this style of sidebar when the secondary navigation pages all fall within the context of the header(s).

In this example, the secondary navigation pages are all sub-views of "Cases".

![](ds-images/image80.png)

### Secondary navigation sidebar with contrasting background color

Use a background color for the sidebar that contrasts with the page background color to create a more prominent navigation control.

To maximize visual consistency, only use this pattern if all or most pages on the site will feature this navigation sidebar.

![](ds-images/image22.png)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
a!headerContentLayout(
  header: {
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              height: "AUTO",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {  a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "STANDARD",
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
                              text: {
                                "Dashboard"
                              },
                              color: "STANDARD",
                              size: "MEDIUM",
                              style: {
                                "STRONG"
                              }
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
  ),
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "#3B464E",
                              size: "LARGE"
                            )
                          }
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "My Cases"
                              },
                              color: "#D0D7DC",
                              size: "MEDIUM"
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  label: "Dynamic Link",
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
              ),
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "#3B464E",
                              size: "LARGE"
                            )
                          }
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Overdue Cases"
                              },
                              color: "#D0D7DC",
                              size: "MEDIUM"
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  label: "Dynamic Link",
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
              ),
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "#3B464E",
                              size: "LARGE"
                            )
                          }
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "All Cases"
                              },
                              color: "#D0D7DC",
                              size: "MEDIUM"
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  label: "Dynamic Link",
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
              ),
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "#3B464E",
                              size: "LARGE"
                            )
                          }
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Advanced Search"
                              },
                              color: "#D0D7DC",
                              size: "MEDIUM"
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  label: "Dynamic Link",
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
              ),
              a!cardLayout(
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "❘"
                              },
                              color: "#3B464E",
                              size: "LARGE"
                            )
                          }
                        ),
                        width: "MINIMIZE"
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          label: "Rich Text",
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Knowledge Base"
                              },
                              color: "#D0D7DC",
                              size: "MEDIUM"
                            )
                          }
                        )
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "DENSE"
                  )
                },
                link: a!dynamicLink(
                  label: "Dynamic Link",
                  saveInto: {}
                ),
                height: "AUTO",
                style: "#3B464E",
                padding: "NONE",
                marginBelow: "NONE",
                showBorder: false
              )},
              height: "AUTO",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sectionLayout(
                  label: "Dashboard",
                  labelSize: "LARGE_PLUS",
                  labelHeadingTag: "H1",
                  labelColor: "STANDARD",
                  contents: {}
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Income",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Expenses",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Profit and Loss",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Hiring",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Attrition",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Customer Satisfaction",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                )
              },
              height: "AUTO",
              style: "NONE",
              padding: "MORE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          }
        )
      },
      spacing: "DENSE",
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE",
        "DESKTOP_NARROW"
      }
    )
  },
  showWhen: true,
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

### More prominent selected page style for sidebar

This style gives greater visual emphasis to the selected secondary navigation page.

Consider using this style if:

-   The selected page is of greater significance than the selected site tab.
-   The page content is visually dense and users may have trouble seeing the highlighted page on the sidebar.

![](ds-images/image78.png)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
a!headerContentLayout(
  header: {
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              height: "AUTO",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "STANDARD",
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
                            text: {
                              "Dashboard"
                            },
                            color: "STANDARD",
                            size: "MEDIUM",
                            style: {
                              "STRONG"
                            }
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#FFCD00",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "My Cases"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Overdue"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "All Cases"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Advanced Search"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Knowledge Base"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sectionLayout(
                  label: "Dashboard",
                  labelSize: "LARGE_PLUS",
                  labelHeadingTag: "H1",
                  labelColor: "STANDARD",
                  contents: {}
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Income",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Expenses",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Profit and Loss",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Hiring",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Attrition",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Customer Satisfaction",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                )
              },
              height: "AUTO",
              style: "NONE",
              padding: "MORE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          }
        )
      },
      spacing: "DENSE",
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE",
        "DESKTOP_NARROW"
      }
    )
  },
  showWhen: true,
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

### Sidebar with sections

Use this style to group secondary navigation destinations into sections.

![](ds-images/image1.png)

**Functional pattern**

Use this pattern to quickly get up and running with a functional sidebar with sections. Just go to expression mode to switch out the data and contents that are unique to your app, and you're good to go.

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
a!localVariables(

  /* When user clicks on a tab, its index is persisted to this variable */
  local!selectedTab: 1,

  /* Determines content background color. Set to "WHITE", "TRANSPARENT", "CHARCOAL_SCHEME", "NAVY_SCHEME", "PLUM_SCHEME", or any valid hex code */
  local!headerContentBackgroundColor:"WHITE",

  /* Determines navigation background color */
  local!navBackgroundColor: "#020A51",

  /* Determines top-level navigation text color */
  local!topLevelTextColor: "#FCB858",

  /* Determines selected tab background color */
  local!selectedTabColor: "#2322F0",

  /* Array of text that defines the top-level tabs. Replace with your desired values */
  local!topLevelTabs: { "Cases", "Resources", "Help" },

  /* Array of sub-tab data. Replace with your desired values.
       topLevel: Set to the index of the top-level tab the subtab falls under. This value should not be more than the number of items in the "topLevelTab" array.
       name: Desired name of the tab
  */
  local!subTabs: {
    a!map(topLevel: 1, name: "Dashboard"),
    a!map(topLevel: 1, name: "My Cases"),
    a!map(topLevel: 1, name: "Overdue"),
    a!map(topLevel: 1, name: "All Cases"),
    a!map(topLevel: 2, name: "Popular Links"),
    a!map(topLevel: 2, name: "Knowledge Base"),
    a!map(topLevel: 2, name: "Training"),
    a!map(topLevel: 3, name: "Report an Issue"),
    a!map(topLevel: 3, name: "Support Forum")
  },

  a!headerContentLayout(
    header: {},
    contents: {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!cardLayout(
                height: "AUTO",
                style: local!navBackgroundColor,
                marginBelow: "NONE",
                showBorder: false
              ),
              a!forEach(
                items: local!topLevelTabs,
                expression: {
                  a!localVariables(
                    local!topLevel: fv!index,
                    {
                      a!cardLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { upper(fv!item) },
                                color: local!topLevelTextColor,
                                style: { "STRONG" }
                              )
                            }
                          )
                        },
                        height: "AUTO",
                        style: local!navBackgroundColor,
                        padding: "LESS",
                        marginBelow: "NONE",
                        showBorder: false
                      ),
                      a!forEach(
                        items: local!subTabs,
                        expression: {
                          a!cardLayout(
                            contents: {
                              a!sideBySideLayout(
                                items: {
                                  a!sideBySideItem(
                                    item: a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: { "❘" },
                                          color: if(
                                            fv!index = local!selectedTab,
                                            "STANDARD",
                                            local!navBackgroundColor
                                          ),
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
                                          text: { fv!item.name },
                                          color: "STANDARD",
                                          size: "MEDIUM",
                                          style: if(
                                            fv!index = local!selectedTab,
                                            { "STRONG" },
                                            { "PLAIN" }
                                          )
                                        )
                                      },
                                      preventWrapping: true
                                    )
                                  )
                                },
                                alignVertical: "MIDDLE"
                              )
                            },
                            link: a!dynamicLink(
                              label: "Dynamic Link",
                              value: fv!index,
                              saveInto: { local!selectedTab }
                            ),
                            tooltip: "",
                            height: "AUTO",
                            showWhen: fv!item.topLevel = local!topLevel,
                            style: if(
                              fv!index = local!selectedTab,
                              local!selectedTabColor,
                              local!navBackgroundColor
                            ),
                            padding: "EVEN_LESS",
                            marginBelow: "NONE",
                            showBorder: false
                          )
                        }
                      )
                    }
                  )
                }
              ),
              a!cardLayout(
                height: "EXTRA_TALL",
                style: local!navBackgroundColor,
                marginBelow: "NONE",
                showBorder: false
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  /* Conditionally display selected navigation section.       *
               * Sections are created individually here because they will *
               * have varying contents, so if you change the list in      *
               * local!subtabs, you will need to make sure *
               * the list of sections here is the correct length.         */
                  a!sectionLayout(
                    label: local!subTabs[local!selectedTab].name,
                    labelSize: "LARGE_PLUS",
                    labelHeadingTag: "H1",
                    labelColor: "STANDARD",
                    contents: {

                      choose(
                        local!selectedTab,
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {},
                        {}

                      )
                    }
                  )
                },
                height: "AUTO",
                style: "NONE",
                padding: "MORE",
                marginBelow: "STANDARD",
                showBorder: false
              )
            }
          )
        },
        spacing: "DENSE",
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT",
          "TABLET_LANDSCAPE",
          "DESKTOP_NARROW"
        }
      )
    },
    showWhen: true,
    backgroundColor: local!headerContentBackgroundColor,
    contentsPadding: "NONE"
  )
)
```

**Base pattern**

Use this pattern as a starting point for designing your own sidebar with sections. You can use design mode to drag and drop components as you see fit. Once you're ready to plug in your own data, consult the Functional pattern.

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
a!headerContentLayout(
  header: {
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              height: "AUTO",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "CASES"
                      },
                      color: "#FFCD00",
                      style: {
                        "STRONG"
                      }
                    )
                  }
                )
              },
              height: "AUTO",
              style: "#3B464E",
              padding: "LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "STANDARD",
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
                            text: {
                              "Dashboard"
                            },
                            color: "STANDARD",
                            size: "MEDIUM",
                            style: {
                              "STRONG"
                            }
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#FFCD00",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "My Cases"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Overdue"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "All Cases"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "RESOURCES"
                      },
                      color: "#FFCD00",
                      style: {
                        "STRONG"
                      }
                    )
                  }
                )
              },
              height: "AUTO",
              style: "#3B464E",
              padding: "LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Popular Links"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Knowledge Base"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Training"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "HELP"
                      },
                      color: "#FFCD00",
                      style: {
                        "STRONG"
                      }
                    )
                  }
                )
              },
              height: "AUTO",
              style: "#3B464E",
              padding: "LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Report an Issue"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "❘"
                            },
                            color: "#3b464e",
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
                            text: {
                              "Support Forum"
                            },
                            color: "STANDARD",
                            size: "MEDIUM"
                          )
                        },
                        preventWrapping: true
                      )
                    )
                  },
                  alignVertical: "MIDDLE")
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "",
              height: "AUTO",
              style: "#3b464e",
              padding: "EVEN_LESS",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sectionLayout(
                  label: "Dashboard",
                  labelSize: "LARGE_PLUS",
                  labelHeadingTag: "H1",
                  labelColor: "STANDARD",
                  contents: {}
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Income",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Expenses",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Profit and Loss",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Hiring",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Attrition",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Customer Satisfaction",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                )
              },
              height: "AUTO",
              style: "NONE",
              padding: "MORE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          }
        )
      },
      spacing: "DENSE",
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE",
        "DESKTOP_NARROW"
      }
    )
  },
  showWhen: true,
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

### Icon-only secondary navigation sidebar

Use this style to minimize the footprint of the navigation sidebar, leaving more horizontal space for content.

Although users can hover over an icon to see its label in a tooltip, this impedes initial usability. Avoid using this pattern for interfaces targeted at occasional users.

See the article on [vertical navigation](https://www.nngroup.com/articles/vertical-nav/) from the Nielsen Norman Group which advises minimal use of icon-only navigation.

![](ds-images/image14.png)

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
339
340
341
342
343
344
345
346
347
a!headerContentLayout(
  header: {
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              height: "AUTO",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "tachometer",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Dashboard",
              height: "AUTO",
              style: "#FFCD00",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "user",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "My Cases",
              height: "AUTO",
              style: "#3b464e",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "clock-o",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Overdue Cases",
              height: "AUTO",
              style: "#3b464e",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "folder-open",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "All Cases",
              height: "AUTO",
              style: "#3b464e",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "search",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Advanced Search",
              height: "AUTO",
              style: "#3b464e",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "lightbulb-o",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Knowledge Base",
              height: "AUTO",
              style: "#3b464e",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#3B464E",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "EXTRA_NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sectionLayout(
                  label: "Dashboard",
                  labelSize: "LARGE_PLUS",
                  labelHeadingTag: "H1",
                  labelColor: "STANDARD",
                  contents: {}
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Income",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Expenses",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Profit and Loss",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Hiring",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Attrition",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Customer Satisfaction",
                          labelSize: "MEDIUM",
                          labelColor: "STANDARD",
                          contents: {
                            a!cardLayout(
                              contents: {},
                              height: "MEDIUM_PLUS",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false
                            )
                          }
                        )
                      },
                      width: "AUTO"
                    )
                  },
                  stackWhen: {
                    "PHONE",
                    "TABLET_PORTRAIT",
                    "TABLET_LANDSCAPE",
                    "DESKTOP_NARROW"
                  }
                )
              },
              height: "AUTO",
              style: "NONE",
              padding: "MORE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          }
        )
      },
      spacing: "DENSE",
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE",
        "DESKTOP_NARROW"
      }
    )
  },
  showWhen: true,
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

### Collapsible secondary navigation sidebar

Use this style to allow users to toggle between expanded and collapsed states of the sidebar.

![](ds-images/image98.gif)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
a!headerContentLayout(
  header: {},
  contents: {
    a!localVariables(
      local!navExpanded: true,
      {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!cardLayout(
                  height: "AUTO",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "STANDARD",
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
                                text: { "Dashboard" },
                                color: "STANDARD",
                                size: "MEDIUM",
                                style: { "STRONG" }
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#FFCD00",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "#3b464e",
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
                                text: { "My Cases" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "#3b464e",
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
                                text: { "Overdue" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "#3b464e",
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
                                text: { "All Cases" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "#3b464e",
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
                                text: { "Advanced Search" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "❘" },
                                color: "#3b464e",
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
                                text: { "Knowledge Base" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            },
                            preventWrapping: true
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!cardLayout(
                      contents: {},
                      height: "AUTO",
                      style: "#3b464e",
                      padding: "LESS",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextIcon(
                              icon: "angle-double-left-bold",
                              color: "STANDARD",
                              size: "STANDARD"
                            )
                          },
                          preventWrapping: true,
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(value: false, saveInto: local!navExpanded),
                      tooltip: "Collapse navigation bar",
                      height: "AUTO",
                      style: "#3b464e",
                      padding: "LESS",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  height: "EXTRA_TALL",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  height: "EXTRA_TALL",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                )
              },
              width: "NARROW",
              showWhen: local!navExpanded
            ),
            a!columnLayout(
              contents: {
                a!cardLayout(
                  height: "AUTO",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "tachometer", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "Dashboard",
                  height: "AUTO",
                  style: "#FFCD00",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "user", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "My Cases",
                  height: "AUTO",
                  style: "#3b464e",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "clock-o", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "Overdue Cases",
                  height: "AUTO",
                  style: "#3b464e",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "folder-open", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "All Cases",
                  height: "AUTO",
                  style: "#3b464e",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "search", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "Advanced Search",
                  height: "AUTO",
                  style: "#3b464e",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(icon: "lightbulb-o", size: "MEDIUM_PLUS")
                      },
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  tooltip: "Knowledge Base",
                  height: "AUTO",
                  style: "#3b464e",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextIcon(
                              icon: "angle-double-right-bold",
                              color: "STANDARD",
                              size: "STANDARD"
                            )
                          },
                          preventWrapping: true,
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(value: true, saveInto: local!navExpanded),
                      tooltip: "Expand navigation bar",
                      height: "AUTO",
                      style: "#3b464e",
                      padding: "LESS",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  tooltip: "",
                  height: "AUTO",
                  style: "#3b464e",
                  padding: "LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  height: "EXTRA_TALL",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  height: "EXTRA_TALL",
                  style: "#3B464E",
                  marginBelow: "NONE",
                  showBorder: false
                )
              },
              width: "EXTRA_NARROW",
              showWhen: not(local!navExpanded)
            ),
            a!columnLayout(
              contents: {
                a!cardLayout(
                  contents: {
                    a!sectionLayout(
                      label: "Dashboard",
                      labelSize: "LARGE_PLUS",
                      labelHeadingTag: "H1",
                      labelColor: "STANDARD",
                      contents: {}
                    ),
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Income",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        ),
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Expenses",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        ),
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Profit and Loss",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        )
                      },
                      stackWhen: {
                        "PHONE",
                        "TABLET_PORTRAIT",
                        "TABLET_LANDSCAPE",
                        "DESKTOP_NARROW"
                      }
                    ),
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Hiring",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        ),
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Attrition",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        ),
                        a!columnLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Customer Satisfaction",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!cardLayout(
                                  contents: {},
                                  height: "MEDIUM_PLUS",
                                  style: "NONE",
                                  padding: "STANDARD",
                                  marginBelow: "STANDARD",
                                  showBorder: true,
                                  showShadow: false
                                )
                              }
                            )
                          },
                          width: "AUTO"
                        )
                      },
                      stackWhen: {
                        "PHONE",
                        "TABLET_PORTRAIT",
                        "TABLET_LANDSCAPE",
                        "DESKTOP_NARROW"
                      }
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "MORE",
                  marginBelow: "STANDARD",
                  showBorder: false
                )
              }
            )
          },
          spacing: "DENSE",
          stackWhen: {
            "PHONE",
            "TABLET_PORTRAIT",
            "TABLET_LANDSCAPE",
            "DESKTOP_NARROW"
          }
        )
      }
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

### Headers within secondary navigation page scope

Use the contrasting background color sidebar style when secondary pages contain one or more headers.

![](ds-images/image23.png)

### Bi-Level navigation sidebars

This design combines an icon-only primary navigation sidebar with a contrasting secondary navigation sidebar.

Used with site tabs, this pattern can represent secondary and tertiary navigation levels.

![](ds-images/image28.png)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
820
821
822
823
824
825
826
827
828
829
830
831
832
833
834
835
836
837
838
839
840
841
842
843
844
845
846
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
865
866
867
868
869
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
887
888
889
890
891
892
893
894
895
896
897
898
899
900
901
902
903
904
905
906
907
908
909
910
911
912
913
914
915
916
917
918
919
920
921
922
923
924
925
926
927
928
929
930
931
932
933
934
935
936
937
938
939
940
941
942
943
944
945
946
947
948
949
950
951
952
953
954
955
956
957
958
959
960
961
962
963
964
965
966
967
968
969
970
971
972
973
974
975
976
977
978
979
980
981
982
983
984
985
986
987
988
989
990
991
992
993
994
995
996
997
998
999
1000
1001
1002
1003
1004
1005
1006
1007
1008
1009
1010
1011
1012
1013
1014
1015
1016
1017
1018
1019
1020
1021
1022
1023
1024
1025
1026
1027
1028
1029
1030
1031
1032
1033
1034
1035
1036
1037
1038
1039
1040
1041
1042
1043
1044
1045
1046
1047
1048
1049
1050
1051
1052
1053
1054
1055
1056
1057
1058
1059
1060
1061
1062
1063
1064
1065
1066
1067
1068
1069
1070
1071
1072
1073
1074
1075
1076
1077
1078
1079
1080
1081
1082
1083
1084
1085
1086
1087
1088
a!headerContentLayout(
  header: {
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "tachometer",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "My Dashboard",
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "home",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Properties",
              height: "AUTO",
              style: "#990000",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "street-view",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Customers",
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "university",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Lending",
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "line-chart",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Performance",
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "users",
                      size: "MEDIUM_PLUS"
                    )
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              tooltip: "Team",
              height: "AUTO",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              height: "EXTRA_TALL",
              style: "#232020",
              marginBelow: "NONE",
              showBorder: false
            )
          },
          width: "EXTRA_NARROW"
        ),
        a!columnLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "Properties",
                              labelSize: "MEDIUM",
                              labelColor: "STANDARD",
                              contents: {
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(
                                      label: "New Listing",
                                      icon: "plus-circle",
                                      size: "LARGE",
                                      width: "FILL",
                                      style: "SOLID"
                                    )
                                  },
                                  align: "START"
                                )
                              },
                              divider: "NONE",
                              marginBelow: "NONE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "   "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "user-circle-o",
                                        color: "ACCENT",
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "  "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "My Listings"
                                        },
                                        color: "ACCENT",
                                        size: "MEDIUM",
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    },
                                    preventWrapping: true
                                  ),
                                  width: "AUTO"
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE",
                              marginBelow: "NONE"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "   "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "sun-o",
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "  "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "New Listings"
                                        },
                                        color: "#666666",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  ),
                                  width: "AUTO"
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE",
                              marginBelow: "NONE"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "   "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "search",
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "  "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Search Listings"
                                        },
                                        color: "#666666",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  ),
                                  width: "AUTO"
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE",
                              marginBelow: "NONE"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "   "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "handshake-o",
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "  "
                                    },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Sold Properties"
                                        },
                                        color: "#666666",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  ),
                                  width: "AUTO"
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE",
                              marginBelow: "NONE"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "EXTRA_TALL",
                          style: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "EXTRA_TALL",
                          style: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  width: "NARROW_PLUS"
                ),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "NEW LISTING",
                                                backgroundColor: "#ff9900"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!sideBySideLayout(
                                          items: {
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      "$1,695,000"
                                                    },
                                                    size: "MEDIUM_PLUS"
                                                  )
                                                }
                                              )
                                            ),
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      a!richTextIcon(
                                                        icon: "calendar"
                                                      ),
                                                      " 2d"
                                                    },
                                                    color: "SECONDARY",
                                                    size: "MEDIUM"
                                                  )
                                                }
                                              ),
                                              width: "MINIMIZE"
                                            )
                                          },
                                          alignVertical: "MIDDLE",
                                          marginBelow: "STANDARD"
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "3 Beds  "
                                              },
                                              size: "STANDARD"
                                            ),
                                            "•  2.5 Baths  •  2,403 Sq. Ft.",
                                            char(10),
                                            a!richTextItem(
                                              text: {
                                                "12345 Maple Ave, Palm Springs, CA 92262"
                                              },
                                              size: "SMALL"
                                            )
                                          },
                                          preventWrapping: false
                                        )
                                      },
                                      height: "AUTO",
                                      style: "NONE",
                                      padding: "STANDARD",
                                      marginBelow: "NONE",
                                      showBorder: false
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "NONE",
                                  shape: "SEMI_ROUNDED",
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "OPEN HOUSE SCHEDULED",
                                                backgroundColor: "#38761d"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!sideBySideLayout(
                                          items: {
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      "$2,150,000"
                                                    },
                                                    size: "MEDIUM_PLUS"
                                                  )
                                                }
                                              )
                                            ),
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      a!richTextIcon(
                                                        icon: "calendar"
                                                      ),
                                                      " 15d"
                                                    },
                                                    color: "SECONDARY",
                                                    size: "MEDIUM"
                                                  )
                                                }
                                              ),
                                              width: "MINIMIZE"
                                            )
                                          },
                                          alignVertical: "MIDDLE",
                                          marginBelow: "STANDARD"
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "4 Beds  "
                                              },
                                              size: "STANDARD"
                                            ),
                                            "•  3.5 Baths  •  2,942 Sq. Ft.",
                                            char(10),
                                            a!richTextItem(
                                              text: {
                                                "2345 Mesa Blvd, Palm Springs, CA 92264"
                                              },
                                              size: "SMALL"
                                            )
                                          },
                                          preventWrapping: false
                                        )
                                      },
                                      height: "AUTO",
                                      style: "NONE",
                                      padding: "STANDARD",
                                      marginBelow: "NONE",
                                      showBorder: false
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "NONE",
                                  shape: "SEMI_ROUNDED",
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "OPEN HOUSE SCHEDULED",
                                                backgroundColor: "#38761d"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!sideBySideLayout(
                                          items: {
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      "$1,945,000"
                                                    },
                                                    size: "MEDIUM_PLUS"
                                                  )
                                                }
                                              )
                                            ),
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      a!richTextIcon(
                                                        icon: "calendar"
                                                      ),
                                                      " 26d"
                                                    },
                                                    color: "SECONDARY",
                                                    size: "MEDIUM"
                                                  )
                                                }
                                              ),
                                              width: "MINIMIZE"
                                            )
                                          },
                                          alignVertical: "MIDDLE",
                                          marginBelow: "STANDARD"
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "3 Beds  "
                                              },
                                              size: "STANDARD"
                                            ),
                                            "•  2.5 Baths  •  2,178 Sq. Ft.",
                                            char(10),
                                            a!richTextItem(
                                              text: {
                                                "345 Main St, Cathedral City, CA 92234"
                                              },
                                              size: "SMALL"
                                            )
                                          },
                                          preventWrapping: false
                                        )
                                      },
                                      height: "AUTO",
                                      style: "NONE",
                                      padding: "STANDARD",
                                      marginBelow: "NONE",
                                      showBorder: false
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "NONE",
                                  shape: "SEMI_ROUNDED",
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            )
                          },
                          stackWhen: {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fGhvdXNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "PRICE REDUCED",
                                                backgroundColor: "#3c78d8"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!sideBySideLayout(
                                          items: {
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      "$2,092,000"
                                                    },
                                                    size: "MEDIUM_PLUS"
                                                  )
                                                }
                                              )
                                            ),
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      a!richTextIcon(
                                                        icon: "calendar"
                                                      ),
                                                      " 33d"
                                                    },
                                                    color: "SECONDARY",
                                                    size: "MEDIUM"
                                                  )
                                                }
                                              ),
                                              width: "MINIMIZE"
                                            )
                                          },
                                          alignVertical: "MIDDLE",
                                          marginBelow: "STANDARD"
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "5 Beds  "
                                              },
                                              size: "STANDARD"
                                            ),
                                            "•  4.5 Baths  •  3,219 Sq. Ft.",
                                            char(10),
                                            a!richTextItem(
                                              text: {
                                                "45678 Desert Ln, Palm Desert, CA 92260"
                                              },
                                              size: "SMALL"
                                            )
                                          },
                                          preventWrapping: false
                                        )
                                      },
                                      height: "AUTO",
                                      style: "NONE",
                                      padding: "STANDARD",
                                      marginBelow: "NONE",
                                      showBorder: false
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "NONE",
                                  shape: "SEMI_ROUNDED",
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1538963732282-4b2b48c7a4b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2555&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "NO OFFERS RECEIVED",
                                                backgroundColor: "#cc0000"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!sideBySideLayout(
                                          items: {
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      "$1,723,000"
                                                    },
                                                    size: "MEDIUM_PLUS"
                                                  )
                                                }
                                              )
                                            ),
                                            a!sideBySideItem(
                                              item: a!richTextDisplayField(
                                                labelPosition: "COLLAPSED",
                                                value: {
                                                  a!richTextItem(
                                                    text: {
                                                      a!richTextIcon(
                                                        icon: "calendar"
                                                      ),
                                                      " 42d"
                                                    },
                                                    color: "SECONDARY",
                                                    size: "MEDIUM"
                                                  )
                                                }
                                              ),
                                              width: "MINIMIZE"
                                            )
                                          },
                                          alignVertical: "MIDDLE",
                                          marginBelow: "STANDARD"
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "3 Beds  "
                                              },
                                              size: "STANDARD"
                                            ),
                                            "•  3 Baths  •  2,230 Sq. Ft.",
                                            char(10),
                                            a!richTextItem(
                                              text: {
                                                "567 Fountain St, Hot Springs, CA 92241"
                                              },
                                              size: "SMALL"
                                            )
                                          },
                                          preventWrapping: false
                                        )
                                      },
                                      height: "AUTO",
                                      style: "NONE",
                                      padding: "STANDARD",
                                      marginBelow: "NONE",
                                      showBorder: false
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "NONE",
                                  shape: "SEMI_ROUNDED",
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {}
                            )
                          },
                          stackWhen: {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        )
                      },
                      height: "AUTO",
                      style: "#f0f0f0",
                      padding: "MORE",
                      marginBelow: "STANDARD",
                      showBorder: false
                    )
                  }
                )
              },
              spacing: "NONE",
              stackWhen: {
                "NEVER"
              },
              showDividers: true
            )
          }
        )
      },
      spacing: "NONE",
      stackWhen: {
        "NEVER"
      }
    )
  },
  showWhen: true,
  backgroundColor: "TRANSPARENT",
  contentsPadding: "NONE"
)
```

## Horizontal tabs for secondary navigation

Consider horizontal tabs as an alternative to the secondary navigation sidebar pattern when:

-   You need to show fewer than 6 tabs. The sidebar better scales to support a larger number of tabs, but also leaves more unused space.
-   It's important to reserve as much horizontal space as possible for page contents.

### Horizontal tabs - Style 1

This style features lightweight horizontal secondary navigation.

![](ds-images/image91.png)

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!cardLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: {
                    "My Account"
                  },
                  size: "LARGE_PLUS",
                  style: {
                    "STRONG"
                  }
                )
              }
            )
          },
          height: "AUTO",
          style: "NONE",
          padding: "MORE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "Overview"
                                  },
                                  size: "MEDIUM",
                                  style: {
                                    "STRONG"
                                  }
                                )
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          marginBelow: "NONE",
                          showBorder: false,
                          accessibilityText: "Navigation tab selected"
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "#222",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  width: "NARROW"
                ),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "Claims"
                                  },
                                  size: "MEDIUM"
                                )
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      accessibilityText: "Navigation tab not selected"
                    )
                  },
                  width: "NARROW"
                ),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "Preferences"
                                  },
                                  size: "MEDIUM"
                                )
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      accessibilityText: "Navigation tab not selected"
                    )
                  },
                  width: "NARROW"
                ),
                a!columnLayout(
                  contents: {}
                )
              },
              spacing: "DENSE",
              stackWhen: {
                "NEVER"
              }
            )
          },
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false
        )
      },
      height: "AUTO",
      style: "#fff",
      padding: "NONE",
      marginBelow: "MORE",
      showBorder: false
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {}
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Payment",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!sectionLayout(
                      label: "NEXT PAYMENT",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "$123.45"
                                    },
                                    size: "MEDIUM_PLUS",
                                    style: {
                                      "STRONG"
                                    }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Due July 1"
                                    },
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
                      divider: "BELOW"
                    ),
                    a!sectionLayout(
                      label: "PAYMENT SOURCE",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Pine Street Bank xxxx3456"
                                    },
                                    size: "MEDIUM"
                                  )
                                }
                              ),
                              width: "AUTO"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Edit"
                                    },
                                    link: a!safeLink(
                                      uri: "www.appian.com",
                                      openLinkIn: "NEW_TAB"
                                    ),
                                    linkStyle: "STANDALONE"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!tagField(
                                label: "Tag Field",
                                labelPosition: "COLLAPSED",
                                tags: {
                                  a!tagItem(
                                    text: "AUTOPAY",
                                    backgroundColor: "#222"
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
                                    text: {
                                      "Withdraw balance due each month on due date"
                                    },
                                    color: "SECONDARY"
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      divider: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "STANDARD",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              },
              marginBelow: "MORE"
            ),
            a!sectionLayout(
              label: "Insured Drivers",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!sectionLayout(
                      label: "PRIMARY",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                text: "J",
                                backgroundColor: "#222",
                                contentColor: "STANDARD",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Jane"
                                    },
                                    size: "MEDIUM_PLUS",
                                    style: {
                                      "STRONG"
                                    }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "44-year-old female"
                                    },
                                    size: "MEDIUM"
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
                                    text: {
                                      "Edit"
                                    },
                                    link: a!safeLink(
                                      uri: "www.appian.com",
                                      openLinkIn: "NEW_TAB"
                                    ),
                                    linkStyle: "STANDALONE"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      divider: "BELOW"
                    ),
                    a!sectionLayout(
                      label: "SPOUSE",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                text: "S",
                                backgroundColor: "#222",
                                contentColor: "STANDARD",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Sharif"
                                    },
                                    size: "MEDIUM_PLUS",
                                    style: {
                                      "STRONG"
                                    }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "42-year-old male"
                                    },
                                    size: "MEDIUM"
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
                                    text: {
                                      "Edit"
                                    },
                                    link: a!safeLink(
                                      uri: "www.appian.com",
                                      openLinkIn: "NEW_TAB"
                                    ),
                                    linkStyle: "STANDALONE"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      divider: "BELOW"
                    ),
                    a!sectionLayout(
                      label: "DEPENDENT CHILD",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                text: "B",
                                backgroundColor: "#222",
                                contentColor: "STANDARD",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Benjamin"
                                    },
                                    size: "MEDIUM_PLUS",
                                    style: {
                                      "STRONG"
                                    }
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "16-year-old male"
                                    },
                                    size: "MEDIUM"
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
                                    text: {
                                      "Edit"
                                    },
                                    link: a!safeLink(
                                      uri: "www.appian.com",
                                      openLinkIn: "NEW_TAB"
                                    ),
                                    linkStyle: "STANDALONE"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      divider: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "STANDARD",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              },
              marginBelow: "MORE"
            )
          },
          width: "MEDIUM_PLUS"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Vehicles & Coverage",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!sectionLayout(
                      label: "VEHICLE 1",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "2021 Polestar 2"
                                      },
                                      size: "MEDIUM_PLUS",
                                      style: {
                                        "STRONG"
                                      }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(
                                          text: {
                                            "Edit"
                                          },
                                          size: "STANDARD"
                                        )
                                      },
                                      link: a!safeLink(
                                        uri: "www.appian.com",
                                        openLinkIn: "NEW_TAB"
                                      ),
                                      linkStyle: "STANDALONE"
                                    )
                                  }
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  label: "Comprehensive",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$500 Deductible"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Collision",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$500 Deductible"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Bodily Injury",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$250,000 Limit Per Person",
                                    char(10),
                                    "$500,000 Limit Per Incident"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Property Damage",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$100,000 Limit Per Incident"
                                  }
                                ),
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "Show More"
                                      },
                                      link: a!safeLink(
                                        uri: "www.appian.com",
                                        openLinkIn: "NEW_TAB"
                                      ),
                                      linkStyle: "STANDALONE"
                                    )
                                  }
                                )
                              }
                            )
                          }
                        )
                      },
                      divider: "BELOW"
                    ),
                    a!sectionLayout(
                      label: "VEHICLE 2",
                      labelSize: "SMALL",
                      labelHeadingTag: "H3",
                      labelColor: "SECONDARY",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "2009 Saab 9-5"
                                      },
                                      size: "MEDIUM_PLUS",
                                      style: {
                                        "STRONG"
                                      }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(
                                          text: {
                                            "Edit"
                                          },
                                          size: "STANDARD"
                                        )
                                      },
                                      link: a!safeLink(
                                        uri: "www.appian.com",
                                        openLinkIn: "NEW_TAB"
                                      ),
                                      linkStyle: "STANDALONE"
                                    )
                                  }
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  label: "Comprehensive",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$500 Deductible"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Collision",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$500 Deductible"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Bodily Injury",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$250,000 Limit Per Person",
                                    char(10),
                                    "$500,000 Limit Per Incident"
                                  }
                                ),
                                a!richTextDisplayField(
                                  label: "Property Damage",
                                  labelPosition: "ABOVE",
                                  value: {
                                    "$100,000 Limit Per Incident"
                                  }
                                ),
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "Show More"
                                      },
                                      link: a!safeLink(
                                        uri: "www.appian.com",
                                        openLinkIn: "NEW_TAB"
                                      ),
                                      linkStyle: "STANDALONE"
                                    )
                                  }
                                )
                              }
                            )
                          }
                        )
                      },
                      divider: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "STANDARD",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              },
              marginBelow: "MORE"
            )
          },
          width: "WIDE"
        ),
        a!columnLayout(
          contents: {}
        )
      },
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT",
        "TABLET_LANDSCAPE"
      }
    )
  },
  backgroundColor: "TRANSPARENT"
)
```

### Horizontal tabs - Style 2

This style features secondary navigation for framed page contents.

![](ds-images/horizontal_tabs_framed.png)

**Functional pattern**

Use this pattern to quickly get up and running with a functional horizontal tab layout. Just go to expression mode to switch out the data and contents that are unique to your app, and you're good to go.

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
820
821
822
823
824
825
826
827
828
829
830
831
832
833
834
835
836
837
838
839
840
841
842
843
844
845
846
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
865
866
867
868
869
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
887
888
889
890
891
892
893
894
895
896
897
898
899
900
901
902
903
904
905
906
907
908
909
910
911
912
913
914
915
916
917
918
919
920
921
922
923
924
925
926
927
928
929
930
931
932
933
934
935
936
937
938
939
940
941
942
943
944
945
946
947
948
949
950
951
952
953
954
955
956
957
958
959
960
961
962
963
964
965
966
967
968
969
970
971
972
973
974
975
976
977
978
979
980
981
982
983
984
985
986
987
988
989
990
991
992
993
994
995
996
997
998
999
1000
1001
1002
1003
1004
1005
1006
1007
1008
1009
1010
1011
1012
1013
1014
1015
1016
1017
1018
1019
1020
1021
1022
1023
1024
1025
1026
1027
1028
1029
1030
1031
1032
1033
1034
1035
1036
1037
1038
1039
1040
1041
1042
1043
1044
1045
1046
1047
1048
1049
1050
1051
1052
1053
1054
1055
1056
1057
1058
1059
1060
1061
1062
1063
1064
1065
1066
1067
1068
1069
1070
1071
1072
1073
1074
1075
1076
1077
1078
1079
1080
1081
1082
1083
1084
1085
1086
1087
1088
1089
1090
1091
1092
1093
1094
1095
1096
1097
1098
1099
1100
1101
1102
1103
1104
1105
1106
1107
1108
1109
1110
1111
1112
1113
1114
1115
1116
1117
1118
1119
1120
1121
1122
1123
1124
1125
1126
1127
1128
1129
1130
1131
1132
1133
1134
1135
1136
1137
1138
1139
1140
1141
1142
1143
1144
1145
1146
1147
1148
1149
1150
1151
1152
1153
1154
1155
1156
1157
1158
1159
1160
1161
1162
1163
1164
1165
1166
1167
1168
1169
1170
1171
1172
1173
1174
1175
1176
1177
1178
1179
1180
1181
1182
1183
1184
1185
1186
1187
1188
1189
1190
1191
1192
1193
1194
1195
1196
1197
1198
1199
1200
1201
1202
1203
1204
1205
1206
1207
1208
1209
1210
1211
1212
1213
1214
1215
1216
1217
1218
1219
1220
1221
1222
1223
1224
1225
1226
1227
1228
1229
1230
1231
1232
1233
1234
1235
1236
1237
1238
1239
1240
1241
1242
1243
1244
1245
1246
1247
1248
1249
1250
1251
1252
1253
1254
1255
1256
1257
1258
1259
1260
1261
1262
1263
1264
1265
1266
1267
1268
1269
1270
1271
1272
1273
1274
1275
1276
1277
1278
1279
1280
1281
1282
1283
1284
1285
1286
1287
1288
1289
1290
1291
1292
1293
1294
1295
1296
1297
1298
1299
1300
1301
1302
1303
1304
1305
1306
1307
1308
1309
1310
1311
1312
1313
1314
1315
1316
1317
1318
1319
1320
1321
1322
1323
1324
1325
1326
1327
1328
1329
1330
1331
1332
1333
1334
1335
1336
1337
1338
1339
1340
1341
1342
1343
1344
1345
1346
1347
1348
a!localVariables(
  local!tabs: {
    a!map(name: "Home", id: 1),
    a!map(name: "Academics", id: 2),
    a!map(name: "Housing", id: 3),
    a!map(name: "Career Services", id: 4),
    a!map(name: "Financial Aid", id: 5)
  },
  local!selectedTab: 1,
  a!headerContentLayout(
    header: {
      a!cardLayout(
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: { "Good morning, Karen!" },
                        size: "MEDIUM_PLUS",
                        style: { "STRONG" }
                      )
                    }
                  )
                }
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
                              text: {
                                a!richTextIcon(icon: "cloud"),
                                " ",
                                a!richTextItem(text: { "62°F" }, style: { "STRONG" }),
                                " Cloudy"
                              },
                              size: "MEDIUM"
                            )
                          },
                          align: "RIGHT"
                        ),
                        width: if(
                          a!isPageWidth({ "PHONE", "TABLET_PORTRAIT" }),
                          "MINIMIZE",
                          "AUTO"
                        )
                      ),
                      a!sideBySideItem(
                        item: a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "High ",
                                a!richTextItem(text: { "71°" }, style: { "STRONG" }),
                                "F "
                              },
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
                            a!richTextItem(
                              text: {
                                "Low ",
                                a!richTextItem(text: { "54°" }, style: { "STRONG" }),
                                "F "
                              },
                              size: "MEDIUM"
                            )
                          },
                          align: "RIGHT"
                        ),
                        width: "MINIMIZE"
                      )
                    },
                    alignVertical: "MIDDLE",
                    spacing: "SPARSE"
                  )
                }
              )
            },
            alignVertical: "MIDDLE",
            marginAbove: "STANDARD",
            marginBelow: "LESS",
            stackWhen: { "PHONE", "TABLET_PORTRAIT" }
          )
        },
        height: "AUTO",
        style: "#230f3d",
        padding: "STANDARD",
        marginBelow: "NONE",
        showBorder: false
      )
    },
    contents: {
      a!columnsLayout(
        columns: {
          a!forEach(
            local!tabs,
            a!columnLayout(
              contents: {
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: { fv!item.name },
                          size: "MEDIUM",
                          style: if(
                            local!selectedTab = fv!item.id,
                            { "STRONG" },
                            "PLAIN"
                          )
                        )
                      },
                      preventWrapping: true,
                      align: "CENTER"
                    )
                  },
                  link: a!dynamicLink(
                    label: fv!item.name & " Tab" & if(
                      local!selectedTab = fv!item.id,
                      " (Selected)",
                      " Not Selected"
                    ),
                    saveInto: { a!save(local!selectedTab, fv!item.id) }
                  ),
                  height: "AUTO",
                  style: if(
                    local!selectedTab = fv!item.id,
                    "#f3f0f6",
                    "#402e57"
                  ),
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "TOP",
                  decorativeBarColor: if(
                    local!selectedTab = fv!item.id,
                    "#674ea7",
                    "#402e57"
                  ),
                  accessibilityText: "Selected tab"
                )
              },
              width: "NARROW"
            )
          ),
          a!columnLayout(
            contents: {},
            showWhen: a!isPageWidth(
              {
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW",
                "DESKTOP",
                "DESKTOP_WIDE"
              }
            )
          )
        },
        marginBelow: "NONE",
        spacing: "DENSE"
      ),
      a!cardLayout(
        contents: {
          choose(
            local!selectedTab,
            /*First tab contents        */
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "My Class Schedule",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "Monday" }, size: "MEDIUM")
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "9:00AM – 10:00AM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          "CS 3100 Data Structures & Algorithms II"
                                        }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Thompson 404"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "12:45PM – 2:15PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "CS 3205 HCI in Software Development" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Flores A201"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "4:00PM – 5:30PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          "CS 3701 Introduction to Cybersecurity"
                                        }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Orborne Hall"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "#fff"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "Tuesday" },
                                            size: "MEDIUM",
                                            style: { "STRONG" }
                                          )
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "10:15AM – 11:30AM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "KOR 2020 Intermediate Korean II" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Phillips 329"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "3:30PM – 4:45PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "CS 4710 Artificial Intelligence" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Orborne Hall"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "ACCENT"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "Wednesday" }, size: "MEDIUM")
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "9:00AM – 10:00AM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          "CS 3100 Data Structures & Algorithms II"
                                        }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Thompson 404"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "12:45PM – 2:15PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "CS 3205 HCI in Software Development" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Flores A201"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "4:00PM – 5:30PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          "CS 3701 Introduction to Cybersecurity"
                                        }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Orborne Hall"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "#fff"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "Thursday" }, size: "MEDIUM")
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "10:15AM – 11:30AM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "KOR 2020 Intermediate Korean II" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Phillips 329"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: { "3:30PM – 4:45PM" },
                                            style: { "STRONG" }
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: { "CS 4710 Artificial Intelligence" }
                                      ),
                                      width: "5X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(icon: "map-marker"),
                                          " Orborne Hall"
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  alignVertical: "TOP"
                                )
                              },
                              divider: "ABOVE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "#fff"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "Friday" }, size: "MEDIUM")
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              marginBelow: "NONE"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "No classes scheduled" },
                                      color: "SECONDARY"
                                    )
                                  },
                                  align: "CENTER",
                                  marginAbove: "LESS"
                                )
                              },
                              divider: "ABOVE",
                              marginAbove: "NONE",
                              marginBelow: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "#fff"
                        )
                      }
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "My Path to Graduation",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!gaugeField(
                                    labelPosition: "COLLAPSED",
                                    percentage: 77.0,
                                    primaryText: a!gaugeIcon(icon: "graduation-cap", color: "#555"),
                                    size: "SMALL"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Bachelor of Science (BS)" },
                                        size: "MEDIUM_PLUS"
                                      ),
                                      char(10),
                                      a!richTextItem(text: { "Spring 2022" }, size: "MEDIUM")
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "SPARSE",
                              marginAbove: "LESS",
                              marginBelow: "STANDARD"
                            ),
                            a!columnsLayout(
                              columns: {
                                a!columnLayout(
                                  contents: {
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: { "REQUIRED CREDITS" },
                                          color: "SECONDARY",
                                          size: "SMALL"
                                        ),
                                        char(10),
                                        a!richTextItem(text: { "120" }, size: "LARGE")
                                      }
                                    )
                                  }
                                ),
                                a!columnLayout(
                                  contents: {
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: { "COMPLETED CREDITS" },
                                          color: "SECONDARY",
                                          size: "SMALL"
                                        ),
                                        char(10),
                                        a!richTextItem(text: { "92" }, size: "LARGE")
                                      }
                                    )
                                  }
                                ),
                                a!columnLayout(
                                  contents: {
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: { "IN-PROGRESS CREDITS" },
                                          color: "SECONDARY",
                                          size: "SMALL"
                                        ),
                                        char(10),
                                        a!richTextItem(text: { "15" }, size: "LARGE")
                                      }
                                    )
                                  }
                                )
                              },
                              alignVertical: "MIDDLE",
                              showDividers: true
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "check-circle",
                                            color: "POSITIVE",
                                            size: "MEDIUM_PLUS"
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
                                            text: { "Exceed minimum GPA" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "info-circle",
                                            color: "SECONDARY",
                                            size: "SMALL"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                ),
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "check-circle",
                                            color: "POSITIVE",
                                            size: "MEDIUM_PLUS"
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
                                            text: { "Maintain good standing" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "info-circle",
                                            color: "SECONDARY",
                                            size: "SMALL"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                ),
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "circle-o-notch",
                                            color: "SECONDARY",
                                            size: "MEDIUM_PLUS"
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
                                            text: { "Complete required degree classes" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "info-circle",
                                            color: "SECONDARY",
                                            size: "SMALL"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                ),
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "check-circle",
                                            color: "POSITIVE",
                                            size: "MEDIUM_PLUS"
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
                                            text: { "Complete required electives" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextIcon(
                                            icon: "info-circle",
                                            color: "SECONDARY",
                                            size: "SMALL"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              divider: "ABOVE",
                              marginBelow: "EVEN_LESS"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true
                        )
                      }
                    ),
                    a!cardLayout(
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    /*a!documentImage(*/
                                    /*document: cons!READING_ILLUSTRATION*/
                                    /*)*/

                                  },
                                  size: "FIT",
                                  isThumbnail: false,
                                  style: "STANDARD"
                                )
                              },
                              width: "NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "Spring Semester Class Registration is Now Open"
                                      },
                                      color: "ACCENT",
                                      size: "MEDIUM",
                                      style: { "STRONG" }
                                    )
                                  }
                                ),
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(
                                      label: "Register Now",
                                      icon: "pen-fancy",
                                      size: "SMALL",
                                      style: "OUTLINE"
                                    )
                                  },
                                  align: "START"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      height: "AUTO",
                      style: "#f1e8f4",
                      marginBelow: "MORE",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "TOP",
                      decorativeBarColor: "ACCENT"
                    ),
                    a!sectionLayout(
                      label: "My Support Team",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!imageField(
                                        label: "",
                                        labelPosition: "COLLAPSED",
                                        images: {
                                          a!webImage(
                                            source: "https://randomuser.me/api/portraits/women/27.jpg"
                                          )
                                        },
                                        size: "SMALL",
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
                                            text: { "Marsha McCoy" },
                                            size: "MEDIUM",
                                            style: { "STRONG" }
                                          ),
                                          char(10),
                                          "Faculty Advisor"
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!buttonArrayLayout(
                                        buttons: {
                                          a!buttonWidget(
                                            label: "Schedule Meeting",
                                            icon: "calendar",
                                            size: "SMALL",
                                            style: "OUTLINE",
                                            color: "SECONDARY"
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
                              divider: "BELOW"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!imageField(
                                        label: "",
                                        labelPosition: "COLLAPSED",
                                        images: {
                                          a!webImage(
                                            source: "https://randomuser.me/api/portraits/men/39.jpg"
                                          )
                                        },
                                        size: "SMALL",
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
                                            text: { "Praveen Sharma" },
                                            size: "MEDIUM",
                                            style: { "STRONG" }
                                          ),
                                          char(10),
                                          "Peer Advisor"
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!buttonArrayLayout(
                                        buttons: {
                                          a!buttonWidget(
                                            label: "Schedule Meeting",
                                            icon: "calendar",
                                            size: "SMALL",
                                            style: "OUTLINE",
                                            color: "SECONDARY"
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
                              divider: "BELOW"
                            ),
                            a!sectionLayout(
                              label: "",
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!imageField(
                                        label: "",
                                        labelPosition: "COLLAPSED",
                                        images: {
                                          a!webImage(
                                            source: "https://randomuser.me/api/portraits/women/59.jpg"
                                          )
                                        },
                                        size: "SMALL",
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
                                            text: { "Sara Vargas" },
                                            size: "MEDIUM",
                                            style: { "STRONG" }
                                          ),
                                          char(10),
                                          "Wellness Coach"
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!buttonArrayLayout(
                                        buttons: {
                                          a!buttonWidget(
                                            label: "Schedule Meeting",
                                            icon: "calendar",
                                            size: "SMALL",
                                            style: "OUTLINE",
                                            color: "SECONDARY"
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
                              divider: "NONE",
                              marginBelow: "EVEN_LESS"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          showShadow: true
                        )
                      }
                    )
                  },
                  width: "MEDIUM_PLUS"
                )
              },
              spacing: "SPARSE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            ),
            /*Second tab contents        */
            {},
            /*Third tab contents        */
            {},
            /*Fourth tab contents        */
            {},
            /*Fifth tab contents        */
            {}
          )
        },
        height: "AUTO",
        style: "#f3f0f6",
        padding: "MORE",
        marginBelow: "NONE",
        showBorder: false
      )

    },
    backgroundColor: "#230f3d",
    contentsPadding: "STANDARD"
  )
)
```

**Base pattern**

Use this pattern as a starting point for designing your own horizontal tab layout. You can use design mode to drag and drop components as you see fit. Once you're ready to plug in your own data, consult the Functional pattern.

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
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
820
821
822
823
824
825
826
827
828
829
830
831
832
833
834
835
836
837
838
839
840
841
842
843
844
845
846
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
865
866
867
868
869
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
887
888
889
890
891
892
893
894
895
896
897
898
899
900
901
902
903
904
905
906
907
908
909
910
911
912
913
914
915
916
917
918
919
920
921
922
923
924
925
926
927
928
929
930
931
932
933
934
935
936
937
938
939
940
941
942
943
944
945
946
947
948
949
950
951
952
953
954
955
956
957
958
959
960
961
962
963
964
965
966
967
968
969
970
971
972
973
974
975
976
977
978
979
980
981
982
983
984
985
986
987
988
989
990
991
992
993
994
995
996
997
998
999
1000
1001
1002
1003
1004
1005
1006
1007
1008
1009
1010
1011
1012
1013
1014
1015
1016
1017
1018
1019
1020
1021
1022
1023
1024
1025
1026
1027
1028
1029
1030
1031
1032
1033
1034
1035
1036
1037
1038
1039
1040
1041
1042
1043
1044
1045
1046
1047
1048
1049
1050
1051
1052
1053
1054
1055
1056
1057
1058
1059
1060
1061
1062
1063
1064
1065
1066
1067
1068
1069
1070
1071
1072
1073
1074
1075
1076
1077
1078
1079
1080
1081
1082
1083
1084
1085
1086
1087
1088
1089
1090
1091
1092
1093
1094
1095
1096
1097
1098
1099
1100
1101
1102
1103
1104
1105
1106
1107
1108
1109
1110
1111
1112
1113
1114
1115
1116
1117
1118
1119
1120
1121
1122
1123
1124
1125
1126
1127
1128
1129
1130
1131
1132
1133
1134
1135
1136
1137
1138
1139
1140
1141
1142
1143
1144
1145
1146
1147
1148
1149
1150
1151
1152
1153
1154
1155
1156
1157
1158
1159
1160
1161
1162
1163
1164
1165
1166
1167
1168
1169
1170
1171
1172
1173
1174
1175
1176
1177
1178
1179
1180
1181
1182
1183
1184
1185
1186
1187
1188
1189
1190
1191
1192
1193
1194
1195
1196
1197
1198
1199
1200
1201
1202
1203
1204
1205
1206
1207
1208
1209
1210
1211
1212
1213
1214
1215
1216
1217
1218
1219
1220
1221
1222
1223
1224
1225
1226
1227
1228
1229
1230
1231
1232
1233
1234
1235
1236
1237
1238
1239
1240
1241
1242
1243
1244
1245
1246
1247
1248
1249
1250
1251
1252
1253
1254
1255
1256
1257
1258
1259
1260
1261
1262
1263
1264
1265
1266
1267
1268
1269
1270
1271
1272
1273
1274
1275
1276
1277
1278
1279
1280
1281
1282
1283
1284
1285
1286
1287
1288
1289
1290
1291
1292
1293
1294
1295
1296
1297
1298
1299
1300
1301
1302
1303
1304
1305
1306
1307
1308
1309
1310
1311
1312
1313
1314
1315
1316
1317
1318
1319
1320
1321
1322
1323
1324
1325
1326
1327
1328
1329
1330
1331
1332
1333
1334
1335
1336
1337
1338
1339
1340
1341
1342
1343
1344
1345
1346
1347
1348
1349
1350
1351
1352
1353
1354
1355
1356
1357
1358
1359
1360
1361
1362
1363
1364
1365
1366
1367
1368
1369
1370
1371
1372
1373
1374
1375
1376
1377
1378
1379
1380
1381
1382
1383
1384
1385
1386
1387
1388
1389
1390
1391
1392
1393
1394
1395
1396
1397
1398
1399
1400
1401
1402
1403
1404
1405
1406
1407
1408
1409
1410
1411
1412
1413
1414
1415
1416
1417
1418
1419
1420
1421
1422
1423
1424
1425
1426
1427
1428
1429
1430
1431
1432
1433
1434
1435
1436
1437
1438
1439
1440
1441
1442
1443
1444
1445
1446
1447
1448
1449
1450
1451
1452
1453
1454
1455
1456
1457
1458
1459
1460
1461
1462
1463
1464
1465
1466
1467
1468
1469
1470
1471
1472
1473
1474
1475
1476
1477
1478
1479
1480
1481
1482
1483
1484
1485
1486
1487
1488
1489
1490
1491
1492
1493
1494
1495
1496
1497
1498
1499
1500
1501
1502
1503
1504
1505
1506
1507
1508
1509
1510
1511
1512
1513
1514
1515
1516
1517
1518
1519
1520
1521
1522
1523
1524
1525
1526
1527
1528
1529
1530
1531
1532
1533
1534
1535
1536
1537
1538
1539
1540
1541
1542
1543
1544
1545
1546
1547
1548
1549
1550
1551
1552
1553
1554
1555
1556
1557
1558
1559
1560
1561
1562
1563
1564
1565
1566
1567
1568
1569
1570
1571
1572
1573
1574
1575
1576
1577
1578
1579
1580
1581
1582
1583
1584
1585
1586
1587
1588
1589
1590
1591
1592
1593
1594
1595
1596
1597
1598
1599
1600
1601
1602
1603
1604
1605
1606
1607
1608
1609
1610
1611
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Good morning, Karen!"
                      },
                      size: "MEDIUM_PLUS",
                      style: {
                        "STRONG"
                      }
                    )
                  }
                )
              }
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
                            text: {
                              a!richTextIcon(
                                icon: "cloud"
                              ),
                              " ",
                              a!richTextItem(
                                text: {
                                  "62°F"
                                },
                                style: {
                                  "STRONG"
                                }
                              ),
                              " Cloudy"
                            },
                            size: "MEDIUM"
                          )
                        },
                        align: "RIGHT"
                      ),
                      width: if(a!isPageWidth({"PHONE","TABLET_PORTRAIT"}),"MINIMIZE","AUTO")
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "High ",
                              a!richTextItem(
                                text: {
                                  "71°"
                                },
                                style: {
                                  "STRONG"
                                }
                              ),
                              "F "
                            },
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
                          a!richTextItem(
                            text: {
                              "Low ",
                              a!richTextItem(
                                text: {
                                  "54°"
                                },
                                style: {
                                  "STRONG"
                                }
                              ),
                              "F "
                            },
                            size: "MEDIUM"
                          )
                        },
                        align: "RIGHT"
                      ),
                      width: "MINIMIZE"
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "SPARSE"
                )
              }
            )
          },
          alignVertical: "MIDDLE",
          marginAbove: "STANDARD",
          marginBelow: "LESS",
          stackWhen: {
            "PHONE",
            "TABLET_PORTRAIT"
          }
        )
      },
      height: "AUTO",
      style: "#230f3d",
      padding: "STANDARD",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Home"
                      },
                      size: "MEDIUM",
                      style: {
                        "STRONG"
                      }
                    )
                  },
                  preventWrapping: true,
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Home Tab (Selected)",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#f3f0f6",
              marginBelow: "NONE",
              showBorder: false,
              decorativeBarPosition: "TOP",
              decorativeBarColor: "#674ea7",
              accessibilityText: "Selected tab"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Academics"
                      },
                      size: "MEDIUM"
                    )
                  },
                  preventWrapping: true,
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Academics Tab Not Selected",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#402e57",
              marginBelow: "NONE",
              showBorder: false,
              decorativeBarPosition: "TOP",
              decorativeBarColor: "#402e57",
              accessibilityText: "Tab"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Housing"
                      },
                      size: "MEDIUM"
                    )
                  },
                  preventWrapping: true,
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Housing Tab Not Selected",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#402e57",
              marginBelow: "NONE",
              showBorder: false,
              decorativeBarPosition: "TOP",
              decorativeBarColor: "#402e57",
              accessibilityText: "Tab"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Career Services"
                      },
                      size: "MEDIUM"
                    )
                  },
                  preventWrapping: true,
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Career Services Tab Not Selected",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#402e57",
              marginBelow: "NONE",
              showBorder: false,
              decorativeBarPosition: "TOP",
              decorativeBarColor: "#402e57",
              accessibilityText: "Tab"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        "Financial Aid"
                      },
                      size: "MEDIUM"
                    )
                  },
                  preventWrapping: true,
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Financial Aid Tab Not Selected",
                saveInto: {}
              ),
              height: "AUTO",
              style: "#402e57",
              marginBelow: "NONE",
              showBorder: false,
              decorativeBarPosition: "TOP",
              decorativeBarColor: "#402e57",
              accessibilityText: "Tab"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(
          contents: {},
          showWhen: a!isPageWidth({"TABLET_LANDSCAPE","DESKTOP_NARROW","DESKTOP","DESKTOP_WIDE"})
        )
      },
      marginBelow: "NONE",
      spacing: "DENSE"
    ),
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!sectionLayout(
                  label: "My Class Schedule",
                  labelSize: "MEDIUM",
                  labelColor: "STANDARD",
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Monday"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "9:00AM – 10:00AM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3100 Data Structures & Algorithms II"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Thompson 404"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "12:45PM – 2:15PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3205 HCI in Software Development"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Flores A201"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "4:00PM – 5:30PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3701 Introduction to Cybersecurity"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Orborne Hall"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "START",
                      decorativeBarColor: "#fff"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Tuesday"
                                        },
                                        size: "MEDIUM",
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "10:15AM – 11:30AM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "KOR 2020 Intermediate Korean II"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Phillips 329"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "3:30PM – 4:45PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 4710 Artificial Intelligence"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Orborne Hall"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "START",
                      decorativeBarColor: "ACCENT"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Wednesday"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "9:00AM – 10:00AM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3100 Data Structures & Algorithms II"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Thompson 404"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "12:45PM – 2:15PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3205 HCI in Software Development"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Flores A201"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "4:00PM – 5:30PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 3701 Introduction to Cybersecurity"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Orborne Hall"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "START",
                      decorativeBarColor: "#fff"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Thursday"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "10:15AM – 11:30AM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "KOR 2020 Intermediate Korean II"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Phillips 329"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "3:30PM – 4:45PM"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "2X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "CS 4710 Artificial Intelligence"
                                    }
                                  ),
                                  width: "5X"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "map-marker"
                                      ),
                                      " Orborne Hall"
                                    }
                                  ),
                                  width: "2X"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "ABOVE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "START",
                      decorativeBarColor: "#fff"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Friday"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "No classes scheduled"
                                  },
                                  color: "SECONDARY"
                                )
                              },
                              align: "CENTER",
                              marginAbove: "LESS"
                            )
                          },
                          divider: "ABOVE",
                          marginAbove: "NONE",
                          marginBelow: "STANDARD"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true,
                      decorativeBarPosition: "START",
                      decorativeBarColor: "#fff"
                    )
                  }
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!sectionLayout(
                  label: "My Path to Graduation",
                  labelSize: "MEDIUM",
                  labelColor: "STANDARD",
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!gaugeField(
                                labelPosition: "COLLAPSED",
                                percentage: 77.0,
                                primaryText: a!gaugeIcon(
                                  icon: "graduation-cap",
                                  color: "#555"
                                ),
                                size: "SMALL"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Bachelor of Science (BS)"
                                    },
                                    size: "MEDIUM_PLUS"
                                  ),
                                  char(10),
                                  a!richTextItem(
                                    text: {
                                      "Spring 2022"
                                    },
                                    size: "MEDIUM"
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE",
                          spacing: "SPARSE",
                          marginAbove: "LESS",
                          marginBelow: "STANDARD"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "REQUIRED CREDITS"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "120"
                                      },
                                      size: "LARGE"
                                    )
                                  }
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "COMPLETED CREDITS"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "92"
                                      },
                                      size: "LARGE"
                                    )
                                  }
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: {
                                        "IN-PROGRESS CREDITS"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "15"
                                      },
                                      size: "LARGE"
                                    )
                                  }
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          showDividers: true
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "check-circle",
                                        color: "POSITIVE",
                                        size: "MEDIUM_PLUS"
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
                                        text: {
                                          "Exceed minimum GPA"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "info-circle",
                                        color: "SECONDARY",
                                        size: "SMALL"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            ),
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "check-circle",
                                        color: "POSITIVE",
                                        size: "MEDIUM_PLUS"
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
                                        text: {
                                          "Maintain good standing"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "info-circle",
                                        color: "SECONDARY",
                                        size: "SMALL"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            ),
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "circle-o-notch",
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
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
                                        text: {
                                          "Complete required degree classes"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "info-circle",
                                        color: "SECONDARY",
                                        size: "SMALL"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            ),
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "check-circle",
                                        color: "POSITIVE",
                                        size: "MEDIUM_PLUS"
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
                                        text: {
                                          "Complete required electives"
                                        },
                                        size: "MEDIUM"
                                      )
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "info-circle",
                                        color: "SECONDARY",
                                        size: "SMALL"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          divider: "ABOVE",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true
                    )
                  }
                ),
                a!cardLayout(
                  contents: {
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                /*a!documentImage(*/
                                  /*document: cons!READING_ILLUSTRATION*/
                                /*)*/
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          width: "NARROW"
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "Spring Semester Class Registration is Now Open"
                                  },
                                  color: "ACCENT",
                                  size: "MEDIUM",
                                  style: {
                                    "STRONG"
                                  }
                                )
                              }
                            ),
                            a!buttonArrayLayout(
                              buttons: {
                                a!buttonWidget(
                                  label: "Register Now",
                                  icon: "pen-fancy",
                                  size: "SMALL",
                                  style: "OUTLINE"
                                )
                              },
                              align: "START"
                            )
                          }
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  height: "AUTO",
                  style: "#f1e8f4",
                  marginBelow: "MORE",
                  showBorder: false,
                  showShadow: true,
                  decorativeBarPosition: "TOP",
                  decorativeBarColor: "ACCENT"
                ),
                a!sectionLayout(
                  label: "My Support Team",
                  labelSize: "MEDIUM",
                  labelColor: "STANDARD",
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!imageField(
                                    label: "",
                                    labelPosition: "COLLAPSED",
                                    images: {
                                      a!webImage(
                                        source: "https://randomuser.me/api/portraits/women/27.jpg"
                                      )
                                    },
                                    size: "SMALL",
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
                                        text: {
                                          "Marsha McCoy"
                                        },
                                        size: "MEDIUM",
                                        style: {
                                          "STRONG"
                                        }
                                      ),
                                      char(10),
                                      "Faculty Advisor"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Schedule Meeting",
                                        icon: "calendar",
                                        size: "SMALL",
                                        style: "OUTLINE",
                                        color: "SECONDARY"
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
                          divider: "BELOW"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!imageField(
                                    label: "",
                                    labelPosition: "COLLAPSED",
                                    images: {
                                      a!webImage(
                                        source: "https://randomuser.me/api/portraits/men/39.jpg"
                                      )
                                    },
                                    size: "SMALL",
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
                                        text: {
                                          "Praveen Sharma"
                                        },
                                        size: "MEDIUM",
                                        style: {
                                          "STRONG"
                                        }
                                      ),
                                      char(10),
                                      "Peer Advisor"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Schedule Meeting",
                                        icon: "calendar",
                                        size: "SMALL",
                                        style: "OUTLINE",
                                        color: "SECONDARY"
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
                          divider: "BELOW"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!imageField(
                                    label: "",
                                    labelPosition: "COLLAPSED",
                                    images: {
                                      a!webImage(
                                        source: "https://randomuser.me/api/portraits/women/59.jpg"
                                      )
                                    },
                                    size: "SMALL",
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
                                        text: {
                                          "Sara Vargas"
                                        },
                                        size: "MEDIUM",
                                        style: {
                                          "STRONG"
                                        }
                                      ),
                                      char(10),
                                      "Wellness Coach"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Schedule Meeting",
                                        icon: "calendar",
                                        size: "SMALL",
                                        style: "OUTLINE",
                                        color: "SECONDARY"
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
                          divider: "NONE",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: false,
                      showShadow: true
                    )
                  }
                )
              },
              width: "MEDIUM_PLUS"
            )
          },
          spacing: "SPARSE",
          stackWhen: {
            "PHONE",
            "TABLET_PORTRAIT",
            "TABLET_LANDSCAPE",
            "DESKTOP_NARROW"
          }
        )
      },
      height: "AUTO",
      style: "#f3f0f6",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  backgroundColor: "#230f3d",
  contentsPadding: "STANDARD"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.