---
source_url: https://docs.appian.com/suite/help/25.3/responsive_design.html
original_path: responsive_design.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Responsive Design

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Responsive interfaces adjust their components to fit the available space on a variety of page widths. In Appian, you can design responsive interfaces that look great on screens from small phones to large desktops by using the `a!isPageWidth()` function and the _stack when_ parameter.

The [a!isPageWidth()](fnc_scripting_a_isPageWidth.html) function checks the page width (not window width) and allows you to conditionally change any component behavior or display different adaptive layouts based on that width. It works the same on desktop and mobile browsers, and the mobile app. To use the function, write `if` statements to define the page widths at which you want the component behavior to change.

The _stack when_ parameter allows you to control the vertical stacking behavior of columns or side by side items based on the width of the user's page. It works the same on desktop and mobile browsers, and the mobile app. To use the _stack when_ parameter in design mode, choose one of the value options like "Tablet Portrait or Narrower" to not only stack at the page width specified, but at all narrower page widths. To use the parameter in expression mode, list all the widths at which you want to stack the side by side or columns layouts.

For both the `a!isPageWidth()` function and the _stack when_ parameter, you can choose from a list of form factors that represent a range of widths for most devices.

## When should I use this?

By default, columns stack at phone width and side by side items never stack. If you're designing simple interfaces that are intended to be used on a single page width, these default behaviors should be sufficient. However, if your interface will be viewed at various page widths, use `a!isPageWidth()` and _stack when_ to help you achieve a responsive UI.

Appian also has the [a!isNativeMobile](fnc_scripting_a_isNativeMobile.html) function, which determines if the interface is being viewed on the [Appian Mobile](Appian_for_Mobile_Devices.html) application. This function returns `true` when a user is on the mobile app and `false` if they're on a mobile or desktop browser. This makes it perfect for defining behavior based on whether or not a user is on the Appian Mobile app, such as checking for users not on the app and showing them a link that redirects them to download Appian Mobile.

The `a!isNativeMobile()` function should only be used to define behaviors that are dependent on whether or not the mobile app is being used. Since it cannot determine the screen size of the mobile device, it should not be used to define UI changes like stacking, resizing a component, or component visibility based on device width. Instead, define these behaviors using the _stack when_ parameter and `a!isPageWidth()` function.

### Responsive landing page example

