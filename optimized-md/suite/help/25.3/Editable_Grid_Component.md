---
source_url: https://docs.appian.com/suite/help/25.3/Editable_Grid_Component.html
original_path: Editable_Grid_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Editable Grid Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-grids.html">SAIL Design System guidance available for Grids</a><p class="ds-release-notice-p">Grids should help your users take action and make decisions. Check out the grids design guidance page to learn how to display your data in a structured, easy-to-scan layout to help your users find what they need.</p></td></tr></tbody></table>

## Function

**a!gridLayout**( _label, instructions, headerCells, columnConfigs, rows, validations, validationGroup, selectable, selectionDisabled, selectionRequired, selectionValue, selectionSaveInto, addRowLink, totalCount, emptyGridMessage, helpTooltip, labelPosition, showWhen, shadeAlternateRows, spacing, height, borderStyle, selectionStyle, rowHeader, accessibilityText, allowRowReordering, rowOrderTooltip, rowOrderData, rowOrderField_ )

Displays a tabular layout of SAIL components to provide quick inline editing of fields. For an example of how to configure an editable grid, see the Add, Edit, and Remove Data in an Inline Editable Grid SAIL Recipe.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the grid label.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this grid.

 |
|

Header Cells

 |

`headerCells`

 |

_List of Variant_

 |

Array of column headers created with a!gridLayoutHeaderCell().

 |
|

Column Configurations

 |

`columnConfigs`

 |

_List of GridColumnConfiguration_

 |

Array of column configurations created with a!gridLayoutColumnConfig().

 |
|

Rows

 |

`rows`

 |

_List of Variant_

 |

Array of grid rows created with a!gridRowLayout().

 |
|

Validations

 |

`validations`

 |

_List of Variant_

 |

Validation errors to display below the grid.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |
|

Selectable

 |

`selectable`

 |

_Boolean_

 |

Determines if the selection column is displayed. Default: false.

 |
|

Selection disabled

 |

`selectionDisabled`

 |

_Boolean_

 |

Determines if selection is disabled on all rows. Default: false.

 |
|

Selection required

 |

`selectionRequired`

 |

_Boolean_

 |

Determines if a selection is required to submit the form. Default: false.

 |
|

Selection Value

 |

`selectionValue`

 |

_List of Variant_

 |

Identifiers of selected rows.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

One or more variables that are updated with the selected identifiers when the user changes selections. Use a!save() to save a modified or alternative value to a variable.

 |
|

Add Row Link

 |

`addRowLink`

 |

_Any Type_

 |

Link for adding a row to the grid. Create link using a!dynamicLink().

 |
|

Total Count

 |

`totalCount`

 |

_Number (Integer)_

 |

Number of rows of data displayed in the grid.

 |
|

Empty Grid Message

 |

`emptyGridMessage`

 |

_Text_

 |

Text to display in the grid when no data is available. Default is `"No items available"`.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Shade alternate rows

 |

`shadeAlternateRows`

 |

_Boolean_

 |

Determines whether alternate rows are shaded. Default: true.

 |
|

Spacing

 |

`spacing`

 |

_Text_

 |

Determines the spacing within grid cells. Valid values: `"STANDARD"` (web default), `"DENSE"` (mobile default).

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the height of the grid. Valid values: `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`, `"AUTO"` (default). All grid heights besides AUTO have fixed headers that will remain at the top of the grid when scrolling.

 |
|

Border Style

 |

`borderStyle`

 |

_Text_

 |

Determines the style of the grid border. Valid values: `"STANDARD"` (default), `"LIGHT"`.

 |
|

Selection Style

 |

`selectionStyle`

 |

_Text_

 |

Determines the style when a row is selected. Valid values: `"CHECKBOX"` (default), `"ROW_HIGHLIGHT"`.

 |
|

Row Header

 |

`rowHeader`

 |

_Number (Integer)_

 |

Index of the column to be used as the row header. Screen readers will announce the value in each row header when navigating to other cells within that row. Used only for accessibility; produces no visible change.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Allow row reordering using drag and drop

 |

