---
source_url: https://docs.appian.com/suite/help/25.3/sail/mobile-incident-reporting.html
original_path: sail/mobile-incident-reporting.html
version: "25.3"
title: "Mobile Incident Reporting"
page_id: "sail/mobile-incident-reporting"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/) Mobile Incident Reporting \[SAIL Design System: Inspiration\]

[← Back to Inspiration Gallery](inspiration.html)

# Mobile Incident Reporting

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

![Preview of a desktop SAIL layout for a(n) mobile incident reporting](ds-images/mobile_incident_reporting.png)

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
/*This example is best viewed on mobile devices */
/*Click Tablet or Phone in the upper right to see how the interface displays on narrower screens */
a!localVariables(
  local!stepNumber: 1,
  choose(
    local!stepNumber,
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              /* This is a placeholder image; replace as needed */
              images: {
                a!documentImage(document: a!EXAMPLE_DOCUMENT_IMAGE())
              },
              size: "SMALL",
              isThumbnail: false,
              style: "STANDARD",
              align: "START"
            )
          },
          height: "AUTO",
          style: "#e4f1df",
          padding: "MORE",
          marginBelow: "NONE",
          showBorder: false
        )
      },
      contents: {
        a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextIcon(
              icon: "qrcode",
              color: "#b6d7a8",
              size: "EXTRA_LARGE"
            ),
            char(10),
            a!richTextItem(
              text: { "ABCDEFG" },
              color: "#b6d7a8",
              size: "STANDARD"
            )
          },
          align: "CENTER",
          marginAbove: "MORE",
          marginBelow: "MORE"
        ),
        a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: {
                "Please enter the 7-letter code found on the equipment identification plaque"
              },
              size: "MEDIUM"
            )
          },
          align: "CENTER",
          marginBelow: "MORE"
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
            a!columnLayout(
              contents: {
                a!textField(
                  label: "",
                  labelPosition: "COLLAPSED",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                )
              },
              width: "NARROW_PLUS"
            ),
            a!columnLayout(contents: {})
          },
          marginBelow: "MORE",
          stackWhen: { "NEVER" }
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Go",
                      icon: "arrow-right",
                      size: "LARGE",
                      width: "FILL",
                      style: "SOLID",
                      value: 2,
                      saveInto: local!stepNumber
                    )
                  },
                  align: "START",
                  marginAbove: "STANDARD"
                )
              },
              width: "NARROW_PLUS"
            ),
            a!columnLayout(contents: {})
          },
          marginBelow: "MORE",
          stackWhen: { "NEVER" }
        )
      },
      backgroundColor: "#e4f1df"
    ),
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              /* This is a placeholder image; replace as needed */
              images: {
                a!documentImage(document: a!EXAMPLE_DOCUMENT_IMAGE())
              },
              size: "SMALL",
              isThumbnail: false,
              style: "STANDARD",
              align: "START"
            ),
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              /* This is a placeholder image; replace as needed */
              images: {
                a!documentImage(document: a!EXAMPLE_DOCUMENT_IMAGE())
              },
              size: "MEDIUM",
              isThumbnail: false,
              style: "STANDARD",
              align: "CENTER"
            )
          },
          height: "AUTO",
          style: "#e4f1df",
          padding: "MORE",
          marginBelow: "NONE",
          showBorder: false
        )
      },
      contents: {
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!stampField(
                labelPosition: "COLLAPSED",
                icon: "tag",
                backgroundColor: "#127d21",
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
                    text: { "Model 7100-Max Escalator" },
                    size: "MEDIUM"
                  )
                }
              )
            )
          },
          alignVertical: "MIDDLE",
          marginAbove: "STANDARD",
          marginBelow: "LESS"
        ),
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!stampField(
                labelPosition: "COLLAPSED",
                icon: "map-marker",
                backgroundColor: "#127d21",
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
                    text: { "3/F – 4/F Southwest" },
                    size: "MEDIUM",
                    style: { "STRONG" }
                  ),
                  char(10),
                  a!richTextItem(
                    text: { "Appian Way Shopping Centre" },
                    size: "MEDIUM"
                  ),
                  char(10),
                  a!richTextItem(text: { "Leeds LS2 7AU" }, size: "MEDIUM"),
                  char(10),
                  a!richTextItem(text: { "United Kingdom" }, size: "MEDIUM")
                },
                marginAbove: "LESS",
                marginBelow: "NONE"
              )
            )
          },
          alignVertical: "TOP",
          marginAbove: "STANDARD",
          marginBelow: "LESS"
        ),
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!stampField(
                labelPosition: "COLLAPSED",
                icon: "calendar",
                backgroundColor: "#127d21",
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
                    text: { "In service since 24 Mar 2019" },
                    size: "MEDIUM"
                  )
                }
              )
            )
          },
          alignVertical: "MIDDLE",
          marginAbove: "EVEN_LESS",
          marginBelow: "STANDARD"
        ),
        a!sectionLayout(
          label: "",
          contents: {
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "View Service History",
                  size: "LARGE",
                  width: "FILL",
                  style: "OUTLINE"
                ),
                a!buttonWidget(
                  label: "Request Service",
                  size: "LARGE",
                  width: "FILL",
                  style: "SOLID",
                  value: 3,
                  saveInto: local!stepNumber
                )
              },
              align: "START",
              marginAbove: "NONE",
              marginBelow: "NONE"
            )
          },
          divider: "ABOVE",
          marginAbove: "MORE"
        )
      }
    ),
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!imageField(
              label: "",
              labelPosition: "COLLAPSED",
              /* This is a placeholder image; replace as needed */
              images: {
                a!documentImage(document: a!EXAMPLE_DOCUMENT_IMAGE())
              },
              size: "SMALL",
              isThumbnail: false,
              style: "STANDARD",
              align: "START"
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "Request Service" },
                  size: "LARGE",
                  style: { "STRONG" }
                )
              }
            ),
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "Model 7100-Max Escalator" },
                  size: "STANDARD"
                )
              }
            )
          },
          height: "AUTO",
          style: "#e4f1df",
          padding: "MORE",
          marginBelow: "NONE",
          showBorder: false
        )
      },
      contents: {
        a!cardChoiceField(
          label: "Service Type",
          data: {
            a!map(
              id: 1,
              icon: "stethoscope",
              primaryText: "Inspection",
              secondaryText: "Perform routine maintenance"
            ),
            a!map(
              id: 2,
              icon: "wrench",
              primaryText: "Repair",
              secondaryText: "Fix a problem"
            )
          },
          cardTemplate: a!cardTemplateBarTextJustified(
            id: fv!data.id,
            primaryText: fv!data.primaryText,
            secondaryText: fv!data.secondaryText,
            icon: fv!data.icon
          ),
          value: 2,
          saveInto: {},
          maxSelections: 1,
          required: true,
          validations: {}
        ),
        a!paragraphField(
          label: "Problem Description",
          labelPosition: "ABOVE",
          instructions: "Please include any diagnostic trouble codes",
          saveInto: {},
          refreshAfter: "UNFOCUS",
          height: "MEDIUM",
          required: true,
          validations: {}
        ),
        a!fileUploadField(
          label: "Photos",
          labelPosition: "ABOVE",
          saveInto: {},
          validations: {}
        ),
        a!sectionLayout(
          label: "",
          contents: {
            a!sideBySideLayout(
              items: {
                a!sideBySideItem(
                  item: a!buttonArrayLayout(
                    buttons: {
                      a!buttonWidget(
                        label: "Cancel",
                        size: "LARGE",
                        width: "MINIMIZE",
                        style: "OUTLINE"
                      )
                    },
                    align: "START",
                    marginAbove: "NONE",
                    marginBelow: "NONE"
                  )
                ),
                a!sideBySideItem(
                  item: a!buttonArrayLayout(
                    buttons: {
                      a!buttonWidget(
                        label: "Submit Request",
                        size: "LARGE",
                        width: "MINIMIZE",
                        style: "SOLID"
                      )
                    },
                    align: "END",
                    marginAbove: "NONE",
                    marginBelow: "NONE"
                  )
                )
              }
            )
          },
          divider: "ABOVE",
          marginAbove: "MORE"
        )
      }
    )
  )
)
```

![Appian logo](../images/design-sys/logo-appian-white-rebrand.svg)

[Appian.com](https://www.appian.com/) [Appian Documentation](/suite/help/25.3/) [Appian Community](https://community.appian.com) [Privacy](https://appian.com/legal/privacy-information.html) [Update Cookie Preferences](#)
 

©2025 Appian. All rights reserved.