---
source_url: https://docs.appian.com/suite/help/25.3/cards-as-list-items-pattern.html
original_path: cards-as-list-items-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cards as List Items Patterns

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

Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![cards_as_list_items_pattern_orig.png](images/patterns/cards_as_list_items_pattern_orig.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

The main components in this pattern are card layouts, side by side layouts, and billboard layouts. The image below displays how the pattern looks on a blank interface with callouts of the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![cards_as_list_pattern.png](images/patterns/cards_as_list_pattern.png)

### Pattern expression

When you drag and drop the cards as list items pattern onto your interface, 153 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!houses: {
      a!map(street: "2310 Groveland Ter",   city: "Reston", state: "VA", price: 879000,  beds: 3, baths: 2.5, sqft: 1934, img: "https://images.unsplash.com/photo-1492889971304-ac16ab4a4a5a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=058c56771e5c8d1f9adf38dc794f6e0e&auto=format&fit=crop&w=3306&q=80"),
      a!map(street: "4147 Woodlane Dr",     city: "Reston", state: "VA", price: 719400,  beds: 2, baths: 1.5, sqft: 1415, img: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=193a24d3505792ef2c9ace43b00fe4f5&auto=format&fit=crop&w=1400&q=60"),
      a!map(street: "1924 Victoria Dr",     city: "Reston", state: "VA", price: 925000,  beds: 3, baths: 2,   sqft: 2451, img: "https://images.unsplash.com/photo-1485996463739-9cb09adbe6c5?ixlib=rb-0.3.5&s=95f7a5e9e6c1c6637b6d686ee5946e53&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "5850 Paddock Way",     city: "Reston", state: "VA", price: 925000,  beds: 4, baths: 3.5, sqft: 3290, img: "https://images.unsplash.com/photo-1437751695201-298be97a82a8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1a6e6c222ee269587d9d336902f370e5&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "2900 Carver Rd, #301", city: "Reston", state: "VA", price: 529200,  beds: 1, baths: 1.5, sqft: 1160, img: "https://images.unsplash.com/photo-1460317442991-0ec209397118?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b95599cb95166892018645cd2a22923a&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "7714 Andreas Ave",     city: "Reston", state: "VA", price: 742900,  beds: 2, baths: 2,   sqft: 1930, img: "https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-0.3.5&s=d9e9fe8649144a11972a8cbb10ad6cd3&auto=format&fit=crop&w=800&q=60")
    },
    local!numCols: 3, /* Change this to set a different number of columns. If you change this number, consider updating the stackWhen parameter on the columns layout */
    local!selectedCard,
    {
      a!columnsLayout(
        columns: a!forEach(
          items: enumerate(local!numCols) + 1,
          expression: a!localVariables(
            local!colIndex: fv!index,
            a!columnLayout(
              contents: {
                a!forEach(
                  items: local!houses,
                  expression: a!cardLayout(
                    contents: {
                      a!billboardLayout(
                        backgroundMedia: a!webImage(
                          source: fv!item.img
                        ),
                        height: "SHORT",
                        marginBelow: "NONE",
                        overlay: a!barOverlay(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Street",
                                    labelPosition: "COLLAPSED",
                                    value: a!richTextItem(
                                      text: fv!item.street,
                                      size: "MEDIUM",
                                      style: "STRONG"
                                    )
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "City & State",
                                    labelPosition: "COLLAPSED",
                                    value: fv!item.city & ", " & fv!item.state
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE",
                              stackWhen: "TABLET_LANDSCAPE"
                            )
                          }
                        )
                      ),
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Price",
                                  labelPosition: "COLLAPSED",
                                  value: a!richTextItem(
                                    text: a!currency(isoCode: "USD", value: fv!item.price, decimalPlaces: 0, format: "SYMBOL"),
                                    size: "LARGE",
                                    style: "STRONG"
                                  )
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Beds",
                                  value: fv!item.beds
                                ),
                                width: "MINIMIZE"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Baths",
                                  value: fv!item.baths
                                ),
                                width: "MINIMIZE"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Sq. Ft.",
                                  value: fixed(fv!item.sqft, 0, false)
                                ),
                                width: "MINIMIZE"
                              )
                            },
                            stackWhen: "TABLET_LANDSCAPE"
                          )
                        },
                        showBorder: false
                      )
                    },
                    link: a!dynamicLink(saveInto: a!save(local!selectedCard, fv!item.street)),
                    /* This logic assigns each card to the right column */
                    showWhen: or(mod(fv!index, local!numCols) = local!colIndex, and(mod(fv!index, local!numCols) = 0, local!colIndex = local!numCols)),
                    padding: "NONE",
                    marginBelow: "STANDARD"
                  )
                )
              }
            )
          )
        ),
        alignVertical: "TOP",
        showWhen: isNull(local!selectedCard),
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      ),
      a!richTextDisplayField(
        value: "Details for " & local!selectedCard & " would appear here",
        showWhen: not(isNull(local!selectedCard)),
        align: "CENTER"
      ),
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          char(10),
          char(10),
          a!richTextIcon(
            icon: "arrow-left",
            link: a!dynamicLink(
              saveInto: a!save(local!selectedCard, null)
            ),
            linkStyle: "STANDALONE",
            color: "ACCENT"
          ),
          a!richTextItem(
            text: " Go back",
            link: a!dynamicLink(
              saveInto: a!save(local!selectedCard, null)
            ),
            linkStyle: "STANDALONE"
          )
        },
        showWhen: not(isNull(local!selectedCard)),
        align: "CENTER"
      )
    }
  )
}
```

### \[Line 1-12\] Define columns and user selection

At the top of the pattern, local variables are set up to index the house data, define the number of columns, and determine the user selection (`local!selectedCard`, line 12).

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
{
  a!localVariables(
    local!houses: {
      a!map(street: "2310 Groveland Ter",   city: "Reston", state: "VA", price: 879000,  beds: 3, baths: 2.5, sqft: 1934, img: "https://images.unsplash.com/photo-1492889971304-ac16ab4a4a5a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=058c56771e5c8d1f9adf38dc794f6e0e&auto=format&fit=crop&w=3306&q=80"),
      a!map(street: "4147 Woodlane Dr",     city: "Reston", state: "VA", price: 719400,  beds: 2, baths: 1.5, sqft: 1415, img: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=193a24d3505792ef2c9ace43b00fe4f5&auto=format&fit=crop&w=1400&q=60"),
      a!map(street: "1924 Victoria Dr",     city: "Reston", state: "VA", price: 925000,  beds: 3, baths: 2,   sqft: 2451, img: "https://images.unsplash.com/photo-1485996463739-9cb09adbe6c5?ixlib=rb-0.3.5&s=95f7a5e9e6c1c6637b6d686ee5946e53&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "5850 Paddock Way",     city: "Reston", state: "VA", price: 925000,  beds: 4, baths: 3.5, sqft: 3290, img: "https://images.unsplash.com/photo-1437751695201-298be97a82a8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1a6e6c222ee269587d9d336902f370e5&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "2900 Carver Rd, #301", city: "Reston", state: "VA", price: 529200,  beds: 1, baths: 1.5, sqft: 1160, img: "https://images.unsplash.com/photo-1460317442991-0ec209397118?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b95599cb95166892018645cd2a22923a&auto=format&fit=crop&w=800&q=60"),
      a!map(street: "7714 Andreas Ave",     city: "Reston", state: "VA", price: 742900,  beds: 2, baths: 2,   sqft: 1930, img: "https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-0.3.5&s=d9e9fe8649144a11972a8cbb10ad6cd3&auto=format&fit=crop&w=800&q=60")
    },
    local!numCols: 3, /* Change this to set a different number of columns. If you change this number, consider updating the stackWhen parameter on the columns layout */
    local!selectedCard,
```

