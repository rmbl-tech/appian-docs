---
source_url: https://docs.appian.com/suite/help/25.3/sail/real-estate-property-list.html
original_path: sail/real-estate-property-list.html
version: "25.3"
title: "Real Estate Property List"
page_id: "sail/real-estate-property-list"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Real Estate Property List \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Real Estate Property List

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

![Preview of a desktop SAIL layout for a(n) real estate property list](ds-images/real_estate_property_list.png)

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
a!headerContentLayout(
  header: {},
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
                    a!richTextIcon(icon: "tachometer", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                    a!richTextIcon(icon: "home", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                    a!richTextIcon(icon: "street-view", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                    a!richTextIcon(icon: "university", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                    a!richTextIcon(icon: "line-chart", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                    a!richTextIcon(icon: "users", size: "MEDIUM_PLUS")
                  },
                  align: "CENTER"
                )
              },
              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
          width: "EXTRA_NARROW",
          showWhen: not(
            a!isPageWidth({ "PHONE", "TABLET_PORTRAIT" })
          )
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
                                    value: { "   " },
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
                                    value: { "  " },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "My Listings" },
                                        color: "ACCENT",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                    value: { "   " },
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
                                    value: { "  " },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "New Listings" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                    value: { "   " },
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
                                    value: { "  " },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Search Listings" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                                    value: { "   " },
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
                                    value: { "  " },
                                    align: "CENTER"
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Sold Properties" },
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
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
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
                  width: "NARROW_PLUS",
                  showWhen: not(a!isPageWidth({ "PHONE" }))
                ),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardGroupLayout(
                          labelPosition: "COLLAPSED",
                          cards: {
                            a!cardLayout(
                              contents: {
                                a!billboardLayout(
                                  backgroundMedia: a!webImage(
                                    source: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"
                                  ),
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
                                              a!richTextItem(text: { "$1,695,000" }, size: "MEDIUM_PLUS")
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "calendar"), " 2d" },
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
                                        a!richTextItem(text: { "3 Beds  " }, size: "STANDARD"),
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              shape: "ROUNDED",
                              padding: "NONE",
                              marginBelow: "STANDARD"
                            ),
                            a!cardLayout(
                              contents: {
                                a!billboardLayout(
                                  backgroundMedia: a!webImage(
                                    source: "https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"
                                  ),
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
                                              a!richTextItem(text: { "$2,150,000" }, size: "MEDIUM_PLUS")
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "calendar"), " 15d" },
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
                                        a!richTextItem(text: { "4 Beds  " }, size: "STANDARD"),
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              shape: "ROUNDED",
                              padding: "NONE",
                              marginBelow: "STANDARD"
                            ),
                            a!cardLayout(
                              contents: {
                                a!billboardLayout(
                                  backgroundMedia: a!webImage(
                                    source: "https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80"
                                  ),
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
                                              a!richTextItem(text: { "$1,945,000" }, size: "MEDIUM_PLUS")
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "calendar"), " 26d" },
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
                                        a!richTextItem(text: { "3 Beds  " }, size: "STANDARD"),
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              shape: "ROUNDED",
                              padding: "NONE",
                              marginBelow: "STANDARD"
                            ),
                            a!cardLayout(
                              contents: {
                                a!billboardLayout(
                                  backgroundMedia: a!webImage(
                                    source: "https://images.unsplash.com/photo-1538963732282-4b2b48c7a4b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2555&q=80"
                                  ),
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
                                              a!richTextItem(text: { "$1,723,000" }, size: "MEDIUM_PLUS")
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "calendar"), " 42d" },
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
                                        a!richTextItem(text: { "3 Beds  " }, size: "STANDARD"),
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              shape: "ROUNDED",
                              padding: "NONE",
                              marginBelow: "STANDARD"
                            ),
                            a!cardLayout(
                              contents: {
                                a!billboardLayout(
                                  backgroundMedia: a!webImage(
                                    source: "https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzR8fGhvdXNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
                                  ),
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
                                              a!richTextItem(text: { "$2,092,000" }, size: "MEDIUM_PLUS")
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "calendar"), " 33d" },
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
                                        a!richTextItem(text: { "5 Beds  " }, size: "STANDARD"),
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              shape: "ROUNDED",
                              padding: "NONE",
                              marginBelow: "STANDARD"
                            )
                          },
                          cardWidth: "NARROW_PLUS"
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
              stackWhen: { "NEVER" },
              showDividers: true
            )
          }
        )
      },
      spacing: "NONE",
      stackWhen: { "NEVER" }
    )
  },
  backgroundColor: "TRANSPARENT",
  showWhen: true,
  contentsPadding: "NONE"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.