---
source_url: https://docs.appian.com/suite/help/25.3/sail/employee-home-pages.html
original_path: sail/employee-home-pages.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Employee Home Pages \[SAIL Design System: Patterns\]

-   Introduction
    -   [How to Use Patterns](/suite/help/25.3/sail/introduction.html)
-   Information Architecture
    -   [Page Titles](/suite/help/25.3/sail/page-titles.html)
    -   [Content Structure](/suite/help/25.3/sail/content-structure.html)
    -   [Page Headers](/suite/help/25.3/sail/page-headers.html)
    -   [Secondary Navigation](/suite/help/25.3/sail/secondary-navigation.html)
-   Page Types
    -   [Employee Home Pages](#)
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

# Employee Home Pages

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Design personalized employee home pages to show the most important content and actions for users.

* * *

## What is an employee home page?

Employee home pages provide users who frequently use an app with a tailored summary of tasks, actions, and relevant information. These pages are designed with content selected for a target audience and are typically the first page a user views on a site.

This pattern for an employee home page displays primary tasks, a calendar, common actions, and relevant conversations.

![Example of an employee home page for an insurance agent.](ds-images/ins_agent_home_page.png)

When deciding how to design an employee home page, keep the following questions and considerations in mind:

-   **Content curation**: What different user personas will view the page? What information do they need and which actions will they take?
-   **Information quantity**: How much information is valuable to the user? What should be prioritized?

Ultimately, you'll want to tailor the page content to the needs of your target users.

## Choosing the right type of header

You'll want to use different headers depending on the focus of your employee home page. For this page, a key performance indicator header is used because it's important for users to actively monitor business performance.

![](ds-images/image8.png)

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
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundMedia: a!webImage(
        source: "https://images.unsplash.com/photo-1574950333594-f3e9a9446d0f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80"
      ),
      height: "EXTRA_SHORT",
      marginBelow: "NONE"
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
                                    text: { " 17" },
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
      padding: "STANDARD",
      marginBelow: "NONE"
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Alerts",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        char(10),
                        char(10),
                        char(10),
                        char(10),
                        a!richTextIcon(
                          icon: "bell-slash-o",
                          color: "#d9d9d9",
                          size: "EXTRA_LARGE"
                        ),
                        char(10),
                        a!richTextItem(
                          text: { "No Alerts" },
                          color: "SECONDARY",
                          size: "MEDIUM"
                        )
                      },
                      align: "CENTER"
                    )
                  },
                  height: "MEDIUM_PLUS",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            ),
            a!sectionLayout(
              label: "My Tasks",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
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
                                      "Complete performance review for Pete Moody"
                                    },
                                    style: { "STRONG" }
                                  )
                                },
                                preventWrapping: true
                              )
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "hand-o-right",
                                    color: "SECONDARY",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(text: { " Me" }, size: "SMALL")
                                },
                                preventWrapping: true
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Yesterday 12:05 PM" },
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
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
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
                                      "Review conference presentation template branding updates"
                                    },
                                    style: { "STRONG" }
                                  )
                                },
                                preventWrapping: true
                              )
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "hand-o-right",
                                    color: "SECONDARY",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(text: { " Me, " }, size: "SMALL"),
                                  a!richTextItem(
                                    text: { "Darryl Gill" },
                                    color: "ACCENT",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(text: { ", " }, size: "SMALL"),
                                  a!richTextItem(
                                    text: { "Erin Pope" },
                                    color: "ACCENT",
                                    size: "SMALL"
                                  )
                                },
                                preventWrapping: true
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Monday 9:27 AM" },
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
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
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
                                    text: { "Update Q3 performance targets" },
                                    style: { "STRONG" }
                                  )
                                },
                                preventWrapping: true
                              )
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "hand-o-right",
                                    color: "SECONDARY",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(
                                    text: { " Department Leadership" },
                                    size: "SMALL"
                                  )
                                },
                                preventWrapping: true
                              )
                            ),
                            a!sideBySideItem(
                              item: a!tagField(
                                labelPosition: "COLLAPSED",
                                tags: {
                                  a!tagItem(
                                    text: "OVERDUE",
                                    backgroundColor: "NEGATIVE"
                                  )
                                },
                                size: "SMALL"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Feb 23" },
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
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
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
                                    text: { "2022 Team Assignments" },
                                    style: { "STRONG" }
                                  )
                                },
                                preventWrapping: true
                              )
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "hand-o-right",
                                    color: "SECONDARY",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(text: { " Me, " }, size: "SMALL"),
                                  a!richTextItem(
                                    text: { "Kari Becker" },
                                    color: "ACCENT",
                                    size: "SMALL"
                                  )
                                },
                                preventWrapping: true
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Feb 22" },
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
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
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
                                      "Nominate top performer award recipients"
                                    },
                                    style: { "STRONG" }
                                  )
                                },
                                preventWrapping: true
                              )
                            )
                          },
                          marginBelow: "NONE"
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "hand-o-right",
                                    color: "SECONDARY",
                                    size: "SMALL"
                                  ),
                                  a!richTextItem(
                                    text: { " Managers, Vice Presidents" },
                                    size: "SMALL"
                                  )
                                },
                                preventWrapping: true
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Feb 21" },
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
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    ),
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "See All Tasks ",
                                a!richTextIcon(icon: "chevron-right")
                              },
                              color: "ACCENT",
                              style: { "STRONG" }
                            )
                          },
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Active Campaigns",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!gridField(
                      label: "Campaigns List",
                      labelPosition: "COLLAPSED",
                      height: "AUTO"
                    )
                  }
                )
              },

            )
          },
          width: "AUTO"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Actions",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!buttonArrayLayout(
                      buttons: {
                        a!buttonWidget(
                          label: "Enroll New Donor",
                          icon: "user-plus",
                          width: "FILL",
                          style: "OUTLINE",
                          color: "SECONDARY"
                        ),
                        a!buttonWidget(
                          label: "Launch Quarterly Audit",
                          icon: "search",
                          width: "FILL",
                          style: "OUTLINE",
                          color: "SECONDARY"
                        ),
                        a!buttonWidget(
                          label: "New Campaign Category",
                          icon: "plus-circle",
                          width: "FILL",
                          style: "OUTLINE",
                          color: "SECONDARY"
                        )
                      },
                      align: "START",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            ),
            a!sectionLayout(
              label: "Resources",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                icon: "download",
                                backgroundColor: "#d7e5f3",
                                contentColor: "#3d85c6",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Campaign Manager Playbook" },
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
                      height: "AUTO",
                      style: "NONE",
                      padding: "",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                icon: "link",
                                backgroundColor: "#d7f3e0",
                                contentColor: "#459b20",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Google Ads Dashboard" },
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                icon: "link",
                                backgroundColor: "#d7f3e0",
                                contentColor: "#459b20",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Microsoft Ads Dashboard" },
                                    style: { "STRONG" }
                                  )
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                icon: "download",
                                backgroundColor: "#d7e5f3",
                                contentColor: "#3d85c6",
                                size: "TINY"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "New Hire Onboarding Guide" },
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
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false,
                      showShadow: true
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            ),
            a!sectionLayout(
              label: "My Goals",
              labelSize: "MEDIUM",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "CALLS PLACED" }, color: "STANDARD")
                              },
                              align: "CENTER"
                            ),
                            a!gaugeField(
                              labelPosition: "COLLAPSED",
                              percentage: 68.0,
                              primaryText: a!gaugeIcon(icon: "phone"),
                              color: "#45818e",
                              size: "SMALL",
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                "68% ",
                                a!richTextItem(text: { "of goal" }, color: "SECONDARY")
                              },
                              align: "CENTER"
                            )
                          }
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "NEW DONORS" }, color: "STANDARD")
                              },
                              align: "CENTER"
                            ),
                            a!gaugeField(
                              labelPosition: "COLLAPSED",
                              percentage: 100.0,
                              primaryText: a!gaugeIcon(icon: "user"),
                              color: "#a64d79",
                              size: "SMALL",
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: { "104%" },
                                  color: "POSITIVE",
                                  style: { "STRONG" }
                                ),
                                " ",
                                a!richTextItem(text: { "of goal" }, color: "SECONDARY")
                              },
                              align: "CENTER"
                            )
                          }
                        )
                      }
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "MORE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          },
          width: "MEDIUM"
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
  backgroundColor: "TRANSPARENT"
)
```

Refer to [Page Headers](page-headers.html) for more examples of possible header types.

## Displaying the appropriate content

Use different components and page layouts based on the type of information most relevant to your users.

### Highlights list

A highlights list is a concise summary of the most relevant items in a category, such as latest alerts and expiring deadlines. In this example, a highlights list is used to display relevant user tasks.

To use a highlight list effectively:

-   Show a limited number of items sorted and filtered by relevance to the user. Typically this number is between 5 and 10 at most.
-   Avoid showing paging controls. Provide a link to navigate to the full list of items on a separate page. Home pages serve as jumping off points to others parts of a site.
-   Only display critical pieces of information for each item. To access other pieces of data associated with an item, users should click on a link to navigate to the corresponding item on a separate page.

![Example of an employee home page for a company organizing donation campaigns, with emphasis on a highlights list used to display user tasks.](ds-images/image53.png)

### Record actions

The easiest way to present actions to users is with the record action component.

In this example, the "call to action" style action button is shown on the page header. The "sidebar" style is used to show a set of buttons in the "Actions" card.

![Example of an employee home page for a company organizing donation campaigns, with emphasis on a call-to-action button and a card displaying common user actions.](ds-images/image43.png)

## Focusing attention on the main information

You'll often want to center the main, most important information on a page.

This pattern uses a two-column layout with side navigation. The class schedule, the main information on the page, is sorted according to date and time and takes up the most visual space.

![](ds-images/image2.png)

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
1612
1613
1614
1615
1616
1617
1618
1619
1620
1621
1622
1623
1624
1625
1626
1627
1628
1629
1630
1631
1632
1633
1634
1635
1636
1637
1638
1639
1640
1641
1642
1643
1644
1645
1646
1647
1648
1649
1650
1651
1652
1653
1654
1655
1656
1657
1658
1659
1660
1661
1662
1663
1664
1665
1666
1667
1668
1669
1670
1671
1672
1673
1674
1675
1676
1677
1678
1679
1680
1681
1682
1683
1684
1685
1686
1687
1688
1689
1690
1691
1692
1693
1694
1695
1696
1697
1698
1699
1700
1701
1702
1703
1704
1705
1706
1707
1708
1709
1710
1711
1712
1713
1714
1715
1716
1717
1718
1719
1720
1721
1722
1723
1724
1725
1726
1727
1728
1729
1730
1731
1732
1733
1734
1735
1736
1737
1738
1739
1740
1741
1742
1743
1744
1745
1746
1747
1748
1749
1750
1751
1752
1753
1754
1755
1756
1757
1758
1759
1760
1761
1762
1763
1764
1765
1766
1767
1768
1769
1770
1771
1772
1773
1774
1775
1776
1777
1778
1779
1780
1781
1782
1783
1784
1785
1786
1787
1788
1789
1790
1791
1792
1793
1794
1795
1796
1797
1798
1799
1800
1801
1802
1803
1804
1805
1806
1807
1808
1809
1810
1811
1812
1813
1814
1815
1816
1817
1818
1819
1820
1821
1822
1823
1824
1825
1826
1827
1828
1829
1830
1831
a!headerContentLayout(
  header: {},
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
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
                            label: "Profile Photo",
                            labelPosition: "COLLAPSED",
                            images: {
                              a!userImage(
                                user: fn!loggedInUser()
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
                                  "Karen Anderson"
                                },
                                size: "MEDIUM",
                                style: {
                                  "STRONG"
                                }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  "***-**-1234"
                                },
                                size: "STANDARD"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE"
                    )
                  },
                  divider: "BELOW",
                  marginAbove: "STANDARD"
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
                              a!richTextIcon(
                                icon: "home",
                                color: "ACCENT",
                                size: "STANDARD"
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
                                  "Home"
                                },
                                color: "ACCENT",
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
                  padding: "NONE",
                  marginAbove: "LESS",
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
                                color: "#ffffff",
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
                              a!richTextIcon(
                                icon: "chalkboard-teacher",
                                color: "#444",
                                size: "STANDARD"
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
                                  "Classes"
                                },
                                color: "#444",
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
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextIcon(
                                icon: "hand-holding-heart",
                                color: "#444",
                                size: "STANDARD"
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
                                  "Health & Safety"
                                },
                                color: "#444",
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
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextIcon(
                                icon: "building-o",
                                color: "#444",
                                size: "STANDARD"
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
                                  "Housing & Residence Life"
                                },
                                color: "#444",
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
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextIcon(
                                icon: "university",
                                color: "#444",
                                size: "STANDARD"
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
                                  "Tuition & Financial Aid"
                                },
                                color: "#444",
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
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextIcon(
                                icon: "handshake-o",
                                color: "#444",
                                size: "STANDARD"
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
                                  "Career Services"
                                },
                                color: "#444",
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
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!sectionLayout(
                  label: "",
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "QUICK ACCESS"
                              },
                              color: "SECONDARY"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Student Clinic Appointments",
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Maintenance Request",
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "University Course Catalog",
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Student Events Calendar",
                              uri: "www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  divider: "ABOVE",
                  marginAbove: "EVEN_MORE"
                ),
                a!cardLayout(
                  contents: {},
                  height: "EXTRA_TALL",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {},
                  height: "EXTRA_TALL",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false
                )

              },
              height: "AUTO",
              style: "NONE",
              padding: "LESS",
              marginBelow: "NONE",
              showBorder: false,
              showShadow: true
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
                                              " Thompson 404"
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
                                              " Flores A201"
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
                                              " Orborne Hall"
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
                                              " Phillips 329"
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
                                              " Orborne Hall"
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
                                              " Thompson 404"
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
                                              " Flores A201"
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
                                              " Orborne Hall"
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
                                              " Phillips 329"
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
                                              " Orborne Hall"
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
                                        a!documentImage(
                                          document: cons!READING_ILLUSTRATION
                                        )
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
          }
        )
      }
    )
  },
  backgroundColor: "#f3f0f6",
  contentsPadding: "NONE"
)
```

