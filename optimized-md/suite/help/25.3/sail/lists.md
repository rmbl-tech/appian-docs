---
source_url: https://docs.appian.com/suite/help/25.3/sail/lists.html
original_path: sail/lists.html
version: "25.3"
title: "Lists"
page_id: "sail/lists"
section: "Photo gallery card record list"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Lists \[SAIL Design System: Patterns\]

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
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](#)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Lists

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Choose the right style of list to show different types of data.

* * *

## Photo gallery card record list

Use this pattern to list records that are associated with an identifying photo.

![](ds-images/image32.png)

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

## Full page empty state message

Use this pattern to announce the absence of items in a list. This UI design is more appealing than a blank page or empty grid and provides an opportunity suggest next steps to the user.

![](ds-images/image96.png)

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
                        a!cardLayout(
                          contents: {},
                          height: "SHORT_PLUS",
                          style: "#f0f0f0",
                          marginBelow: "STANDARD",
                          showBorder: false
                        ),
                        a!imageField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          images: {
                            a!documentImage(
                              document: cons!EMPTY_BOX
                            )
                          },
                          size: "MEDIUM",
                          isThumbnail: false,
                          style: "STANDARD",
                          align: "CENTER"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "You don't have any active listings"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Now's a good time to add one!"
                              },
                              color: "#6a6a6a",
                              size: "STANDARD"
                            )
                          },
                          align: "CENTER"
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

## Message inbox

Displays a list of messages in one column. Selecting a message shows its details in the adjacent column.

This pattern can be adapted to show other types of list-detail contents.

