---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-and-populate-sections-dynamically.html
original_path: recipe-add-and-populate-sections-dynamically.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add and Populate Sections Dynamically

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

Add and populate a dynamic number of sections, one for each item in a CDT array.

![](images/SAIL-recipe-dynamic-section.png)

Each section contains an input for each field of the CDT. A new entry is added to the CDT array as the user is editing the last section to allow the user to quickly add new entries without extra clicks. Sections can be independently removed by clicking on a "Remove" button. In the example below, attempting to remove the last section simply blanks out the inputs. Your own use case may involve removing the last section altogether.

## Expression

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
a!localVariables(
  /* A section will be created for every label value array present  */
  local!records: {'type!{http://www.appian.com/ae/types/2009}LabelValue'()},
  {
    a!forEach(
      items: local!records,
      expression: a!sectionLayout(
        label: "Section " & fv!index,
        contents: {
          a!textField(
            label: "Label",
            instructions: if(
              fv!isLast,
              "Value of local!records: "&local!records,
              {}
            ),
            value: fv!item.label,
            saveInto: {
              fv!item.label,
              if(
                fv!isLast,
                /*  This value appends a new section array to section*/
                a!save(local!records, append(local!records, cast(typeof(local!records), null))),
                {}
              )
            },
            refreshAfter: "KEYPRESS"
          ),
          a!textField(
            label: "Value",
            value: fv!item.value,
            saveInto: fv!item.value,
            refreshAfter: "KEYPRESS"
          ),
          a!buttonArrayLayout(
            a!buttonWidget(
              label: "Remove",
              value: fv!index,
              saveInto: {
                a!save(local!records, remove(local!records, fv!index))
              },
              showWhen:not( fv!isLast )
            )
          )
        }
      )
    )
  }
)
```

## Test it out

1.  Fill in the first field and notice that a new section is added as you're typing.
2.  Add a few sections and click on the Remove button to remove items from the array.

## Notable Implementation Details

-   `fv!isLast` is being used to populate the instructions of the last text field as well as prevent the remove button from appearing in the last section.

## Offline

Since sections cannot be added dynamically when offline, you should include multiple sections initially in case they are needed. To support this use case for offline, we will create a different expression with a different supporting rule.

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
a!localVariables(
  /* A section will be created for every label value array present  */
  local!records: { repeat(3, 'type!{http://www.appian.com/ae/types/2009}LabelValue'()) },
  {
    a!forEach(
      items: local!records,
      expression: a!sectionLayout(
        label: "Section " & fv!index,
        contents: {
          a!textField(
            label: "Label",
            instructions: if(
              fv!isLast,
              "Value of local!records: "&local!records,
              {}
            ),
            value: fv!item.label,
            saveInto: {
              fv!item.label,
            },
            refreshAfter: "KEYPRESS"
          ),
          a!textField(
            label: "Value",
            value: fv!item.value,
            saveInto: fv!item.value,
            refreshAfter: "KEYPRESS"
          )
        }
      )
    )
  }
)
```

## Test it out

1.  There are now 3 sections available to the user immediately.
2.  Fill out some of the sections but leave others blank and submit the form. Notice that null values are removed from the array and only non-null values are saved.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...