---
source_url: https://docs.appian.com/suite/help/25.3/sail/ins-quote-review.html
original_path: sail/ins-quote-review.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Insurance Quote Review \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Insurance Quote Review

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

![Preview of a desktop SAIL layout for a(n) insurance quote review](ds-images/insurance_quote_returning_portal.png)

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
            a!columnLayout(
              contents: {
                a!imageField(
                  label: "",
                  labelPosition: "COLLAPSED",
                  /* This is a placeholder image; replace as needed */
                  images: {
                    a!documentImage(
                      document: a!EXAMPLE_DOCUMENT_IMAGE(),
                      altText: "Insurecorp Logo"
                    )
                  },
                  size: "MEDIUM",
                  isThumbnail: false,
                  style: "STANDARD"
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!imageField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          /* This is a placeholder image; replace as needed */
                          images: {
                            a!documentImage(
                              document: a!EXAMPLE_DOCUMENT_IMAGE(),
                              altText: "Illustration of automobile"
                            )
                          },
                          size: if(
                            a!isPageWidth({ "PHONE" }),
                            "MEDIUM",
                            "LARGE"
                          ),
                          isThumbnail: false,
                          style: "STANDARD",
                          align: "START"
                        )
                      },
                      width: "MEDIUM",
                      showWhen: a!isPageWidth({ "PHONE", "TABLET_PORTRAIT" })
                    ),
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "Welcome back, Karen!" },
                              size: "LARGE",
                              style: { "STRONG" }
                            ),
                            char(10),
                            char(10),
                            a!richTextItem(
                              text: {
                                "Please review your personalized insurance quote."
                              },
                              color: "#ffe599",
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Purchase Now",
                                    size: "LARGE",
                                    style: "OUTLINE"
                                  )
                                },
                                align: "START",
                                marginAbove: "NONE",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(text: { "Or, " }, size: "MEDIUM"),
                                  a!richTextItem(
                                    text: { "start a new quote" },
                                    color: "#ffffff",
                                    size: "MEDIUM",
                                    style: { "UNDERLINE" }
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginAbove: "MORE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!imageField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          /* This is a placeholder image; replace as needed */
                          images: {
                            a!documentImage(
                              document: a!EXAMPLE_DOCUMENT_IMAGE(),
                              altText: "Illustration of automobile"
                            )
                          },
                          size: "FIT",
                          isThumbnail: false,
                          style: "STANDARD",
                          align: "END"
                        )
                      },
                      width: "MEDIUM",
                      showWhen: not(
                        a!isPageWidth({ "PHONE", "TABLET_PORTRAIT" })
                      )
                    )
                  },
                  alignVertical: "MIDDLE",
                  stackWhen: { "PHONE", "TABLET_PORTRAIT" }
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {})
          },
          marginBelow: "MORE",
          stackWhen: { "PHONE", "TABLET_PORTRAIT" }
        )
      },
      height: "AUTO",
      style: "#1155cc",
      marginBelow: "NONE",
      showBorder: false
    ),
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
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
                                  text: { "Your coverage details" },
                                  size: "LARGE"
                                )
                              },
                              marginBelow: "MORE"
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
                                              a!richTextItem(text: { "$113.50" }, style: { "STRONG" }),
                                              " "
                                            },
                                            size: "LARGE"
                                          ),
                                          a!richTextItem(text: { "/ Month" }, size: "MEDIUM")
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "– or –" }, size: "MEDIUM")
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
                                              a!richTextItem(text: { "$646.95" }, style: { "STRONG" }),
                                              " "
                                            },
                                            size: "LARGE"
                                          ),
                                          a!richTextItem(text: { "/ 6 Mos*" }, size: "MEDIUM")
                                        },
                                        align: if(
                                          a!isPageWidth({ "TABLET_LANDSCAPE", "PHONE" }),
                                          "LEFT",
                                          "RIGHT"
                                        )
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE",
                                  marginBelow: "NONE",
                                  stackWhen: { "TABLET_LANDSCAPE", "PHONE" }
                                ),
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "*With prepayment discount" },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  },
                                  align: if(
                                    a!isPageWidth({ "TABLET_LANDSCAPE", "PHONE" }),
                                    "LEFT",
                                    "RIGHT"
                                  ),
                                  marginAbove: "NONE"
                                )
                              },
                              height: "AUTO",
                              style: "NONE",
                              padding: "STANDARD",
                              marginBelow: "STANDARD",
                              showBorder: true,
                              showShadow: false,
                              decorativeBarPosition: "TOP",
                              decorativeBarColor: "ACCENT"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "Auto Insurance" }, size: "MEDIUM")
                              }
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
                                              a!richTextIcon(
                                                icon: "hand-holding-usd",
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
                                              a!richTextItem(text: { "3 discounts" }, size: "MEDIUM")
                                            }
                                          ),
                                          width: "AUTO"
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { "$42.90/mo" },
                                                color: "#38761d",
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
                                                text: {
                                                  a!richTextIcon(icon: "angle-right-bold")
                                                },
                                                color: "STANDARD",
                                                size: "MEDIUM",
                                                style: { "STRONG" }
                                              )
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "MIDDLE"
                                    )
                                  },
                                  marginBelow: "NONE"
                                )
                              },
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD"
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
                                              a!richTextIcon(icon: "car", size: "MEDIUM_PLUS")
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(text: { "2 vehicles" }, size: "MEDIUM")
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
                                                  a!richTextIcon(icon: "angle-right-bold")
                                                },
                                                color: "STANDARD",
                                                size: "MEDIUM",
                                                style: { "STRONG" }
                                              )
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "MIDDLE"
                                    )
                                  },
                                  marginBelow: "NONE"
                                )
                              },
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD"
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
                                              a!richTextIcon(icon: "user-friends", size: "MEDIUM_PLUS")
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(text: { "2 drivers" }, size: "MEDIUM")
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
                                                  a!richTextIcon(icon: "angle-right-bold")
                                                },
                                                color: "STANDARD",
                                                size: "MEDIUM",
                                                style: { "STRONG" }
                                              )
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "MIDDLE"
                                    )
                                  },
                                  marginBelow: "NONE"
                                )
                              },
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD"
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
                                              a!richTextIcon(icon: "umbrella", size: "MEDIUM_PLUS")
                                            }
                                          ),
                                          width: "MINIMIZE"
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(text: { "Coverage" }, size: "MEDIUM")
                                            }
                                          ),
                                          width: "AUTO"
                                        ),
                                        a!sideBySideItem(
                                          item: a!richTextDisplayField(
                                            labelPosition: "COLLAPSED",
                                            value: {
                                              a!richTextItem(
                                                text: { a!richTextIcon(icon: "angle-down-bold") },
                                                color: "STANDARD",
                                                size: "MEDIUM",
                                                style: { "STRONG" }
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
                              link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "NONE",
                              showShadow: false
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
                                                text: { "Bodily Injury Liability" },
                                                style: { "STRONG" }
                                              ),
                                              char(10),
                                              "$50,000/person",
                                              char(10),
                                              "$100,000/accident"
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!buttonArrayLayout(
                                            buttons: {
                                              a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                            },
                                            align: "START",
                                            marginBelow: "NONE"
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "TOP"
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
                                              a!richTextItem(
                                                text: {
                                                  "Uninsured/Underinsured Motorist Bodily Injury Liability"
                                                },
                                                style: { "STRONG" }
                                              ),
                                              char(10),
                                              "$50,000/person",
                                              char(10),
                                              "$100,000/accident"
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!buttonArrayLayout(
                                            buttons: {
                                              a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                            },
                                            align: "START",
                                            marginBelow: "NONE"
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "TOP"
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
                                              a!richTextItem(
                                                text: { "Property Damage Liability" },
                                                style: { "STRONG" }
                                              ),
                                              char(10),
                                              "$75,000/accident"
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!buttonArrayLayout(
                                            buttons: {
                                              a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                            },
                                            align: "START",
                                            marginBelow: "NONE"
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "TOP"
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
                                              a!richTextItem(
                                                text: { "Medical Payments" },
                                                style: { "STRONG" }
                                              ),
                                              char(10),
                                              "$25,000/person",
                                              char(10),
                                              "$50,000/accident"
                                            }
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!buttonArrayLayout(
                                            buttons: {
                                              a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                            },
                                            align: "START",
                                            marginBelow: "NONE"
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "TOP"
                                    )
                                  },
                                  divider: "NONE"
                                )
                              },
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          shape: "SEMI_ROUNDED",
                          padding: "STANDARD",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "Your discounts" }, size: "LARGE")
                              },
                              marginBelow: "MORE"
                            ),
                            a!cardLayout(
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!stampField(
                                        labelPosition: "COLLAPSED",
                                        icon: "car",
                                        backgroundColor: "#674ea7",
                                        contentColor: "STANDARD",
                                        size: "TINY"
                                      ),
                                      width: "MINIMIZE"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "$180.90 " }, size: "MEDIUM_PLUS"),
                                          a!richTextItem(text: { "/ Year" }, size: "MEDIUM"),
                                          char(10),
                                          a!richTextItem(
                                            text: { "Multi-Vehicle Discount" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD",
                              decorativeBarPosition: "TOP",
                              decorativeBarColor: "#674ea7"
                            ),
                            a!cardLayout(
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!stampField(
                                        labelPosition: "COLLAPSED",
                                        icon: "user-friends",
                                        backgroundColor: "#e69138",
                                        contentColor: "#ffffff",
                                        size: "TINY"
                                      ),
                                      width: "MINIMIZE"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "$143.25 " }, size: "MEDIUM_PLUS"),
                                          a!richTextItem(text: { "/ Year" }, size: "MEDIUM"),
                                          char(10),
                                          a!richTextItem(
                                            text: { "Multi-Driver Discount" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD",
                              decorativeBarPosition: "TOP",
                              decorativeBarColor: "#e69138"
                            ),
                            a!cardLayout(
                              contents: {
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!stampField(
                                        labelPosition: "COLLAPSED",
                                        icon: "thumbs-up",
                                        backgroundColor: "#6aa84f",
                                        contentColor: "#ffffff",
                                        size: "TINY"
                                      ),
                                      width: "MINIMIZE"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(text: { "$211.60 " }, size: "MEDIUM_PLUS"),
                                          a!richTextItem(text: { "/ Year" }, size: "MEDIUM"),
                                          char(10),
                                          a!richTextItem(
                                            text: { "Safe Driving Discount" },
                                            size: "MEDIUM"
                                          )
                                        }
                                      )
                                    )
                                  },
                                  alignVertical: "MIDDLE"
                                )
                              },
                              height: "AUTO",
                              style: "NONE",
                              marginBelow: "STANDARD",
                              decorativeBarPosition: "TOP",
                              decorativeBarColor: "#6aa84f"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          shape: "SEMI_ROUNDED",
                          padding: "STANDARD",
                          marginBelow: "MORE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "Your savings" }, size: "LARGE")
                              },
                              marginBelow: "MORE"
                            ),
                            a!gaugeField(
                              labelPosition: "COLLAPSED",
                              percentage: 24.0,
                              primaryText: a!gaugePercentage()
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                "You can get our award-winning service while enjoying a premium that's ",
                                a!richTextItem(text: { "24% lower" }, style: { "STRONG" }),
                                " than the average for other drivers in your area."
                              },
                              marginBelow: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          shape: "SEMI_ROUNDED",
                          padding: "STANDARD",
                          marginBelow: "STANDARD",
                          showBorder: false
                        )
                      },
                      width: "MEDIUM"
                    )
                  },
                  stackWhen: { "PHONE", "TABLET_PORTRAIT" }
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {})
          },
          stackWhen: { "PHONE", "TABLET_PORTRAIT" }
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
            a!columnLayout(contents: {})
          },
          marginAbove: "EVEN_MORE",
          marginBelow: "EVEN_MORE",
          stackWhen: {
            "PHONE",
            "TABLET_PORTRAIT",
            "TABLET_LANDSCAPE",
            "DESKTOP_NARROW"
          }
        )
      },
      height: "AUTO",
      style: "#1155cc",
      marginBelow: "NONE",
      showBorder: false
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
                  /* This is a placeholder image; replace as needed */
                  images: {
                    a!documentImage(document: a!EXAMPLE_DOCUMENT_IMAGE())
                  },
                  size: "MEDIUM",
                  isThumbnail: false,
                  style: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote.",
                    char(10),
                    char(10),
                    "Some discounts, coverages, payment plans, and features are not available in all states.",
                    char(10),
                    char(10),
                    "This site exists for demonstration purposes only. We can't actually sell you auto insurance."
                  }
                )
              }
            )
          },
          stackWhen: { "PHONE", "TABLET_PORTRAIT" }
        )
      },
      height: "AUTO",
      style: "#333",
      padding: "EVEN_MORE",
      marginBelow: "STANDARD",
      showBorder: false,
      decorativeBarPosition: "NONE",
      decorativeBarColor: "#056CF2"
    )
  },
  contents: {},
  backgroundColor: "#333"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.