![](ds-images/image67.png)

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
a!localVariables(
  local!messages: {
    a!map(from: "Marie Richards",  stampColor: "#990000", to: "me",                             subject: "Request for additional information",   time: "11:29 AM",  isRead: true),
    a!map(from: "Brandon Pittman", stampColor: "#3d85c6", to: "me, Rita Ramos, and Jorge Pena", subject: "Upcoming facility audit",              time: "10:52 AM",  isRead: true),
    a!map(from: "Clay Nelson",     stampColor: "#38761d", to: "me and Alice Dixon",             subject: "Complete onboarding for new supplier", time: "Yesterday", isRead: false),
    a!map(from: "Darnell Warner",  stampColor: "#351c75", to: "me",                             subject: "Upcoming facility audit",              time: "Yesterday", isRead: false),
    a!map(from: "Marie Richards",  stampColor: "#990000", to: "me",                             subject: "Request for additional information",   time: "Jul 1",     isRead: true),
    a!map(from: "Brandon Pittman", stampColor: "#3d85c6", to: "me, Rita Ramos, and Jorge Pena", subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Clay Nelson",     stampColor: "#38761d", to: "me and Alice Dixon",             subject: "Complete onboarding for new supplier", time: "Jul 1",     isRead: true),
    a!map(from: "Darnell Warner",  stampColor: "#351c75", to: "me",                             subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Marie Richards",  stampColor: "#990000", to: "me",                             subject: "Request for additional information",   time: "Jul 1",     isRead: true),
    a!map(from: "Brandon Pittman", stampColor: "#3d85c6", to: "me, Rita Ramos, and Jorge Pena", subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Clay Nelson",     stampColor: "#38761d", to: "me and Alice Dixon",             subject: "Complete onboarding for new supplier", time: "Jul 1",     isRead: true),
    a!map(from: "Darnell Warner",  stampColor: "#351c75", to: "me",                             subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Marie Richards",  stampColor: "#990000", to: "me",                             subject: "Request for additional information",   time: "Jul 1",     isRead: true),
    a!map(from: "Brandon Pittman", stampColor: "#3d85c6", to: "me, Rita Ramos, and Jorge Pena", subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Clay Nelson",     stampColor: "#38761d", to: "me and Alice Dixon",             subject: "Complete onboarding for new supplier", time: "Jul 1",     isRead: true),
    a!map(from: "Darnell Warner",  stampColor: "#351c75", to: "me",                             subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Marie Richards",  stampColor: "#990000", to: "me",                             subject: "Request for additional information",   time: "Jul 1",     isRead: true),
    a!map(from: "Brandon Pittman", stampColor: "#3d85c6", to: "me, Rita Ramos, and Jorge Pena", subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true),
    a!map(from: "Clay Nelson",     stampColor: "#38761d", to: "me and Alice Dixon",             subject: "Complete onboarding for new supplier", time: "Jul 1",     isRead: true),
    a!map(from: "Darnell Warner",  stampColor: "#351c75", to: "me",                             subject: "Upcoming facility audit",              time: "Jul 1",     isRead: true)
  },
  local!sideNavPages: {
    a!map(icon: "envelope",             name: "Messages" & " (" & length(where(not(local!messages.isRead))) & ")"),
    a!map(icon: "user-tag",             name: "My Cases"),
    a!map(icon: "exclamation-triangle", name: "Overdue Cases"),
    a!map(icon: "tasks",                name: "All Cases"),
    a!map(icon: "files-solid",          name: "Knowledge Base"),
    a!map(icon: "search",               name: "Advanced Search")
  },
  local!selectedPage: 1,
  local!selectedMessageIndex: 2,
  local!showMessage: true,
  if(not(a!isPageWidth({"TABLET_PORTRAIT", "PHONE"})),
  /* Pane layout for non-mobile interfaces */
  a!paneLayout(
    panes: {
      /* Side navigation column for other device widths */
      a!pane(
        contents: {
          a!cardLayout(
            contents: {
              a!forEach(
                items: local!sideNavPages,
                expression: a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: char(448),
                                color: if(
                                  local!selectedPage = fv!index,
                                  "STANDARD",
                                  "#3B464E"
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
                                text: fv!item.name,
                                size: "MEDIUM",
                                style: if(
                                  local!selectedPage = fv!index,
                                  "STRONG",
                                  "PLAIN"
                                )
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "DENSE"
                    )
                  },
                  /* Link to update selected page */
                  link: a!dynamicLink(),
                  style: "#3B464E",
                  padding: "NONE",
                  showBorder: false,
                  accessibilityText: if(
                    local!selectedPage = fv!index,
                    "Selected tab.",
                    "Unselected tab. Press enter to select tab."
                  )
                )
              )
            },
            style: "#3B464E",
            showBorder: false
          )
        },
        width: "NARROW",
        backgroundColor: "#3B464E",
        padding: "EVEN_LESS",
        showWhen: not(a!isPageWidth({"TABLET_PORTRAIT", "PHONE"}))
      ),
      /* Message list pane */
      a!pane(
        contents: {
          /* Page name on phone */
          a!cardLayout(
            contents: {
              a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: a!richTextItem(
                  text: index(
                    local!sideNavPages.name,
                    local!selectedPage,
                    {}
                  ),
                  size: "MEDIUM",
                  style: "STRONG"
                )
              )
            },
            showWhen: a!isPageWidth("PHONE"),
            showBorder: false
          ),
          /* Message cards */
          a!forEach(
            items: local!messages,
            expression: a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!stampField(
                        labelPosition: "COLLAPSED",
                        text: initials(fv!item.from),
                        backgroundColor: fv!item.stampColor,
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
                            text: fv!item.from,
                            style: if(
                              fv!item.isRead,
                              "PLAIN",
                              "STRONG"
                            )
                          ),
                          " ",
                          a!richTextItem(
                            text: "to" & " " & fv!item.to,
                            color: "SECONDARY"
                          ),
                          char(10),
                          a!richTextItem(
                            text: fv!item.subject,
                            color: "STANDARD",
                            style: if(
                              fv!item.isRead,
                              "PLAIN",
                              "STRONG"
                            )
                          )
                        }
                      )
                    ),
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: fv!item.time,
                            color: if(
                              fv!item.isRead,
                              "SECONDARY",
                              "STANDARD"
                            ),
                            style: if(
                              fv!item.isRead,
                              "PLAIN",
                              "STRONG"
                            )
                          )
                        }
                      ),
                      width: "MINIMIZE"
                    )
                  },
                  alignVertical: "MIDDLE"
                )
              },
              /* Link to update selected message and mark message as read */
              link: a!dynamicLink(
                saveInto: {
                  if(
                    a!isPageWidth("PHONE"),
                    a!save(local!showMessage, true),
                    {}
                  )
                }
              ),
              style: if(
                and(
                  not(a!isPageWidth("PHONE")),
                  local!selectedMessageIndex = fv!index
                ),
                "NONE",
                "#f0f0f0"
              ),
              padding: if(
                not(a!isPageWidth("TABLET_LANDSCAPE")),
                "STANDARD",
                "LESS"
              ),
              showBorder: false
            )
          )
        },
        width: if(
          a!isPageWidth({"DESKTOP_NARROW", "TABLET_LANDSCAPE", "TABLET_PORTRAIT"}),
          "NARROW_PLUS",
          "MEDIUM_PLUS"
        ),
        backgroundColor: "#f0f0f0",
        padding: "EVEN_LESS",
        showWhen: if(
          a!isPageWidth("PHONE"),
          not(local!showMessage),
          true
        )
      ),
      /* Selected message pane */
      a!pane(
        contents: {
          a!cardLayout(
            contents: {
              /* Back button to messages list on phone */
              a!sectionLayout(
                contents: {
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: a!richTextItem(
                      text: {
                        a!richTextIcon(
                          icon: "chevron-left",
                          altText: "Back arrow"
                        ),
                        " ",
                        "All messages"
                      },
                      link: a!dynamicLink(value: false, saveInto: local!showMessage),
                      linkStyle: "STANDALONE"
                    )
                  )
                },
                showWhen: a!isPageWidth("PHONE"),
                divider: "BELOW"
              ),
              a!localVariables(
                local!selectedMessage: index(
                  local!messages,
                  local!selectedMessageIndex,
                  {}
                ),
                local!selectedMessageAttachments: {
                  a!map(id: 1, name: "Facility Fact Sheet.pdf", size: "178KB", type: "pdf")
                },
                local!numOfAttachments: length(local!selectedMessageAttachments),
                /* Number of columns for attachments */
                local!numOfCols: 2,
                {
                  /* Selected message header */
                  a!sectionLayout(
                    contents: {
                      a!columnsLayout(
                        columns: {
                          a!columnLayout(
                            contents: {
                              a!stampField(
                                labelPosition: "COLLAPSED",
                                text: initials(local!selectedMessage.from),
                                backgroundColor: local!selectedMessage.stampColor,
                                contentColor: "STANDARD",
                                size: if(a!isPageWidth("PHONE"), "TINY", "SMALL")
                              )
                            },
                            width: "EXTRA_NARROW"
                          ),
                          a!columnLayout(
                            contents: {
                              a!sideBySideLayout(
                                items: {
                                  a!sideBySideItem(
                                    item: a!stampField(
                                      labelPosition: "COLLAPSED",
                                      text: initials(local!selectedMessage.from),
                                      backgroundColor: local!selectedMessage.stampColor,
                                      contentColor: "STANDARD",
                                      size: if(
                                        a!isPageWidth({ "TABLET_PORTRAIT", "PHONE" }),
                                        "TINY",
                                        "SMALL"
                                      )
                                    ),
                                    width: "MINIMIZE",
                                    showWhen: false
                                  ),
                                  a!sideBySideItem(
                                    item: a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        local!selectedMessage.from,
                                        " ",
                                        a!richTextItem(text: "to me" & ", ", color: "SECONDARY"),
                                        a!richTextItem(text: "Rita Ramos", color: "ACCENT"),
                                        a!richTextItem(text: ", " & "and" & " ", color: "SECONDARY"),
                                        a!richTextItem(text: "Jorge Pena", color: "ACCENT")
                                      },
                                      preventWrapping: true
                                    )
                                  ),
                                  a!sideBySideItem(
                                    item: a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: local!selectedMessage.time,
                                          color: "SECONDARY",
                                          size: if(
                                            a!isPageWidth({ "TABLET_PORTRAIT", "PHONE" }),
                                            "SMALL",
                                            "STANDARD"
                                          )
                                        )
                                      },
                                      align: "RIGHT"
                                    ),
                                    width: "MINIMIZE"
                                  )
                                },
                                alignVertical: "MIDDLE",
                                marginBelow: "NONE"
                              ),
                              a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: a!richTextItem(
                                  text: local!selectedMessage.subject,
                                  size: if(
                                    a!isPageWidth({"TABLET_LANDSCAPE", "TABLET_PORTRAIT", "PHONE"}),
                                    "MEDIUM",
                                    "MEDIUM_PLUS"
                                  )
                                ),
                                preventWrapping: true
                              )
                            },
                            width: if(
                              a!isPageWidth("PHONE"),
                              "MEDIUM_PLUS",
                              "AUTO"
                            )
                          )
                        },
                        alignVertical: "MIDDLE",
                        stackWhen: "NEVER"
                      )
                    },
                    divider: "BELOW"
                  ),
                  /* Selected message text */
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras venenatis, nunc ut hendrerit imperdiet, ex tellus maximus magna, ac imperdiet ante est sed eros. Curabitur vitae placerat velit, eu aliquet est. Sed sed justo ac augue porta volutpat. Donec vitae euismod quam, vitae faucibus mauris. Duis venenatis, sem non mattis feugiat, quam libero malesuada augue, at mollis odio neque sed massa. Morbi elit eros, euismod sed justo sed, volutpat suscipit orci. Vestibulum tincidunt ex diam, nec sagittis nulla malesuada ac. Donec vitae libero scelerisque, blandit lorem eget, porttitor nisl. Phasellus sed rhoncus metus, et porttitor elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tortor diam, viverra sit amet massa vel, ornare tincidunt nibh. Vestibulum tristique vitae urna sed aliquam.",
                      char(10),
                      char(10),
                      "Quisque velit urna, varius quis tempor non, luctus sit amet massa. Nunc a quam sed lorem pretium ultrices. In varius, felis non viverra tincidunt, lorem augue ultricies purus, ac efficitur nunc ipsum at odio. Morbi imperdiet aliquam nibh, ut rhoncus nibh lacinia eget. Duis aliquam in arcu ac ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ut tincidunt nunc. Nunc eget fringilla lorem, et euismod tortor. Nunc in tincidunt eros. Vivamus pellentesque lectus ultricies tellus volutpat, vel mattis magna iaculis. Aliquam sollicitudin fermentum mi vitae tempor. In sagittis pharetra est, nec venenatis urna dignissim quis. Sed tempus felis urna, non pulvinar neque mollis non.",
                      char(10),
                      char(10),
                      "Morbi pellentesque dolor id nisl pretium, in imperdiet risus pretium. Curabitur maximus suscipit ornare. Etiam iaculis odio vitae sapien posuere, nec mattis sapien dignissim. Nam vestibulum justo nec tincidunt dignissim. Vestibulum aliquet nisl sed orci egestas, in placerat erat semper. Curabitur sed ex ex. Fusce feugiat nibh purus, ut faucibus neque dapibus sit amet. Vestibulum vitae arcu lacinia, ultricies lorem ac, finibus felis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec turpis lorem, dignissim id auctor non, pretium eget augue. In a luctus lacus. Pellentesque convallis porttitor metus id accumsan. Donec ut diam tempus, sagittis enim feugiat, vehicula erat. Vestibulum vitae ex a tortor hendrerit scelerisque in at leo. Vivamus lectus velit, sollicitudin sed lacinia ut, pretium sed magna. Sed vel felis mollis, luctus sem ac, facilisis velit."
                    }
                  ),
                  /* Selected message attachments */
                  a!sectionLayout(
                    contents: {
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: local!numOfAttachments & " " & if(local!numOfAttachments > 1, "Attachments", "Attachment")
                      ),
                      a!columnsLayout(
                        columns: a!forEach(
                          items: enumerate(local!numOfCols) + 1,
                          expression: a!localVariables(
                            local!colIndex: fv!index,
                            a!columnLayout(
                              contents: {
                                a!forEach(
                                  items: local!selectedMessageAttachments,
                                  expression: a!cardLayout(
                                    contents: {
                                      a!sideBySideLayout(
                                        items: {
                                          a!sideBySideItem(
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextIcon(
                                                  icon: "file-" & fv!item.type & "-o",
                                                  altText: fv!item.type,
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
                                                  style: "STRONG"
                                                ),
                                                char(10),
                                                a!richTextItem(text: fv!item.size, color: "SECONDARY")
                                              }
                                            )
                                          )
                                        },
                                        alignVertical: "MIDDLE"
                                      )
                                    },
                                    link: a!dynamicLink(),
                                    /* This logic assigns each card to the right column */
                                    showWhen: or(mod(fv!index, local!numOfCols) = local!colIndex, and(mod(fv!index, local!numOfCols) = 0, local!colIndex = local!numOfCols)),
                                    marginBelow: "LESS"
                                  )
                                )
                              },
                              width: "MEDIUM"
                            )
                          )
                        ),
                        marginAbove: "NONE",
                        marginBelow: "NONE",
                        spacing: "DENSE",
                        stackWhen: {"TABLET_LANDSCAPE", "TABLET_PORTRAIT", "PHONE"}
                      )
                    },
                    showWhen: local!numOfAttachments > 0,
                    divider: "ABOVE"
                  )
                }
              )
            },
            padding: "MORE",
            marginBelow: "STANDARD",
            showBorder: false
          )
        },
        padding: "EVEN_LESS",
        showWhen: if(
          a!isPageWidth("PHONE"),
          local!showMessage,
          true
        )
      )
    }
  ),
  /* Navigation optimized for mobile and small screens */
  a!headerContentLayout(
    header: {
      a!cardLayout(
        contents: {
          a!cardLayout(
            contents: {
              /* Top navigation for tablet portrait */
              a!columnsLayout(
                columns: {
                  a!forEach(
                    local!sideNavPages,
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              value: {
                                a!richTextItem(
                                  text: fv!item.name,
                                  color: "STANDARD",
                                  size: "SMALL",
                                  style: if(
                                    local!selectedPage = fv!index,
                                    "STRONG",
                                    "PLAIN"
                                  )
                                )
                              },
                              preventWrapping: true,
                              align: "CENTER"
                            )
                          },
                          /* Link to update selected page */
                          link: a!dynamicLink(),
                          style: "#3B464E",
                          padding: "LESS",
                          showBorder: false,
                          decorativeBarPosition: "BOTTOM",
                          decorativeBarColor: if(
                            local!selectedPage = fv!index,
                            "#ffffff",
                            "#3B464E"
                          ),
                          accessibilityText: if(
                            local!selectedPage = fv!index,
                            "Selected tab.",
                            "Unselected tab. Press enter to select tab."
                          )
                        )
                      },
                      width: "NARROW"
                    )
                  )
                },
                showWhen: a!isPageWidth("TABLET_PORTRAIT"),
                marginBelow: "NONE",
                spacing: "NONE"
              ),
              /* Top navigation for phone */
              a!columnsLayout(
                columns: {
                  a!forEach(
                    items: local!sideNavPages,
                    expression: a!columnLayout(
                      contents: {
                        a!stampField(
                          icon: fv!item.icon,
                          backgroundColor: if(
                            local!selectedPage = fv!index,
                            "#ffffff",
                            "#3B464E"
                          ),
                          contentColor: if(
                            local!selectedPage = fv!index,
                            "ACCENT",
                            "STANDARD"
                          ),
                          /* Link to update selected page */
                          link: a!dynamicLink(),
                          size: "SMALL",
                          align: "CENTER",
                          tooltip: fv!item.name,
                          marginBelow: "NONE",
                          accessibilityText: if(
                            local!selectedPage = fv!index,
                            "Selected tab.",
                            "Unselected tab. Press enter to select tab."
                          )
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: a!richTextItem(
                            text: fv!item.name,
                            size: "SMALL",
                            style: if(
                              local!selectedPage = fv!index,
                              "STRONG",
                              "PLAIN"
                            )
                          ),
                          showWhen: not(a!isPageWidth("PHONE")),
                          align: "CENTER"
                        )
                      }
                    )
                  )
                },
                showWhen: a!isPageWidth("PHONE"),
                spacing: if(a!isPageWidth("PHONE"), "NONE", "SPARSE"),
                stackWhen: "NEVER"
              )
            },
            showWhen: a!isPageWidth({"TABLET_PORTRAIT", "PHONE"}),
            style: "#3B464E",
            showBorder: false
          ),
          a!columnsLayout(
            columns: {
              /* Side navigation column for other device widths */
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    contents: {
                      a!forEach(
                        items: local!sideNavPages,
                        expression: a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: char(448),
                                        color: if(
                                          local!selectedPage = fv!index,
                                          "STANDARD",
                                          "#3B464E"
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
                                        text: fv!item.name,
                                        size: "MEDIUM",
                                        style: if(
                                          local!selectedPage = fv!index,
                                          "STRONG",
                                          "PLAIN"
                                        )
                                      )
                                    }
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          /* Link to update selected page */
                          link: a!dynamicLink(),
                          style: "#3B464E",
                          padding: "NONE",
                          showBorder: false,
                          accessibilityText: if(
                            local!selectedPage = fv!index,
                            "Selected tab.",
                            "Unselected tab. Press enter to select tab."
                          )
                        )
                      )
                    },
                    style: "#3B464E",
                    showBorder: false
                  ),
                  a!cardLayout(
                    height: "EXTRA_TALL",
                    showWhen: not(a!isPageWidth("PHONE")),
                    style: "#3B464E",
                    showBorder: false
                  ),
                  a!cardLayout(
                    height: "EXTRA_TALL",
                    showWhen: not(a!isPageWidth("PHONE")),
                    style: "#3B464E",
                    showBorder: false
                  ),
                  a!cardLayout(
                    height: "EXTRA_SHORT",
                    showWhen: not(a!isPageWidth("PHONE")),
                    style: "#3B464E",
                    showBorder: false
                  )
                },
                width: "NARROW",
                showWhen: not(a!isPageWidth({"TABLET_PORTRAIT", "PHONE"}))
              ),
              /* Message list column */
              a!columnLayout(
                contents: {
                  /* Page name on phone */
                  a!cardLayout(
                    contents: {
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: a!richTextItem(
                          text: index(
                            local!sideNavPages.name,
                            local!selectedPage,
                            {}
                          ),
                          size: "MEDIUM",
                          style: "STRONG"
                        )
                      )
                    },
                    showWhen: a!isPageWidth("PHONE"),
                    showBorder: false
                  ),
                  /* Message cards */
                  a!forEach(
                    items: local!messages,
                    expression: a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!stampField(
                                labelPosition: "COLLAPSED",
                                text: initials(fv!item.from),
                                backgroundColor: fv!item.stampColor,
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
                                    text: fv!item.from,
                                    style: if(
                                      fv!item.isRead,
                                      "PLAIN",
                                      "STRONG"
                                    )
                                  ),
                                  " ",
                                  a!richTextItem(
                                    text: "to" & " " & fv!item.to,
                                    color: "SECONDARY"
                                  ),
                                  char(10),
                                  a!richTextItem(
                                    text: fv!item.subject,
                                    color: "STANDARD",
                                    style: if(
                                      fv!item.isRead,
                                      "PLAIN",
                                      "STRONG"
                                    )
                                  )
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: fv!item.time,
                                    color: if(
                                      fv!item.isRead,
                                      "SECONDARY",
                                      "STANDARD"
                                    ),
                                    style: if(
                                      fv!item.isRead,
                                      "PLAIN",
                                      "STRONG"
                                    )
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      /* Link to update selected message and mark message as read */
                      link: a!dynamicLink(
                        saveInto: {
                          if(
                            a!isPageWidth("PHONE"),
                            a!save(local!showMessage, true),
                            {}
                          )
                        }
                      ),
                      style: if(
                        and(
                          not(a!isPageWidth("PHONE")),
                          local!selectedMessageIndex = fv!index
                        ),
                        "NONE",
                        "#f0f0f0"
                      ),
                      padding: if(
                        not(a!isPageWidth("TABLET_LANDSCAPE")),
                        "STANDARD",
                        "LESS"
                      ),
                      showBorder: false
                    )
                  )
                },
                width: if(
                  a!isPageWidth({"DESKTOP_NARROW", "TABLET_LANDSCAPE", "TABLET_PORTRAIT"}),
                  "NARROW_PLUS",
                  "MEDIUM_PLUS"
                ),
                showWhen: if(
                  a!isPageWidth("PHONE"),
                  not(local!showMessage),
                  true
                )
              ),
              /* Selected message column */
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    contents: {
                      /* Back button to messages list on phone */
                      a!sectionLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: a!richTextItem(
                              text: {
                                a!richTextIcon(
                                  icon: "chevron-left",
                                  altText: "Back arrow"
                                ),
                                " ",
                                "All messages"
                              },
                              link: a!dynamicLink(value: false, saveInto: local!showMessage),
                              linkStyle: "STANDALONE"
                            )
                          )
                        },
                        showWhen: a!isPageWidth("PHONE"),
                        divider: "BELOW"
                      ),
                      a!localVariables(
                        local!selectedMessage: index(
                          local!messages,
                          local!selectedMessageIndex,
                          {}
                        ),
                        local!selectedMessageAttachments: {
                          a!map(id: 1, name: "Facility Fact Sheet.pdf", size: "178KB", type: "pdf")
                        },
                        local!numOfAttachments: length(local!selectedMessageAttachments),
                        /* Number of columns for attachments */
                        local!numOfCols: 2,
                        {
                          /* Selected message header */
                          a!sectionLayout(
                            contents: {
                              a!columnsLayout(
                                columns: {
                                  a!columnLayout(
                                    contents: {
                                      a!stampField(
                                        labelPosition: "COLLAPSED",
                                        text: initials(local!selectedMessage.from),
                                        backgroundColor: local!selectedMessage.stampColor,
                                        contentColor: "STANDARD",
                                        size: if(a!isPageWidth("PHONE"), "TINY", "SMALL")
                                      )
                                    },
                                    width: "EXTRA_NARROW"
                                  ),
                                  a!columnLayout(
                                    contents: {
                                      a!sideBySideLayout(
                                        items: {
                                          a!sideBySideItem(
                                            item: a!stampField(
                                              labelPosition: "COLLAPSED",
                                              text: initials(local!selectedMessage.from),
                                              backgroundColor: local!selectedMessage.stampColor,
                                              contentColor: "STANDARD",
                                              size: if(
                                                a!isPageWidth({ "TABLET_PORTRAIT", "PHONE" }),
                                                "TINY",
                                                "SMALL"
                                              )
                                            ),
                                            width: "MINIMIZE",
                                            showWhen: false
                                          ),
                                          a!sideBySideItem(
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                local!selectedMessage.from,
                                                " ",
                                                a!richTextItem(text: "to me" & ", ", color: "SECONDARY"),
                                                a!richTextItem(text: "Rita Ramos", color: "ACCENT"),
                                                a!richTextItem(text: ", " & "and" & " ", color: "SECONDARY"),
                                                a!richTextItem(text: "Jorge Pena", color: "ACCENT")
                                              },
                                              preventWrapping: true
                                            )
                                          ),
                                          a!sideBySideItem(
                                            item: a!richTextDisplayField(
                                              labelPosition: "COLLAPSED",
                                              value: {
                                                a!richTextItem(
                                                  text: local!selectedMessage.time,
                                                  color: "SECONDARY",
                                                  size: if(
                                                    a!isPageWidth({ "TABLET_PORTRAIT", "PHONE" }),
                                                    "SMALL",
                                                    "STANDARD"
                                                  )
                                                )
                                              },
                                              align: "RIGHT"
                                            ),
                                            width: "MINIMIZE"
                                          )
                                        },
                                        alignVertical: "MIDDLE",
                                        marginBelow: "NONE"
                                      ),
                                      a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: a!richTextItem(
                                          text: local!selectedMessage.subject,
                                          size: if(
                                            a!isPageWidth({"TABLET_LANDSCAPE", "TABLET_PORTRAIT", "PHONE"}),
                                            "MEDIUM",
                                            "MEDIUM_PLUS"
                                          )
                                        ),
                                        preventWrapping: true
                                      )
                                    },
                                    width: if(
                                      a!isPageWidth("PHONE"),
                                      "MEDIUM_PLUS",
                                      "AUTO"
                                    )
                                  )
                                },
                                alignVertical: "MIDDLE",
                                stackWhen: "NEVER"
                              )
                            },
                            divider: "BELOW"
                          ),
                          /* Selected message text */
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras venenatis, nunc ut hendrerit imperdiet, ex tellus maximus magna, ac imperdiet ante est sed eros. Curabitur vitae placerat velit, eu aliquet est. Sed sed justo ac augue porta volutpat. Donec vitae euismod quam, vitae faucibus mauris. Duis venenatis, sem non mattis feugiat, quam libero malesuada augue, at mollis odio neque sed massa. Morbi elit eros, euismod sed justo sed, volutpat suscipit orci. Vestibulum tincidunt ex diam, nec sagittis nulla malesuada ac. Donec vitae libero scelerisque, blandit lorem eget, porttitor nisl. Phasellus sed rhoncus metus, et porttitor elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tortor diam, viverra sit amet massa vel, ornare tincidunt nibh. Vestibulum tristique vitae urna sed aliquam.",
                              char(10),
                              char(10),
                              "Quisque velit urna, varius quis tempor non, luctus sit amet massa. Nunc a quam sed lorem pretium ultrices. In varius, felis non viverra tincidunt, lorem augue ultricies purus, ac efficitur nunc ipsum at odio. Morbi imperdiet aliquam nibh, ut rhoncus nibh lacinia eget. Duis aliquam in arcu ac ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ut tincidunt nunc. Nunc eget fringilla lorem, et euismod tortor. Nunc in tincidunt eros. Vivamus pellentesque lectus ultricies tellus volutpat, vel mattis magna iaculis. Aliquam sollicitudin fermentum mi vitae tempor. In sagittis pharetra est, nec venenatis urna dignissim quis. Sed tempus felis urna, non pulvinar neque mollis non.",
                              char(10),
                              char(10),
                              "Morbi pellentesque dolor id nisl pretium, in imperdiet risus pretium. Curabitur maximus suscipit ornare. Etiam iaculis odio vitae sapien posuere, nec mattis sapien dignissim. Nam vestibulum justo nec tincidunt dignissim. Vestibulum aliquet nisl sed orci egestas, in placerat erat semper. Curabitur sed ex ex. Fusce feugiat nibh purus, ut faucibus neque dapibus sit amet. Vestibulum vitae arcu lacinia, ultricies lorem ac, finibus felis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec turpis lorem, dignissim id auctor non, pretium eget augue. In a luctus lacus. Pellentesque convallis porttitor metus id accumsan. Donec ut diam tempus, sagittis enim feugiat, vehicula erat. Vestibulum vitae ex a tortor hendrerit scelerisque in at leo. Vivamus lectus velit, sollicitudin sed lacinia ut, pretium sed magna. Sed vel felis mollis, luctus sem ac, facilisis velit."
                            }
                          ),
                          /* Selected message attachments */
                          a!sectionLayout(
                            contents: {
                              a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: local!numOfAttachments & " " & if(local!numOfAttachments > 1, "Attachments", "Attachment")
                              ),
                              a!columnsLayout(
                                columns: a!forEach(
                                  items: enumerate(local!numOfCols) + 1,
                                  expression: a!localVariables(
                                    local!colIndex: fv!index,
                                    a!columnLayout(
                                      contents: {
                                        a!forEach(
                                          items: local!selectedMessageAttachments,
                                          expression: a!cardLayout(
                                            contents: {
                                              a!sideBySideLayout(
                                                items: {
                                                  a!sideBySideItem(
                                                    item: a!richTextDisplayField(
                                                      labelPosition: "COLLAPSED",
                                                      value: {
                                                        a!richTextIcon(
                                                          icon: "file-" & fv!item.type & "-o",
                                                          altText: fv!item.type,
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
                                                          style: "STRONG"
                                                        ),
                                                        char(10),
                                                        a!richTextItem(text: fv!item.size, color: "SECONDARY")
                                                      }
                                                    )
                                                  )
                                                },
                                                alignVertical: "MIDDLE"
                                              )
                                            },
                                            link: a!dynamicLink(),
                                            /* This logic assigns each card to the right column */
                                            showWhen: or(mod(fv!index, local!numOfCols) = local!colIndex, and(mod(fv!index, local!numOfCols) = 0, local!colIndex = local!numOfCols)),
                                            marginBelow: "LESS"
                                          )
                                        )
                                      },
                                      width: "MEDIUM"
                                    )
                                  )
                                ),
                                marginAbove: "NONE",
                                marginBelow: "NONE",
                                spacing: "DENSE",
                                stackWhen: {"TABLET_LANDSCAPE", "TABLET_PORTRAIT", "PHONE"}
                              )
                            },
                            showWhen: local!numOfAttachments > 0,
                            divider: "ABOVE"
                          )
                        }
                      )
                    },
                    padding: "MORE",
                    marginBelow: "STANDARD",
                    showBorder: false
                  )
                },
                showWhen: if(
                  a!isPageWidth("PHONE"),
                  local!showMessage,
                  true
                )
              )
            },
            alignVertical: "TOP",
            spacing: "NONE",
            showDividers: not(a!isPageWidth("PHONE"))
          )
        },
        style: "#fff",
        padding: "NONE",
        showBorder: false
      )
    },
    backgroundColor: "WHITE"
  )
  )
)
```

## Discussion thread highlights

Displays the most recent posts from a discussion thread.

Follow the [Highlights List](employee-home-pages.html#highlights-list) pattern by showing only a small number of posts in this widget. Users should navigate to the full-page view of the discussion thread to see additional posts.

![](ds-images/image25.png)

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
a!headerContentLayout(
  header: {},
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!localVariables(
              local!desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              local!show: true,
              a!sectionLayout(
                label: "Discussion",
                labelSize: "SMALL",
                labelColor: "STANDARD",
                contents: {
                  a!cardLayout(
                    contents: {
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!textField(
                                  label: "Text",
                                  labelPosition: "COLLAPSED",
                                  saveInto: {},
                                  refreshAfter: "UNFOCUS",
                                  validations: {}
                                )
                              ),
                              a!sideBySideItem(
                                item: a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(
                                      label: "Post",
                                      size: "SMALL",
                                      style: "OUTLINE",
                                      color: "SECONDARY"
                                    )
                                  },
                                  align: "END",
                                  marginBelow: "NONE"
                                ),
                                width: "MINIMIZE"
                              )
                            },
                            spacing: "DENSE"
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!stampField(
                                  labelPosition: "COLLAPSED",
                                  text: "JH",
                                  backgroundColor: "ACCENT",
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
                                      text: { "Jane Henderson" },
                                      color: "ACCENT",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextIcon(icon: "calendar-o"),
                                        " 01/15/2021 2:30 PM"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  }
                                )
                              )
                            },
                            marginBelow: "EVEN_LESS"
                          ),
                          if(
                            local!show,
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: left(local!desc, 110), size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "More",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: local!desc, size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "Less",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            )
                          ),
                        },
                        height: "AUTO",
                        style: "NONE",
                        marginBelow: "EVEN_LESS",
                        showBorder: false
                      ),
                      /*a!dividerLine(*/
                        /*marginBelow: "NONE"*/
                      /*),*/
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!stampField(
                                  labelPosition: "COLLAPSED",
                                  text: "WH",
                                  backgroundColor: "ACCENT",
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
                                      text: { "William Hurt" },
                                      color: "ACCENT",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextIcon(icon: "calendar-o"),
                                        " 01/12/2021 11:05 AM"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  }
                                )
                              )
                            },
                            alignVertical: "MIDDLE",
                            marginBelow: "EVEN_LESS"
                          ),
                          if(
                            local!show,
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: left(local!desc, 110), size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "More",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: local!desc, size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "Less",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            )
                          ),
                        },
                        height: "AUTO",
                        style: "NONE",
                        marginBelow: "EVEN_LESS",
                        showBorder: false
                      ),
                      /*a!dividerLine(*/
                        /*marginBelow: "NONE"*/
                      /*),*/
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!stampField(
                                  labelPosition: "COLLAPSED",
                                  text: "BK",
                                  backgroundColor: "ACCENT",
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
                                      text: { "Benjamin Keating" },
                                      color: "ACCENT",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextIcon(icon: "calendar-o"),
                                        " 01/05/2021 1:35 PM"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  }
                                )
                              )
                            },
                            marginBelow: "EVEN_LESS"
                          ),
                          if(
                            local!show,
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: left(local!desc, 110), size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "More",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: local!desc, size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "Less",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            )
                          ),
                        },
                        height: "AUTO",
                        style: "NONE",
                        marginBelow: "EVEN_LESS",
                        showBorder: false
                      ),
                      /*a!dividerLine(*/
                        /*marginBelow: "NONE"*/
                      /*),*/
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!stampField(
                                  labelPosition: "COLLAPSED",
                                  text: "TN",
                                  backgroundColor: "ACCENT",
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
                                      text: { "Thuy Nhat " },
                                      color: "ACCENT",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextIcon(icon: "calendar-o"),
                                        " 12/27/2021 9:10 AM"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  }
                                )
                              )
                            },
                            marginBelow: "EVEN_LESS"
                          ),
                          if(
                            local!show,
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: left(local!desc, 110), size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "More",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: local!desc, size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "Less",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            )
                          ),
                        },
                        height: "AUTO",
                        style: "NONE",
                        marginBelow: "EVEN_LESS",
                        showBorder: false
                      ),
                      /*a!dividerLine(*/
                        /*marginBelow: "NONE"*/
                      /*),*/
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!stampField(
                                  labelPosition: "COLLAPSED",
                                  text: "LA",
                                  backgroundColor: "ACCENT",
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
                                      text: { "Lawrence Anderson" },
                                      color: "ACCENT",
                                      style: { "STRONG" }
                                    ),
                                    char(10),
                                    a!richTextItem(
                                      text: {
                                        a!richTextIcon(icon: "calendar-o"),
                                        " 11/19/2021 5:45 PM"
                                      },
                                      color: "SECONDARY",
                                      size: "SMALL"
                                    )
                                  }
                                )
                              )
                            },
                            marginBelow: "EVEN_LESS"
                          ),
                          if(
                            local!show,
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: left(local!desc, 110), size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "More",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: local!desc, size: "SMALL"),
                                "... ",
                                a!richTextItem(
                                  text: "Less",
                                  link: a!dynamicLink(
                                    saveInto: a!save(local!show, not(local!show))
                                  ),
                                  color: "ACCENT",
                                  size: "SMALL",
                                  style: "STRONG"
                                )
                              }
                            )
                          ),
                        },
                        height: "AUTO",
                        style: "NONE",
                        marginBelow: "EVEN_LESS",
                        showBorder: false
                      ),
                      a!horizontalLine(
                        marginBelow: "STANDARD"
                      ),
                      a!sectionLayout(
                        label: "",
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: {
                                  "View All  (15) ",
                                  a!richTextIcon(icon: "angle-right-bold")
                                },
                                color: "ACCENT",
                                style: { "STRONG" }
                              )
                            },
                            align: "CENTER"
                          )
                        },
                        divider: "NONE",
                        marginAbove: "NONE"
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
            )
          },
          width: "MEDIUM"
        ),
      }
    )
  },
  backgroundColor: "TRANSPARENT"
)
```

