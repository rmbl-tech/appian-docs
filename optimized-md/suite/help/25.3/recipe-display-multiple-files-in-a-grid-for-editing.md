---
source_url: https://docs.appian.com/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html
original_path: recipe-display-multiple-files-in-a-grid-for-editing.html
version: "25.3"
title: "Display Multiple Files in a Grid"
page_id: "recipe-display-multiple-files-in-a-grid-for-editing"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Display Multiple Files in a Grid

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

Show a dynamic number of files in a grid and edit certain file attributes.

For this recipe, were are giving our users the ability to update the file name, description, and an associative field for the file "Category". However, designers can modify this recipe to modify various types of document metadata.

![](images/SAIL_Recipe_File_Grid.png)

This scenario demonstrates:

-   How to handle an array of documents in an editable grid for file verification and attribute editing
-   How to use [`a!forEach()`](fnc_looping_a_foreach.html) in an interface component

## Setup

Before we can see this recipe in the live view, we will need to create a Constant that holds an array of documents. To do this:

1.  Upload a few files into Appian
2.  Create a constant of type Document named `UC_DOCUMENTS` and select the **multiple** checkbox. Select the files you just uploaded as the value.

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
a!localVariables(
  /*
  * local!files are stored in a constant here. However, this source would typically come from
  * process data or queried from a relational database. local!fileMap simulates a data
  * structure that would typically hold file metadata.
  */
  local!files: cons!DOCUMENT_GIF_IMAGE,
  local!fileMap: a!forEach(
    items: local!files,
    expression: a!map(
      file: fv!item,
      fileCategory: "",
      newFileName: document(fv!item, "name"),
      newFileDescription: document(fv!item, "description")
    )
  ),
  a!sectionLayout(
    contents: {
      a!gridLayout(
        label: "Example: Display Multiple Files in a Grid",
        totalCount: count(local!files),
        headerCells: {
          a!gridLayoutHeaderCell(label: "File"),
          a!gridLayoutHeaderCell(label: "Name"),
          a!gridLayoutHeaderCell(label: "Description"),
          a!gridLayoutHeaderCell(label: "Category"),
          a!gridLayoutHeaderCell(label: "Size (KB)", align: "RIGHT")
        },
        columnConfigs: {
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2),
        },
        rows: a!forEach(
          items: local!fileMap,
          expression: a!gridRowLayout(
            contents: {
              a!linkField(
                /* Labels are not visible in grid cells but are necessary to meet accessibility requirements */
                label: "File" & fv!index,
                links: a!documentDownloadLink(
                  label: document(fv!item.file,"name") & "." & document(fv!item.file,"extension"),
                  document: fv!item.file
                ),
                value: fv!item.newFileName,
                readOnly: true
              ),
              a!textField(
                label: "File Name " & fv!index,
                value: fv!item.newFileName,
                saveInto: fv!item.newFileName
              ),
              a!textField(
                label: "Description " & fv!index,
                value: fv!item.newFileDescription,
                saveInto: fv!item.newFileDescription,
                readOnly: false
              ),
              a!dropdownField(
                label: "category " & fv!index,
                placeholder: "-- Please Select--",
                choiceLabels: { "Resume", "Cover Letter", "Other" },
                choiceValues: { "Resume", "Cover Letter", "Other" },
                value: fv!item.fileCategory,
                saveInto: fv!item.fileCategory
              ),
              a!textField(
                label: "title " & fv!index,
                value: round(document(fv!item.file, "size") / 1000),
                align: "RIGHT",
                readOnly: true
              )
            },
            id: fv!index
          )
        ),
        rowHeader: 2
      ),
      a!textField(
        label: "Value of Document Dictionary",
        readOnly: true,
        value: local!fileMap
      )
    }
  )
)
```

## Test it out

1.  Set the category of a file to **Resume**. Notice that the category is applied to the map created in local!fileMap

## Notable implementation details

-   While this recipe uses local variable for their stand-alone capability, you will typically be interaction with a CDT or datasubset data structure when working with file attributes. In these cases, the data would typically be passed in via a rule input or query.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...