## Balancing information quantity

The amount of information included on a page should be determined by the requirements for the use case. Before adding more information to a page, make sure it will significantly benefit users. While some users legitimately benefit from seeing very dense employee home pages, think about whether a more focused design would be best for your audience.

### High information density

For cases in which a user requires a high-volume of content, consider a three-column layout. This pattern's three columns are as follows:

-   **Column 1**: Quick Actions and Recent Activity
-   **Column 2**: My Cases and My Tasks
-   **Column 3**: Expected to Meet Deadline KPIs and Due Dates

To help balance the high information density, we have used diverse styles for the content such as cards, grids, charts, and a calendar. When using a three-column layout, consider responsiveness and the space needed for each section on a page.

In this example, the left and right columns have a fixed width while the middle column has a variable width. This works well with the "My Tasks" grid because the grid can stretch and shrink to fill the space as the device width varies. "My Tasks" is also in the center because it's high priority and the main focus of the page.

![Example of an employee home page for a case management company.](ds-images/worker-home-page-three-column.png)

### Low information density

In this pattern, the relevant high-priority actions are called out at the top of the page. Other timely items and key metrics are below, since they are the next level of priority for a user to see. This is less information dense and easier to digest.

![Example of an employee home page for a brokerage firm.](ds-images/employee-home-page-low-density.png)

## Best practices for employee home pages

### Don't overcrowd the page

Employee home pages with larger text, more white space, and fewer elements tend to look more approachable and modern. Before adding more content to a page, make sure that the added visual load is worthwhile and will provide significant benefit to end users.

### Preserve layout consistency when data changes

Avoid designs that lead to jarring changes in page layout when available data changes. For example, a card whose height fluctuates dramatically depending on the number of items shown.

To preserve layout consistency:

-   Set an upper limit on the number of items shown in each section.
-   Set a fixed, minimum height on cards when they aren't showing the typical number of items.
-   When there are no items available, don't just display an empty list. Instead, show an empty-list message and maintain an appropriate minimum height to keep the page layout balanced.

![Example of an employee home page for a company organizing donation campaigns, with emphasis on a card displaying alerts.](ds-images/image77.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.