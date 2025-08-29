---
source_url: https://docs.appian.com/suite/help/25.3/call-to-action-pattern.html
original_path: call-to-action-pattern.html
version: "25.3"
title: "Call to Action Pattern"
page_id: "call-to-action-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Call to Action Pattern

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

Use the call to action pattern as a landing page when your users have a single action to take. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot showing the call to action image, text, and button](images/patterns/call_to_action_pattern.png)

## Design structure

The main components of this pattern are [columns layout](Columns_Layout.html), [card layout](card_layout.html), [rich text display](Rich_Text_Component.html), [document image](Document_Image_Component.html), and [button](Button_Array_Layout.html) components. In this design structure breakdown, we will explain how each component is used. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

### Pattern expression

This pattern introduces a 75-line expression to the interface. It can be found in the **EXAMPLES** section in the **Select a template** pane of a blank interface, or you can click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) and copy and paste this example into the **Interface Definition**.

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
{
  /* Use the call to action pattern as a landing page */
  /* when your users have a single action to take     */
  a!cardLayout(
    /* Add whitespace above image */
    height: "SHORT",
    showBorder: false
  ),
  a!columnsLayout(
    columns: {
      /* Empty column layouts on both sides */
      /* help to center the content */
      a!columnLayout(),
      a!columnLayout(
        contents: {
          a!imageField(
            labelPosition: "COLLAPSED",
            images: {
              a!documentImage(
                document: a!EXAMPLE_CALL_TO_ACTION_IMAGE()
              )
            },
            size: "LARGE",
            align: "CENTER"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              a!richTextItem(
                text: upper("Apply in 5 easy steps"),
                color: "ACCENT",
                size: "LARGE",
                style: "STRONG"
              ),
              char(10),
              char(10),
              a!richTextItem(
                text: "This should take less than 10 minutes",
                size: "MEDIUM"
              ),
              char(10),
              char(10)
            },
            align: "CENTER"
          ),
          /* If your data is records-based, consider using a!recordActionField() */
          /* with CALL_TO_ACTION style instead of a!buttonArrayLayout()          */
          a!buttonArrayLayout(
            buttons: {
              a!buttonWidget(
                label: "Start Now",
                size: "LARGE",
                style: "SOLID"
              )
            },
            align: "CENTER"
          )
        },
        width: "MEDIUM_PLUS"
      ),
      a!columnLayout()
    },
    stackWhen: {
      "PHONE",
      "TABLET_PORTRAIT"
    }
  ),
  a!cardLayout(
    /* Add whitespace below button */
    height: "SHORT",
    showBorder: false
  )
}
```

### \[Lines 1-8\] Use a blank card for formatting

This card layout is used to format the interface by creating white space above the image.

```
1
2
3
4
5
6
7
8
{
  /* Use the call to action pattern as a landing page */
  /* when your users have a single action to take     */
  a!cardLayout(
    /* Add whitespace above image */
    height: "SHORT",
    showBorder: false
  ),
```

### \[Lines 9-69\] Configure the image, text, and button

This section of the expression contains the major components of the pattern that the user will be interacting with: the [columns layout](Columns_Layout.html), [document image](Document_Image_Component.html), [rich text display](Rich_Text_Component.html), and [button](Button_Array_Layout.html) components.

There are three columns, but only the center column has content. The two empty columns center the content **(lines 13 and 63)**, regardless of screen size.

The first component is [a!imageField()](Image_Component.html). You can replace the image by uploading a file and using a constant to reference it.

The second component consists of two different rich text items to create the text. Both items contain the [char() function](fnc_text_char.html) for additional formatting. Here, `char(10)` is used to add space around the text.

The third component is a button, which is not linked to anything. If your data is from a record, we suggest replacing the button link with a [record action](Record_Action_Component.html) component. You can also use a [dynamic link](Dynamic_Link_Component.html) with [local variables](Local_Variables.html) to show different interfaces in a wizard.

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
 a!columnsLayout(
    columns: {
      /* Empty column layouts on both sides */
      /* help to center the content */
      a!columnLayout(),
      a!columnLayout(
        contents: {
          a!imageField(
            labelPosition: "COLLAPSED",
            images: {
              a!documentImage(
                document: a!EXAMPLE_CALL_TO_ACTION_IMAGE()
              )
            },
            size: "LARGE",
            align: "CENTER"
          ),
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              char(10),
              char(10),
              a!richTextItem(
                text: upper("Apply in 5 easy steps"),
                color: "ACCENT",
                size: "LARGE",
                style: "STRONG"
              ),
              char(10),
              char(10),
              a!richTextItem(
                text: "This should take less than 10 minutes",
                size: "MEDIUM"
              ),
              char(10),
              char(10)
            },
            align: "CENTER"
          ),
          /* If your data is records-based, consider using a!recordActionField() */
          /* with CALL_TO_ACTION style instead of a!buttonArrayLayout()          */
          a!buttonArrayLayout(
            buttons: {
              a!buttonWidget(
                label: "Start Now",
                size: "LARGE",
                style: "SOLID"
              )
            },
            align: "CENTER"
          )
        },
        width: "MEDIUM_PLUS"
      ),
      a!columnLayout()
    },
    stackWhen: {
      "PHONE",
      "TABLET_PORTRAIT"
    }
  ),
```

### \[Lines 70-75\] Use a blank card for formatting

This card is used to format the interface by creating white space below the button.

```
1
2
3
4
5
6
a!cardLayout(
    /* Add whitespace below button */
    height: "SHORT",
    showBorder: false
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...