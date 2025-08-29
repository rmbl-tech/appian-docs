---
source_url: https://docs.appian.com/suite/help/25.3/sail/conference-home-page.html
original_path: sail/conference-home-page.html
version: "25.3"
title: "Conference Home Page"
page_id: "sail/conference-home-page"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Conference Home Page \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Conference Home Page

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

![Preview of a desktop SAIL layout for a(n) conference home page](ds-images/ESG_conference_portal_home.png)

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
a!headerContentLayout(
  header: {
    a!billboardLayout(
      backgroundMedia: a!webImage(
        source: "https://images.unsplash.com/photo-1615209852901-ebdb472411c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3474&q=80"
      ),
      backgroundColor: "#f0f0f0",
      height: if(
        a!isPageWidth({ "PHONE" }),
        "TALL_PLUS",
        "EXTRA_TALL"
      ),
      marginBelow: "EVEN_MORE",
      overlay: a!fullOverlay(
        alignVertical: "TOP",
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
                    size: if(
                      a!isPageWidth(
                        {
                          "PHONE",
                          "TABLET_PORTRAIT",
                          "TABLET_LANDSCAPE"
                        }
                      ),
                      "MEDIUM",
                      "FIT"
                    ),
                    isThumbnail: false,
                    style: "STANDARD"
                  )
                },
                width: "NARROW_PLUS"
              ),
              a!columnLayout(
                contents: {
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                showWhen: a!isPageWidth(
                                  {
                                    "DESKTOP_NARROW",
                                    "DESKTOP",
                                    "DESKTOP_WIDE"
                                  }
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: { "ENGLISH" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111",
                                      style: { "STRONG", "UNDERLINE" }
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
                                      text: { "简体中文" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "हिन्दी" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "ESPAÑOL" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "FRANÇAIS" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "العربية" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "DEUTSCHE" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
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
                                      text: { "日本語" },
                                      link: a!dynamicLink(),
                                      linkStyle: "STANDALONE",
                                      color: "#111111"
                                    )
                                  }
                                ),
                                width: "MINIMIZE"
                              )
                            },
                            spacing: "SPARSE"
                          )
                        }
                      )
                    },
                    alignVertical: "MIDDLE",
                    showWhen: a!isPageWidth(
                      {
                        "TABLET_PORTRAIT",
                        "TABLET_LANDSCAPE",
                        "DESKTOP_NARROW",
                        "DESKTOP",
                        "DESKTOP_WIDE"
                      }
                    )
                  )
                }
              )
            },
            alignVertical: "MIDDLE",
            stackWhen: {
              "PHONE",
              "TABLET_PORTRAIT",
              "TABLET_LANDSCAPE"
            }
          ),
          a!columnsLayout(
            columns: {
              a!columnLayout(contents: {}, width: "EXTRA_NARROW"),
              a!columnLayout(
                contents: {
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: { char(10), char(10) },
                    showWhen: a!isPageWidth(
                      {
                        "DESKTOP_NARROW",
                        "DESKTOP",
                        "DESKTOP_WIDE"
                      }
                    ),
                    marginAbove: "NONE",
                    marginBelow: "NONE"
                  ),
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: {
                          "ESG World is the most important global gathering of advocates and thought leaders on ",
                          a!richTextItem(
                            text: { "Environmental" },
                            style: { "STRONG" }
                          ),
                          ", ",
                          a!richTextItem(text: { "Social" }, style: { "STRONG" }),
                          ", and ",
                          a!richTextItem(text: { "Governance" }, style: { "STRONG" }),
                          " topics."
                        },
                        size: "MEDIUM_PLUS"
                      )
                    },
                    marginAbove: "EVEN_MORE"
                  ),
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: { "25–27 April, 2023" },
                        size: "MEDIUM_PLUS",
                        style: { "STRONG" }
                      )
                    },
                    marginAbove: "EVEN_MORE"
                  ),
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextItem(
                        text: { "Copenhagen, Denmark" },
                        size: "MEDIUM_PLUS"
                      ),
                      char(10),
                      a!richTextItem(
                        text: { "And online worldwide" },
                        size: "MEDIUM"
                      ),
                      char(10)
                    },
                    marginBelow: "MORE"
                  ),
                  a!buttonArrayLayout(
                    buttons: {
                      a!buttonWidget(
                        label: "Register Now",
                        size: "LARGE",
                        style: "SOLID"
                      )
                    },
                    align: "START"
                  )
                },
                width: "MEDIUM_PLUS"
              ),
              a!columnLayout(contents: {})
            }
          )
        },
        style: if(
          a!isPageWidth({ "PHONE" }),
          "SEMI_LIGHT",
          "NONE"
        )
      )
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}),
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "ATTENDEES" },
                  color: "ACCENT",
                  style: { "STRONG" }
                )
              }
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "Top Experts from around the Globe" },
                  color: "STANDARD",
                  size: "MEDIUM_PLUS"
                )
              }
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
              }
            )
          },
          width: "MEDIUM_PLUS"
        ),
        a!columnLayout(
          contents: {
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              images: {
                a!webImage(
                  source: "https://images.unsplash.com/photo-1462331321792-cc44368b8894?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2753&q=80",
                  altText: "Photo of forest"
                )
              },
              size: "FIT",
              isThumbnail: false,
              style: "STANDARD"
            )
          },
          width: "MEDIUM_PLUS"
        ),
        a!columnLayout(contents: {})
      },
      marginBelow: "EVEN_MORE",
      stackWhen: { "PHONE", "TABLET_PORTRAIT" }
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}),
        a!columnLayout(
          contents: {
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              images: {
                a!webImage(
                  source: "https://images.unsplash.com/photo-1473448912268-2022ce9509d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2282&q=80",
                  altText: "Photo of forest"
                )
              },
              size: "FIT",
              isThumbnail: false,
              style: "STANDARD"
            )
          },
          width: "MEDIUM_PLUS"
        ),
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "TOPICS" },
                  color: "ACCENT",
                  style: { "STRONG" }
                )
              }
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "Relevant Discussions for Our Times" },
                  color: "STANDARD",
                  size: "MEDIUM_PLUS"
                )
              }
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
              }
            )
          },
          width: "MEDIUM_PLUS"
        ),
        a!columnLayout(contents: {})
      },
      marginBelow: "EVEN_MORE",
      stackWhen: { "PHONE", "TABLET_PORTRAIT" }
    )
  },
  backgroundColor: "#f8f6f0"
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.