`allowRowReordering`

 |

_Boolean_

 |

Determines if grid rows can be reordered by dragging and dropping (browser only). Default: false.

 |
|

Show row order tooltip

 |

`rowOrderTooltip`

 |

_Boolean_

 |

Determines whether a tooltip with row reordering keyboard shortcuts is shown in the header of the row order column. Default: true.

 |
|

Data to reorder

 |

`rowOrderData`

 |

_Any Type_

 |

A local variable or rule input that points to the list of data that is updated when the rows are reordered. For example, a record type query or a map defined in a local variable.

 |
|

Row order field

 |

`rowOrderField`

 |

_Any Type_

 |

The field in rowOrderData that stores the updated index of a row after it is reordered. For example, if rowOrderData uses a record type, add a Number (Integer) field to the record type and reference it, such as recordType!Record.field.orderIndex. If it uses a map, add a key value pair to the map and reference the key name, such as "orderIndex".

 |

## Usage considerations

### Performance and data

-   Performance is affected by the number of components in an interface. If your interface contains an editable grid with many cells, the interface may feel slow. See also: [Interface Evaluation Lifecycle](SAIL_Performance.html)
-   When using a datasubset obtained using _a!queryEntity()_ as the source of data for the editable grid, make sure to set its _fetchTotalCount_ parameter to `true`. Otherwise, the `totalCount` field on the resulting datasubset may be invalid (i.e. set to -1). This is relevant for the `totalCount` parameter on the editable grid. See also: [a!queryEntity() Function](fnc_system_a_queryentity.html).

### Component behavior in grid cells

-   When an interface component is placed into a grid cell, the following component configurations are ignored:
    -   label
    -   instructions
    -   label position
-   Validation messages on the component within the grid cell are displayed when the component's value is not null.
-   The components placed within a grid cell can be different across the rows in one column.

### Using images in editable grids

-   When placing an Image Field component inside an editable grid, there are some additional restrictions that do not apply when an image component is outside of a grid.
-   The image component behaves slightly differently when it is placed inside of a Grid Layout component than when it is outside of a Grid Layout.
    -   Inside an editable grid, the image size `FIT` is not allowed.
    -   Inside an editable grid, the default size for an image component is `ICON`. Other valid image sizes include `SMALL`, `MEDIUM`, and `LARGE`.
    -   Inside an editable grid, you can only have 0 or 1 images in an image component. Multiple images in the same grid cell are not supported.
    -   All image components in the same column must have the same size.
-   The Grid Text Column and Grid Image Column components cannot be used in an editable grid.

### Grid height and headers