### \[Line 13-121\] Configuring card layouts with nested components

We use `a!forEach()` to loop through each column that contains a card layout. Each card layout contains a billboard layout to display the overlay of the street and city/state on the card layout image, as well as a side by side layout to display the price, beds, baths, and Sq. Ft. The card layout link parameter uses `a!dynamicLink()` to save the user's selection.

```sail
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
    {
      a!columnsLayout(
        columns: a!forEach(
          items: enumerate(local!numCols) + 1,
          expression: a!localVariables(
            local!colIndex: fv!index,
            a!columnLayout(
              contents: {
                a!forEach(
                  items: local!houses,
                  expression: a!cardLayout(
                    contents: {
                      a!billboardLayout(
                        backgroundMedia: a!webImage(
                          source: fv!item.img
                        ),
                        height: "SHORT",
                        marginBelow: "NONE",
                        overlay: a!barOverlay(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Street",
                                    labelPosition: "COLLAPSED",
                                    value: a!richTextItem(
                                      text: fv!item.street,
                                      size: "MEDIUM",
                                      style: "STRONG"
                                    )
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "City & State",
                                    labelPosition: "COLLAPSED",
                                    value: fv!item.city & ", " & fv!item.state
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE",
                              stackWhen: "TABLET_LANDSCAPE"
                            )
                          }
                        )
                      ),
                      a!cardLayout(
                        contents: {
                          a!sideBySideLayout(
                            items: {
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Price",
                                  labelPosition: "COLLAPSED",
                                  value: a!richTextItem(
                                    text: a!currency(isoCode: "USD", value: fv!item.price, decimalPlaces: 0, format: "SYMBOL"),
                                    size: "LARGE",
                                    style: "STRONG"
                                  )
                                )
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Beds",
                                  value: fv!item.beds
                                ),
                                width: "MINIMIZE"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Baths",
                                  value: fv!item.baths
                                ),
                                width: "MINIMIZE"
                              ),
                              a!sideBySideItem(
                                item: a!richTextDisplayField(
                                  label: "Sq. Ft.",
                                  value: fixed(fv!item.sqft, 0, false)
                                ),
                                width: "MINIMIZE"
                              )
                            },
                            stackWhen: "TABLET_LANDSCAPE"
                          )
                        },
                        showBorder: false
                      )
                    },
                    link: a!dynamicLink(saveInto: a!save(local!selectedCard, fv!item.street)),
                    /* This logic assigns each card to the right column */
                    showWhen: or(mod(fv!index, local!numCols) = local!colIndex, and(mod(fv!index, local!numCols) = 0, local!colIndex = local!numCols)),
                    padding: "NONE",
                    marginBelow: "STANDARD"
                  )
                )
              }
            )
          )
        ),
        alignVertical: "TOP",
        showWhen: isNull(local!selectedCard),
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      ),
```

### \[Line 122-153\] Display selection content with rich text display components

We then use rich text display components to show the content for a selected house. When adapting this pattern to your use case, replace these display fields with your own content.

```sail
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
      a!richTextDisplayField(
        value: "Details for " & local!selectedCard & " would appear here",
        showWhen: not(isNull(local!selectedCard)),
        align: "CENTER"
      ),
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          char(10),
          char(10),
          a!richTextIcon(
            icon: "arrow-left",
            link: a!dynamicLink(
              saveInto: a!save(local!selectedCard, null)
            ),
            linkStyle: "STANDALONE",
            color: "ACCENT"
          ),
          a!richTextItem(
            text: " Go back",
            link: a!dynamicLink(
              saveInto: a!save(local!selectedCard, null)
            ),
            linkStyle: "STANDALONE"
          )
        },
        showWhen: not(isNull(local!selectedCard)),
        align: "CENTER"
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...