## Notifications highlights

Displays the most recent notifications sent to the user. Unread items are visually highlighted.

Follow the [Highlights List](employee-home-pages.html#highlights-list) pattern by showing only a small number of posts in this widget. Users should navigate to the full-page view of the discussion thread to see additional posts.

![](ds-images/image19.png)

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
a!headerContentLayout(
  header: {},
  contents: {
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
                      a!richTextItem(text: { "Notifications" }, size: "MEDIUM"),
                      char(10),
                      a!richTextItem(
                        text: { "3 unread" },
                        color: "SECONDARY",
                        size: "SMALL"
                      )
                    }
                  )
                )
              },
              alignVertical: "MIDDLE",
              spacing: "DENSE"
            ),
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
                                text: { "Uploaded New Investigation" },
                                color: "#2322f0",
                                size: "SMALL",
                                style: { "STRONG" }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  a!richTextIcon(icon: "user-circle"),
                                  " Benjamin Kelvin  ",
                                  a!richTextIcon(icon: "calendar-o"),
                                  " 12/30/2021"
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
                              a!richTextIcon(
                                icon: "ellipsis-v",
                                color: "SECONDARY",
                                size: "STANDARD"
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "STANDARD",
                      marginAbove: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "LESS",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "START",
                  decorativeBarColor: "#2322f0"
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
                                text: { "New Investigation" },
                                color: "SECONDARY",
                                size: "SMALL",
                                style: { "STRONG" }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  a!richTextIcon(icon: "user-circle"),
                                  " JoAnne Williams  ",
                                  a!richTextIcon(icon: "calendar-o"),
                                  " 12/27/2021"
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
                              a!richTextIcon(
                                icon: "ellipsis-v",
                                color: "SECONDARY",
                                size: "STANDARD"
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "STANDARD",
                      marginAbove: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "LESS",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "START",
                  decorativeBarColor: "#f3f3f3"
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
                                text: { "New Investigation" },
                                color: "#2322f0",
                                size: "SMALL",
                                style: { "STRONG" }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  a!richTextIcon(icon: "user-circle"),
                                  " Jordan Howard  ",
                                  a!richTextIcon(icon: "calendar-o"),
                                  " 12/21/2021"
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
                              a!richTextIcon(
                                icon: "ellipsis-v",
                                color: "SECONDARY",
                                size: "STANDARD"
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "STANDARD",
                      marginAbove: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "LESS",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "START",
                  decorativeBarColor: "#2322f0"
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
                                text: { "New Investigation" },
                                color: "SECONDARY",
                                size: "SMALL",
                                style: { "STRONG" }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  a!richTextIcon(icon: "user-circle"),
                                  " Lisa Jackson  ",
                                  a!richTextIcon(icon: "calendar-o"),
                                  " 12/19/2021"
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
                              a!richTextIcon(
                                icon: "ellipsis-v",
                                color: "SECONDARY",
                                size: "STANDARD"
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "STANDARD",
                      marginAbove: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "LESS",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "START",
                  decorativeBarColor: "#f3f3f3"
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
                                text: { "New Investigation" },
                                color: "SECONDARY",
                                size: "SMALL",
                                style: { "STRONG" }
                              ),
                              char(10),
                              a!richTextItem(
                                text: {
                                  a!richTextIcon(icon: "user-circle"),
                                  " Marissa Mayer  ",
                                  a!richTextIcon(icon: "calendar-o"),
                                  " 12/18/2021"
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
                              a!richTextIcon(
                                icon: "ellipsis-v",
                                color: "SECONDARY",
                                size: "STANDARD"
                              )
                            }
                          ),
                          width: "MINIMIZE"
                        )
                      },
                      alignVertical: "MIDDLE",
                      spacing: "STANDARD",
                      marginAbove: "NONE",
                      marginBelow: "NONE"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "LESS",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  decorativeBarPosition: "START",
                  decorativeBarColor: "#f3f3f3"
                ),
               a!horizontalLine(),
                a!cardLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: {
                            "View all Notifications (15) ",
                            a!richTextIcon(icon: "angle-right-bold")
                          },
                          color: "#2322f0",
                          size: "SMALL",
                          style: { "STRONG" }
                        )
                      },
                      align: "CENTER",
                      marginAbove: "LESS",
                      marginBelow: "STANDARD"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  padding: "EVEN_LESS",
                  marginBelow: "STANDARD",
                  showBorder: false
                )
              },
              height: "AUTO",
              style: "NONE",
              padding: "NONE",
              marginAbove: "NONE",
              marginBelow: "NONE",
              showBorder: false,
              showShadow: true
            )
          },
          width: "MEDIUM"
        )
      }
    )
  },
  backgroundColor: "TRANSPARENT"
)
```

## Checklist

Use this pattern to show a checklist of items for the user to complete.

![](ds-images/image50.png)

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
a!localVariables(
  local!files: {
    {
      name: "Credit Report",
      tag: "Expired",
      upload_icon: "hand-o-right",
      uploaded_by: "KYC Group",
      icon: "exclamation-triangle",
      calendar_icon: "exclamation-triangle",
      calendar_icon_color: "NEGATIVE",
      type: 1,
      due: "10/01/2021",
      status: "expired",
      content: 7107,
      card_color: "#F4CCCC",
      decorative_bar: "#FC0000"
    },
    {
      name: "Credit Report",
      tag: "Expired",
      upload_icon: "hand-o-right",
      uploaded_by: "KYC Group",
      icon: "close",
      calendar_icon: "calendar-o",
      type: 1,
      due: "10/01/2021",
      status: "expired",
      content: 7107,
      card_color: "#F4CCCC",
      decorative_bar: "#FC0000"
    },
    {
      name: "Authorization Document",
      upload_icon: "hand-o-right",
      uploaded_by: "KYC Group",
      icon: "clock-o",
      status: "due soon",
      calendar_icon: "calendar-o",
      due: "11/15/2021",
      type: 2,
      content: "www.url.com",
      card_color: "#FCE5CD",
      decorative_bar: "#FF9900"
    },
    {
      name: "Certificate of Incorporation",
      upload_icon: "hand-o-right",
      uploaded_by: "KYC Group",
      icon: "spinner",
      status: "complete",
      calendar_icon: "calendar-o",
      due: "12/15/2021",
      type: 2,
      content: "www.url.com",
      card_color: "#C9DAF8",
      decorative_bar: "#2322F0"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "circle-o",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9D9D9",
      decorative_bar: "#666666"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "robot",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9D9D9",
      decorative_bar: "#666666"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "list-alt",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9D9D9",
      decorative_bar: "#666666"
    },
    {
      name: "Address Proof",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    },
    {
      name: "Tax Filings",
      type: 1,
      upload_icon: "upload",
      uploaded_by: "Jane Doe",
      content: 7107,
      icon: "check-circle",
      calendar_icon: "calendar-check-o",
      status: "complete",
      due: "10/01/2021",
      card_color: "#D9EAD3",
      decorative_bar: "#1CC101"
    }
  },
  a!headerContentLayout(
    header: {},
    contents: {
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
                        a!richTextItem(
                          text: { "Required Documents" },
                          size: "MEDIUM"
                        ),
                        char(10),
                        a!richTextItem(
                          text: { "3 documents pending" },
                          color: "SECONDARY",
                          size: "SMALL"
                        )
                      }
                    ),
                    width: "2X"
                  ),
                  a!sideBySideItem(
                    item: a!progressBarField(
                      label: "Progress Bar",
                      labelPosition: "COLLAPSED",
                      percentage: 75,
                      color: "#2322f0",
                      style: "THICK",
                      marginAbove: "NONE",
                      marginBelow: "NONE",
                      showPercentage: true
                    ),
                    width: "1X"
                  )
                },
                alignVertical: "MIDDLE"
              ),
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!dropdownField(
                      label: "Dropdown",
                      labelPosition: "COLLAPSED",
                      placeholder: "All Statuses",
                      choiceLabels: {
                        "Option 1",
                        "Option 2",
                        "Option 3",
                        "Option 4",
                        "Option 5",
                        "Option 6",
                        "Option 7",
                        "Option 8",
                        "Option 9",
                        "Option 10",
                        "Option 11",
                        "Option 12"
                      },
                      choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
                      saveInto: {},
                      searchDisplay: "AUTO",
                      validations: {}
                    ),
                    width: "AUTO"
                  ),
                  a!sideBySideItem(
                    item: a!dropdownField(
                      label: "Dropdown",
                      labelPosition: "COLLAPSED",
                      placeholder: "All Assignees",
                      choiceLabels: {
                        "Option 1",
                        "Option 2",
                        "Option 3",
                        "Option 4",
                        "Option 5",
                        "Option 6",
                        "Option 7",
                        "Option 8",
                        "Option 9",
                        "Option 10",
                        "Option 11",
                        "Option 12"
                      },
                      choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
                      saveInto: {},
                      searchDisplay: "AUTO",
                      validations: {}
                    ),
                    width: "AUTO"
                  )
                },
                spacing: "DENSE"
              ),
              a!cardLayout(
                contents: a!forEach(
                  items: local!files,
                  expression: a!cardLayout(
                    contents: {
                      a!columnsLayout(
                        columns: {
                          a!columnLayout(
                            contents: {
                              a!cardLayout(
                                contents: {
                                  a!richTextDisplayField(
                                    labelPosition: "ABOVE",
                                    value: {
                                      a!richTextIcon(
                                        icon: fv!item.icon,
                                        color: fv!item.decorative_bar,
                                        size: "MEDIUM_PLUS"
                                      )
                                    },
                                    align: "CENTER"
                                  )
                                },
                                height: "EXTRA_SHORT",
                                style: fv!item.card_color,
                                /*shape: "SEMI_ROUNDED",*/
                                padding: "LESS",
                                marginBelow: "NONE",
                                showBorder: false
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
                                          text: { fv!item.name },
                                          link: a!dynamicLink(),
                                          linkStyle: "STANDALONE",
                                          color: "STANDARD",
                                          size: "SMALL",
                                          style: "STRONG"
                                        )/*char(10),*/
                                        /*char(10),*/

                                      },
                                      preventWrapping: true
                                    )
                                  )
                                },
                                marginBelow: "NONE"
                              ),
                              a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: a!richTextItem(
                                  text: {
                                    a!richTextIcon(
                                      icon: fv!item.calendar_icon,
                                      color: fv!item.calendar_icon_color
                                    ),
                                    " ",
                                    fv!item.due,
                                    "  ",
                                    a!richTextIcon(fv!item.upload_icon),
                                    " ",
                                    fv!item.uploaded_by
                                  },
                                  color: "SECONDARY",
                                  size: "SMALL"
                                )
                              )
                            }
                          ),
                          a!columnLayout(
                            contents: a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        icon: "ellipsis-v",
                                        saveInto: if(
                                          fv!index = 1,
                                          {},
                                          {
                                            a!save(
                                              local!files,
                                              insert(local!files, fv!item, fv!index - 1)
                                            ),
                                            a!save(
                                              local!files,
                                              remove(local!files, fv!index + 1)
                                            )
                                          }
                                        ),
                                        size: "SMALL",
                                        style: "LINK",
                                        disabled: false
                                      )
                                    },
                                    align: "END",
                                    marginBelow: "NONE"
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: a!richTextItem(text: " ")
                                  ),
                                  width: "MINIMIZE"
                                )
                              }
                            ),
                            width: "EXTRA_NARROW"
                          )
                        },
                        alignVertical: "MIDDLE",
                        stackWhen: "NEVER"
                      )
                    },
                    height: "AUTO",
                    style: "NONE",
                    /*shape: "SEMI_ROUNDED",*/
                    padding: "NONE",
                    marginBelow: "STANDARD",
                    showBorder: true,
                    decorativeBarPosition: "START",
                    decorativeBarColor: fv!item.decorative_bar
                  )
                ),
                height: "AUTO",
                style: "STANDARD",
                padding: "NONE",
                showBorder: false
              ),
              a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextItem(text: { "Paging" }, color: "ACCENT")
                },
                align: "RIGHT"
              )
            },
            width: "MEDIUM"
          ),
          a!columnLayout(contents: {})
        }
      )
    },
    backgroundColor: "TRANSPARENT"
  )
)
```