-   Grid heights behave as a fixed height on web but a maximum height on mobile.
-   Setting the height of the grid to `SHORT`, `MEDIUM`, or `TALL` will freeze the grid's header and footer. See the [Short Editable Grid with Weighted Columns](#short-editable-grid-with-weighted-columns) example below.
-   For accessibility purposes, every grid should have a row header configured. The first column containing text is usually the correct choice for row header. See the [SAIL Design System](sail/ux-grids.html#accessibility) for more information.

### Reordering grid rows

You can allow users to reorder the grid by dragging and dropping the rows. Simply configure a few parameters and add a field to your source that will allow you to store the data. See [Editable grid with grid row reordering](#editable-grid-with-grid-row-reordering) for examples.

See [Appian Mobile considerations](#appian-mobile-considerations) for important information about grid row reordering in Appian Mobile.

To enable grid row reordering:

1.  Set the _allowRowReordering_ parameter to `true`.
2.  Set the _rowOrderData_ parameter to a local variable or rule input that is being used for the grid data.
3.  Add a field to your record type or CDT of type `Number (Integer)` and name it something like "orderIndex".
4.  Set the _rowOrderField_ parameter to one of the following:
    -   If you're using a record type for the grid data, reference the record type field that you added in the previous step. For example, `recordType!Record.field.orderIndex`.
    -   If you're using a CDT or map for the grid data, enter the name of the field that you added in the previous step as a string. For example, `"orderIndex"`.

#### Using the _rowOrderData_ parameter

For the _rowOrderData_ parameter, reference a local variable or rule input that is being used for the grid data.

For example, for a local variable, this could be a query created with [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryEntity()](fnc_system_a_queryentity.html) that returns a list of data.

See an [example](#record-type-example) using a record type below.

#### Using the _rowOrderField_ parameter

For the _rowOrderField_ parameter, reference a field that stores the index of the row order.

The field that you reference in the _rowOrderField_ parameter:

-   Should be `Number (Integer)`.
-   Cannot be a field in a related record.

To reference a field in the _rowOrderField_ parameter:

-   If you're using a record type for the grid data, reference the record type field. For example, `recordType!Record.field.orderIndex`.
-   If you're using a CDT or map for the grid data, enter the name of the field as a string. For example, `"orderIndex"`.

#### Accessibility considerations

If you are concerned about accessibility for users who cannot use a mouse to drag items, provide an alternative way to reorder grid rows for users with mobility impairments. For example, you could add arrows that can be clicked to reorder the rows.

### Appian Mobile considerations

In Appian Mobile, users will not be able to reorder grid rows. If you have [grid row reordering](#reordering-grid-rows) enabled, users will need to view the interface in a browser to be able to reorder the rows.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Editable grid with two rows

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 1, unitPrice: 10},
    {item: "Item 2", qty: 2, unitPrice: 20}
  },
  a!gridLayout(
    label: "Products",
    instructions: "Update the item name, quantity, or unit price.",
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    rows: {
      a!gridRowLayout(
        contents: {
          a!textField(
            value: local!items[1].item,
            saveInto: local!items[1].item
          ),
          a!integerField(
            value: local!items[1].qty,
            saveInto: local!items[1].qty
          ),
          a!floatingPointField(
            value: local!items[1].unitPrice,
            saveInto: local!items[1].unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(local!items[1].qty) * todecimal(local!items[1].unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      ),
      a!gridRowLayout(
        contents: {
          a!textField(
            value: local!items[2].item,
            saveInto: local!items[2].item
          ),
          a!integerField(
            value: local!items[2].qty,
            saveInto: local!items[2].qty
          ),
          a!floatingPointField(
            value: local!items[2].unitPrice,
            saveInto: local!items[2].unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(local!items[2].qty) * todecimal(local!items[2].unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    },
    rowHeader: 1
  )
)
```

Displays the following:

![gridLayout with two Rows](images/gridLayout_twoRows.png)

### Editable grid with two rows using looping

_See [Add, Edit, and Remove Data in an Inline Editable Grid](recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) recipe for more help using [a!forEach](fnc_looping_a_foreach.html) with the editable grid._

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 1, unitPrice: 10},
    {item: "Item 2", qty: 2, unitPrice: 20}
  },
  a!gridLayout(
    label: "Products",
    instructions: "Update the item name, quantity, or unit price.",
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    rows: a!forEach(
      items: local!items,
      expression: a!gridRowLayout(
        contents: {
          a!textField(
            value: fv!item.item,
            saveInto: fv!item.item
          ),
          a!integerField(
            value: fv!item.qty,
            saveInto: fv!item.qty
          ),
          a!floatingPointField(
            value: fv!item.unitPrice,
            saveInto: fv!item.unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    ),
    rowHeader: 1
  )
)
```

Displays the following:

![gridLayout with two Rows](images/gridLayout_twoRows.png)

### Editable grid with validations

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 10, unitPrice: 10},
    {item: "Item 2", qty: 2,  unitPrice: 20}
  },
  a!gridLayout(
    label: "Products",
    instructions: "Update the item name, quantity, or unit price.",
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    rows: a!forEach(
      items: local!items,
      expression: a!gridRowLayout(
        contents: {
          a!textField(
            value: fv!item.item,
            saveInto: fv!item.item
          ),
          a!integerField(
            value: fv!item.qty,
            saveInto: fv!item.qty
          ),
          a!floatingPointField(
            value: fv!item.unitPrice,
            saveInto: fv!item.unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    ),
    validations: {
      if(
        sum(tointeger(local!items.qty) * todecimal(local!items.unitPrice))>100,
        "Total must not exceed $100",
        null
      ),
      if(
        length(local!items)<3,
        a!validationMessage(
          message: "Enter at least 3 items",
        ),
        null
      )
    },
    rowHeader: 1
  )
)
```

Displays the following:

![gridLayout with validation](images/gridLayout_validation2.png)

### Editable grid with selection

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 1, unitPrice: 10},
    {item: "Item 2", qty: 2, unitPrice: 20}
  },
  local!selected: tointeger({}),
  a!gridLayout(
    label: "Products",
    instructions: "Selected: " & local!selected,
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    rows: a!forEach(
      items: local!items,
      expression: a!gridRowLayout(
        id: fv!index,
        contents: {
          a!textField(
            value: fv!item.item,
            saveInto: fv!item.item
          ),
          a!integerField(
            value: fv!item.qty,
            saveInto: fv!item.qty
          ),
          a!floatingPointField(
            value: fv!item.unitPrice,
            saveInto: fv!item.unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    ),
    selectable: true,
    selectionValue: local!selected,
    /* Flatten the selected values so the result is easier to work with */
    /* when the select/deselect all option is used in an editable grid  */
    selectionSaveInto: a!save(local!selected, a!flatten(save!value)),
    rowHeader: 1
  )
)
```

Displays the following:

![gridLayout with selection](images/gridLayout_selection.png)

### Editable grid with weighted columns

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 10, unitPrice: 10},
    {item: "Item 2", qty: 2,  unitPrice: 20}
  },
  a!gridLayout(
    label: "Products",
    instructions: "This is a grid layout with column weights: 5, 1, 1, 2",
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    columnConfigs: {
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 5),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2)
    },
    rows: a!forEach(
      items: local!items,
      expression: a!gridRowLayout(
        contents: {
          a!textField(
            value: fv!item.item,
            saveInto: fv!item.item
          ),
          a!integerField(
            value: fv!item.qty,
            saveInto: fv!item.qty
          ),
          a!floatingPointField(
            value: fv!item.unitPrice,
            saveInto: fv!item.unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    ),
    rowHeader: 1
  )
)
```

Displays the following: ![gridLayout with weighted columns](images/gridLayout_weighted.png)

### Short editable grid with weighted columns

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
a!localVariables(
  local!items: {
    {item: "Item 1", qty: 1, unitPrice: 10},
    {item: "Item 2", qty: 2, unitPrice: 20},
    {item: "Item 3", qty: 3, unitPrice: 30},
    {item: "Item 4", qty: 4, unitPrice: 40},
    {item: "Item 5", qty: 5, unitPrice: 50},
    {item: "Item 6", qty: 6, unitPrice: 60},
    {item: "Item 7", qty: 7, unitPrice: 70},
    {item: "Item 8", qty: 8, unitPrice: 80},
    {item: "Item 9", qty: 9, unitPrice: 90},
    {item: "Item 10", qty: 10, unitPrice: 100}
  },
  a!gridLayout(
    label: "Products",
    instructions: "Update the item name, quantity, or unit price.",
    headerCells: {
      a!gridLayoutHeaderCell(label: "Item"),
      a!gridLayoutHeaderCell(label: "Qty"),
      a!gridLayoutHeaderCell(label: "Unit Price"),
      a!gridLayoutHeaderCell(label: "Total", align: "RIGHT")
    },
    columnConfigs: {
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 5),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE"),
      a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2)
    },
    rows: a!forEach(
      items: local!items,
      expression: a!gridRowLayout(
        contents: {
          a!textField(
            value: fv!item.item,
            saveInto: fv!item.item
          ),
          a!integerField(
            value: fv!item.qty,
            saveInto: fv!item.qty
          ),
          a!floatingPointField(
            value: fv!item.unitPrice,
            saveInto: fv!item.unitPrice
          ),
          a!textField(
            value: a!currency(
              isoCode: "USD",
              value: tointeger(fv!item.qty) * todecimal(fv!item.unitPrice)
            ),
            readOnly: true,
            align: "RIGHT"
          )
        }
      )
    ),
    height: "SHORT",
    rowHeader: 1
  )
)
```

Displays the following:

![gridLayout short](images/gridLayout_short.gif)

### Editable grid with grid row reordering

These examples demonstrate how to configure [grid row reordering](#reordering-grid-rows). One uses a!map() and the other uses record types for the data.

#### a!map example

This example uses `a!map()` for the data so that you can easily copy and paste it into an interface object.

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
a!localVariables(
  local!data: {
    a!map(
      id: 1,
      firstName: "John",
      lastName: "Smith",
      department: "Engineering",
      title: "Director",
      phoneNumber: "555-123-4567",
      startDate: today() - 360,
      /* orderIndex sets the index for the order of rows.
      Leave it null initially and it will update when the rows are reordered.
      Since we are using a!map for the data, it won't update here,
      but you can view the updated index in the Local Variables pane. */
      orderIndex: null()
    ),
    a!map(
      id: 2,
      firstName: "Michael",
      lastName: "Johnson",
      department: "Finance",
      title: "Analyst",
      phoneNumber: "555-987-6543",
      startDate: today() - 360,
      orderIndex: null()
    ),
    a!map(
      id: 3,
      firstName: "Mary",
      lastName: "Reed",
      department: "Engineering",
      title: "Software Engineer",
      phoneNumber: "555-456-0123",
      startDate: today() - 240,
      orderIndex: null()
    )
  },
  a!formLayout(
    titleBar: "Employees",
    contents: {
      a!gridLayout(
        labelPosition: "COLLAPSED",
        headerCells: {
          a!gridLayoutHeaderCell(label: "First Name"),
          a!gridLayoutHeaderCell(label: "Last Name"),
          a!gridLayoutHeaderCell(label: "Department" ),
          a!gridLayoutHeaderCell(label: "Title"),
          a!gridLayoutHeaderCell(label: "Phone Number"),
          a!gridLayoutHeaderCell(label: "Start Date")
        },
        columnConfigs: {
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 3),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2)
        },
        rows: a!forEach(
          items: local!data,
          expression: a!gridRowLayout(
            id: fv!index,
            contents: {
              a!textField(
                label: "first name " & fv!index,
                value: fv!item.firstName,
                saveInto: fv!item.firstName,
                required: true
              ),
              a!textField(
                label: "last name " & fv!index,
                value: fv!item.lastName,
                saveInto: fv!item.lastName,
                required: true
              ),
              a!dropdownField(
                label: "department " & fv!index,
                placeholder: "-- Select -- ",
                choiceLabels: { "Corporate", "Engineering", "Finance", "Human Resources", "Professional Services", "Sales" },
                choiceValues: { "Corporate", "Engineering", "Finance", "Human Resources", "Professional Services", "Sales" },
                value: fv!item.department,
                saveInto: fv!item.department,
                required:true
              ),
              a!textField(
                label: "title " & fv!index,
                value: fv!item.title,
                saveInto: fv!item.title,
                required: true
              ),
              a!textField(
                label: "phone number " & fv!index,
                placeholder: "555-456-7890",
                value: fv!item.phoneNumber,
                saveInto: fv!item.phoneNumber
              ),
              a!dateField(
                label: "start date " & fv!index,
                value: fv!item.startDate,
                saveInto: fv!item.startDate,
                align: "RIGHT",
                required: true
              )
            }
          )
        ),
        allowRowReordering: true,
        rowOrderTooltip: true,
        /* rowOrderData should be a local variable or rule input that points
        to a list of data to update when the rows are reordered */
        rowOrderData: local!data,
        /* For rowOrderField, use the name of the field from a!map() */
        rowOrderField: "orderIndex"
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Submit",
          style: "OUTLINE"
        )
      }
    )
  )
)
```

#### Record type example

This example uses record type references for the data. You will need to replace the record type references to view it in an interface object.

_Record type references are specific to each environment. If you copy and paste this example into your interface, it will not evaluate. Use it as a reference only._

**Tip:**  You can recreate this example using the record type from the [Record Type Tutorial (Database)](Records_Tutorial.html).

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
a!localVariables(
  local!record: a!queryRecordType(
    recordType: recordType!AT Employee,
    fields: {
      recordType!AT Employee.fields.firstName,
      recordType!AT Employee.fields.lastName,
      recordType!AT Employee.fields.title,
      recordType!AT Employee.fields.phoneNumber,
      recordType!AT Employee.fields.startDate,
      recordType!AT Employee.fields.departmentId,
      recordType!AT Employee.relationships.department.fields.value,
    },
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 100)
  ).data,
  a!formLayout(
    titleBar: "Employees",
    contentsWidth: "MEDIUM",
    contents: {
      a!gridLayout(
        labelPosition: "COLLAPSED",
        headerCells: {
          a!gridLayoutHeaderCell(label: "First Name"),
          a!gridLayoutHeaderCell(label: "Last Name"),
          a!gridLayoutHeaderCell(label: "Department" ),
          a!gridLayoutHeaderCell(label: "Title"),
          a!gridLayoutHeaderCell(label: "Phone Number"),
          a!gridLayoutHeaderCell(label: "Start Date")
        },
        columnConfigs: {
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 4),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 4),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 2),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 7),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 6),
          a!gridLayoutColumnConfig(width: "DISTRIBUTE", weight: 6)
        },
        rows: a!forEach(
          items: local!record,
          expression: a!gridRowLayout(
            id: fv!index,
            contents: {
              a!textField(
                value: fv!item[recordType!AT Employee.fields.firstName],
                saveInto: fv!item[recordType!AT Employee.fields.firstName],
                required: true
              ),
              a!textField(
                value: fv!item[recordType!AT Employee.fields.lastName],
                saveInto: fv!item[recordType!AT Employee.fields.lastName],
                required: true
              ),
              a!dropdownField(
                data: recordType!AT Employee',
                choiceLabels: recordType!AT Employee.relationships.department.fields.value,
                choiceValues: recordType!AT Employee.fields.departmentId,
                value: fv!item[recordType!AT Employee.fields.departmentId],
                saveInto: fv!item[recordType!AT Employee.fields.departmentId],
                required: true,
                placeholder: "Choose a department"
              ),
              a!textField(
                value: fv!item[recordType!AT Employee.fields.title],
                saveInto: fv!item[recordType!AT Employee.fields.title],
                required: true
              ),
              a!textField(
                value: fv!item[recordType!AT Employee.fields.phoneNumber],
                saveInto: fv!item[recordType!AT Employee.fields.phoneNumber]
              ),
              a!dateField(
                value: fv!item[recordType!AT Employee.fields.startDate],
                saveInto: fv!item[recordType!AT Employee.fields.startDate],
                align: "RIGHT",
                required: true
              )
            }
          )
        ),
        allowRowReordering: true,
        rowOrderTooltip: true,
        /* rowOrderData should be a local variable or rule input that points
        to a list of data to update when the rows are reordered */
        rowOrderData: local!record,
        /* For rowOrderField, use the name of the field from a!map() */
        rowOrderField: recordType!AT Employee.fields.orderIndex
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Submit",
          style: "OUTLINE"
        )
      }
    )
  )
)
```

The expression above would return something like this:

[![images/employeeRecordTypeGif.gif](images/employeeRecordTypeGif.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img57)

[![](images/employeeRecordTypeGif.gif)](#_)

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Related Patterns

The following patterns include usage of the Editable Grid Component.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

-   [Expand/Collapse Rows in a Tree Grid](/suite/help/25.3/recipe-expand-collapse-rows-in-a-tree-grid.html) (_Hierarchical Data, Grids_): Create a grid that shows hierarchical data and allows users to dynamically expand and collapse rows within the grid.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...