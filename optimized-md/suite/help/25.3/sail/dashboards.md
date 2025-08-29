---
source_url: https://docs.appian.com/suite/help/25.3/sail/dashboards.html
original_path: sail/dashboards.html
version: "25.3"
title: "Dashboards"
page_id: "sail/dashboards"
section: "What is a dashboard?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Dashboards \[SAIL Design System: Patterns\]

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
    -   [Dashboards](#)
    -   [Forms](/suite/help/25.3/sail/forms.html)
    -   [Record Views](/suite/help/25.3/sail/record-views.html)
    -   [Online Shopping Journey](/suite/help/25.3/sail/online-shopping-journey.html)
-   Page Content
    -   [Popular Patterns](/suite/help/25.3/sail/popular-patterns.html)
    -   [Data Value Display](/suite/help/25.3/sail/data-value-display.html)
    -   [Tabular Data Display](/suite/help/25.3/sail/tabular-data-display.html)
    -   [Lists](/suite/help/25.3/sail/lists.html)

How to Use Patterns Page Titles Content Structure Page Headers Secondary Navigation Employee Home Pages Visitor Landing Pages Dashboards Forms Record Views Online Shopping Journey Popular Patterns Data Value Display Tabular Data Display Lists

# Dashboards

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Display charts, grids, and key performance indicators to visually show data to users.

* * *

## What is a dashboard?

Dashboards display data visually. They show some combination of charts, grids, and key performance indicators.

When deciding how to design a dashboard, keep the following questions and considerations in mind:

-   **Information quantity**: What information should be prioritized? How can you select and highlight the most important data?
-   **Data display**: What data is valuable for your users? How can you make it more digestible?

## Limiting information to reduce cognitive load

To make it easier for users to process data, limit data points and categories of data to reduce cognitive load. Note that this pattern uses a consistent color scheme to make it easier to digest information.

![](ds-images/sales_dashboard_dark_theme.png)

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
a!headerContentLayout(
  header: a!cardLayout(
    contents: {
      a!localVariables(
        local!dateType: 1,
        local!startDate: todate("01/01/2019"),
        local!endDate: todate("16/01/2019"),
        local!kpis: {
          {
            name: "Total Revenue",
            todayPrice: dollar(fixed(3276.91)),
            yesterdayPrice: dollar(fixed(116.31)),
            icon: "caret-up",
            percent: "(18%)",
            color: "#4CC900",
            data: {
              1,
              3,
              2,
              4,
              3,
              2,
              5,
              7,
              10,
              12,
              7,
              6,
              15,
              14,
              13,
              10,
              15,
              13,
              15,
              22,
              24,
              19,
              15,
              25,
              25,
              30,
              30,
              35,
              32,
              36,
              39,
              35,
              38,
              39,
              40
            }
          },
          {
            name: "Revenue Per User",
            todayPrice: dollar(fixed(374.12)),
            yesterdayPrice: dollar(fixed( - 32.25)),
            icon: "caret-down",
            percent: "(-7%)",
            color: "#E64345",
            data: {
              3,
              5,
              4,
              2,
              3,
              2,
              4,
              5,
              7,
              10,
              12,
              16,
              17,
              15,
              15,
              16,
              13,
              10,
              15,
              17,
              20,
              21,
              25,
              22,
              22,
              17,
              15,
              17,
              16,
              15,
              14,
              13,
              13,
              14,
              10
            }
          },
          {
            name: "New Orders",
            todayPrice: 1275,
            yesterdayPrice: - 116,
            icon: "caret-down",
            percent: "(-15%)",
            color: "#E64345",
            data: {
              3,
              5,
              7,
              6,
              8,
              10,
              12,
              4,
              16,
              13,
              22,
              26,
              24,
              25,
              16,
              14,
              13,
              13,
              14,
              12,
              16,
              20,
              22,
              27,
              30,
              35,
              34,
              35,
              23,
              18,
              16,
              17,
              14,
              12
            }
          },
          {
            name: "New Users",
            todayPrice: 76,
            yesterdayPrice: 46,
            icon: "caret-up",
            percent: "(22%)",
            color: "#4CC900",
            data: {
              2,
              3,
              5,
              13,
              20,
              17,
              23,
              24,
              22,
              18,
              12,
              10,
              3,
              4,
              2,
              15,
              16,
              20,
              26,
              23,
              27,
              28,
              30,
              34,
              33,
              32,
              30,
              35,
              40,
              38,
              37,
              42
            }
          }
        },
        {
          a!sectionLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!headingField(
                      marginBelow: "NONE",
                      text: "Financial Summary",
                      size: "SMALL",
                      weight: "SEMI_BOLD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!dropdownField(
                      label: "Timeframe Type",
                      labelPosition: "COLLAPSED",
                      placeholder: "--- Select a Value ---",
                      choiceLabels: { "Date Range", "Week", "Month", "Year" },
                      choiceValues: { 1, 2, 3, 4 },
                      value: local!dateType,
                      saveInto: local!dateType
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!dateField(
                      label: "Date",
                      labelPosition: "COLLAPSED",
                      value: local!startDate,
                      saveInto: local!startDate
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      label: "Rich Text",
                      labelPosition: "COLLAPSED",
                      value: "to"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!dateField(
                      label: "Date",
                      labelPosition: "COLLAPSED",
                      value: local!endDate,
                      saveInto: local!endDate
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "MIDDLE"
              )
            },
            showWhen: false
          ),
          a!cardGroupLayout(
            labelPosition: "COLLAPSED",
            cardWidth: "NARROW_PLUS",
            cards: {
              a!forEach(
                items: local!kpis,
                expression: a!cardLayout(
                  contents: {
                    a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!headingField(
                              text: fv!item.name,
                              size: "SMALL",
                              weight: "SEMI_BOLD",
                              marginBelow: "NONE"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item.todayPrice,
                                  size: "MEDIUM_PLUS"
                                ),
                                char(10),
                                a!richTextIcon(
                                  icon: fv!item.icon,
                                  color: fv!item.color,
                                  size: "MEDIUM"
                                ),
                                a!richTextItem(
                                  text: fv!item.yesterdayPrice & " " & fv!item.percent,
                                  color: fv!item.color,
                                  size: "STANDARD"
                                )
                              }
                            )
                          }
                        ),
                        a!columnLayout(
                          contents: a!localVariables(
                            local!kpiName: fv!item.name,
                            {
                              a!lineChartField(
                                labelPosition: "ABOVE",
                                categories: a!forEach(
                                  items: fv!item.data,
                                  expression: local!kpiName
                                ),
                                series: {
                                  a!chartSeries(
                                    label: "count",
                                    data: fv!item.data,
                                    color: fv!item.color
                                  )
                                },
                                yAxisMax: 40,
                                showLegend: false,
                                height: "MICRO",
                                xAxisStyle: "NONE",
                                yAxisStyle: "NONE"
                              )
                            }
                          )
                        )
                      }
                    )
                  },
                  style: "PLUM_SCHEME",
                  padding: "STANDARD",
                  marginBelow: "NONE",
                  showBorder: false
                )
              )
            }
          )
        }
      )
    },
    height: "AUTO",
    style: "#17202b",
    padding: "STANDARD",
    marginBelow: "NONE",
    showBorder: false
  ),
  contents: a!localVariables(
    local!dateType: 1,
    local!startDate: todate("01/01/2019"),
    local!endDate: todate("16/01/2019"),
    local!category: 1,
    local!products: {
      {
        name: "Ruched Dress",
        rating: 4,
        tags: { "Low in Stock" },
        id: 192323,
        data: { 80 },
        data2: { 12 }
      },
      {
        name: "Black Satin Dress",
        rating: 3,
        tags: {},
        id: 293482,
        data: { 72 },
        data2: { 15 }
      },
      {
        name: "Midi Floral Dress",
        rating: 5,
        tags: { "Restock" },
        id: 343498,
        data: { 78 },
        data2: { 6 }
      },
      {
        name: "Maxi Dress",
        rating: 4,
        tags: {},
        id: 374737,
        data: { 63 },
        data2: { 10 }
      },
      {
        name: "Wrap Dress",
        rating: 4,
        tags: {},
        id: 382023,
        data: { 52 },
        data2: { 13 }
      },
      {
        name: "T-Shirt Dress",
        rating: 3,
        tags: { "Restock" },
        id: 232323,
        data: { 53 },
        data2: { 7 }
      }
    },
    {
      a!sectionLayout(
        contents: {
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!headingField(
                  text: "Financial Summary",
                  size: "SMALL",
                  weight: "SEMI_BOLD",
                  marginBelow: "NONE"
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                item: a!dropdownField(
                  label: "Timeframe Type",
                  labelPosition: "COLLAPSED",
                  placeholder: "--- Select a Value ---",
                  choiceLabels: { "Date Range", "Week", "Month", "Year" },
                  choiceValues: { 1, 2, 3, 4 },
                  value: local!dateType,
                  saveInto: local!dateType
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                item: a!dateField(
                  label: "Date",
                  labelPosition: "COLLAPSED",
                  value: local!startDate,
                  saveInto: local!startDate
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  label: "Rich Text",
                  labelPosition: "COLLAPSED",
                  value: "to"
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                item: a!dateField(
                  label: "Date",
                  labelPosition: "COLLAPSED",
                  value: local!endDate,
                  saveInto: local!endDate
                ),
                width: "MINIMIZE"
              )
            },
            alignVertical: "MIDDLE"
          )
        },
        showWhen: false,
        marginAbove: "NONE",
        marginBelow: "NONE"
      ),
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Top Selling Products By Category",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!dropdownField(
                            label: "Dropdown",
                            labelPosition: "COLLAPSED",
                            placeholder: "--- Select a Value ---",
                            choiceLabels: { "Dresses", "Tops" },
                            choiceValues: { 1, 2 },
                            value: local!category,
                            saveInto: local!category
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
                                      icon: "circle",
                                      color: "#00A88F",
                                      size: "SMALL"
                                    ),
                                    a!richTextItem(
                                      text: " " & "# of Items Purchased",
                                      size: "SMALL"
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
                                      icon: "circle",
                                      color: "#82C272",
                                      size: "SMALL"
                                    ),
                                    a!richTextItem(
                                      text: " " & "# of Items Returned",
                                      size: "SMALL"
                                    )
                                  }
                                ),
                                width: "MINIMIZE"
                              )
                            },
                            alignVertical: "TOP",
                            marginBelow: "NONE"
                          )
                        }
                      )
                    },
                    alignVertical: "MIDDLE"
                  ),
                  a!forEach(
                    items: local!products,
                    expression: a!columnsLayout(
                      columns: {
                        a!columnLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    value: { a!richTextItem(text: fv!item.name) }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!localVariables(
                                  local!productRating: fv!item.rating,
                                  a!sideBySideItem(
                                    item: a!richTextDisplayField(
                                      value: a!forEach(
                                        items: enumerate(5) + 1,
                                        expression: a!richTextIcon(
                                          icon: if(
                                            fv!index <= tointeger(local!productRating),
                                            "star",
                                            "star-o"
                                          ),
                                          color: "#fc9901"
                                        )
                                      ),
                                      align: "RIGHT"
                                    )
                                  )
                                )
                              },
                              alignVertical: "BOTTOM",
                              marginBelow: "NONE"
                            ),
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    value: {
                                      a!richTextItem(
                                        text: "Product ID: " & fv!item.id,
                                        color: "SECONDARY"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!tagField(
                                    tags: {
                                      a!tagItem(
                                        text: fv!item.tags,
                                        backgroundColor: if(
                                          tostring(fv!item.tags) = "Low in Stock",
                                          "#F7D027",
                                          "#E64345"
                                        )
                                      )
                                    },
                                    size: "SMALL",
                                    align: "END"
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginBelow: "NONE"
                            )
                          },
                          width: "NARROW"
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(labelPosition: "COLLAPSED"),
                            a!barChartField_21r4(
                              categories: fv!item.name,
                              series: {
                                a!chartSeries(label: "Returned", data: fv!item.data2),
                                a!chartSeries(label: "Purcahsed", data: fv!item.data)
                              },
                              yAxisMax: 95,
                              stacking: "NORMAL",
                              showLegend: false,
                              showDataLabels: true,
                              labelPosition: "COLLAPSED",
                              colorScheme: "RAINFOREST",
                              height: "MICRO",
                              xAxisStyle: "NONE",
                              yAxisStyle: "NONE"
                            )
                          }
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "NONE",
                      spacing: "DENSE"
                    )
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Sales by Region ($)",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!columnChartField(
                    categories: {
                      "Northeast",
                      "Southeast",
                      "Midwest",
                      "Southwest"
                    },
                    series: {
                      a!chartSeries(
                        label: "Full Price",
                        data: { 125000, 100000, 125000, 175000 }
                      ),
                      a!chartSeries(
                        label: "Clearance",
                        data: { 75000, 50000, 25000, 80000 }
                      ),
                      a!chartSeries(
                        label: "Promotion",
                        data: { 200000, 100000, 150000, 90000 }
                      )
                    },
                    stacking: "NORMAL",
                    showLegend: true,
                    showTooltips: true,
                    labelPosition: "COLLAPSED",
                    colorScheme: "RAINFOREST"
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false
              ),
              a!sectionLayout(),
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Top Performing Campaigns",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!gridField(
                    labelPosition: "COLLAPSED",
                    /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
                    data: todatasubset(
                      {
                        {
                          name: "Free Gift with Purchase",
                          visits: 44939,
                          purchases: 293,
                          revenue: dollar(58100.34)
                        },
                        {
                          name: "Buy-One-Get-One",
                          visits: 35503,
                          purchases: 203,
                          revenue: dollar(64329.00)
                        },
                        {
                          name: "Holiday Bundle",
                          visits: 793234,
                          purchases: 125,
                          revenue: dollar(1002312)
                        }
                      },
                      fv!pagingInfo
                    ),
                    columns: {
                      a!gridColumn(
                        label: "Campaign",
                        sortField: "name",
                        value: a!linkField(links: a!dynamicLink(label: fv!row.name))
                      ),
                      a!gridColumn(
                        label: "# Visits",
                        sortField: "visits",
                        value: fixed(fv!row.visits),
                        align: "END"
                      ),
                      a!gridColumn(
                        label: "# Purchases",
                        sortField: "purchases",
                        value: fixed(fv!row.purchases),
                        align: "END"
                      ),
                      a!gridColumn(
                        label: "Revenue",
                        sortField: "revenue",
                        value: fv!row.revenue,
                        align: "END"
                      )
                    },
                    pageSize: 3,
                    initialSorts: a!sortInfo(field: "revenue", ascending: true),
                    borderStyle: "LIGHT",
                    shadeAlternateRows: false
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Customer Satisfaction",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!barChartField_21r4(
                    categories: "Customer Satisfaction",
                    series: {
                      a!chartSeries(label: "Not Satisfied", data: { 23 }),
                      a!chartSeries(label: "Neutral", data: { 13 }),
                      a!chartSeries(label: "Satisfied", data: { 76 })
                    },
                    yAxisMax: 112,
                    stacking: "NORMAL",
                    showLegend: true,
                    showTooltips: true,
                    labelPosition: "COLLAPSED",
                    colorScheme: "RAINFOREST",
                    height: "MICRO",
                    xAxisStyle: "NONE",
                    yAxisStyle: "NONE"
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false
              ),
              a!sectionLayout(),
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Customer Acquisition",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!lineChartField(
                    labelPosition: "COLLAPSED",
                    series: {
                      a!chartSeries(
                        label: "Returning",
                        data: {
                          30,
                          35,
                          55,
                          60,
                          64,
                          82,
                          86,
                          90,
                          126,
                          135,
                          150,
                          145,
                          142,
                          128,
                          115,
                          130,
                          104,
                          104,
                          90,
                          79,
                          69,
                          68,
                          48,
                          58,
                          58,
                          57,
                          56,
                          53,
                          52,
                          50,
                          35,
                          47,
                          52,
                          50,
                          45,
                          57,
                          55,
                          70,
                          70,
                          80,
                          90,
                          90,
                          60,
                          50,
                          50,
                          65,
                          62,
                          68,
                          92,
                          100,
                          85,
                          80,
                          75,
                          85,
                          90,
                          80
                        }
                      ),
                      a!chartSeries(
                        label: "New",
                        data: {
                          18,
                          20,
                          22,
                          20,
                          25,
                          26,
                          30,
                          40,
                          30,
                          29,
                          27,
                          25,
                          26,
                          20,
                          15,
                          22,
                          27,
                          30,
                          35,
                          40,
                          45,
                          50,
                          50,
                          45,
                          30,
                          40,
                          50,
                          55,
                          57,
                          60,
                          47,
                          35,
                          50,
                          65,
                          67,
                          60,
                          70,
                          38,
                          48,
                          60,
                          72,
                          75,
                          78,
                          70,
                          80,
                          82,
                          100,
                          120,
                          100,
                          135,
                          145,
                          135,
                          145,
                          140,
                          130,
                          150
                        }
                      )
                    },
                    yAxisMax: 160,
                    showLegend: true,
                    showTooltips: false,
                    colorScheme: "RAINFOREST",
                    height: "SHORT",
                    xAxisStyle: "NONE",
                    yAxisStyle: "MINIMAL"
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false
              ),
              a!sectionLayout(),
              a!cardLayout(
                contents: {
                  a!headingField(
                    text: "Traffic Sources",
                    size: "SMALL",
                    weight: "SEMI_BOLD"
                  ),
                  a!pieChartField(
                    labelPosition: "COLLAPSED",
                    series: {
                      a!chartSeries(label: "Social Media", data: 41.7),
                      a!chartSeries(label: "Referral Link", data: 31.9),
                      a!chartSeries(label: "Promotion", data: 18.1),
                      a!chartSeries(label: "Direct", data: 8.3)
                    },
                    showDataLabels: true,
                    showAsPercentage: true,
                    colorScheme: "RAINFOREST",
                    style: "DONUT",
                    seriesLabelStyle: "LEGEND"
                  )
                },
                style: "PLUM_SCHEME",
                padding: "STANDARD",
                showBorder: false,

              )
            },
            width: "MEDIUM"
          )
        },
        marginAbove: "NONE"
      )
    }
  ),
  backgroundColor: "PLUM_SCHEME"
)
```

## Configuring page-level filters

Use filters to control how data is displayed. Filters can be defined for individual charts, but having them at the page level can provide a faster way to view different types of data. In this pattern, the filters allow users to switch between year, country, and region.

![](ds-images/co2_cso_landing_page.png)

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
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundColor: "#dbf1d3",
      height: if(
        a!isPageWidth({ "PHONE" }),
        "MEDIUM",
        "SHORT_PLUS"
      ),
      marginBelow: "NONE",
      overlay: a!fullOverlay(
        alignVertical: if(
          a!isPageWidth({ "PHONE" }),
          "TOP",
          "MIDDLE"
        ),
        contents: {
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextItem(
                text: {
                  "Journey to ",
                  a!richTextItem(
                    text: { "Net-Zero Carbon " },
                    style: { "STRONG" }
                  )
                },
                color: "#274e13",
                size: if(
                  a!isPageWidth({ "PHONE" }),
                  "MEDIUM",
                  "MEDIUM_PLUS"
                )
              ),
              a!richTextItem(
                text: { "2025" },
                color: "#47b311",
                size: if(
                  a!isPageWidth({ "PHONE" }),
                  "MEDIUM",
                  "MEDIUM_PLUS"
                ),
                style: { "STRONG" }
              ),
              char(10)
            },
            align: if(
              a!isPageWidth({ "PHONE" }),
              "CENTER",
              "LEFT"
            ),
            marginBelow: if(
              a!isPageWidth({ "PHONE" }),
              "STANDARD",
              "NONE"
            )
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextItem(
                text: { "2021 ACTUAL IMPACT" },
                size: "SMALL",
                style: { "STRONG" }
              )
            },
            showWhen: a!isPageWidth({ "PHONE" }),
            align: "CENTER",
            marginBelow: "NONE"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextItem(
                text: {
                  a!richTextItem(
                    text: { "______________________________" },
                    size: "SMALL"
                  ),
                  "____________________________________"
                },
                color: "#93c47d"
              )
            },
            showWhen: a!isPageWidth(
              {
                "DESKTOP_NARROW",
                "DESKTOP",
                "DESKTOP_WIDE"
              }
            ),
            marginBelow: "MORE"
          ),
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "2021 ACTUAL IMPACT",
                                  labelPosition: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "COLLAPSED",
                                    "ABOVE"
                                  ),
                                  value: {
                                    a!richTextItem(
                                      text: { a!richTextIcon(icon: "smog") },
                                      color: "#47b311",
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(
                                          text: { "314,519 " },
                                          size: if(
                                            a!isPageWidth(
                                              {
                                                "DESKTOP_NARROW",
                                                "DESKTOP",
                                                "DESKTOP_WIDE"
                                              }
                                            ),
                                            "LARGE_PLUS",
                                            "MEDIUM_PLUS"
                                          ),
                                          style: { "STRONG" }
                                        ),
                                        "MTCO2e"
                                      },
                                      color: "#274e13"
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      color: "SECONDARY",
                                      size: "LARGE"
                                    )
                                  },
                                  align: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "CENTER",
                                    "LEFT"
                                  ),
                                  marginBelow: if(a!isPageWidth({ "PHONE" }), "LESS", "NONE")
                                ),
                                width: if(
                                  a!isPageWidth({ "PHONE" }),
                                  "AUTO",
                                  "MINIMIZE"
                                )
                              )
                            },
                            alignVertical: "MIDDLE",
                            spacing: "SPARSE"
                          )
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "2021 OFFSETS" },
                                size: "SMALL",
                                style: { "STRONG" }
                              )
                            },
                            showWhen: a!isPageWidth({ "PHONE" }),
                            align: "CENTER",
                            marginBelow: "NONE"
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "2021 OFFSETS",
                                  labelPosition: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "COLLAPSED",
                                    "ABOVE"
                                  ),
                                  value: {
                                    a!richTextItem(
                                      text: { a!richTextIcon(icon: "seedling") },
                                      color: "#47b311",
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(
                                          text: { "219,482 " },
                                          size: if(
                                            a!isPageWidth(
                                              {
                                                "DESKTOP_NARROW",
                                                "DESKTOP",
                                                "DESKTOP_WIDE"
                                              }
                                            ),
                                            "LARGE_PLUS",
                                            "MEDIUM_PLUS"
                                          ),
                                          style: { "STRONG" }
                                        ),
                                        "MTCO2e"
                                      },
                                      color: "#274e13"
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      color: "SECONDARY",
                                      size: "LARGE"
                                    )
                                  },
                                  align: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "CENTER",
                                    "LEFT"
                                  ),
                                  marginBelow: if(a!isPageWidth({ "PHONE" }), "LESS", "NONE")
                                ),
                                width: if(
                                  a!isPageWidth({ "PHONE" }),
                                  "AUTO",
                                  "MINIMIZE"
                                )
                              )
                            },
                            alignVertical: "MIDDLE",
                            spacing: "SPARSE"
                          )
                        },
                        width: "AUTO"
                      ),
                      a!columnLayout(
                        contents: {
                          a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "2021 NET IMPACT" },
                                size: "SMALL",
                                style: { "STRONG" }
                              )
                            },
                            showWhen: a!isPageWidth({ "PHONE" }),
                            align: "CENTER",
                            marginBelow: "NONE"
                          ),
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "2021 NET IMPACT",
                                  labelPosition: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "COLLAPSED",
                                    "ABOVE"
                                  ),
                                  value: {
                                    a!richTextItem(
                                      text: { a!richTextIcon(icon: "globe-africa") },
                                      color: "#47b311",
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      size: if(
                                        a!isPageWidth(
                                          {
                                            "DESKTOP_NARROW",
                                            "DESKTOP",
                                            "DESKTOP_WIDE"
                                          }
                                        ),
                                        "LARGE_PLUS",
                                        "MEDIUM_PLUS"
                                      ),
                                      style: { "STRONG" }
                                    ),
                                    a!richTextItem(
                                      text: {
                                        a!richTextItem(
                                          text: { "95,037 " },
                                          size: if(
                                            a!isPageWidth(
                                              {
                                                "DESKTOP_NARROW",
                                                "DESKTOP",
                                                "DESKTOP_WIDE"
                                              }
                                            ),
                                            "LARGE_PLUS",
                                            "MEDIUM_PLUS"
                                          ),
                                          style: { "STRONG" }
                                        ),
                                        "MTCO2e"
                                      },
                                      color: "#274e13"
                                    ),
                                    a!richTextItem(
                                      text: { " " },
                                      color: "SECONDARY",
                                      size: "LARGE"
                                    )
                                  },
                                  align: if(
                                    a!isPageWidth({ "PHONE" }),
                                    "CENTER",
                                    "LEFT"
                                  ),
                                  marginBelow: "NONE"
                                ),
                                width: if(
                                  a!isPageWidth({ "PHONE" }),
                                  "AUTO",
                                  "MINIMIZE"
                                )
                              )
                            },
                            alignVertical: "MIDDLE",
                            spacing: "SPARSE"
                          )
                        },
                        width: "AUTO"
                      )
                    },
                    marginAbove: "NONE",
                    stackWhen: { "PHONE" },
                    showDividers: if(a!isPageWidth({ "PHONE" }), false, true)
                  )
                },
                width: "WIDE_PLUS"
              ),
              a!columnLayout(
                contents: {},
                width: "MEDIUM_PLUS",
                showWhen: a!isPageWidth({ "DESKTOP_WIDE" })
              )
            },
            alignVertical: "MIDDLE",
            stackWhen: {
              "PHONE",
              "TABLET_PORTRAIT",
              "TABLET_LANDSCAPE"
            }
          )
        },
        style: "NONE"
      )
    ),
    a!cardLayout(
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
                          a!richTextIcon(icon: "calendar", color: "#274e13")
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!dropdownField(
                        label: "Countries Filter",
                        labelPosition: "COLLAPSED",
                        choiceLabels: {
                          "2021 Full Year",
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
              width: "NARROW_PLUS"
            ),
            a!columnLayout(contents: {}),
            a!columnLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextIcon(icon: "globe-alt", color: "#274e13")
                        }
                      ),
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem(
                      item: a!dropdownField(
                        label: "Countries Filter",
                        labelPosition: "COLLAPSED",
                        choiceLabels: {
                          "All countries",
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
                        value: 1,
                        saveInto: {},
                        searchDisplay: "AUTO",
                        validations: {}
                      )
                    ),
                    a!sideBySideItem(
                      item: a!dropdownField(
                        label: "Regions Filter",
                        labelPosition: "COLLAPSED",
                        choiceLabels: {
                          "All regions",
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
              width: "MEDIUM_PLUS"
            )
          }
        )
      },
      height: "AUTO",
      style: "#85c47d",
      padding: "STANDARD",
      marginBelow: "LESS",
      showBorder: false
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Energy Consumption",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
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
                                        text: { "203,194 " },
                                        size: "LARGE",
                                        style: { "STRONG" }
                                      ),
                                      "MTCO2e",
                                      a!richTextItem(
                                        text: { " " },
                                        color: "SECONDARY",
                                        size: "LARGE"
                                      )
                                    },
                                    marginAbove: "STANDARD",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginBelow: "EVEN_LESS"
                            ),
                            a!tagField(
                              labelPosition: "COLLAPSED",
                              tags: {
                                a!tagItem(
                                  text: "93% REPORTING",
                                  backgroundColor: "#ff9900"
                                )
                              },
                              size: "SMALL"
                            )
                          },
                          width: "NARROW"
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "257K" }, size: "STANDARD")
                              },
                              align: "CENTER",
                              marginBelow: "NONE"
                            ),
                            a!columnsLayout(
                              columns: {
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: 79,
                                      color: "#3a77e9",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  },
                                  width: "AUTO"
                                ),
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: - 1,
                                      color: "NEGATIVE",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  }
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginAbove: "NONE",
                              marginBelow: "EVEN_LESS",
                              spacing: "NONE",
                              stackWhen: { "NEVER" },
                              showDividers: true
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "TARGET" }, size: "SMALL")
                              },
                              align: "CENTER"
                            )
                          },
                          width: "AUTO"
                        )
                      },
                      alignVertical: "MIDDLE",
                      stackWhen: { "TABLET_LANDSCAPE", "DESKTOP_NARROW" }
                    )
                  },
                  link: a!dynamicLink(),
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Transportation",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
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
                                        text: { "85,853 " },
                                        size: "LARGE",
                                        style: { "STRONG" }
                                      ),
                                      "MTCO2e",
                                      a!richTextItem(
                                        text: { " " },
                                        color: "SECONDARY",
                                        size: "LARGE"
                                      )
                                    },
                                    marginAbove: "STANDARD",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginBelow: "EVEN_LESS"
                            ),
                            a!tagField(
                              labelPosition: "COLLAPSED",
                              tags: {
                                a!tagItem(
                                  text: "100% REPORTING",
                                  backgroundColor: "SECONDARY"
                                )
                              },
                              size: "SMALL"
                            )
                          },
                          width: "NARROW"
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "78K" }, size: "STANDARD")
                              },
                              align: "CENTER",
                              marginBelow: "NONE"
                            ),
                            a!columnsLayout(
                              columns: {
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: 100,
                                      color: "NEGATIVE",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  },
                                  width: "AUTO"
                                ),
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: 10,
                                      color: "NEGATIVE",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  }
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginAbove: "NONE",
                              marginBelow: "EVEN_LESS",
                              spacing: "NONE",
                              stackWhen: { "NEVER" },
                              showDividers: true
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "TARGET" }, size: "SMALL")
                              },
                              align: "CENTER"
                            )
                          },
                          width: "AUTO"
                        )
                      },
                      alignVertical: "MIDDLE",
                      stackWhen: { "TABLET_LANDSCAPE", "DESKTOP_NARROW" }
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Waste",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
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
                                        text: { "25,472 " },
                                        size: "LARGE",
                                        style: { "STRONG" }
                                      ),
                                      "MTCO2e",
                                      a!richTextItem(
                                        text: { " " },
                                        color: "SECONDARY",
                                        size: "LARGE"
                                      )
                                    },
                                    marginAbove: "STANDARD",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginBelow: "EVEN_LESS"
                            ),
                            a!tagField(
                              labelPosition: "COLLAPSED",
                              tags: {
                                a!tagItem(
                                  text: "100% REPORTING",
                                  backgroundColor: "SECONDARY"
                                )
                              },
                              size: "SMALL"
                            )
                          },
                          width: "NARROW"
                        ),
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "34K" }, size: "STANDARD")
                              },
                              align: "CENTER",
                              marginBelow: "NONE"
                            ),
                            a!columnsLayout(
                              columns: {
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: 72,
                                      color: "#3a77e9",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  },
                                  width: "AUTO"
                                ),
                                a!columnLayout(
                                  contents: {
                                    a!progressBarField(
                                      label: "",
                                      labelPosition: "COLLAPSED",
                                      percentage: - 1,
                                      color: "NEGATIVE",
                                      style: "THICK",
                                      marginAbove: "LESS",
                                      marginBelow: "LESS",
                                      showPercentage: false
                                    )
                                  }
                                )
                              },
                              alignVertical: "MIDDLE",
                              marginAbove: "NONE",
                              marginBelow: "EVEN_LESS",
                              spacing: "NONE",
                              stackWhen: { "NEVER" },
                              showDividers: true
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(text: { "TARGET" }, size: "SMALL")
                              },
                              align: "CENTER"
                            )
                          },
                          width: "AUTO"
                        )
                      },
                      alignVertical: "MIDDLE",
                      stackWhen: { "TABLET_LANDSCAPE", "DESKTOP_NARROW" }
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        )
      },
      stackWhen: { "PHONE", "TABLET_PORTRAIT" }
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Emissions over Time",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!areaChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      categories: {
                        "Jan",
                        "Feb",
                        "Mar",
                        "Apr",
                        "May",
                        "Jun",
                        "Jul",
                        "Aug",
                        "Sep",
                        "Oct",
                        "Nov",
                        "Dec"
                      },
                      series: {
                        a!chartSeries(
                          label: "Energy",
                          data: {
                            29.8,
                            28,
                            24.9,
                            21.5,
                            27.4,
                            27.2,
                            22.1,
                            29.9,
                            25.6,
                            26.4,
                            23.1,
                            25.3
                          }
                        ),
                        a!chartSeries(
                          label: "Transportation",
                          data: {
                            15.2,
                            19.8,
                            17.1,
                            16.7,
                            18.8,
                            15,
                            19.5,
                            19.4,
                            16.9,
                            16.7,
                            15.3,
                            16.6
                          }
                        ),
                        a!chartSeries(
                          label: "Waste",
                          data: {
                            7.1,
                            6.2,
                            7.1,
                            7.6,
                            7.9,
                            7.6,
                            6,
                            7.9,
                            6.5,
                            6.3,
                            6.6,
                            6.4
                          }
                        )
                      },
                      xAxisTitle: "2021",
                      yAxisTitle: "MTCO2e",
                      stacking: "NONE",
                      showLegend: true,
                      showTooltips: true,
                      colorScheme: a!colorSchemeCustom(colors: { "#59C968", "#41934B", "#117D20" }),
                      height: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "SHORT",
                        "MEDIUM"
                      ),
                      xAxisStyle: "STANDARD",
                      yAxisStyle: "STANDARD"
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Emissions by Category",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!pieChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(label: "Energy", data: 314),
                        a!chartSeries(label: "Transportation", data: 219),
                        a!chartSeries(label: "Waste", data: 89)
                      },
                      colorScheme: a!colorSchemeCustom(
                        colors: {
                          "#59C968",
                          "#41934B",
                          "#117D20",
                          "#0A4A13"
                        }
                      ),
                      style: "DONUT",
                      seriesLabelStyle: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEGEND",
                        "ON_CHART"
                      ),
                      height: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "SHORT",
                        "MEDIUM"
                      )
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Emissions by Scope",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {
                a!cardLayout(
                  contents: {
                    a!pieChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(label: "Scope 1", data: 27),
                        a!chartSeries(label: "Scope 2", data: 287),
                        a!chartSeries(label: "Scope 3", data: 308)
                      },
                      colorScheme: a!colorSchemeCustom(
                        colors: {
                          "#59C968",
                          "#41934B",
                          "#117D20",
                          "#0A4A13"
                        }
                      ),
                      style: "DONUT",
                      seriesLabelStyle: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEGEND",
                        "ON_CHART"
                      ),
                      height: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "SHORT",
                        "MEDIUM"
                      )
                    )
                  },
                  height: "AUTO",
                  style: "NONE",
                  marginBelow: "STANDARD",
                  showBorder: false,
                  showShadow: true
                )
              }
            )
          }
        )
      },
      stackWhen: { "PHONE", "TABLET_PORTRAIT" }
    ),
    a!sectionLayout(
      label: "Emissions per Unit Produced",
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
                        a!richTextItem(
                          text: { "ENERGY (SCOPE 1)" },
                          color: "SECONDARY"
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "bolt",
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
                                  a!richTextItem(text: { "0.020 " }, size: "MEDIUM_PLUS"),
                                  a!richTextItem(text: { "MTCO2e" }, size: "STANDARD")
                                },
                                color: "STANDARD"
                              )
                            }
                          )
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
                      value: {
                        a!richTextItem(text: { "+" }, size: "MEDIUM_PLUS")
                      },
                      align: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEFT",
                        "CENTER"
                      )
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
                          text: { "ENERGY (SCOPE 2)" },
                          color: "SECONDARY"
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "plug",
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
                                  a!richTextItem(text: { "0.157 " }, size: "MEDIUM_PLUS"),
                                  a!richTextItem(text: { "MTCO2e" }, size: "STANDARD")
                                },
                                color: "STANDARD"
                              )
                            }
                          )
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
                      value: {
                        a!richTextItem(text: { "+" }, size: "MEDIUM_PLUS")
                      },
                      align: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEFT",
                        "CENTER"
                      )
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
                          text: { "TRANSPORTATION" },
                          color: "SECONDARY"
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "truck-moving",
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
                                  a!richTextItem(text: { "0.123 " }, size: "MEDIUM_PLUS"),
                                  a!richTextItem(text: { "MTCO2e" }, size: "STANDARD")
                                },
                                color: "STANDARD"
                              )
                            }
                          )
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
                      value: {
                        a!richTextItem(text: { "+" }, size: "MEDIUM_PLUS")
                      },
                      align: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEFT",
                        "CENTER"
                      )
                    )
                  },
                  width: "EXTRA_NARROW"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(text: { "WASTE" }, color: "SECONDARY")
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "trash",
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
                                  a!richTextItem(text: { "0.045 " }, size: "MEDIUM_PLUS"),
                                  a!richTextItem(text: { "MTCO2e" }, size: "STANDARD")
                                },
                                color: "STANDARD"
                              )
                            }
                          )
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
                      value: {
                        a!richTextItem(text: { "=" }, size: "MEDIUM_PLUS")
                      },
                      align: if(
                        a!isPageWidth(
                          {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE",
                            "DESKTOP_NARROW"
                          }
                        ),
                        "LEFT",
                        "CENTER"
                      )
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
                          text: { "TOTAL" },
                          color: "SECONDARY",
                          style: { "STRONG" }
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "smog",
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
                                  a!richTextItem(
                                    text: {
                                      a!richTextItem(text: { "0.320" }, style: { "STRONG" }),
                                      " "
                                    },
                                    size: "MEDIUM_PLUS"
                                  ),
                                  a!richTextItem(text: { "MTCO2e" }, size: "STANDARD")
                                },
                                color: "STANDARD"
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
              alignVertical: "MIDDLE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              },
              showDividers: false
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
  backgroundColor: "TRANSPARENT"
)
```

## Providing the right amount of detail with column distribution

Use variable column sizes to focus the user's attention. This pattern uses different column sizes rather than equal-width columns for the graph, chart, and table to show enough detail for all of graphics. Note that contextual information and calls-to-action can also help your user decipher the information faster and act on what they are seeing.

![Example of a dashboard displaying metrics for award cycle time.](ds-images/dashboards-focusing-user-attention.png)

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.