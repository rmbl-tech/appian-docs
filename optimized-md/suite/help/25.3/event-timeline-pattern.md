---
source_url: https://docs.appian.com/suite/help/25.3/event-timeline-pattern.html
original_path: event-timeline-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Event Timelines

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

Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

## Design structure

This page will break down the event timeline and event timeline (detailed) pattern expressions so you can better understand how to [adapt these patterns to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

## Event timeline

![screenshot of the event timeline pattern](images/patterns/eventsTimeline.png)

The main components in this pattern are columns layouts, card layouts, side by side layouts, user images, and rich text. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the event timeline pattern with two callouts highlighting that there are user images, user record links, and rich text within a card layout to define the events, as well as rich text in a column layout to define the date that the event took place.](images/patterns/eventsTimelineDetails.png)

### Pattern expression

When you drag and drop the event timeline pattern onto your interface, 109 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!eventTimeline: {
      a!map(
        date: today(),
        events:  {
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:40 PM"),
          a!map(user: "Anthony Wu",  event: "edited the customer record for Acme Corporation", time: "11:03 AM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "10:25 AM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "08:19 AM")
        }
      ),
      a!map(
        date: today() - 1,
        events:  {
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "05:49 PM"),
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:44 AM"),
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:10 PM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "12:52 AM"),
          a!map(user: "Anthony Wu",  event: "edited the customer record for Acme Corporation", time: "09:33 AM")
        }
      )
    },
    {
      a!forEach(
        items: local!eventTimeline,
        expression: a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: day(fv!item.date),
                      size: "LARGE"
                    ),
                    char(10),
                    upper(text(fv!item.date, "MMM"))
                  },
                  align: "CENTER"
                )
              },
              width: "EXTRA_NARROW"
            ),
            a!columnLayout(
              contents: {
                a!forEach(
                  items: fv!item.events,
                  expression: a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            item: a!imageField(
                              labelPosition: "COLLAPSED",
                              images: a!userImage(),
                              size: "SMALL",
                              style: "AVATAR"
                            ),
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item.user,
                                  link: a!userRecordLink(),
                                  linkStyle: "STANDALONE",
                                  size: "MEDIUM",
                                  style: "STRONG"
                                ),
                                a!richTextItem(
                                  text: " " & fv!item.event,
                                  size: "MEDIUM"
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
                                  color: "SECONDARY",
                                  size: "MEDIUM"
                                )
                              }
                            ),
                            width: "MINIMIZE"
                          )
                        },
                        alignvertical: "MIDDLE"
                      )
                    },
                    marginBelow: "STANDARD"
                  )
                )
              }
            )
          },
          marginbelow: "NONE"
        )
      )
    }
  )
}
```

### \[Line 1-23\] Define local variables and mappings

The local variables at the top of the expression are used to define the data that will be displayed for each event in the timeline, as well as map together the user information, time of the event, and description of the event.

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
15
16
17
18
19
20
21
22
23
{
  a!localVariables(
    local!eventTimeline: {
      a!map(
        date: today(),
        events:  {
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:40 PM"),
          a!map(user: "Anthony Wu",  event: "edited the customer record for Acme Corporation", time: "11:03 AM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "10:25 AM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "08:19 AM")
        }
      ),
      a!map(
        date: today() - 1,
        events:  {
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "05:49 PM"),
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:44 AM"),
          a!map(user: "Bree Mercer", event: "edited the customer record for Acme Corporation", time: "02:10 PM"),
          a!map(user: "John Smith",  event: "edited the customer record for Acme Corporation", time: "12:52 AM"),
          a!map(user: "Anthony Wu",  event: "edited the customer record for Acme Corporation", time: "09:33 AM")
        }
      )
    },
```

### \[Line 24-45\] Format the month and day display

This section opens up the `a!forEach()` expression and columns layout which define the timeline's structure. Using `a!forEach()`, we can define the expression for an event one time and have the function iterate through that same expression for each event instance.

This section also contains the expression which displays the day and month that each event takes place. The dates are made up of rich text in a column layout with a few functions to configure how the dates are displayed.

On line `35`, the `day()` function is used to convert the date and time value defined in the local variable into a single number(integer) value.

