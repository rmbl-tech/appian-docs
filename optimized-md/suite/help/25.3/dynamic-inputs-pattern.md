---
source_url: https://docs.appian.com/suite/help/25.3/dynamic-inputs-pattern.html
original_path: dynamic-inputs-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dynamic Inputs

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

Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the dynamic inputs pattern](images/patterns/dynamic_inputs_pattern.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are columns layouts, side-by-side layouts, dynamic links, and rich text. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the dynamic inputs pattern with callouts for the main components](images/patterns/dynamic_inputs_details.png)

### Pattern expression

When you drag and drop the dynamic inputs pattern onto your interface, 81 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!contractNumbers: {""},
    a!columnsLayout(
      columns: a!columnLayout(
        contents: {
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextItem(
                text: "Contract Number(s)",
                style: "STRONG"
              )
            }
          ),
          a!forEach(
            items: local!contractNumbers,
            expression: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!textField(
                      label: "Contract Number" & " " & fv!index,
                      labelPosition: "COLLAPSED",
                      placeholder: "123456789",
                      value: fv!item,
                      saveInto: fv!item,
                      refreshAfter: "UNFOCUS",
                      validations: {}
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "times",
                          altText: "Remove number",
                          link: a!dynamicLink(
                            saveInto: a!save(
                              local!contractNumbers, remove(local!contractNumbers, fv!index)
                            )
                          ),
                          linkStyle: "STANDALONE"
                        )
                      },
                      showWhen: count(local!contractNumbers) > 1
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "MIDDLE"
              )
            }
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: a!richTextItem(
              text: {
                a!richTextIcon(
                  icon: "plus",
                  altText: "plus"
                ),
                " ",
                "Add contract number"
              },
              link: a!dynamicLink(
                saveInto: {
                  a!save(local!contractNumbers, append(local!contractNumbers, ""))
                }
              ),
              linkStyle: "STANDALONE"
            ),
            accessibilityText: "Clicking this link will add another contract number input above."
          )
        },
        width: "NARROW_PLUS"
      )
    )
  )
}
```

### \[Line 1-3\] Define the local variable

The local variable at the top of the expression is used to contain the contract number value entered by the user.

```sail
1
2
3
{
  a!localVariables(
    local!contractNumbers: {""},
```

### \[Line 4-15\] Start the columns layouts

This section starts the columns layout and displays a rich text label for the contract number text field.

```sail
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
    a!columnsLayout(
      columns: a!columnLayout(
        contents: {
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextItem(
                text: "Contract Number(s)",
                style: "STRONG"
              )
            }
          ),
```

### \[Line 16-55\] Define a!forEach()

This section:

-   Contains the text field for the contract number input.
-   Defines a rich text dynamic link to remove a text field.

These components are wrapped in the `a!forEach()` function so that you can add or remove as many text fields as needed without having to define the expression for each component individually.

```sail
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
          a!forEach(
            items: local!contractNumbers,
            expression: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!textField(
                      label: "Contract Number" & " " & fv!index,
                      labelPosition: "COLLAPSED",
                      placeholder: "123456789",
                      value: fv!item,
                      saveInto: fv!item,
                      refreshAfter: "UNFOCUS",
                      validations: {}
                    )
                  ),
                  a!sideBySideItem(
                    item: a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextIcon(
                          icon: "times",
                          altText: "Remove number",
                          link: a!dynamicLink(
                            saveInto: a!save(
                              local!contractNumbers, remove(local!contractNumbers, fv!index)
                            )
                          ),
                          linkStyle: "STANDALONE"
                        )
                      },
                      showWhen: count(local!contractNumbers) > 1
                    ),
                    width: "MINIMIZE"
                  )
                },
                alignVertical: "MIDDLE"
              )
            }
          ),
```

### \[Lines 56-81\] Define the add contract number rich text display

This section defines the rich text dynamic link to add a contract number.

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
        a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: a!richTextItem(
              text: {
                a!richTextIcon(
                  icon: "plus",
                  altText: "plus"
                ),
                " ",
                "Add contract number"
              },
              link: a!dynamicLink(
                saveInto: {
                  a!save(local!contractNumbers, append(local!contractNumbers, ""))
                }
              ),
              linkStyle: "STANDALONE"
            ),
            accessibilityText: "Clicking this link will add another contract number input above."
          )
        },
        width: "NARROW_PLUS"
      )
    )
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...