Let's walk through an example to show how to use `a!isPageWidth()` and _stack when_ together. The example already uses the _stack when_ parameter, but we will add it in a few more places and add the `a!isPageWidth()` function to create a more responsive experience.

Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) to copy and paste the following expression into your new interface.

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
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(),
            a!columnLayout(
              contents: {
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Hi, " & user(loggedinuser(), "firstName") & "."
                              },
                              size: "MEDIUM_PLUS"
                            ),
                            char(10),
                            a!richTextItem(
                              text: {
                                "What do you need help with today?"
                              },
                              size: "LARGE",
                              style: {
                                "STRONG"
                              }
                            ),
                            char(10),
                            char(10)
                          }
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!imageField(
                          label: "Welcome Image",
                          labelPosition: "COLLAPSED",
                          images: {
                            a!documentImage(
                              document: a!EXAMPLE_RECEPTIONIST_IMAGE()
                            )
                          },
                          size: "FIT",
                          isThumbnail: false,
                          style: "STANDARD"
                        )
                      },
                      width: "MEDIUM"
                    )
                  },
                  alignVertical: "MIDDLE"
                )
              },
              width: "WIDE_PLUS"
            ),
            a!columnLayout()
          },
          alignVertical: "MIDDLE",
          stackWhen: {
            "PHONE",
            "TABLET_PORTRAIT"
          }
        )
      },
      height: "AUTO",
      style: "#cc0000",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  contents: {
    a!columnsLayout(
      columns: {
        a!columnLayout(),
        a!columnLayout(
          contents: {
            a!columnsLayout(
              columns: {
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
                                    a!imageField(
                                      label: "Category Image",
                                      labelPosition: "COLLAPSED",
                                      images: {
                                        a!documentImage(
                                          document: a!EXAMPLE_INSURANCE_IMAGE()
                                        )
                                      },
                                      size: "FIT",
                                      isThumbnail: false,
                                      style: "STANDARD",
                                      align: "CENTER"
                                    )
                                  },
                                  height: "AUTO",
                                  style: "#434343",
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
                                    a!richTextDisplayField(
                                      label: "Rich Text",
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Insurance"
                                          },
                                          color: "ACCENT",
                                          size: "LARGE"
                                        )
                                      }
                                    ),
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Medical, dental, vision, and supplemental coverage"
                                          },
                                          color: "STANDARD",
                                          size: "MEDIUM"
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
                              }
                            )
                          },
                          spacing: "NONE",
                          stackWhen: {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE"
                          }
                        )
                      },
                      link: a!dynamicLink(),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!imageField(
                                      label: "Category Image",
                                      labelPosition: "COLLAPSED",
                                      images: {
                                        a!documentImage(
                                          document: a!EXAMPLE_IT_SUPPORT_IMAGE()
                                        )
                                      },
                                      size: "FIT",
                                      isThumbnail: false,
                                      style: "STANDARD",
                                      align: "CENTER"
                                    )
                                  },
                                  height: "AUTO",
                                  style: "#434343",
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
                                    a!richTextDisplayField(
                                      label: "Rich Text",
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "IT Support"
                                          },
                                          color: "ACCENT",
                                          size: "LARGE"
                                        )
                                      }
                                    ),
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Computer equipment, software, telecom issues"
                                          },
                                          color: "STANDARD",
                                          size: "MEDIUM"
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
                              }
                            )
                          },
                          spacing: "NONE",
                          stackWhen: {
                            "PHONE",
                            "TABLET_LANDSCAPE",
                            "TABLET_PORTRAIT"
                          }
                        )
                      },
                      link: a!dynamicLink(),
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
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!imageField(
                                      label: "Category Image",
                                      labelPosition: "COLLAPSED",
                                      images: {
                                        a!documentImage(
                                          document: a!EXAMPLE_FINANCE_IMAGE()
                                        )
                                      },
                                      size: "FIT",
                                      isThumbnail: false,
                                      style: "STANDARD",
                                      align: "CENTER"
                                    )
                                  },
                                  height: "AUTO",
                                  style: "#434343",
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
                                    a!richTextDisplayField(
                                      label: "Rich Text",
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Finance"
                                          },
                                          color: "ACCENT",
                                          size: "LARGE"
                                        )
                                      }
                                    ),
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Expense reimbursement, pay stubs, retirement accounts"
                                          },
                                          color: "STANDARD",
                                          size: "MEDIUM"
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
                              }
                            )
                          },
                          spacing: "NONE",
                          stackWhen: {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE"
                          }
                        )
                      },
                      link: a!dynamicLink(),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!cardLayout(
                                  contents: {
                                    a!imageField(
                                      label: "Category Image",
                                      labelPosition: "COLLAPSED",
                                      images: {
                                        a!documentImage(
                                          document: a!EXAMPLE_FACILITIES_IMAGE()
                                        )
                                      },
                                      size: "FIT",
                                      isThumbnail: false,
                                      style: "STANDARD",
                                      align: "CENTER"
                                    )
                                  },
                                  height: "AUTO",
                                  style: "#434343",
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
                                    a!richTextDisplayField(
                                      label: "Rich Text",
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Facilities"
                                          },
                                          color: "ACCENT",
                                          size: "LARGE"
                                        )
                                      }
                                    ),
                                    a!richTextDisplayField(
                                      labelPosition: "COLLAPSED",
                                      value: {
                                        a!richTextItem(
                                          text: {
                                            "Office supplies, HVAC, refreshments"
                                          },
                                          color: "STANDARD",
                                          size: "MEDIUM"
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
                              }
                            )
                          },
                          spacing: "NONE",
                          stackWhen: {
                            "PHONE",
                            "TABLET_PORTRAIT",
                            "TABLET_LANDSCAPE"
                          }
                        )
                      },
                      link: a!dynamicLink(),
                      height: "AUTO",
                      style: "NONE",
                      padding: "NONE",
                      marginBelow: "STANDARD"
                    )
                  }
                )
              }
            )
          },
          width: "WIDE_PLUS"
        ),
        a!columnLayout()
      }
    )
  },
  backgroundColor: "TRANSPARENT"
)
```

We will start by looking at the interface at different screen sizes to determine if there are points where its contents overlap or don't have enough room to display. A good way to do this is by using the **Fit** form factor preview option in the interface and dragging the panes to update the live view.

You can also check each form factor preview by selecting its toggle in the upper right-hand corner of the live preview. For example, to preview an interface on a portrait-orientation tablet, select the tablet icon then click the rotate button.

![This gif shows testing the responsive behavior of the example using the Fit form factor before changes are made to the example so that you can see the text wrapping.](images/adaptiveLandingPage.gif)

Notice that when we shrink the interface using the fit form factor, the header text becomes unreadable and the card text begins to wrap. This happens when the screen is approximately the size of a portrait-oriented tablet. We can solve these problems by adding the _stack when_ parameter to the header and the `a!isPageWidth()` function to the _size_ parameter of the text and image fields in the header and cards.

To make the header more responsive:

1.  In the header, click the **Columns Layout** containing the rich text display and image components.
2.  In the **COMPONENT CONFIGURATION** pane, find **Stack When** and select **Portrait Tablet or narrower** for the value.
3.  In the header, click the rich text display component.
4.  In the **COMPONENT CONFIGURATION** pane, find **Display Value** and click **Configure items**.
5.  Select the second **Text Item** option.
6.  In **Size**, click **Edit as Expression**.
7.  Copy and paste the following expression:
    -   `if(a!isPageWidth("TABLET_PORTRAIT"),"MEDIUM_PLUS","LARGE")`
    -   This expression creates a condition that will change the size of the text to `"MEDIUM_PLUS"` if the page width is `"TABLET_PORTRAIT"`. If not, the text size will be `"LARGE"`.
8.  Click **OK**.
9.  In the header, click the image component.
10.  In **Size**, click **Edit as Expression**.
11.  Copy and paste the following expression:
     -   `if(a!isPageWidth({"PHONE", "TABLET_PORTRAIT", "TABLET_LANDSCAPE"}), "MEDIUM", "FIT")`
12.  Click **OK**.

With the header configured, we can move on to adding `a!isPageWidth()` to the _size_ parameters of the rich text display and image components within the "Insurance", "IT Support", "Finance", and "Facilities" options.

To make the option cards more responsive:

1.  In the "Insurance" option, click the image component.
2.  In the **COMPONENT CONFIGURATION**, click **Edit as Expression** adjacent to **Size**.
3.  Copy and paste the following expression:
    -   `if(a!isPageWidth({"PHONE", "TABLET_LANDSCAPE"}), "MEDIUM","FIT")`
4.  Click **OK**.
5.  In the "Insurance" card, click the rich text item that says "Insurance".
6.  In **COMPONENT CONFIGURATION** under **Display Value**, click **Configure items**.
7.  Click **Text Item**.
8.  In **Size**, click **Edit as Expression**.
9.  Copy and paste the following expression:
    -   `if(a!isPageWidth("TABLET_PORTRAIT"),"MEDIUM_PLUS","LARGE")`
10.  Click **OK**.
11.  Repeat these steps for the image and rich text items in the "IT Support", "Finance", and "Facilities" options.

Let's test the interface again to check the responsive behavior. At this point, the images are a smaller size, the text doesn't wrap, and every component on the interface has room to display properly.

![This gif shows testing the responsive behavior of the example using the Fit form factor after changes are made to the example so that you can see that the text no longer wraps and everything fits.](images/responsiveLandingPageAfter.gif)

### Responsive grid example

Now we'll look at an example of the _stack when_ parameter that shows how to stack columns at a certain width and unstack them after.

Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) and copy and paste an example into the **Interface Definition** to see it displayed.

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
{
  a!localVariables(
    local!employees: {
      a!map(id: 1, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500),
      a!map(id: 2, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100),
      a!map(id: 3, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000),
      a!map(id: 4, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200),
      a!map(id: 5, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700),
      a!map(id: 6, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400),
      a!map(id: 7, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300)
    },
    local!selectedEmployee: local!employees[4],
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employees",
                contents: {
                  a!gridField(
                    data: todatasubset(
                      local!employees,
                      fv!pagingInfo
                    ),
                    columns: {
                      a!gridColumn(
                        label: "Name",
                        value: fv!row.name
                      ),
                      a!gridColumn(
                        label: "Department",
                        value: fv!row.dept
                      )
                    },
                    pageSize: 7,
                    selectable: true,
                    selectionStyle: "ROW_HIGHLIGHT",
                    selectionValue: index(local!selectedEmployee, "id", {}),
                    selectionSaveInto: {
                      /* This save replaces the value of the previously selected item with that of the newly selected item, ensuring only one item can be selected at once.*/
                      a!save(
                        local!selectedEmployee,
                        if(
                          length(fv!selectedRows) > 0,
                          fv!selectedRows[length(fv!selectedRows)],
                          null
                        )
                      )
                    },
                    shadeAlternateRows: false,
                    rowHeader: 1
                  )
                }
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employee Details",
                contents: {
                  a!richTextDisplayField(
                    value: a!richTextItem(
                      text: "No employee selected.",
                      color: "SECONDARY",
                      size: "MEDIUM",
                      style: "EMPHASIS"
                    ),
                    showWhen: isnull(local!selectedEmployee)
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Name",
                            value: local!selectedEmployee.name,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Department",
                            value: local!selectedEmployee.dept,
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Role",
                            value: local!selectedEmployee.role,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Start Date",
                            value: text(local!selectedEmployee.startDate, "MMM dd, yyyy"),
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Team",
                            value: local!selectedEmployee.team,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Available PTO",
                            value: local!selectedEmployee.pto & " days",
                            readOnly: true
                          )
                        }
                      )
                    },
                    showWhen: not(isnull(local!selectedEmployee)),
                    stackWhen: {
                      "PHONE",
                      "TABLET_LANDSCAPE"
                    }
                  )
                }
              )
            }
          )
        },
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      )
    }
  )
}
```

