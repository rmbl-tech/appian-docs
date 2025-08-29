---
source_url: https://docs.appian.com/suite/help/25.3/sail/customer-acct-management.html
original_path: sail/customer-acct-management.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Customer Account Management Page \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Customer Account Management Page

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Please select which platform you'd like to see a preview of this layout on: Desktop Mobile

[Jump to expression](#codeexample)

![Preview of a desktop SAIL layout for a(n) customer account management page](ds-images/insurance_account_page.png)

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
                  text: { "My Account" },
                  size: "LARGE_PLUS",
                  style: { "STRONG" }
                )
              }
            )
          },
          height: "AUTO",
          style: "#1155cc",
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
                                  text: { "Overview" },
                                  size: "MEDIUM",
                                  style: { "STRONG" }
                                )
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "#1155cc",
                          marginBelow: "NONE",
                          showBorder: false,
                          accessibilityText: "Navigation tab selected"
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "#65c7ee",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                a!richTextItem(text: { "Claims" }, size: "MEDIUM")
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "#1155cc",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "#1155cc",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                a!richTextItem(text: { "Preferences" }, size: "MEDIUM")
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "#1155cc",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "#1155cc",
                          padding: "EVEN_LESS",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                if(
                  a!isPageWidth("PHONE"),
                  {},
                  { a!columnLayout(contents: {}) }
                )
              },
              spacing: "DENSE",
              stackWhen: { "NEVER" }
            )
          },
          height: "AUTO",
          style: "#1155cc",
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
        a!columnLayout(contents: {}),
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
                                    text: { "$123.45" },
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
                                  a!richTextItem(text: { "Due July 1" }, size: "MEDIUM_PLUS")
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
                                    text: { "Pine Street Bank xxxx3456" },
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
                                    text: { "Edit" },
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
                                    backgroundColor: "#1155cc"
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
              isCollapsible: false,
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
                                backgroundColor: "#e12e8b",
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
                                    text: { "Jane" },
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
                                  a!richTextItem(
                                    text: { "44-year-old female" },
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
                                    text: { "Edit" },
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
                                backgroundColor: "#118bf1",
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
                                    text: { "Sharif" },
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
                                  a!richTextItem(
                                    text: { "42-year-old male" },
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
                                    text: { "Edit" },
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
                                backgroundColor: "#569a38",
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
                                    text: { "Benjamin" },
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
                                  a!richTextItem(
                                    text: { "16-year-old male" },
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
                                    text: { "Edit" },
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
                                      text: { "2021 Polestar 2" },
                                      size: "MEDIUM_PLUS",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(text: { "Edit" }, size: "STANDARD")
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
                                  value: { "$500 Deductible" }
                                ),
                                a!richTextDisplayField(
                                  label: "Collision",
                                  labelPosition: "ABOVE",
                                  value: { "$500 Deductible" }
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
                                  value: { "$100,000 Limit Per Incident" }
                                ),
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Show More" },
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
                                      text: { "2009 Saab 9-5" },
                                      size: "MEDIUM_PLUS",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(text: { "Edit" }, size: "STANDARD")
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
                                  value: { "$500 Deductible" }
                                ),
                                a!richTextDisplayField(
                                  label: "Collision",
                                  labelPosition: "ABOVE",
                                  value: { "$500 Deductible" }
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
                                  value: { "$100,000 Limit Per Incident" }
                                ),
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Show More" },
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
        a!columnLayout(contents: {})
      },
      stackWhen: { "PHONE", "TABLET_PORTRAIT" }
    )
  },
  backgroundColor: "TRANSPARENT"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.