On line `39`, the `text()` function is used to convert the date and time value defined in the local variable into a text value. The `MMM` format in this expression formats the month into a three letter abbreviation:`dec`. The `text()` function is wrapped in the `upper()` function, which converts text values to uppercase: `DEC`.

```sail
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
    {
      a!forEach(
        items: local!eventTimeline,
        expression: a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: day(fv!item.date),
                      size: "LARGE"
                    ),
                    char(10),
                    upper(text(fv!item.date, "MMM"))
                  },
                  align: "CENTER"
                )
              },
              width: "EXTRA_NARROW"
            ),
```

### \[Line 46-109\] Configure the event display

This section defines the expression that will be iterated through for each event in the timeline. The events are made up of a user image in the `"AVATAR"` style, the user's name and a link to their user record, a description of the event, and the time of the event.

The user name, event description, and the time of the event are all displayed in rich text. The rich text and user image are all in a side by side layout contained within a card.

```sail
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
          a!columnLayout(
              contents: {
                a!forEach(
                  items: fv!item.events,
                  expression: a!cardLayout(
                    contents: {
                      a!sideBySideLayout(
                        items: {
                          a!sideBySideItem(
                            item: a!imageField(
                              labelPosition: "COLLAPSED",
                              images: a!userImage(),
                              size: "SMALL",
                              style: "AVATAR"
                            ),
                            width: "MINIMIZE"
                          ),
                          a!sideBySideItem(
                            item: a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: fv!item.user,
                                  link: a!userRecordLink(),
                                  linkStyle: "STANDALONE",
                                  size: "MEDIUM",
                                  style: "STRONG"
                                ),
                                a!richTextItem(
                                  text: " " & fv!item.event,
                                  size: "MEDIUM"
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
                                  color: "SECONDARY",
                                  size: "MEDIUM"
                                )
                              }
                            ),
                            width: "MINIMIZE"
                          )
                        },
                        alignvertical: "MIDDLE"
                      )
                    },
                    marginBelow: "STANDARD"
                  )
                )
              }
            )
          },
          marginbelow: "NONE"
        )
      )
    }
  )
}
```

## Event timeline (detailed)

This pattern is a more detailed version of the Event timeline pattern.

![screenshot of the event timeline (detailed) pattern with annotations to show the components and layouts used](images/patterns/event-timeline-detailed-details.png)

### Pattern expression

