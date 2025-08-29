---
source_url: https://docs.appian.com/suite/help/25.3/alert-banners.html
original_path: alert-banners.html
version: "25.3"
title: "Action Banner Pattern"
page_id: "alert-banners"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Action Banner Pattern

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

Use the action banner pattern to display prominent messages that include interactive elements like links or buttons. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

This pattern uses [card layouts](card_layout.html) to highlight different types of messages that require user interaction. It provides five examples of action banners that you can use as a starting point to customize for your use case.

**Note:**  If you need to announce a [status messages](https://www.w3.org/WAI/WCAG22/Understanding/status-messages.html) to users of assistive technology, use the [message banner](Message_Banner.html) component.

## Design structure

The main components in this pattern are [card layouts](card_layout.html), [side by side layouts](Side_By_Side_Layout.html), and [rich text display components](Rich_Text_Component.html). The image below displays how the pattern looks on an interface. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![A collection of info, error, warn, and success action banners, each with an icon, text, and an interactive link or button](images/patterns/Alert_Banners_View.png)

### Pattern expression

This pattern introduces a 287-line expression into the interface. By default, every type of action banner will be displayed.

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
{
  /* Use the message banner component instead of these patterns if you need screen readers to announce the message when it is evaluated */
  /* Dismissible Info Banner */
  a!localVariables(
    local!showInformationBanner: true,
    {
      a!cardLayout(
        contents: {
          a!sideBySideLayout(
            items: {
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "info-circle",
                      color: "#115EBB",
                      size: "STANDARD"
                    )
                  },
                  marginAbove: "NONE",
                  marginBelow: "NONE"
                ),
                width: "MINIMIZE"
              ),
              a!sideBySideItem(
                /* Replace this rich text with your information message */
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(text: "Case Created", style: "STRONG"),
                    char(10),
                    a!richTextItem(
                      text: "A new low priority case has been created."
                    ),
                    char(32),
                    a!richTextItem(text: "View details", link: a!safeLink())
                  },
                  marginAbove: "NONE",
                  marginBelow: "NONE"
                )
              ),
              a!sideBySideItem(
                item: a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: a!richTextIcon(
                    icon: "times",
                    link: a!dynamicLink(
                      value: false,
                      saveInto: local!showInformationBanner
                    ),
                    linkStyle: "STANDALONE",
                    size: "MEDIUM"
                  )
                ),
                width: "MINIMIZE"
              )
            },
            alignVertical: "TOP",
            marginAbove: "LESS",
            marginBelow: "LESS"
          )
        },
        showWhen: local!showInformationBanner,
        style: "INFO",
        padding: "LESS",
        marginAbove: "NONE",
        marginBelow: "LESS",
        showBorder: false,
        decorativeBarPosition: "START",
        decorativeBarColor: "#115EBB"
      )
    }
  ),
  /* Info Banner with Action */
  a!cardLayout(
    contents: {
      a!sideBySideLayout(
        items: {
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextIcon(
                  icon: "info-circle",
                  color: "#115EBB",
                  size: "STANDARD"
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            /* Replace this rich text with your information message */
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(text: "Upgrade Software", style: "STRONG"),
                char(10),
                a!richTextItem(
                  text: "New software updates are available. Upgrade now to use the latest features."
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            )
          ),
          a!sideBySideItem(
            item: a!buttonArrayLayout(
              buttons: { a!buttonWidget(label: "Upgrade") },
              marginBelow: "NONE"
            ),
            width: "MINIMIZE"
          )
        },
        alignVertical: "TOP",
        marginAbove: "LESS",
        marginBelow: "LESS"
      )
    },
    style: "INFO",
    padding: "LESS",
    marginAbove: "NONE",
    marginBelow: "LESS",
    showBorder: false,
    decorativeBarPosition: "START",
    decorativeBarColor: "#115EBB"
  ),
  /* Error Banner with Action */
  a!cardLayout(
    contents: {
      a!sideBySideLayout(
        items: {
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextIcon(
                  icon: "info-circle",
                  color: "NEGATIVE",
                  size: "STANDARD"
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            /* Replace this rich text with your information message */
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(text: "Case Not Found", style: "STRONG"),
                char(10),
                a!richTextItem(
                  text: "Case #1125 is missing. Please notify your Administrator."
                ),
                char(32),
                a!richTextItem(text: "View details", link: a!safeLink())
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            )
          )
        },
        alignVertical: "TOP",
        marginAbove: "LESS",
        marginBelow: "LESS"
      )
    },
    style: "ERROR",
    padding: "LESS",
    marginAbove: "NONE",
    marginBelow: "LESS",
    showBorder: false,
    decorativeBarPosition: "START",
    decorativeBarColor: "NEGATIVE"
  ),
  /* Warning Banner with Action */
  a!cardLayout(
    contents: {
      a!sideBySideLayout(
        items: {
          a!sideBySideItem(
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextIcon(
                  icon: "exclamation-triangle",
                  color: "#D97706",
                  size: "STANDARD"
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            /* Replace this rich text with your information message */
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(text: "Case Still Open", style: "STRONG"),
                char(10),
                a!richTextItem(
                  text: "The following case has been open for more than 30 days:"
                ),
                char(32),
                a!richTextItem(text: "Case #1124", link: a!safeLink())
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            )
          )
        },
        alignVertical: "TOP",
        marginAbove: "LESS",
        marginBelow: "LESS"
      )
    },
    style: "WARN",
    padding: "LESS",
    marginAbove: "NONE",
    marginBelow: "LESS",
    showBorder: false,
    decorativeBarPosition: "START",
    decorativeBarColor: "#D97706"
  ),
  /* Success Banner with Action */
  a!cardLayout(
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
                  size: "STANDARD"
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            ),
            width: "MINIMIZE"
          ),
          a!sideBySideItem(
            /* Replace this rich text with your information message */
            item: a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(text: "Case Closed", style: "STRONG"),
                char(10),
                a!richTextItem(
                  text: "Case #1123 has been closed. A satisfaction survey has been sent to the customer."
                ),
                char(32),
                a!richTextItem(
                  text: "Go to My Dashboard",
                  link: a!safeLink()
                )
              },
              marginAbove: "NONE",
              marginBelow: "NONE"
            )
          )
        },
        alignVertical: "TOP",
        marginAbove: "LESS",
        marginBelow: "LESS"
      )
    },
    style: "SUCCESS",
    padding: "LESS",
    marginAbove: "NONE",
    marginBelow: "LESS",
    showBorder: false,
    decorativeBarPosition: "START",
    decorativeBarColor: "POSITIVE"
  )
}
```

### \[Line 7-8 and 65-72\] Create your card layout

Each of these banners are very similar. We will just break down the first card layout. Note that this first banner also includes a local variable to hide the banner after the "x" icon is clicked.

Each action banner is created by first setting up a card layout. This allows you to select the banner's padding, margins, background color (style), and decorative bar position and color.

```sail
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
a!cardLayout(
  contents: {
  ...
  },
  showWhen: local!showInformationBanner,
  style: "INFO",
  padding: "LESS",
  marginAbove: "NONE",
  marginBelow: "LESS",
  showBorder: false,
  decorativeBarPosition: "START",
  decorativeBarColor: "#115EBB"
)
```

### \[Line 9-62\] Setting up the side by side layout of rich text display items

Using a side by side layout, you can display the components of an individual action banner alongside each other. You can then drag and drop and configure the order of the items in your banner using side by side items.

We then use rich text display components to display the content of each action banner. These display fields are where you can replace content to fit your own use case.

```sail
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
a!sideBySideLayout(
  items: {
    a!sideBySideItem(
      item: a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!richTextIcon(
            icon: "info-circle",
            color: "#115EBB",
            size: "STANDARD"
          )
        },
        marginAbove: "NONE",
        marginBelow: "NONE"
      ),
      width: "MINIMIZE"
    ),
    a!sideBySideItem(
      /* Replace this rich text with your information message */
      item: a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!richTextItem(text: "Case Created", style: "STRONG"),
          char(10),
          a!richTextItem(
            text: "A new low priority case has been created."
          ),
          char(32),
          a!richTextItem(text: "View details", link: a!safeLink())
        },
        marginAbove: "NONE",
        marginBelow: "NONE"
      )
    ),
    a!sideBySideItem(
      item: a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: a!richTextIcon(
          icon: "times",
          link: a!dynamicLink(
            value: false,
            saveInto: local!showInformationBanner
          ),
          linkStyle: "STANDALONE",
          size: "MEDIUM"
        )
      ),
      width: "MINIMIZE"
    )
  },
  alignVertical: "TOP",
  marginAbove: "LESS",
  marginBelow: "LESS"
 )
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...