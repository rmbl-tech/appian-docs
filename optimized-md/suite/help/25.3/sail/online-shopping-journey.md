---
source_url: https://docs.appian.com/suite/help/25.3/sail/online-shopping-journey.html
original_path: sail/online-shopping-journey.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Online Shopping Journey \[SAIL Design System: Patterns\]

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
    -   [Online Shopping Journey](#)
-   Page Content
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Online Shopping Journey

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use familiar eCommerce patterns for apps where users browse, select, and check out items.

* * *

## Item category listing

Use this pattern to list items within a product category. Click on a card to navigate to the corresponding item details page.

Note the minimized shopping cart shortcut in the upper right corner.

![](ds-images/image9.png)

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
a!headerContentLayout(
  header: {},
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!cardLayout(
                  height: "AUTO",
                  showWhen: true,
                  padding: "LESS",
                  showBorder: false
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!textField(
                          label: "",
                          labelPosition: "ABOVE",
                          placeholder: "Search products...",
                          saveInto: {},
                          refreshAfter: "UNFOCUS",
                          validations: {},
                          accessibilityText: "Search products"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "❘" }, color: "ACCENT", size: "LARGE")
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Dinnerware" },
                                        color: "ACCENT",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          link: a!dynamicLink(saveInto: {}),
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
                                        text: { "❘" },
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
                                        text: { "Drinkware" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                        text: { "❘" },
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
                                        text: { "Household & Bath" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                        text: { "❘" },
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
                                        text: { "Garden" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                        text: { "❘" },
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
                                        text: { "Pets" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                        text: { "❘" },
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
                                        text: { "What's New" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                          label: "Dinnerware",
                          labelSize: "LARGE_PLUS",
                          labelHeadingTag: "H1",
                          labelColor: "STANDARD",
                          contents: {}
                        ),
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
                                            icon: "sort-amount-asc",
                                            size: "MEDIUM"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    ),
                                    a!sideBySideItem(
                                      item: a!dropdownField(
                                        label: "Sort Order",
                                        labelPosition: "COLLAPSED",
                                        placeholder: "--- Select a Value ---",
                                        choiceLabels: {
                                          "Price: Low to High",
                                          "Price: High to Low",
                                          "Most Popular",
                                          "Featured"
                                        },
                                        choiceValues: {
                                          1,
                                          2,
                                          3,
                                          4
                                        },
                                        value: 1,
                                        saveInto: {},
                                        searchDisplay: "AUTO",
                                        validations: {}
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
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
                                          a!richTextIcon(
                                            icon: "cubes",
                                            size: "MEDIUM"
                                          )
                                        }
                                      ),
                                      width: "MINIMIZE"
                                    ),
                                    a!sideBySideItem(
                                      item: a!dropdownField(
                                        label: "Sort Order",
                                        labelPosition: "COLLAPSED",
                                        placeholder: "",
                                        choiceLabels: {
                                          "All Types",
                                          "Plates",
                                          "Bowls",
                                          "Serviceware"
                                        },
                                        choiceValues: {
                                          1,
                                          2,
                                          3,
                                          4
                                        },
                                        value: 1,
                                        saveInto: {},
                                        searchDisplay: "AUTO",
                                        validations: {}
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              width: "NARROW"
                            ),
                            a!columnLayout(
                              contents: {}
                            ),
                            a!columnLayout(
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!dropdownField(
                                        label: "Page",
                                        labelPosition: "COLLAPSED",
                                        choiceLabels: {
                                          "1",
                                          "2",
                                          "3"
                                        },
                                        choiceValues: {
                                          1,
                                          2,
                                          3
                                        },
                                        value: 1,
                                        saveInto: {},
                                        searchDisplay: "AUTO",
                                        validations: {}
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          "of ",
                                          a!richTextItem(
                                            text: {
                                              "3"
                                            },
                                            style: {
                                              "STRONG"
                                            }
                                          ),
                                          "        ",
                                          a!richTextItem(
                                            text: {
                                              "Show All"
                                            },
                                            link: a!safeLink(
                                              uri: "www.appian.com",
                                              openLinkIn: "SAME_TAB"
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
                              width: "NARROW"
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
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1556872801-14f7230b307f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "MEDIUM_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "NEW",
                                                backgroundColor: "#d82bd8"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "Otaru Soba Dipping Bowl"
                                              },
                                              size: "MEDIUM"
                                            )
                                          }
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "$19.95"
                                              },
                                              size: "STANDARD",
                                              style: {
                                                "STRONG"
                                              }
                                            )
                                          }
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
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1525973779373-015bdf68e579?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "MEDIUM_PLUS",
                                      marginBelow: "NONE"
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "Otaru Somen Bowl"
                                              },
                                              size: "MEDIUM"
                                            )
                                          }
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "$29.95"
                                              },
                                              size: "STANDARD",
                                              style: {
                                                "STRONG"
                                              }
                                            )
                                          }
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
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            )
                          }
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1530006498959-b7884e829a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1866&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "MEDIUM_PLUS",
                                      marginBelow: "NONE"
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "Otaru Tsukemen Bowl"
                                              },
                                              size: "MEDIUM"
                                            )
                                          }
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "$34.95"
                                              },
                                              size: "STANDARD",
                                              style: {
                                                "STRONG"
                                              }
                                            )
                                          }
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
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1572003414130-d1b4632a0d73?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "MEDIUM_PLUS",
                                      marginBelow: "NONE",
                                      overlay: a!fullOverlay(
                                        alignVertical: "TOP",
                                        contents: {
                                          a!tagField(
                                            labelPosition: "COLLAPSED",
                                            tags: {
                                              a!tagItem(
                                                text: "POPULAR",
                                                backgroundColor: "#3f7eed"
                                              )
                                            }
                                          )
                                        },
                                        style: "NONE"
                                      )
                                    ),
                                    a!cardLayout(
                                      contents: {
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "Otaru Ramen Bowl"
                                              },
                                              size: "MEDIUM"
                                            )
                                          }
                                        ),
                                        a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: {
                                                "$39.95"
                                              },
                                              size: "STANDARD",
                                              style: {
                                                "STRONG"
                                              }
                                            )
                                          }
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
                                  padding: "NONE",
                                  marginBelow: "STANDARD"
                                )
                              }
                            )
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
              height: "AUTO",
              padding: "STANDARD",
              showBorder: false
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
                    a!richTextIcon(
                      icon: "shopping-cart",
                      color: "ACCENT",
                      size: "MEDIUM"
                    ),
                    " 0"
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "AUTO",
              style: "STANDARD",
              padding: "LESS",
              marginBelow: "NONE",
              showBorder: false,
              accessibilityText: "Shopping Cart (Zero Items)"
            )
          },
          width: "EXTRA_NARROW"
        )
      },
      showDividers: false
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