## Document list

Displays a list of documents along with file metadata.

![](ds-images/image83.png)

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
a!sectionLayout(
  label: "Attachments",
  labelSize: "MEDIUM",
  labelHeadingTag: "H2",
  labelColor: "STANDARD",
  contents: {
    a!cardLayout(
      contents: {
        a!cardLayout(
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
                            a!richTextIcon(
                              icon: "file-image-o",
                              color: "#674ea7",
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER",
                          marginAbove: "EVEN_LESS",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "#d9d2e9",
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
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "bowan_drivers_license.jpg" },
                              style: { "STRONG" }
                            )
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(text: { "83KB" }, color: "SECONDARY")
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              spacing: "NONE"
            )
          },
          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false,
          showShadow: false
        ),
        a!horizontalLine(
          color: "#eee"
        ),
        a!cardLayout(
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
                            a!richTextIcon(
                              icon: "file-pdf-o",
                              color: "#0b5394",
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER",
                          marginAbove: "EVEN_LESS",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "#cfe2f3",
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
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "bowan_paystub_11_2021.pdf" },
                              style: { "STRONG" }
                            )
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(text: { "121KB" }, color: "SECONDARY")
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              spacing: "NONE"
            )
          },
          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false,
          showShadow: false
        ),
        a!horizontalLine(
          color: "#eee"
        ),
        a!cardLayout(
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
                            a!richTextIcon(
                              icon: "file-pdf-o",
                              color: "#0b5394",
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER",
                          marginAbove: "EVEN_LESS",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "#cfe2f3",
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
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "bowan_paystub_10_2021.pdf" },
                              style: { "STRONG" }
                            )
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(text: { "122KB" }, color: "SECONDARY")
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              spacing: "NONE"
            )
          },
          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false,
          showShadow: false
        ),
       a!horizontalLine(
          color: "#eee"
        ),
        a!cardLayout(
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
                            a!richTextIcon(
                              icon: "file-pdf-o",
                              color: "#0b5394",
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER",
                          marginAbove: "EVEN_LESS",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "#cfe2f3",
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
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "bowan_checking_statement_11_2021.pdf" },
                              style: { "STRONG" }
                            )
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(text: { "94KB" }, color: "SECONDARY")
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              spacing: "NONE"
            )
          },
          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false,
          showShadow: false
        ),
        a!horizontalLine(
          color: "#eee"
        ),
        a!cardLayout(
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
                            a!richTextIcon(
                              icon: "file-excel-o",
                              color: "#38761d",
                              size: "MEDIUM_PLUS"
                            )
                          },
                          align: "CENTER",
                          marginAbove: "EVEN_LESS",
                          marginBelow: "EVEN_LESS"
                        )
                      },
                      height: "AUTO",
                      style: "#d9ead3",
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
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { "Assets Explanation.xlsx" },
                              style: { "STRONG" }
                            )
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(text: { "145KB" }, color: "SECONDARY")
                          },
                          preventWrapping: true,
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  }
                )
              },
              alignVertical: "MIDDLE",
              spacing: "NONE"
            )
          },
          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
          height: "AUTO",
          style: "NONE",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false,
          showShadow: false
        ),
        a!horizontalLine(
          /*color: "#C4C4C4"*/
        ),
        a!cardLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: {
                    "See All Attachments ",
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
          showShadow: false
        )
      },
      height: "AUTO",
      style: "NONE",
      padding: "NONE",
      marginBelow: "STANDARD",
      showBorder: true,
      showShadow: false
    )
  }
)
```

## Link list

Displays a list of links to resources

![](ds-images/image41.png)

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
                          text: {
                            "Campaign Manager Playbook"
                          },
                          style: {
                            "STRONG"
                          }
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
              saveInto: {}
            ),
            height: "AUTO",
            style: "NONE",
            padding: "",
            marginBelow: "NONE",
            showBorder: false,
            showShadow: false
          ),
          a!horizontalLine(
            color: "#eee"
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
                          text: {
                            "Google Ads Dashboard"
                          },
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
            link: a!dynamicLink(
              label: "Dynamic Link",
              saveInto: {}
            ),
            height: "AUTO",
            style: "NONE",
            marginBelow: "NONE",
            showBorder: false,
            showShadow: false
          ),
          a!horizontalLine(
            color: "#eee"
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
                          text: {
                            "Microsoft Ads Dashboard"
                          },
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
            link: a!dynamicLink(
              label: "Dynamic Link",
              saveInto: {}
            ),
            height: "AUTO",
            style: "NONE",
            marginBelow: "NONE",
            showBorder: false,
            showShadow: false
          ),
          a!horizontalLine(
            color: "#eee"
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
                          text: {
                            "New Hire Onboarding Guide"
                          },
                          style: {
                            "STRONG"
                          }
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
              saveInto: {}
            ),
            height: "AUTO",
            style: "NONE",
            marginBelow: "NONE",
            showBorder: false,
            showShadow: false
          )
        },
        height: "AUTO",
        style: "NONE",
        padding: "NONE",
        marginBelow: "STANDARD",
        showBorder: true,
        showShadow: false
      )
    }
  )
```