When you drag and drop the Event timeline (detailed) pattern onto your interface, 270 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!historyDetails: {
      a!map(
        updatedBy: "Karen Anderson",
        updatedDate: today()-1,
        updatedTime: time(15, 38),
        caseId: 12345,
        fields: {
          a!map(name: "Status",    oldValue: "Active", newValue: "Closed"),
          a!map(name: "Closed On", oldValue: null,     newValue: today()-1)
        }
      ),
      a!map(
        updatedBy: "Joel Guzman",
        updatedDate: today()-1,
        updatedTime: time(14, 4),
        caseId: 12344,
        fields: {
          a!map(name: "Description", oldValue: "Issue with joint savings account", newValue: "Unable to create joint savings account"),
          a!map(name: "Account",     oldValue: "Checking",                         newValue: "Savings")
        }
      ),
      a!map(
        updatedBy: "Karen Anderson",
        updatedDate: today()-1,
        updatedTime: time(11, 19),
        caseId: 12343,
        fields: {
          a!map(name: "Title",  oldValue: "Set up individual checking account", newValue: "Set up new joint savings account"),
          a!map(name: "Status", oldValue: "Pending",                            newValue: "Active"),
        }
      ),
      a!map(
        updatedBy: "Joel Guzman",
        updatedDate: today()-2,
        updatedTime: time(15, 38),
        caseId: 12345,
        fields: {
          a!map(name: "Description", oldValue: "Issue with checking account", newValue: "Issue with joint savings account"),
          a!map(name: "Contact",     oldValue: "Priti Jagodara",              newValue: "Joel Guzman")
        }
      ),
      a!map(
        updatedBy: "Tracy Zimmerman",
        updatedDate: today()-2,
        updatedTime: time(14, 4),
        caseId: 12344,
        fields: {
          a!map(name: "Assignee", oldValue: null,  newValue: "Karen Anderson"),
          a!map(name: "Status",   oldValue: "New", newValue: "Pending"),
        }
      ),
      a!map(
        updatedBy: "Tracy Zimmerman",
        updatedDate: today()-2,
        updatedTime: time(11, 19),
        caseId: 12343,
        fields: {
          a!map(name: "Title",   oldValue: "Checking account", newValue: "Set up individual checking account"),
          a!map(name: "Contact", oldValue: null,               newValue: "Priti Jagodara")
        }
      )
    },
    /* Get unique event date values */
    local!eventDates: union(local!historyDetails.updatedDate, local!historyDetails.updatedDate),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!forEach(
              items: local!eventDates,
              expression: a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!cardLayout(
                        contents: {
                          a!cardLayout(
                            contents: {
                              a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: text(fv!item, "MMM"),
                                align: "CENTER"
                              )
                            },
                            style: "ACCENT",
                            padding: "EVEN_LESS",
                            showBorder: false
                          ),
                          a!cardLayout(
                            contents: {
                              a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: day(fv!item),
                                    size: "MEDIUM_PLUS",
                                    style: "STRONG"
                                  )
                                },
                                align: "CENTER"
                              )
                            },
                            padding: "EVEN_LESS",
                            showBorder: false
                          )
                        },
                        padding: "NONE",
                        marginBelow: "STANDARD"
                      )
                    },
                    width: "EXTRA_NARROW"
                  ),
                  a!columnLayout(
                    contents: {
                      a!forEach(
                        items: index(
                          local!historyDetails,
                          wherecontains(
                            fv!item,
                            local!historyDetails.updatedDate
                          )
                        ),
                        expression: a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: fv!item.updatedTime,
                                  align: "RIGHT"
                                ),
                                a!richTextDisplayField(labelPosition: "COLLAPSED")
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(
                                      text: fv!item.updatedBy,
                                      color: "ACCENT",
                                      style: "STRONG"
                                    ),
                                    " ",
                                    "edited record",
                                    " ",
                                    a!richTextItem(
                                      text: "Case" & " " & fv!item.caseId,
                                      color: "ACCENT"
                                    )
                                  }
                                ),
                                a!sideBySideLayout(
                                  items: {
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: upper("Field"),
                                            color: "SECONDARY"
                                          )
                                        }
                                      )
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: upper("Old Value"),
                                            color: "SECONDARY"
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    ),
                                    a!sideBySideItem(
                                      item: a!richTextDisplayField(
                                        labelPosition: "COLLAPSED",
                                        value: {
                                          a!richTextItem(
                                            text: upper("New Value"),
                                            color: "SECONDARY"
                                          )
                                        }
                                      ),
                                      width: "2X"
                                    )
                                  },
                                  marginBelow: "NONE"
                                ),
                                a!forEach(
                                  items: index(fv!item, "fields", {}),
                                  expression: a!sideBySideLayout(
                                    items: {
                                      a!sideBySideItem(
                                        item: a!richTextDisplayField(
                                          labelPosition: "COLLAPSED",
                                          value: {
                                            a!richTextItem(
                                              text: fv!item.name,
                                              style: "STRONG"
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
                                              text: if(
                                                a!isNullOrEmpty(fv!item.oldValue),
                                                char(8211),
                                                fv!item.oldValue
                                              )
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
                                              text: if(
                                                a!isNullOrEmpty(fv!item.newValue),
                                                char(8211),
                                                fv!item.newValue
                                              )
                                            )
                                          },
                                          preventWrapping: true
                                        ),
                                        width: "2X"
                                      )
                                    },
                                    marginBelow: "EVEN_LESS"
                                  )
                                ),
                                a!richTextDisplayField(marginAbove: "EVEN_LESS", marginBelow: "STANDARD")
                              },
                              width: "MEDIUM_PLUS"
                            )
                          },
                          marginBelow: "NONE",
                          spacing: "SPARSE",
                          showDividers: true
                        )
                      )
                    }
                  )
                },
                marginBelow: "NONE"
              )
            )
          },
          width: "WIDE"
        )
      }
    )
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...