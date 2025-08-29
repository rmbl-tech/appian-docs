---
source_url: https://docs.appian.com/suite/help/25.3/sail/portal-home-page.html
original_path: sail/portal-home-page.html
version: "25.3"
title: "Portal Home Page"
page_id: "sail/portal-home-page"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Portal Home Page \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Portal Home Page

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

![Preview of a desktop SAIL layout for a(n) portal home page](ds-images/portal_home_page.png)

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
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundMedia: a!webImage(
        source: "https://images.unsplash.com/photo-1550757627-155698319664?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80"
      ),
      backgroundColor: "#f0f0f0",
      height: "EXTRA_TALL",
      marginBelow: "NONE",
      overlay: a!fullOverlay(
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
                      a!documentImage(
                        document: a!EXAMPLE_DOCUMENT_IMAGE(),
                        altText: "Boreas Logo"
                      )
                    },
                    size: if(
                      a!isPageWidth({ "PHONE", "TABLET_PORTRAIT" }),
                      "MEDIUM",
                      "FIT"
                    ),
                    isThumbnail: false,
                    style: "STANDARD"
                  )
                },
                width: "NARROW_PLUS"
              ),
              a!columnLayout(contents: {}),
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
                                      a!richTextItem(
                                        text: { "Welcome" },
                                        color: "#ffffff",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    },
                                    preventWrapping: true,
                                    align: "CENTER"
                                  )
                                },
                                height: "AUTO",
                                style: "TRANSPARENT",
                                padding: "LESS",
                                marginBelow: "NONE",
                                showBorder: false,
                                accessibilityText: "Navigation Tab (Selected)"
                              ),
                              a!columnsLayout(
                                columns: {
                                  a!columnLayout(contents: {}),
                                  a!columnLayout(
                                    contents: {
                                      a!cardLayout(
                                        contents: {},
                                        height: "AUTO",
                                        style: "NONE",
                                        padding: "NONE",
                                        marginBelow: "NONE",
                                        showBorder: true
                                      )
                                    },
                                    width: "EXTRA_NARROW"
                                  ),
                                  a!columnLayout(contents: {})
                                },
                                spacing: "NONE",
                                stackWhen: { "NEVER" }
                              )
                            },
                            link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                            height: "AUTO",
                            style: "TRANSPARENT",
                            padding: "NONE",
                            marginBelow: "NONE",
                            showBorder: false
                          )
                        }
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
                                        text: { "How to Help" },
                                        color: "#ffffff",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true,
                                    align: "CENTER"
                                  )
                                },
                                height: "AUTO",
                                style: "TRANSPARENT",
                                padding: "LESS",
                                marginBelow: "NONE",
                                showBorder: false,
                                accessibilityText: "Navigation Tab (Not Selected)"
                              )
                            },
                            link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                            height: "AUTO",
                            style: "TRANSPARENT",
                            padding: "NONE",
                            marginBelow: "NONE",
                            showBorder: false
                          )
                        }
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
                                        text: { "Our Story" },
                                        color: "#ffffff",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true,
                                    align: "CENTER"
                                  )
                                },
                                height: "AUTO",
                                style: "TRANSPARENT",
                                padding: "LESS",
                                marginBelow: "NONE",
                                showBorder: false,
                                accessibilityText: "Navigation Tab (Not Selected)"
                              )
                            },
                            link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                            height: "AUTO",
                            style: "TRANSPARENT",
                            padding: "NONE",
                            marginBelow: "NONE",
                            showBorder: false
                          )
                        }
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
                                        text: { "Contact Us" },
                                        color: "#ffffff",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true,
                                    align: "CENTER"
                                  )
                                },
                                height: "AUTO",
                                style: "TRANSPARENT",
                                padding: "LESS",
                                marginBelow: "NONE",
                                showBorder: false,
                                accessibilityText: "Navigation Tab (Not Selected)"
                              )
                            },
                            link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                            height: "AUTO",
                            style: "TRANSPARENT",
                            padding: "NONE",
                            marginBelow: "NONE",
                            showBorder: false
                          )
                        }
                      )
                    },
                    alignVertical: "TOP",
                    spacing: "NONE"
                  )
                },
                width: "MEDIUM_PLUS"
              )
            },
            alignVertical: "MIDDLE",
            stackWhen: { "PHONE", "TABLET_PORTRAIT" }
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              a!richTextItem(
                text: {
                  "A N T A R C T I C A   N E E D S   H E L P"
                },
                color: "#ffffff",
                size: "EXTRA_LARGE"
              )
            },
            showWhen: a!isPageWidth({ "DESKTOP_WIDE" }),
            align: "CENTER",
            marginAbove: "EVEN_MORE"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              a!richTextItem(
                text: {
                  "A N T A R C T I C A   N E E D S   H E L P"
                },
                color: "#ffffff",
                size: "LARGE_PLUS"
              )
            },
            showWhen: a!isPageWidth({ "DESKTOP" }),
            align: "CENTER",
            marginAbove: "EVEN_MORE"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              char(10),
              a!richTextItem(
                text: {
                  "A N T A R C T I C A   N E E D S   H E L P"
                },
                color: "#ffffff",
                size: "LARGE"
              )
            },
            showWhen: a!isPageWidth(
              {
                "DESKTOP_NARROW",
                "TABLET_LANDSCAPE",
                "TABLET_PORTRAIT"
              }
            ),
            align: "CENTER",
            marginAbove: "EVEN_MORE"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              char(10),
              char(10),
              a!richTextItem(
                text: { "ANTARCTICA  NEEDS  HELP" },
                color: "STANDARD",
                size: "LARGE"
              )
            },
            showWhen: a!isPageWidth({ "PHONE" }),
            align: "CENTER",
            marginAbove: "EVEN_MORE"
          )
        },
        style: "SEMI_DARK"
      )
    )
  },
  contents: {
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
            a!columnLayout(
              contents: {
                a!columnsLayout(
                  columns: {
                    a!columnLayout(contents: {}),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {},
                          height: "AUTO",
                          style: "TRANSPARENT",
                          marginBelow: "NONE",
                          showBorder: false,
                          decorativeBarPosition: "TOP"
                        )
                      },
                      width: "EXTRA_NARROW"
                    ),
                    a!columnLayout(contents: {})
                  },
                  marginAbove: "MORE",
                  marginBelow: "NONE",
                  stackWhen: { "NEVER" }
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(text: { "What We Do" }, size: "LARGE")
                  },
                  align: "CENTER",
                  marginBelow: "MORE"
                ),
                a!cardGroupLayout(
                  labelPosition: "COLLAPSED",
                  cards: {
                    a!cardLayout(
                      contents: {
                        a!billboardLayout(
                          backgroundMedia: a!webImage(
                            source: "https://images.unsplash.com/photo-1551415923-a2297c7fda79?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3264&q=80"
                          ),
                          backgroundColor: "#f0f0f0",
                          height: "SHORT",
                          marginBelow: "NONE"
                        ),
                        a!cardLayout(
                          contents: {
                            a!stampField(
                              labelPosition: "COLLAPSED",
                              icon: "leaf",
                              backgroundColor: "TRANSPARENT",
                              contentColor: "STANDARD",
                              size: "TINY",
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: { "Conservation" },
                                  size: "MEDIUM",
                                  style: { "STRONG" }
                                )
                              },
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce purus est, condimentum et nulla ac, rutrum iaculis massa. Nam rhoncus consectetur mauris, at pretium massa scelerisque vel. Quisque tempus justo ex, nec feugiat dui ornare in. In ut quam ultricies, venenatis nulla non, interdum elit."
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "TRANSPARENT",
                          padding: "STANDARD",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "MORE"
                    ),
                    a!cardLayout(
                      contents: {
                        a!billboardLayout(
                          backgroundMedia: a!webImage(
                            source: "https://images.unsplash.com/photo-1582592621737-d5ab435305cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
                          ),
                          backgroundColor: "#f0f0f0",
                          height: "SHORT",
                          marginBelow: "NONE"
                        ),
                        a!cardLayout(
                          contents: {
                            a!stampField(
                              labelPosition: "COLLAPSED",
                              icon: "microscope",
                              backgroundColor: "TRANSPARENT",
                              contentColor: "STANDARD",
                              size: "TINY",
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: { "Research" },
                                  size: "MEDIUM",
                                  style: { "STRONG" }
                                )
                              },
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                "Praesent a libero enim. Vestibulum posuere, urna a ultricies rhoncus, enim quam finibus lorem, at pulvinar mi lorem eu orci. Quisque consectetur pellentesque sagittis. Maecenas in tellus sed orci pretium venenatis. Ut vitae ligula metus. Etiam bibendum finibus purus vel commodo."
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "TRANSPARENT",
                          padding: "STANDARD",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "MORE"
                    ),
                    a!cardLayout(
                      contents: {
                        a!billboardLayout(
                          backgroundMedia: a!webImage(
                            source: "https://images.unsplash.com/photo-1602137925482-00fb0ed07877?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
                          ),
                          backgroundColor: "#f0f0f0",
                          height: "SHORT",
                          marginBelow: "NONE"
                        ),
                        a!cardLayout(
                          contents: {
                            a!stampField(
                              labelPosition: "COLLAPSED",
                              icon: "chalkboard-teacher",
                              backgroundColor: "TRANSPARENT",
                              contentColor: "STANDARD",
                              size: "TINY",
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: { "Education" },
                                  size: "MEDIUM",
                                  style: { "STRONG" }
                                )
                              },
                              align: "CENTER"
                            ),
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                "Vivamus tincidunt eros neque. Suspendisse lobortis nulla magna, in finibus massa tincidunt non. Donec semper ligula nec mollis blandit. Vestibulum eu imperdiet libero. Quisque rutrum turpis et dolor congue, quis blandit felis congue. Praesent eget mattis lectus. Etiam at tempor dui. Praesent non ornare massa."
                              },
                              align: "CENTER"
                            )
                          },
                          height: "AUTO",
                          style: "TRANSPARENT",
                          padding: "STANDARD",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "MORE"
                    )
                  },
                  cardWidth: "NARROW"
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {})
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
      style: "#f3f3f3",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false,
      decorativeBarColor: "#efefef"
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
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(width: "MINIMIZE"),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Start Helping Today" },
                                        size: "LARGE"
                                      )
                                    }
                                  )
                                )
                              }
                            )
                          },
                          height: "AUTO",
                          style: "TRANSPARENT",
                          padding: "NONE",
                          marginBelow: "MORE",
                          showBorder: false,
                          decorativeBarPosition: "START",
                          decorativeBarColor: "ACCENT"
                        ),
                        a!radioButtonField(
                          choiceLabels: { "$5", "$25", "$50", "$100", "$250", "Other" },
                          choiceValues: { 1, 2, 3, 4, 5, 6 },
                          label: "Gift Amount",
                          labelPosition: "COLLAPSED",
                          value: 2,
                          saveInto: {},
                          choiceLayout: "COMPACT",
                          choiceStyle: "CARDS",
                          validations: {}
                        ),
                        a!buttonArrayLayout(
                          buttons: {
                            a!buttonWidget(
                              label: "Donate",
                              icon: "hands-helping",
                              size: "LARGE",
                              style: "SOLID"
                            )
                          },
                          align: "START",
                          marginAbove: "MORE"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!imageField(
                              label: "",
                              labelPosition: "COLLAPSED",
                              images: {
                                a!webImage(
                                  source: "https://images.unsplash.com/photo-1551415923-51267c1f2d73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3432&q=80"
                                )
                              },
                              size: "FIT",
                              isThumbnail: false,
                              style: "STANDARD"
                            )
                          },
                          height: "AUTO",
                          style: "TRANSPARENT",
                          padding: "NONE",
                          marginBelow: "NONE",
                          showBorder: true,
                          showShadow: false
                        )
                      }
                    )
                  },
                  marginAbove: "EVEN_MORE",
                  marginBelow: "EVEN_MORE",
                  stackWhen: { "PHONE", "TABLET_PORTRAIT" }
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {})
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
      style: "#fcfcfc",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false,
      decorativeBarColor: "#efefef"
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
                        a!imageField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          /* This is a placeholder image; replace as needed */
                          images: {
                            a!documentImage(
                              document: a!EXAMPLE_DOCUMENT_IMAGE(),
                              altText: "Boreas Logo"
                            )
                          },
                          size: "MEDIUM",
                          isThumbnail: false,
                          style: "STANDARD",
                          align: "START"
                        )
                      },
                      width: "AUTO"
                    ),
                    a!columnLayout(
                      contents: {
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Boreas Home",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Create an Account",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Payment Issues",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Customer Service",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        )
                      },
                      width: "NARROW_PLUS"
                    ),
                    a!columnLayout(
                      contents: {
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Tax Information",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Leadership",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        ),
                        a!linkField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          links: {
                            a!safeLink(
                              label: "Financial Information",
                              uri: "https://www.appian.com",
                              openLinkIn: "NEW_TAB"
                            )
                          }
                        )
                      },
                      width: "NARROW_PLUS"
                    )
                  },
                  stackWhen: { "PHONE", "TABLET_PORTRAIT" }
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout(contents: {})
          }
        )
      },
      height: "AUTO",
      style: "#111",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false,
      decorativeBarPosition: "TOP",
      decorativeBarColor: "#351c75"
    )
  },
  contentsPadding: "NONE"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.