## Item details page and cart

Use this pattern to show details of a selected item. Users can choose item options and add the item to their shopping cart.

Take note of:

-   Breadcrumbs for returning to the item listing page
-   The expanded view of the shopping cart (clicking the "x" will restore the minimized state)

![](ds-images/image64.png)

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
a!headerContentLayout(
  header: {},
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!cardLayout(
                  height: "AUTO",
                  showWhen: true,
                  padding: "LESS",
                  showBorder: false
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "Stoneware"
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
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "/"
                            },
                            color: "SECONDARY"
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
                              "Dinnerware"
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
                      contents: {
                        a!billboardLayout(
                          backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1530006498959-b7884e829a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1866&q=80"),
                          backgroundColor: "#f0f0f0",
                          height: "EXTRA_TALL",
                          marginBelow: "STANDARD"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1580485978320-cc2bc7dcf569?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT",
                                      marginBelow: "NONE"
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "STANDARD",
                                  padding: "EVEN_LESS",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1556205801-a0bf81cdc90d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT",
                                      marginBelow: "NONE"
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "STANDARD",
                                  padding: "EVEN_LESS",
                                  marginBelow: "STANDARD"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!billboardLayout(
                                      backgroundMedia: a!webImage(source:"https://images.unsplash.com/photo-1556872801-14f7230b307f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80"),
                                      backgroundColor: "#f0f0f0",
                                      height: "SHORT",
                                      marginBelow: "NONE"
                                    )
                                  },
                                  link: a!dynamicLink(
                                    label: "Dynamic Link",
                                    saveInto: {}
                                  ),
                                  height: "AUTO",
                                  style: "STANDARD",
                                  padding: "EVEN_LESS",
                                  marginBelow: "STANDARD"
                                )
                              }
                            )
                          },
                          spacing: "DENSE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!sectionLayout(
                          label: "Otaru Tsukemen Bowl",
                          labelSize: "LARGE_PLUS",
                          labelHeadingTag: "H1",
                          labelColor: "STANDARD",
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: {
                                    "$34.95"
                                  },
                                  size: "MEDIUM_PLUS"
                                )
                              }
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
                        a!radioButtonField(
                          label: "Color",
                          labelPosition: "ABOVE",
                          choiceLabels: {"Hokkaido White"},
                          choiceValues: {1},
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
                              width: "NARROW_PLUS"
                            ),
                            a!columnLayout(
                              contents: {}
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
                          label: "Product Description",
                          labelPosition: "ABOVE",
                          value: {
                            "Like all of our stoneware creations, the Otaru Tsukemen Bowl is hand-crafted in limited quantities.",
                            char(10),
                            char(10),
                            "The bowl's unique shape is ideal for easy dipping and slurping."
                          }
                        )
                      }
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
              padding: "STANDARD",
              showBorder: false
            )
          }
        ),
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
                              a!richTextIcon(
                                icon: "shopping-cart"
                              ),
                              " SHOPPING CART"
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
                            icon: "times",
                            link: a!safeLink(
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            ),
                            linkStyle: "STANDALONE",
                            size: "MEDIUM"
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
              style: "#666666",
              marginBelow: "NONE",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!sectionLayout(
                  label: "",
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!imageField(
                            label: "Product Image",
                            labelPosition: "COLLAPSED",
                            images: {
                              a!webImage(
                                source: "https://images.unsplash.com/photo-1530006498959-b7884e829a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1866&q=80"
                              )
                            },
                            size: "SMALL",
                            isThumbnail: false,
                            style: "STANDARD"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              "Otaru Tsukemen Bowl",
                              char(10),
                              a!richTextItem(
                                text: {
                                  "Qty:1 @ $34.95 "
                                },
                                color: "SECONDARY",
                                size: "SMALL"
                              ),
                              char(10),
                              a!richTextIcon(
                                icon: "trash-o",
                                color: "NEGATIVE",
                                size: "SMALL"
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
                                  "$34.95"
                                },
                                style: {
                                  "STRONG"
                                }
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      }
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
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              "Taxes"
                            }
                          )
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: {
                                  "–"
                                },
                                style: {
                                  "STRONG"
                                }
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              "Shipping"
                            }
                          )
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: {
                                  "Free"
                                },
                                style: {
                                  "STRONG"
                                }
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      }
                    )
                  },
                  divider: "BELOW"
                ),
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          "Total"
                        }
                      )
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: {
                              "$34.95"
                            },
                            style: {
                              "STRONG"
                            }
                          )
                        }
                      ),
                      width: "MINIMIZE"
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
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Check Out",
                      size: "LARGE",
                      width: "FILL",
                      style: "SOLID"
                    )
                  },
                  align: "START"
                )
              },
              link: a!dynamicLink(
                label: "Dynamic Link",
                saveInto: {}
              ),
              height: "EXTRA_TALL",
              style: "NONE",
              padding: "STANDARD",
              marginBelow: "NONE",
              showBorder: true,
              accessibilityText: "Shopping Cart (Zero Items)"
            )
          },
          width: "MEDIUM"
        )
      },
      showDividers: false
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "NONE"
)
```

## Checkout page

This pattern incorporates multiple steps into one page. After the user completes the "Delivery" section, a concise summary of their inputs is displayed, and the "Payment" section is automatically expanded.

Use the noun form, "Checkout page," or the verb form, "Check out now," in label text as appropriate.

![](ds-images/image65.png)

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {},
      height: "AUTO",
      style: "NONE",
      padding: "STANDARD",
      marginBelow: "NONE",
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
              label: "Check Out",
              labelSize: "LARGE_PLUS",
              labelHeadingTag: "H1",
              labelColor: "STANDARD",
              contents: {}
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
                            a!richTextIcon(
                              icon: "truck"
                            ),
                            " DELIVERY"
                          }
                        )
                      },
                      link: a!dynamicLink(
                        label: "Dynamic Link",
                        saveInto: {}
                      ),
                      height: "AUTO",
                      style: "#666666",
                      marginBelow: "NONE",
                      showBorder: false
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                label: "Ship To",
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "home",
                                    color: "SECONDARY"
                                  ),
                                  " Allison Moreno, 796 E. Studebaker Dr., Fort Worth, TX 76110",
                                  char(10),
                                  a!richTextIcon(
                                    icon: "calendar",
                                    color: "SECONDARY"
                                  ),
                                  " Free Economy Shipping"
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Edit",
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
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextIcon(
                              icon: "credit-card"
                            ),
                            " PAYMENT"
                          }
                        )
                      },
                      height: "AUTO",
                      style: "#666666",
                      marginBelow: "NONE",
                      showBorder: false
                    ),
                    a!cardLayout(
                      contents: {
                        a!integerField(
                          label: "Credit Card Number",
                          labelPosition: "ABOVE",
                          saveInto: {},
                          refreshAfter: "UNFOCUS",
                          validations: {}
                        ),
                        a!textField(
                          label: "Name on Card",
                          labelPosition: "ABOVE",
                          saveInto: {},
                          refreshAfter: "UNFOCUS",
                          validations: {}
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!textField(
                                label: "Expiration Date",
                                labelPosition: "ABOVE",
                                placeholder: "mm/yy",
                                saveInto: {},
                                refreshAfter: "UNFOCUS",
                                validations: {}
                              ),
                              width: "2X"
                            ),
                            a!sideBySideItem(
                              item: a!integerField(
                                label: "Security Code",
                                labelPosition: "ABOVE",
                                saveInto: {},
                                refreshAfter: "UNFOCUS",
                                validations: {}
                              )
                            ),
                            a!sideBySideItem()
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
                          label: "Billing Address",
                          labelPosition: "ABOVE",
                          choiceLabels: {"Same as shipping address", "Use a different billing address"},
                          choiceValues: {1, 2},
                          value: 1,
                          saveInto: {},
                          choiceLayout: "STACKED",
                          choiceStyle: "CARDS",
                          validations: {}
                        )
                      },
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
                            a!richTextItem(
                              text: {
                                a!richTextIcon(
                                  icon: "shopping-cart"
                                ),
                                " ORDER SUMMARY"
                              },
                              size: "STANDARD"
                            )
                          }
                        )
                      },
                      height: "AUTO",
                      style: "#666666",
                      marginBelow: "NONE",
                      showBorder: false
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!imageField(
                                    label: "Product Image",
                                    labelPosition: "COLLAPSED",
                                    images: {
                                      a!webImage(
                                        source: "https://images.unsplash.com/photo-1530006498959-b7884e829a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1866&q=80"
                                      )
                                    },
                                    size: "SMALL",
                                    isThumbnail: false,
                                    style: "STANDARD"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "Otaru Tsukemen Bowl",
                                      char(10),
                                      a!richTextItem(
                                        text: {
                                          "Qty:1 @ $34.95"
                                        },
                                        color: "SECONDARY",
                                        size: "SMALL"
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
                                          "$34.95"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              }
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
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "Taxes"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "–"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              }
                            ),
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      "Shipping"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Free"
                                        },
                                        style: {
                                          "STRONG"
                                        }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              }
                            )
                          },
                          divider: "BELOW"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      "Total"
                                    },
                                    size: "MEDIUM",
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
                                      "$34.95"
                                    },
                                    size: "MEDIUM_PLUS",
                                    style: {
                                      "STRONG"
                                    }
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        ),
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "NONE",
                          marginBelow: "STANDARD",
                          showBorder: false
                        ),
                        a!buttonArrayLayout(
                          buttons: {
                            a!buttonWidget(
                              label: "Place Order",
                              size: "LARGE",
                              width: "FILL",
                              style: "SOLID"
                            )
                          },
                          align: "START"
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
                      showBorder: true,
                      accessibilityText: "Shopping Cart (Zero Items)"
                    )
                  },
                  width: "MEDIUM"
                )
              }
            )
          },
          width: "WIDE_PLUS"
        ),
        a!columnLayout(
          contents: {}
        )
      },
      showDividers: false
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "STANDARD"
)
```

## Non-retail item directory

Allows users to browse to products or services by category. Use for citizen or employee portals where retail-style features, such as product photos and filtering, are not appropriate.

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

## Non-retail item details page

Shows details of items for purchase that lack the typical retail focus on product photos. Instead, use this page to explain details and to allow users to make selections before adding items to their cart with the option to go straight to the checkout flow.

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

## Non-retail item details with required questionnaire

Use this pattern when an item cannot simply be added to the shopping cart after the user makes a few simple selections. When a lengthier questionnaire, such as one for applying for a copy of a birth certificate, is required, it can be launched in place of adding selected items directly to the cart.

See the [Sidebar step indicator (simple)](forms.html#sidebar-step-indicator-simple) pattern for how such a questionnaire might look in this layout.

![](ds-images/image93.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.