## Document thumbnail browser

Displays a list of document pages as thumbnail images. Includes controls for reordering pages. Select a page to view its details and take additional actions in an adjacent pane.

![](ds-images/image86.png)

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
a!headerContentLayout(
  contents: {
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
                        a!cardLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                a!webImage(
                                  source: "http://www.ifr-magazine.com/wp-content/uploads/2019/10/p18u4e85i21tq71c4rb5d6eb7r06.jpg"
                                )
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "NONE",
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "1" },
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "CHARCOAL_SCHEME",
                      padding: "EVEN_LESS",
                      marginBelow: "STANDARD"
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "arrow-up",
                          color: "#666666",
                          size: "MEDIUM"
                        ),
                        char(10),
                        char(10),
                        char(10),
                        a!richTextIcon(
                          icon: "arrow-down",
                          color: "STANDARD",
                          size: "MEDIUM"
                        )
                      },
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                )
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              spacing: "NONE"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                a!webImage(
                                  source: "http://www.ifr-magazine.com/wp-content/uploads/2019/10/p18u4e85i21tq71c4rb5d6eb7r06.jpg"
                                )
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "NONE",
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "2" },
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "ACCENT",
                      padding: "EVEN_LESS",
                      marginBelow: "STANDARD",
                      showBorder: false
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "arrow-up",
                          color: "STANDARD",
                          size: "MEDIUM"
                        ),
                        char(10),
                        char(10),
                        char(10),
                        a!richTextIcon(
                          icon: "arrow-down",
                          color: "STANDARD",
                          size: "MEDIUM"
                        )
                      },
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                )
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              spacing: "NONE"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                a!webImage(
                                  source: "http://www.ifr-magazine.com/wp-content/uploads/2019/10/p18u4e85i21tq71c4rb5d6eb7r06.jpg"
                                )
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "NONE",
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "3" },
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "CHARCOAL_SCHEME",
                      padding: "EVEN_LESS",
                      marginBelow: "STANDARD"
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "arrow-up",
                          color: "STANDARD",
                          size: "MEDIUM"
                        ),
                        char(10),
                        char(10),
                        char(10),
                        a!richTextIcon(
                          icon: "arrow-down",
                          color: "STANDARD",
                          size: "MEDIUM"
                        )
                      },
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                )
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              spacing: "NONE"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                a!webImage(
                                  source: "http://www.ifr-magazine.com/wp-content/uploads/2019/10/p18u4e85i21tq71c4rb5d6eb7r06.jpg"
                                )
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "NONE",
                          marginBelow: "NONE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: { "4" },
                          align: "CENTER"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "CHARCOAL_SCHEME",
                      padding: "EVEN_LESS",
                      marginBelow: "STANDARD"
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "arrow-up",
                          color: "STANDARD",
                          size: "MEDIUM"
                        ),
                        char(10),
                        char(10),
                        char(10),
                        a!richTextIcon(
                          icon: "arrow-down",
                          color: "#666666",
                          size: "MEDIUM"
                        )
                      },
                      align: "CENTER"
                    )
                  },
                  width: "EXTRA_NARROW"
                )
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              spacing: "NONE"
            )
          },
          width: "NARROW"
        ),
        a!columnLayout(contents: {
  a!buttonArrayLayout(
    buttons: {
      a!buttonWidget(
        label: "Duplicate Page",
        icon: "window-restore",
        style: "OUTLINE",
        color: "SECONDARY"
      ),
      a!buttonWidget(
        label: "Delete Page",
        icon: "trash-o",
        style: "OUTLINE",
        color: "SECONDARY"
      ),
      a!buttonWidget(
        label: "Move Up",
        icon: "arrow-up",
        style: "OUTLINE",
        labelColor: "SECONDARY"
      ),
      a!buttonWidget(
        label: "Move Down",
        icon: "arrow-down",
        style: "OUTLINE",
        color: "SECONDARY"
      )
    },
    align: "START"
  ),
  a!imageField(
    label: "",
    labelPosition: "COLLAPSED",
    images: {
      a!webImage(
        source: "http://www.ifr-magazine.com/wp-content/uploads/2019/10/p18u4e85i21tq71c4rb5d6eb7r06.jpg"
      )
    },
    size: "FIT",
    isThumbnail: false,
    style: "STANDARD"
  )
},
          width: "WIDE"),
        a!columnLayout(
          contents: {}
        )
      }
    )
  },
  backgroundColor: "CHARCOAL_SCHEME"
)
```

## People list

Displays a list of people along with secondary information like role or title.

![](ds-images/image48.png)

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
{
  a!columnsLayout(
    columns: {
      a!columnLayout(
        contents: {
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!imageField(
                  label: "User Photo",
                  labelPosition: "COLLAPSED",
                  images: {
                    a!userImage(
                      user: "charles.tsui.s"
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
                      text: {
                        "Karen Anderson"
                      },
                      color: "ACCENT",
                      style: {
                        "STRONG"
                      }
                    ),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Vice President, Business Development"
                      },
                      color: "SECONDARY"
                    )
                  }
                )
              )
            },
            alignVertical: "MIDDLE"
          ),
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!stampField(
                  labelPosition: "COLLAPSED",
                  text: "JG",
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
                    a!richTextItem(
                      text: {
                        "Joel Guzman"
                      },
                      color: "ACCENT",
                      style: {
                        "STRONG"
                      }
                    ),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Regional Account Executive"
                      },
                      color: "SECONDARY"
                    )
                  }
                )
              )
            },
            alignVertical: "MIDDLE"
          ),
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!stampField(
                  labelPosition: "COLLAPSED",
                  text: "MH",
                  backgroundColor: "#38761d",
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
                        "Marc Horton"
                      },
                      color: "ACCENT",
                      style: {
                        "STRONG"
                      }
                    ),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Manager, Business Development"
                      },
                      color: "SECONDARY"
                    )
                  }
                )
              )
            },
            alignVertical: "MIDDLE"
          ),
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!stampField(
                  labelPosition: "COLLAPSED",
                  text: "TZ",
                  backgroundColor: "#990000",
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
                        "Tracy Zimmerman"
                      },
                      color: "ACCENT",
                      style: {
                        "STRONG"
                      }
                    ),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Senior Business Development Representative"
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
        width: "MEDIUM"
      ),
      a!columnLayout(
        contents: {}
      )
    }
  )
}
```

