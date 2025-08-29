---
source_url: https://docs.appian.com/suite/help/25.3/more-less.html
original_path: more-less.html
version: "25.3"
title: "More-Less Link"
page_id: "more-less"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# More-Less Link

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

Use this pattern to keep grids with rows containing varying text lengths looking clean and uniform. This design also improves readability and the user experience by limiting the amount of text in the interface. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the more-less pattern, which is a grid with two columns; one for course title and one for course description. The description column also contains a more link.](images/patterns/more_less.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are grids, dynamic links, and rich text. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the more-less pattern with callouts to point out the rich text dynamic links in the course and description grid columns](images/patterns/more_less_link_details.png)

### Pattern expression

When you drag and drop the more-less link pattern onto your interface, 78 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!courseData: {
      a!map(name: "LAT 101", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus."),
      a!map(name: "LAT 201", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac."),
      a!map(name: "LAT 202", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac."),
      a!map(name: "LAT 301", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus."),
      a!map(name: "LAT 302", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac.")
    },
    {
      a!gridField(
        data: todatasubset(local!courseData, fv!pagingInfo),
        columns: {
          a!gridColumn(
            label: "Course",
            value: a!richTextDisplayField(
              value: a!richTextItem(
                text: fv!row.name,
                link: a!dynamicLink(),
                linkStyle: "STANDALONE"
              )
            )
          ),
          /* If a column displays large blocks of text,        *
           * use a more-less link to conditionally show text.  *
           * This helps keep grid row heights more uniform.    */
          a!gridColumn(
            label: "Description",
            value: a!localVariables(
              local!description: fv!row.description,
              local!showMore: false,
              a!richTextDisplayField(
                value: {
                  if(
                    local!showMore,
                    {
                      local!description,
                      " ",
                      a!richTextItem(
                        text: "Less",
                        link: a!dynamicLink(
                          value: false,
                          saveInto: local!showMore
                        ),
                        style: "STRONG"
                      )
                    },
                    {
                      a!richTextItem(
                        text: {
                          left(local!description, 200)
                        }
                      ),
                      a!richTextItem(
                        text: {
                          "... ",
                          a!richTextItem(
                            text: "More",
                            link: a!dynamicLink(
                              value: true,
                              saveInto: local!showMore
                            ),
                            style: "STRONG"
                          )
                        },
                        showWhen: len(local!description) > 200
                      )
                    }
                  )
                }
              )
            )
          )
        }
      )
    }
  )
}
```

### \[Line 1-9\] Define local variables

The local variables at the top of the expression are used to define the data that will be displayed in each row of the grid.

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
{
  a!localVariables(
    local!courseData: {
      a!map(name: "LAT 101", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus."),
      a!map(name: "LAT 201", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac."),
      a!map(name: "LAT 202", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac."),
      a!map(name: "LAT 301", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus."),
      a!map(name: "LAT 302", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non semper nibh. In id laoreet metus. Praesent id vehicula mi, maximus tristique neque. Cras at tortor sit amet neque posuere tempor. Maecenas tortor turpis, sodales quis blandit sit amet, laoreet vitae turpis. Praesent venenatis enim dolor, vel porta risus dapibus at. Mauris hendrerit rutrum massa, eget sollicitudin arcu condimentum ac.")
    },
```

### \[Line 10-23\] Define Course Column

This section opens up the grid and the Course grid column. The course column contains a rich text dynamic link for the course name.

```sail
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
      a!gridField(
        data: todatasubset(local!courseData, fv!pagingInfo),
        columns: {
          a!gridColumn(
            label: "Course",
            value: a!richTextDisplayField(
              value: a!richTextItem(
                text: fv!row.name,
                link: a!dynamicLink(),
                linkStyle: "STANDALONE"
              )
            )
          ),
```

### \[Line 27-78\] Define description column

This section contains the description column, the more-less link, and the `if()` statement that defines the logic needed for the more-less link to work. The more-less is a rich text dynamic link that gives users the options to display the full description.

The `if()` statement that defines the more-less link logic spans from lines `34` to `69`. The logic is simple; if the "More" link has been clicked, it will show the full description and a rich text "Less" link. If the "More" link has not been clicked, it will only show 200 characters of the description along with a rich text "More" link.

This design allows you to keep grids with rows containing varying text lengths looking clean and uniform.

```sail
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
         a!gridColumn(
            label: "Description",
            value: a!localVariables(
              local!description: fv!row.description,
              local!showMore: false,
              a!richTextDisplayField(
                value: {
                  if(
                    local!showMore,
                    {
                      local!description,
                      " ",
                      a!richTextItem(
                        text: "Less",
                        link: a!dynamicLink(
                          value: false,
                          saveInto: local!showMore
                        ),
                        style: "STRONG"
                      )
                    },
                    {
                      a!richTextItem(
                        text: {
                          left(local!description, 200)
                        }
                      ),
                      a!richTextItem(
                        text: {
                          "... ",
                          a!richTextItem(
                            text: "More",
                            link: a!dynamicLink(
                              value: true,
                              saveInto: local!showMore
                            ),
                            style: "STRONG"
                          )
                        },
                        showWhen: len(local!description) > 200
                      )
                    }
                  )
                }
              )
            )
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