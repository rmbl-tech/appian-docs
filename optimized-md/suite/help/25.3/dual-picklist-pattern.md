---
source_url: https://docs.appian.com/suite/help/25.3/dual-picklist-pattern.html
original_path: dual-picklist-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dual Picklist Pattern

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the cards as choices pattern](images/patterns/dual-picklist.png)

## Design structure

This page will break down the expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are card layouts, checkboxes, and buttons using the `a!save()` function. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the dual picklist pattern with callouts highlighting that the pattern contains cards, checkboxes, and buttons using a!save()](images/patterns/dual-picklist-annotated.png)

### Pattern expression

When you drag and drop the dual picklist pattern onto your interface, 276 lines of expressions will be added to the section where you dragged it.

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
a!localVariables(
  local!availableList: {
    a!map(id: 1, name: "Item 1"),
    a!map(id: 2, name: "Item 2"),
    a!map(id: 3, name: "Item 3"),
    a!map(id: 5, name: "Item 5"),
    a!map(id: 6, name: "Item 6")
  },
  local!selectedList: {
    a!map(id: 4, name: "Item 4"),
    a!map(id: 7, name: "Item 7")
  },
  local!availableListChoices: { 1 },
  local!selectedListChoices,
  {
    a!sectionLayout(
      label: "Items",
      labelSize: "SMALL",
      labelColor: "SECONDARY",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "Available",
                    " ",
                    a!richTextItem(
                      text: "(" & length(local!availableList) & ")",
                      style: "STRONG"
                    )
                  }
                ),
                a!cardLayout(
                  contents: {
                    a!checkboxField(
                      label: "Available Items",
                      labelPosition: "COLLAPSED",
                      choiceLabels: local!availableList.name,
                      choiceValues: local!availableList.id,
                      value: local!availableListChoices,
                      saveInto: local!availableListChoices,
                      showWhen: length(local!availableList) > 0,
                      choiceLayout: "STACKED",
                      choiceStyle: "CARDS"
                    )
                  },
                  height: "MEDIUM_PLUS",
                  marginBelow: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Add Selected",
                      icon: if(
                        a!isPageWidth("PHONE"),
                        "chevron-down",
                        "chevron-right"
                      ),
                      saveInto: {
                        /* Add chosen available items to selected list */
                        a!save(
                          target: local!selectedList,
                          value: cast(
                            typeof(local!selectedList),
                            todatasubset(
                              arrayToPage: append(
                                local!selectedList,
                                index(
                                  local!availableList,
                                  wherecontains(
                                    local!availableListChoices,
                                    local!availableList.id
                                  ),
                                  {}
                                )
                              ),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Remove from available list */
                        a!save(
                          local!availableList,
                          remove(
                            local!availableList,
                            wherecontains(
                              local!availableListChoices,
                              local!availableList.id
                            )
                          )
                        ),
                        /* Clear out choices */
                        a!save(local!availableListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: or(
                        a!isNullOrEmpty(local!availableListChoices),
                        length(local!availableList) = 0
                      )
                    ),
                    a!buttonWidget(
                      label: "Add All",
                      icon: "plus",
                      saveInto: {
                        /* Add all available items to selected list */
                        a!save(
                          target: local!selectedList,
                          value: cast(
                            typeof(local!selectedList),
                            todatasubset(
                              arrayToPage: append(local!selectedList, local!availableList),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Clear available list */
                        a!save(local!availableList, {}),
                        /* Clear out choices */
                        a!save(local!availableListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: length(local!availableList) = 0
                    )
                  },
                  align: "START",
                  marginBelow: "EVEN_MORE"
                ),
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Remove Selected",
                      icon: if(
                        a!isPageWidth("PHONE"),
                        "chevron-up",
                        "chevron-left"
                      ),
                      saveInto: {
                        /* Add chosen selected items to available list */
                        a!save(
                          target: local!availableList,
                          value: cast(
                            typeof(local!availableList),
                            todatasubset(
                              arrayToPage: append(
                                local!availableList,
                                index(
                                  local!selectedList,
                                  wherecontains(
                                    local!selectedListChoices,
                                    local!selectedList.id
                                  ),
                                  {}
                                )
                              ),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Remove from selected list */
                        a!save(
                          local!selectedList,
                          remove(
                            local!selectedList,
                            wherecontains(
                              local!selectedListChoices,
                              local!selectedList.id
                            )
                          )
                        ),
                        /* Clear out choices */
                        a!save(local!selectedListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: or(
                        a!isNullOrEmpty(local!selectedListChoices),
                        length(local!selectedList) = 0
                      )
                    ),
                    a!buttonWidget(
                      label: "Remove All",
                      icon: "times",
                      saveInto: {
                        /* Add all selected items to available list */
                        a!save(
                          target: local!availableList,
                          value: cast(
                            typeof(local!availableList),
                            todatasubset(
                              arrayToPage: append(local!availableList, local!selectedList),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Clear selected list */
                        a!save(local!selectedList, {}),
                        /* Clear out choices */
                        a!save(local!selectedListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: length(local!selectedList) = 0
                    )
                  },
                  align: "START"
                )
              },
              width: "NARROW"
            ),
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "Selected",
                    " ",
                    a!richTextItem(
                      text: "(" & length(local!selectedList) & ")",
                      style: "STRONG"
                    )
                  }
                ),
                a!cardLayout(
                  contents: {
                    a!checkboxField(
                      label: "Selected Items",
                      labelPosition: "COLLAPSED",
                      choiceLabels: local!selectedList.name,
                      choiceValues: local!selectedList.id,
                      value: local!selectedListChoices,
                      saveInto: local!selectedListChoices,
                      showWhen: length(local!selectedList) > 0,
                      choiceLayout: "STACKED",
                      choiceStyle: "CARDS"
                    )
                  },
                  height: "MEDIUM_PLUS",
                  marginBelow: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(contents: {})
          },
          alignVertical: "MIDDLE"
        )
      }
    )
  }
)
```

### \[Line 1-14\] Define local variables

The local variables at the top of the expression do the following:

-   Define the data that will be displayed in each list and list item.
-   Set up two variables to store the **Available** and **Selected** list choices.

```sail
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
a!localVariables(
  local!availableList: {
    a!map(id: 1, name: "Item 1"),
    a!map(id: 2, name: "Item 2"),
    a!map(id: 3, name: "Item 3"),
    a!map(id: 5, name: "Item 5"),
    a!map(id: 6, name: "Item 6")
  },
  local!selectedList: {
    a!map(id: 4, name: "Item 4"),
    a!map(id: 7, name: "Item 7")
  },
  local!availableListChoices: { 1 },
  local!selectedListChoices,
```

### \[Line 15-55\] Formatting the Available list

This section uses card layouts and checkboxes to format the list of available items. The **Available** list header and counter for how many items are in the list are both created using rich text items.

Lines `30`\-`33` define the expression for the item counter. The counter updates as you move items to and from lists. To create the counter, the expression uses the `length()` function to count how many items are in the local variable that contains the **Available** list items.

The **Available** list is created using a card layout and a checkbox field. The checkbox field uses the `"STACKED"` layout to create a vertical list and the `"CARDS"` style to create large click-targets for the user.

```sail
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
  {
    a!sectionLayout(
      label: "Items",
      labelSize: "SMALL",
      labelColor: "SECONDARY",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "Available",
                    " ",
                    a!richTextItem(
                      text: "(" & length(local!availableList) & ")",
                      style: "STRONG"
                    )
                  }
                ),
                a!cardLayout(
                  contents: {
                    a!checkboxField(
                      label: "Available Items",
                      labelPosition: "COLLAPSED",
                      choiceLabels: local!availableList.name,
                      choiceValues: local!availableList.id,
                      value: local!availableListChoices,
                      saveInto: local!availableListChoices,
                      showWhen: length(local!availableList) > 0,
                      choiceLayout: "STACKED",
                      choiceStyle: "CARDS"
                    )
                  },
                  height: "MEDIUM_PLUS",
                  marginBelow: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
```

### \[Line 56-145\] Creating the Add Selected and Add All buttons

This is the first of two buttons sections in this pattern. This section of the expression contains the **Add Selected** and **Add All** buttons.

The **Add Selected** button (lines `60`\-`113`) uses the `a!save()` function, local variables, and a few other functions within the _saveInto_ parameter. The button checks which items in the **Available** list are chosen and moves them to the **Selected** list. If no items are selected, the button is disabled.

The **Add All** button (lines `114`\-`141`) uses the `a!save()` function, local variables, and a few other functions within the _saveInto_ parameter. The button adds all the items from the **Available** list to the **Selected** list. If no items are in the **Available** list, this button is disabled.

```sail
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
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Add Selected",
                      icon: if(
                        a!isPageWidth("PHONE"),
                        "chevron-down",
                        "chevron-right"
                      ),
                      saveInto: {
                        /* Add chosen available items to selected list */
                        a!save(
                          target: local!selectedList,
                          value: cast(
                            typeof(local!selectedList),
                            todatasubset(
                              arrayToPage: append(
                                local!selectedList,
                                index(
                                  local!availableList,
                                  wherecontains(
                                    local!availableListChoices,
                                    local!availableList.id
                                  ),
                                  {}
                                )
                              ),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Remove from available list */
                        a!save(
                          local!availableList,
                          remove(
                            local!availableList,
                            wherecontains(
                              local!availableListChoices,
                              local!availableList.id
                            )
                          )
                        ),
                        /* Clear out choices */
                        a!save(local!availableListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: or(
                        a!isNullOrEmpty(local!availableListChoices),
                        length(local!availableList) = 0
                      )
                    ),
                    a!buttonWidget(
                      label: "Add All",
                      icon: "plus",
                      saveInto: {
                        /* Add all available items to selected list */
                        a!save(
                          target: local!selectedList,
                          value: cast(
                            typeof(local!selectedList),
                            todatasubset(
                              arrayToPage: append(local!selectedList, local!availableList),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Clear available list */
                        a!save(local!availableList, {}),
                        /* Clear out choices */
                        a!save(local!availableListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: length(local!availableList) = 0
                    )
                  },
                  align: "START",
                  marginBelow: "EVEN_MORE"
                ),
```

### \[Line 146-235\] Creating the Remove Selected and Remove All buttons

This is the second of two buttons sections in this pattern. This section of the expression contains the **Remove Selected** and **Remove All** buttons.

The **Remove Selected** button (lines `148`\-`201`) is the same as the [Add Selected button](#add-buttons), except that the **Remove Selected** button takes the chosen items in the **Selected** list and moves them to the **Available** list.

The **Remove All** button (lines `202`\-`229`) is the same as the [Add All button](#add-buttons), except that the **Remove All** button adds all items in the **Selected** list to the **Available** list.

```sail
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
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Remove Selected",
                      icon: if(
                        a!isPageWidth("PHONE"),
                        "chevron-up",
                        "chevron-left"
                      ),
                      saveInto: {
                        /* Add chosen selected items to available list */
                        a!save(
                          target: local!availableList,
                          value: cast(
                            typeof(local!availableList),
                            todatasubset(
                              arrayToPage: append(
                                local!availableList,
                                index(
                                  local!selectedList,
                                  wherecontains(
                                    local!selectedListChoices,
                                    local!selectedList.id
                                  ),
                                  {}
                                )
                              ),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Remove from selected list */
                        a!save(
                          local!selectedList,
                          remove(
                            local!selectedList,
                            wherecontains(
                              local!selectedListChoices,
                              local!selectedList.id
                            )
                          )
                        ),
                        /* Clear out choices */
                        a!save(local!selectedListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: or(
                        a!isNullOrEmpty(local!selectedListChoices),
                        length(local!selectedList) = 0
                      )
                    ),
                    a!buttonWidget(
                      label: "Remove All",
                      icon: "times",
                      saveInto: {
                        /* Add all selected items to available list */
                        a!save(
                          target: local!availableList,
                          value: cast(
                            typeof(local!availableList),
                            todatasubset(
                              arrayToPage: append(local!availableList, local!selectedList),
                              pagingConfiguration: a!pagingInfo(
                                startIndex: 1,
                                batchSize: - 1,
                                sort: a!sortInfo(field: "id", ascending: true)
                              )
                            ).data
                          )
                        ),
                        /* Clear selected list */
                        a!save(local!selectedList, {}),
                        /* Clear out choices */
                        a!save(local!selectedListChoices, null)
                      },
                      width: "FILL",
                      style: "OUTLINE",
                      color: "SECONDARY",
                      disabled: length(local!selectedList) = 0
                    )
                  },
                  align: "START"
                )
              },
              width: "NARROW"
            ),
```

### \[Line 236-276\] Formatting the Selected list

This section is similar to the [Formatting the Available list](#available-list) section. Check that section out to learn how the item counter and **Selected** list are created.

```sail
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
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    "Selected",
                    " ",
                    a!richTextItem(
                      text: "(" & length(local!selectedList) & ")",
                      style: "STRONG"
                    )
                  }
                ),
                a!cardLayout(
                  contents: {
                    a!checkboxField(
                      label: "Selected Items",
                      labelPosition: "COLLAPSED",
                      choiceLabels: local!selectedList.name,
                      choiceValues: local!selectedList.id,
                      value: local!selectedListChoices,
                      saveInto: local!selectedListChoices,
                      showWhen: length(local!selectedList) > 0,
                      choiceLayout: "STACKED",
                      choiceStyle: "CARDS"
                    )
                  },
                  height: "MEDIUM_PLUS",
                  marginBelow: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(contents: {})
          },
          alignVertical: "MIDDLE"
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...