## Simple event history

Displays an audit log of events associated with the actors who triggered the events.

![](ds-images/image68.png)

## Detailed event history

Displays an audit history of events with change details.

![](ds-images/image4.png)

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
{
  a!columnsLayout(
    columns: {
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
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              "MAY"
                            },
                            align: "CENTER"
                          )
                        },
                        height: "AUTO",
                        style: "ACCENT",
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
                                  "6"
                                },
                                size: "MEDIUM_PLUS",
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
                        padding: "EVEN_LESS",
                        marginBelow: "NONE",
                        showBorder: false
                      )
                    },
                    height: "AUTO",
                    style: "NONE",
                    padding: "NONE",
                    marginBelow: "STANDARD"
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
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "3:38 PM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Karen Anderson" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12345" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "2:04 PM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Joel Guzman" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12344" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "11:19 AM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Tracy Zimmerman" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12343" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  )
                }
              )
            },
            marginBelow: "NONE"
          ),
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
                              "MAY"
                            },
                            align: "CENTER"
                          )
                        },
                        height: "AUTO",
                        style: "ACCENT",
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
                                  "5"
                                },
                                size: "MEDIUM_PLUS",
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
                        padding: "EVEN_LESS",
                        marginBelow: "NONE",
                        showBorder: false
                      )
                    },
                    height: "AUTO",
                    style: "NONE",
                    padding: "NONE",
                    marginBelow: "STANDARD"
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
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "3:38 PM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Karen Anderson" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12345" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "2:04 PM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Joel Guzman" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12344" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: { "11:19 AM" },
                            align: "RIGHT"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Tracy Zimmerman" },
                                color: "ACCENT",
                                style: { "STRONG" }
                              ),
                              " edited record ",
                              a!richTextItem(text: { "Case 12343" }, color: "ACCENT")
                            }
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "FIELD" }, color: "SECONDARY")
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "OLD VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "NEW VALUE" }, color: "SECONDARY")
                                  }
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Title" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
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
                                      text: {
                                        "Set up new individual checking account"
                                      },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "Set up new joint savings account" },
                                      color: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
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
                                    a!richTextItem(
                                      text: { "Status" },
                                      color: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Pending" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Active" }, color: "STANDARD")
                                  },
                                  preventWrapping: true
                                ),
                                width: "2X"
                              )
                            },
                            marginBelow: "NONE"
                          ),
                          a!richTextDisplayField(labelPosition: "COLLAPSED", value: { " " })
                        },
                        width: "MEDIUM_PLUS"
                      )
                    },
                    alignVertical: "TOP",
                    marginBelow: "NONE",
                    spacing: "SPARSE",
                    showDividers: true
                  )
                }
              )
            },
            marginBelow: "NONE"
          )
        },
        width: "WIDE"
      ),
      a!columnLayout(contents: {})
    }
  )
}
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.