When we shrink the page using the fit form factor option, notice the behavior of the **Employee Details** column. At desktop and desktop narrow page widths, the three **Employee Details** columns are shown next to each other.

At the landscape tablet width, we stack the three **Employee Details** columns to ensure the details have enough room. With these columns stacked, there is enough space for the **Employees** grid and **Employee Details** to show next to each other.

This changes once we choose the portrait tablet width. Since there is less horizontal space, we stack the **Employees** grid and **Employee Details** on top of each other. This gives the **Employee Details** more space, so we unstack these columns.

Finally, at phone width, we stack everything to give it room to display.

![gif showing the grid's responsiveness using the fit form factor](images/responsive_design_resp_behavior_2.gif)

### Conditionally display components

Lastly, we'll use the **Stamp Steps (Icon)** pattern as an `a!isPageWidth()` example. Take a look at how it adapts to conditionally display different components and layouts depending on width.

Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) to copy and paste an example into the **Interface Definition** to see it displayed.

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
{
  a!localVariables(
    local!iconStampSteps: {
      a!map(icon: "calendar",      name: "Enter Dates"),
      a!map(icon: "search",        name: "Search Deals"),
      a!map(icon: "shopping-cart", name: "Check Out")
    },
    a!columnsLayout(
      columns: {
        a!columnLayout(),
        a!columnLayout(
          contents: {
            if(
              /* Display steps vertically for phone and tablet portrait page width */
              a!isPageWidth({"PHONE", "TABLET_PORTRAIT"}),
              a!forEach(
                items: local!iconStampSteps,
                expression: {
                  a!stampField(
                    icon: fv!item.icon,
                    backgroundColor: "TRANSPARENT",
                    contentColor: "ACCENT",
                    size: "MEDIUM",
                    align: "CENTER"
                  ),
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: a!richTextItem(
                      text: {
                        a!richTextItem(
                          text: fv!index & ". "
                        ),
                        fv!item.name
                      },
                      size: "MEDIUM"
                    ),
                    align: "CENTER"
                  ),
                  a!richTextDisplayField()
                }
              ),
              /* Display steps horizontally for other page widths */
              {
                /* Display stamp and dots in sideBySideLayout */
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(),
                    /* Extra spacing before first stamp */
                    a!sideBySideItem(
                      item: a!richTextDisplayField(
                        value: a!richTextItem(
                          text: " "
                        )
                      ),
                      width: "MINIMIZE"
                    ),
                    a!forEach(
                      items: local!iconStampSteps.icon,
                      expression: {
                        a!sideBySideItem(
                          item: a!stampField(
                            icon: fv!item,
                            backgroundColor: "TRANSPARENT",
                            contentColor: "ACCENT",
                            align: "CENTER"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            value: a!richTextItem(
                              text: repeat(13, " " & char(9679)),
                              color: "SECONDARY",
                              size: "SMALL"
                            )
                          ),
                          width: "MINIMIZE",
                          showWhen: not(fv!isLast)
                        )
                      }
                    ),
                    a!sideBySideItem(
                      width: "MINIMIZE"
                    ),
                    a!sideBySideItem()
                  },
                  alignVertical: "MIDDLE"
                ),
                /* Display step names in columnsLayout */
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      width: "EXTRA_NARROW"
                    ),
                    a!forEach(
                      items: local!iconStampSteps.name,
                      expression: {
                        a!columnLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: a!richTextItem(
                                text: {
                                  a!richTextItem(
                                    text: fv!index & ". "
                                  ),
                                  fv!item
                                },
                                size: "MEDIUM"
                              ),
                              align: "CENTER"
                            )
                          },
                          width: "NARROW"
                        ),
                        /* Display column for extra space between step names */
                        a!columnLayout(
                          showWhen: not(fv!isLast)
                        )
                      }
                    ),
                    a!columnLayout(
                      width: "EXTRA_NARROW"
                    )
                  },
                  spacing: "NONE"
                )
              }
            )
          },
          width: "WIDE"
        ),
        a!columnLayout()
      }
    )
  )
}
```

Check out this pattern at different widths and notice how the rich text dots in between each step don't appear on portrait tablet widths or narrower.

This adaptive pattern uses the `if()`, `a!isPageWidth()`, and `a!forEach()` functions to define two separate rich text display components depending on page width. These separate displays allow for many components to have different sizes, widths, and _showWhen_ values so that the interface can look great at any page width.

**Preview on the fit form factor:** ![screenshot of the stamp steps pattern with the fit form factor](images/stampStepsFit.png)

**Preview on the phone form factor:** ![screenshot of the stamp steps pattern with the phone form factor](images/stampStepsMobile.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...