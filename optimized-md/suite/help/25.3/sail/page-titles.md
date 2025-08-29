---
source_url: https://docs.appian.com/suite/help/25.3/sail/page-titles.html
original_path: sail/page-titles.html
version: "25.3"
title: "Page Titles"
page_id: "sail/page-titles"
section: "Standard page title"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Page Titles \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](#)
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
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Page Titles

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Display a title to clearly identify the purpose of each page.

* * *

## Standard page title

Use this style to show a title that describes the contents and purpose of the page.

Section Label Size: **Large** Heading Tag: **H1** Section Label Color: **Standard**

![screenshot showing an image gallery page with a standard page title](ds-images/image73.png)

## Prominent page title

Use this style to show a highly visible title at the top of a page. Works best on relatively sparse layouts with plentiful whitespace.

Section label size: **Large plus** Heading tag: **H1** Section label color: **Standard** Section divider line: **None** Margin above: **Even More** Margin below: **Even More**

![](ds-images/image47.png)

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
{
  a!columnsLayout(
    columns: {
      a!columnLayout(
        contents: {},
        width: "EXTRA_NARROW"
      ),
      a!columnLayout(
        contents: {
          a!sectionLayout(
            label: "Karen Anderson",
            labelSize: "LARGE_PLUS",
            labelColor: "STANDARD",
            contents: {},
            marginAbove: "EVEN_MORE",
            marginBelow: "EVEN_MORE"
          ),
          a!sectionLayout(
            label: "",
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "Contact Information",
                        labelSize: "MEDIUM",
                        labelHeadingTag: "H2",
                        labelColor: "ACCENT",
                        contents: {}
                      )
                    },
                    width: "MEDIUM_PLUS"
                  ),
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "",
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
                                          "Email"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "karen.anderson@email.com"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW",
                        marginBelow: "STANDARD"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Phone Number"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "703.555.1212"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Mailing Address"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "9836 Rocky River Court "
                                        },
                                        size: "MEDIUM_PLUS"
                                      ),
                                      char(10),
                                      a!richTextItem(
                                        text: {
                                          "Annandale, VA 22003"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "NONE"
                      )
                    }
                  )
                }
              )
            },
            divider: "BELOW",
            marginBelow: "MORE"
          ),
          a!sectionLayout(
            label: "",
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "Gift Commitment",
                        labelSize: "MEDIUM",
                        labelHeadingTag: "H2",
                        labelColor: "ACCENT",
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: {
                                  "The supporter's current gift commitment"
                                },
                                color: "SECONDARY"
                              )
                            }
                          )
                        }
                      )
                    },
                    width: "MEDIUM_PLUS"
                  ),
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "",
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
                                          "Frequency"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Monthly"
                                        },
                                        size: "MEDIUM_PLUS"
                                      ),
                                      char(10),
                                      a!richTextItem(
                                        text: {
                                          "On the 1st of each month"
                                        },
                                        color: "SECONDARY",
                                        size: "STANDARD"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW",
                        marginBelow: "STANDARD"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Amount"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "$25"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Source"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Email Campaign"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Tier"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Bronze"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "NONE"
                      )
                    }
                  )
                }
              )
            },
            divider: "BELOW",
            marginBelow: "MORE"
          ),
          a!sectionLayout(
            label: "",
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "History",
                        labelSize: "MEDIUM",
                        labelHeadingTag: "H2",
                        labelColor: "ACCENT",
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: {
                                  "Information is available for supporters since 2013"
                                },
                                color: "SECONDARY"
                              )
                            }
                          )
                        }
                      )
                    },
                    width: "MEDIUM_PLUS"
                  ),
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "",
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
                                          "Supporter Since"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "February 2017"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW",
                        marginBelow: "STANDARD"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Lifetime Giving"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "$1,390"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "BELOW"
                      ),
                      a!sectionLayout(
                        label: "",
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
                                          "Highest Tier Reached"
                                        },
                                        color: "SECONDARY",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  )
                                },
                                width: "MEDIUM"
                              ),
                              a!columnLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Gold"
                                        },
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "RIGHT"
                                  )
                                }
                              )
                            },
                            marginBelow: "NONE"
                          )
                        },
                        divider: "NONE"
                      )
                    }
                  )
                }
              )
            },
            divider: "NONE"
          )
        },
        width: "AUTO"
      ),
      a!columnLayout(
        contents: {},
        width: "EXTRA_NARROW"
      )
    }
  )
}
```

## Standard page title with divider line

Use this style to highlight the title on pages with contents competing for attention, such as section headings that appear immediately below the page title. The divider line keeps the title visually distinct from other page contents.

Section label size: **Large** Heading tag: **H1** Section label color: **Standard** Section divider line: **Above Content** Divider line weight: **Thin** Divider line color: **Standard**

![screenshot of a dashboard with a divider line](ds-images/image27.png)

## Title bar header

Draws attention to the page title by showing it on a dedicated header bar with contrasting background color.

Heading text size: **Medium** Heading text font weight: **Semi-Bold** Heading Margin Below

See [Page Headers](page-headers.html).

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

On pages where content is likely to be sparse, use this bold title bar style to add visual weight to the page. This approach is also effective for orienting occasional users by making the purpose of the page very clear.

Heading size: **Large Plus** Heading tag: **H1** Heading Margin Below: **Less**

See [Page Headers](page-headers.html).

![](ds-images/image87.png)

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!richTextDisplayField(
          marginBelow: "EVEN_LESS",
          labelPosition: "COLLAPSED",
          value: {
            "Home ",
            a!richTextIcon(
              icon: "chevron-right"
            )
          }
        ),
        a!headingField(
          text: "Online Self-Service",
          size: "LARGE_PLUS",
          marginBelow: "LESS",
          headingTag: "H1",
          fontWeight: "LIGHT"
        ),
        a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: {
                "What can we help you do today?"
              },
              size: "MEDIUM"
            )
          }
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
      height: "AUTO",
      style: "NONE",
      marginBelow: "STANDARD",
      showBorder: false
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {}
        ),
        a!columnLayout(
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
                                "Popular Services"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "ACCENT",
                      padding: "STANDARD",
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
                                "Business"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Education"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Employment"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Family & Health"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Finance"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Licenses"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Public Safety"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Recreation & Culture"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
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
                                "Transportation"
                              },
                              size: "MEDIUM"
                            )
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  width: "MEDIUM"
                ),
                a!columnLayout(
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
                                    char(10),
                                    a!richTextIcon(
                                      icon: "id-card-o",
                                      color: "ACCENT",
                                      size: "LARGE_PLUS"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "Renew Driver's License"
                                      },
                                      color: "STANDARD",
                                      size: "MEDIUM"
                                    ),
                                    char(10),
                                    char(10)
                                  },
                                  align: "CENTER"
                                )
                              },
                              link: a!dynamicLink(
                                label: "Dynamic Link",
                                saveInto: {}
                              ),
                              height: "AUTO",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD"
                            )
                          }
                        ),
                        a!columnLayout(
                          contents: {
                            a!cardLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    char(10),
                                    a!richTextIcon(
                                      icon: "car",
                                      color: "ACCENT",
                                      size: "LARGE_PLUS"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "Renew Vehicle Registration"
                                      },
                                      color: "STANDARD",
                                      size: "MEDIUM"
                                    ),
                                    char(10),
                                    char(10)
                                  },
                                  align: "CENTER"
                                )
                              },
                              link: a!dynamicLink(
                                label: "Dynamic Link",
                                saveInto: {}
                              ),
                              height: "AUTO",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD"
                            )
                          }
                        )
                      },
                      stackWhen: {
                        "PHONE",
                        "TABLET_PORTRAIT",
                        "TABLET_LANDSCAPE"
                      }
                    ),
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!cardLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    char(10),
                                    a!richTextIcon(
                                      icon: "certificate",
                                      color: "ACCENT",
                                      size: "LARGE_PLUS"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "Order Birth Certificate"
                                      },
                                      color: "STANDARD",
                                      size: "MEDIUM"
                                    ),
                                    char(10),
                                    char(10)
                                  },
                                  align: "CENTER"
                                )
                              },
                              link: a!dynamicLink(
                                label: "Dynamic Link",
                                saveInto: {}
                              ),
                              height: "AUTO",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD"
                            )
                          }
                        ),
                        a!columnLayout(
                          contents: {
                            a!cardLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    char(10),
                                    a!richTextIcon(
                                      icon: "paw",
                                      color: "ACCENT",
                                      size: "LARGE_PLUS"
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        "Order Hunting License"
                                      },
                                      color: "STANDARD",
                                      size: "MEDIUM"
                                    ),
                                    char(10),
                                    char(10)
                                  },
                                  align: "CENTER"
                                )
                              },
                              link: a!dynamicLink(
                                label: "Dynamic Link",
                                saveInto: {}
                              ),
                              height: "AUTO",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD"
                            )
                          }
                        )
                      },
                      stackWhen: {
                        "PHONE",
                        "TABLET_PORTRAIT",
                        "TABLET_LANDSCAPE"
                      }
                    )
                  }
                )
              },
              spacing: "SPARSE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT"
              }
            )
          },
          width: "WIDE_PLUS"
        ),
        a!columnLayout(
          contents: {}
        )
      }
    )
  }
)
```

## No page title

When a page is sufficiently described by the highlighted site navigation tab, there is no need to display a page title.

This approach is appropriate for pages with densely-packed content where a title bar would create additional clutter.

![](ds-images/image11.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.