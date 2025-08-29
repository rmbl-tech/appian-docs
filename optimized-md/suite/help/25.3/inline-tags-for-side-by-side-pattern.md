---
source_url: https://docs.appian.com/suite/help/25.3/inline-tags-for-side-by-side-pattern.html
original_path: inline-tags-for-side-by-side-pattern.html
version: "25.3"
title: "Inline Tags for Side-by-Side Layout Pattern"
page_id: "inline-tags-for-side-by-side-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Inline Tags for Side-by-Side Layout Pattern

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

This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

[Tags](Tag_Component.html) are useful for calling out important attributes on an interface.

![inline-tags-sbs-pattern.png](images/patterns/inline-tags-sbs-pattern.png)

## Design structure

This pattern is made up of [read-only text](Text_Component.html), [rich text icons](Styled_Icon_Component.html) and [tags](Tag_Component.html) in a [side by side layout](Side_By_Side_Layout.html).

### Pattern expression

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
{
  a!localVariables(
    local!shops: {
      a!map(name: "Anne's Coffee",         rating: 4, tags: {"Local Favorite"} ),
      a!map(name: "Lake Wally Brew House", rating: 5, tags: {"Local Favorite"} ),
      a!map(name: "Cafe Michelle",         rating: 4, tags: {} ),
      a!map(name: "Cup O' Joe",            rating: 3, tags: {"Vegetarian Friendly"} )
    },
    {
      a!forEach(
        items: local!shops,
        expression:{
          a!localVariables(
            /* Save fv!item to a local variable for use in the inner forEach */
            local!currentShop: fv!item,
            {
              a!sideBySideLayout(
                items: {
                  /* Display the name */
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: local!currentShop.name
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  ),
                  /* Display the rating */
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: a!forEach(
                        items: enumerate(5) + 1,
                        expression: a!richTextIcon(
                          icon: if(
                            fv!index <= tointeger(local!currentShop.rating),
                            "star",
                            "star-o"
                          ),
                          color: "#fc9901"
                        )
                      )
                    ),
                    width: "MINIMIZE"
                  ),
                  /* Display the tags */
                  a!sideBySideItem(
                    item: a!tagField(
                      labelPosition: "COLLAPSED",
                      tags: a!forEach(
                        items: local!currentShop.tags,
                        expression: a!tagItem(
                          text: upper(fv!item),
                          backgroundColor: "SECONDARY"
                        )
                      ),
                      size: "SMALL"
                    )
                  )
                },
                marginBelow: "NONE"
              )
            }
          )
        }
      )
    }
  )
}
```

### \[Line 1-8\] Set local variables

One local variable is set up at the beginning of the expression. This variable stores a list of shops and their name, rating, and tags we are going to display.

```sail
1
2
3
4
5
6
7
  a!localVariables(
    local!shops: {
      a!map(name: "Anne's Coffee",         rating: 4, tags: {"Local Favorite"} ),
      a!map(name: "Lake Wally Brew House", rating: 5, tags: {"Local Favorite"} ),
      a!map(name: "Cafe Michelle",         rating: 4, tags: {} ),
      a!map(name: "Cup O' Joe",            rating: 3, tags: {"Vegetarian Friendly"} )
    },
```

### \[Line 9-15\] First loop and store fv!item

In this section, we setup the first loop with `a!forEach()`. On line 14, we store the current value of fv!item into its own local variable for use within a nested `a!forEach()`.

```sail
8
9
10
11
12
13
14
    {
      a!forEach(
        items: local!shops,
        expression:{
          a!localVariables(
            /* Save fv!item to a local variable for use in the inner forEach */
            local!currentShop: fv!item,
```

### \[Line 15-30\] Display the shop name

Here, we create a side by side layout and set the first side by side item to be a rich text display component.

Note that we set the _labelPosition_ to "COLLAPSED" in order to remove unnecessary spacing above the text item. We will do this on all three display items in this interface.

Also note that we set the _width_ of the side by side item to "MINIMIZE". This allows the text to only take up as much space as necessary, moving the star icons closer to the text.

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
            {
              a!sideBySideLayout(
                items: {
                  /* Display the name */
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: local!currentShop.name
                        )
                      }
                    ),
                    width: "MINIMIZE"
                  ),
```

### \[Line 31-48\] Display the shop rating

Here, we follow the pattern to [Show a Numeric Rating as Rich Text Icons](recipe-show-a-numeric-rating-as-rich-text-icons.html).

Similar to above, we also set the _labelPosition_ of the rich text display component as "COLLAPSED" and the _width_ of the side by side item to "MINIMIZE".

```sail
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
                  /* Display the rating */
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: a!forEach(
                        items: enumerate(5) + 1,
                        expression: a!richTextIcon(
                          icon: if(
                            fv!index <= tointeger(local!currentShop.rating),
                            "star",
                            "star-o"
                          ),
                          color: "#fc9901"
                        )
                      )
                    ),
                    width: "MINIMIZE"
                  ),
```

### \[Line 49-71\] Display the shop tags

This side by side item displays our tags. Since we are interested in showing the tags inline next to standard-sized text, we set the tag _size_ to "SMALL". This size is exactly the same height as standard-sized text. Again, setting the _labelPosition_ on the tag field to "COLLAPSED" and the _marginBelow_ to "MINIMIZE" removes unnecessary vertical space.

We did not set the side by side item _width_ to "MINIMIZE" in this case. If we had more tags, keeping the _width_ as "AUTO" (default) would allow the tags to wrap if needed.

In this example, each shop only shows one or zero tags. Notice that we do not need to add special handling for the shop with no tags– a tag item with null _text_ does not render anything or reserve space. If you would like to show more than one tag, simply iterate over each tag in a list with a!forEach() as we did for the rich text items.

```sail
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
                  /* Display the tags */
                  a!sideBySideItem(
                    item: a!tagField(
                      labelPosition: "COLLAPSED",
                      tags: a!forEach(
                        items: local!currentShop.tags,
                        expression: a!tagItem(
                          text: upper(fv!item),
                          backgroundColor: "SECONDARY"
                        )
                      ),
                      size: "SMALL"
                    )
                  )
                },
                marginBelow: "NONE"
              )
            }
          )
        }
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...