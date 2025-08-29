---
source_url: https://docs.appian.com/suite/help/25.3/Paging_Grid_Component_24r3.html
original_path: Paging_Grid_Component_24r3.html
version: "25.3"
title: "a!gridField\_24r3 Component"
page_id: "Paging_Grid_Component_24r3"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!gridField\_24r3 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Read-Only Grid Component](/suite/help/25.3/Paging_Grid_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Paging_Grid_Component.html#Old_Version)

**Tip:**  Eager to get started with the read-only grid? Check out the [Grid Tutorial](Grid_Tutorial.html) for the fastest and easiest way to create a read-only grid.

## Function

**a!gridField\_24r3**( _label, labelPosition, instructions, helpTooltip, emptyGridMessage, data, columns, pageSize, initialSorts, secondarySorts, pagingSaveInto, selectable, selectionStyle, selectionValue, selectionSaveInto, selectionRequired, selectionRequiredMessage, disableRowSelectionWhen, validations, validationGroup, showWhen, spacing, height, borderStyle, shadeAlternateRows, rowHeader, accessibilityText, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, userFilters, showSearchBox, showRefreshButton, showExportButton, recordActions, openActionsIn, actionsDisplay, actionsStyle, maxSelections, showSelectionCount_ )

Accepts a set of data and displays it as read-only text, links, images, or rich text in a grid that supports selecting, sorting, and paging.

The `a!gridField()` function allows you to create a read-only grid in your interface to display data as rich text, links, images, buttons, tags, record actions, and progress bars. This grid component also supports searching, filtering, selecting, sorting, and paging.

From design mode, you can quickly and easily set up a read-only grid by dragging and dropping the component into live view and selecting your grid's data source. You can choose from record type, query, variable, rule, or expression. When you choose a record type as your data source, you can reuse features configured on your record list such as user filters, record actions, and export to Excel. You can also use fields from related records to display data on the grid.

Although, design mode allows for a easier and faster setup for your read-only grid, you can still use the `a!gridField()` function in expression mode to customize and configure your read-only grid.

-   To learn how to work with the read-only grid, see [Configuring the Read-Only Grid](read-only-grid-configuration.html).
-   To organize editable inputs in a tabular layout, use an [editable grid](Editable_Grid_Component.html).

**See also**:

-   [a!recordData() Function](fnc_system_recorddata.html)
-   [a!queryEntity() Function](fnc_system_a_queryentity.html)
-   [Configuring the Read-Only Grid](read-only-grid-configuration.html)
-   [Grid Tutorial](Grid_Tutorial.html)

## Parameters

**Note:**  Not all parameters are immediately available in design mode; some display only after enabling others. For example, after selecting **Selectable**, other selection-related parameters will be available.

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

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `ABOVE` (default) Displays the label above the component.
-   `ADJACENT` Displays the label to the left of the component.
-   `COLLAPSED` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `JUSTIFIED` Aligns the label alongside the component starting at the edge of the page.

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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

Data

 |

`data`

 |

_recordType, List of Map and List of Dictionary, DataSubset, or PortalReportDataSubset_

 |

The data to display in the grid. Use a record type reference or `a!recordData()` to source your data from records and utilize records functionality, such as user filters and export. For other cases, you can use a query, such as `a!queryEntity()` with _pagingInfo_ set as `fv!pagingInfo` to have the grid automatically manage paging. The function `a!queryProcessAnalytics()`, a Data Subset, a list of Dictionary, or an array of data can also be used. When using a query that returns a `datasubset`, you must pass the total count (`fetchTotalCount: true` on the query).

 |
|

Columns

 |

`columns`

 |

_List of `a!gridColumn()`_

 |

The columns to display in the grid, configured using `a!gridColumn()`.

 |
|

Rows to Display Per Page

 |

`pageSize`

 |

_Number (Integer)_

 |

The maximum number of rows to display at a time. Default: 10

 |
|

Initial Sorts

 |

`initialSorts`

 |

_List of SortInfo_

 |

Sorts applied to the grid upon initial load only. Each sort is applied in the order listed. The first sort in the list will display an active-sort arrow indicator (either up or down for _ascending_ or _descending_) in its corresponding grid column (if applicable).

 |
|

Secondary Sorts

 |

`secondarySorts`

 |

_List of SortInfo_

 |

Sorts applied to the grid after every user interaction. If the user activates a sort on a column, these sorts will be applied to the other columns in the order they're listed. For example, adding a secondary sort on _Month_ will keep them in order when the user sorts on _Year_. Secondary sorts do not display an active-sort indicator.

 |
|

Paging Save Into

 |

`pagingSaveInto`

 |

_List of Save_

 |

One or more variables that are updated only when user invokes a paging action on the grid. You can reference the current paging of the grid using `fv!pagingInfo`.

 |
|

Selectable

 |

`selectable`

 |

_Boolean_

 |

Determines if grid rows are selectable. When selection style is `"CHECKBOX"` (default), the selection column is displayed. Default: false.

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

Selection Value

 |

`selectionValue`

 |

_Text Array or Integer Array_

 |

Identifiers of the rows that should appear as selected. Can be set to have rows be pre-selected for the user. Supported types: _Text Array_ and _Integer Array_.

 |
|

Save Selection To

 |

`selectionSaveInto`

 |

_List of Save_

 |

One or more variables that are updated with the selected identifiers when the user changes selections. Use `a!save()` to save a modified or alternative value to a variable. You can reference the rows selected and deselected in the most recent user interaction (not all selected or deselected rows) using `fv!selectedRows` and `fv!deselectedRows` respectively.

 |
|

Selection required

 |

`selectionRequired`

 |

_Boolean_

 |

Determines if a selection is required to submit the form. Default: `false`.

 |
|

Selection Required Message

 |

`selectionRequiredMessage`

 |

_Text_

 |

Custom message to display when a selection is required and not provided.

 |
|

Disable Row Selection

 |

`disableRowSelectionWhen`

 |

_Boolean_

 |

Determines for each row if selection is disabled. The condition defined in this parameter is evaluated once for each row. Reference fields from the source using dot notation, such as `fv!row.status`, or the identifier of the row using `fv!identifier`. Grids that use record data must use the `recordType!` domain to reference a record field or related record field. For example, `fv!row[recordType!Case.fields.caseName]`. Default: false.

 |
|

Validations

 |

`validations`

 |

_List of Variant_

 |

Validation errors to display below the grid when the data is invalid, configured using `a!validationMessage()`. You can reference the current page of data using `fv!currentPage`.

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

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

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

Determines height of the grid. Valid values: `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`,`"AUTO"` (default). All grid heights besides AUTO have fixed headers that will remain at the top of the grid when scrolling.

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

Shade Alternate Rows

 |

`shadeAlternateRows`

 |

_Boolean_

 |

Determines whether alternate rows are shaded. Default: true.

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

Refresh Always

 |

`refreshAlways`

 |

_Boolean_

 |

When true, grid data will be refreshed after each user interaction and each interval refresh. Default: _false_.

 |
|

Refresh After

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes grid data each time a specified action completes. Valid values: `"RECORD_ACTION"`.

 |
|

Refresh After an Interval of Time

 |

`refreshInterval`

 |

_Number (Decimal)_

 |

How often grid data gets refreshed in minutes. When null, grid data will not be refreshed on an interval. Valid values: `"0.5"`, `"1, 2"`, `"3"`, `"4"`, `"5"`, `"10"`, `"30"`, and `"60"`.

 |
|

Refresh on Reference Variable Change

 |

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When true, grid data will be refreshed each time the value of any variable referenced in the _data_ parameter is updated. To refresh grid data when another variable that is not used in the _data_ parameter changes, use `refreshOnVarChange`. Default: _true_.

 |
|

Refresh on Variable Change

 |

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes grid data each time any of these specific variables change. This allows you to refresh the grid data when a variable that is not referenced in the _data_ parameter is updated. You can define a single variable (e.g. `refreshOnVarChange: local!var1`) or a list of variables (e.g. `refreshOnVarChange: {local!var1, local!var2}`).

 |
|

User Filters

 |

`userFilters`

 |

_List of Variant_

 |

List of user filter references to display, configured using the `recordType!` domain. For example, `recordType!Case.filters.status`. You may only reference user filters defined on the source record type used for the grid data. This parameter only applies when a record type is used as the source in the data parameter.

 |
|

Show search box

 |

`showSearchBox`

 |

_Boolean_

 |

Determines if the record search box should be shown. This parameter only applies when a record type is used as the source in the data parameter. Default: _true_.

 |
|

Show Refresh Button

 |

`showRefreshButton`

 |

_Boolean_

 |

Determines if the grid should include a refresh button to manually refresh data. This parameter only applies when a record type is used as the source in the data parameter. Default: _true_.

 |
|

Show Export to Excel Button

 |

`showExportButton`

 |

_Boolean_

 |

Determines if grid data can be exported. This parameter only applies when a record type is used as the source in the data parameter. Default: _false_.

 |
|

Record Actions

 |

`recordActions`

 |

_List of Variant_

 |

List of record action items to display above the grid, configured using [a!recordActionItem()](Record_Action_Item_Component.html). If you use `fv!identifier` in the identifier parameter of `a!recordActionItem()`, you will also need to configure selection for the grid. This parameter only applies when a record type is used as the source in the data parameter.

 |
|

Open Actions In

 |

`openActionsIn`

 |

_Text_

 |

Determines how record actions should open to the user. Valid values: `"DIALOG"` (default), `"NEW_TAB"`, `"SAME_TAB"`.

 |
|

Actions Display

 |

`actionsDisplay`

 |

_Text_

 |

Determines which details are shown for record actions, regardless of style. Valid values: `"LABEL_AND_ICON"` (default), `"LABEL"`, `"ICON"`.

 |
|

Actions Display

 |

`actionsStyle`

 |

_Text_

 |

Determines how the list of actions should be displayed above the grid. Valid values: `"TOOLBAR"` (default), `"TOOLBAR_PRIMARY"`. [Learn more](#display-and-style-record-actions).

 |
|

Maximum Selections

 |

`maxSelections`

 |

_Number (Integer)_

 |

The maximum number of items the user can select. When the user selects the maximum number of items, row selection is disabled.

 |
|

Show Selection Count

 |

`showSelectionCount`

 |

_Text_

 |

Determines when the number of selected items displays below the grid. Valid values: `"AUTO"` (default), `"ON"`, `"OFF"`. `"AUTO"` displays the selection count if the value of the maxSelections parameter is greater than 1.

 |

## Usage considerations

### Using read-only grids with record data

Read-only grids that use a record type as the source are known as _records-powered grids_.

Consider the following when creating a records-powered grid.

#### Using records-powered grids in a portal

When you use a records-powered grid in a portal, there are a few things to keep in mind:

-   **Some record components don't work in portals**: Certain record components, such as [record links](Record_Link_Component.html) and [record actions](Record_Action_Component.html), are incompatible with portals. When you create a read-only grid using a record type, it may automatically use these components, so be sure to remove the incompatible components before publishing your portal.
-   **Users can't save their filters in a portal**: The record list search, refresh button, export to Excel, and user filters will all function in a portal. However, users can't save their filters in a portal since they aren't signed in. The **Manage filters** button is replaced with a **Clear Filters** button in a published portal.

[![filters in read only grid filters](images/read_only_grid_filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img77)

[![](images/read_only_grid_filters.png)](#_)

See [Working with Data in Portals](portals-data.html#query-record-data) for more information about using records as the source for read-only grids in portals.

#### Autopopulate a grid with a record list

When a record type is used as the data source for your read-only grid, Appian automatically generates grid columns based on the columns configured for the [record list](record-list.html).

#### Specify which fields to query and when

By default, a grid will query and display all the data specified in the _columns_, _pagingSaveInto_, and _selectionSaveInto_ parameters. This default behavior can potentially impact performance if your grid includes dynamic behavior since it may result in querying more data than necessary.

For example, let's say you configured the _showWhen_ parameter on the [columns](Grid_Column_Component.html) in your grid so that certain columns only appear to managers. Even when columns are hidden from the grid, those fields will still be queried since they're specified in the _columns_ parameter of the grid.

To alter this default behavior, you can specify when the grid should query the fields in your columns using the _fields_ parameter in `a!recordData()`. Learn more about [using the _fields_ parameter in a!recordData()](fnc_system_recorddata.html#using-the-fields-parameter).

#### Reference related data

If you use a record type with [data sync](about-data-sync.html) enabled as the source of your grid, you can also reference [related record fields](record-type-relationships.html) in your grid.

You can use related record fields in your columns, or to sort and filter the grid.

#### Filter, limit, and sort related one-to-many data

If you reference a related record field from a one-to-many relationship as a column in the grid, the maximum number of related records returned for each base record is 10.

To filter, limit, and sort the related record set returned from the one-to-many relationship, you can leverage the _relatedRecordData_ parameter in [a!recordData()](fnc_system_recorddata.html#using-the-relatedrecorddata-parameter).

Avoid using relationship references to display related one-to-many data. Instead, you should only reference the specific related record field you want to display. This avoids querying more data than necessary, which can impact the grid's performance and [export behavior](Optimizing_Record_Lists_for_Export_to_Excel.html#export-one-to-many-data).

For example, to display a list of cases associated with each customer, you should use the related record field reference `recordType!Customer.relationships.cases.fields.title` in the grid column. You should not use the relationship reference `recordType!Customer.relationships.cases`.

#### Use records-specific components

You can add user filters, [export to Excel](Optimizing_Record_Lists_for_Export_to_Excel.html), the out-of-the-box record list search, and record actions on your grid. When you add these components, the grid will automatically style the component header for you.

See the [record action component](Record_Action_Component.html#usage-considerations) for other details to consider when adding record actions to a grid.

#### Display and style record actions

The _recordActions_ parameter allows you to display record actions, like related actions or record list actions, on the grid. You can display actions from different record types.

You can then use the _actionsStyle_ parameter to determine whether all actions display as with standard styling, or if the first record action displays as a primary button style. Appian recommends using the `"TOOLBAR_PRIMARY"` option when you want the first action, typically the most common action, to stand out.

When _actionsStyles_ is set to `"TOOLBAR"`, the buttons display like this:

[![images/grid-toolbar-standard.png](images/grid-toolbar-standard.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img78)

[![](images/grid-toolbar-standard.png)](#_)

When _actionsStyles_ is set to `"TOOLBAR_PRIMARY"`, the buttons display like this:

[![images/grid-toolbar-primary.png](images/grid-toolbar-primary.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img79)

[![](images/grid-toolbar-primary.png)](#_)

#### Record action security

Each action specified in the _recordActions_ parameter has [security](record-action-security.html) that is checked to ensure only the right users can see the right actions. In most cases where you use security rules, Appian evaluates the security for the entire grid before it is shown to the user. Because security rules are verified in bulk, the overall grid loading time will be shorter than if security expressions are used.

**Note:**  If you use `a!localVariables()` inside an `a!recordActionItem()`, Appian cannot perform a bulk security evaluation, so the grid may load slower than expected. Whenever possible, create local variables outside `a!recordActionItem()`.

#### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

### Configuring grid display

-   If the _value_ for a column is empty or null, the grid still renders the column with just the label.
-   The _selectionStyle_ of `ROW_HIGHLIGHT` does not have any visual indicator when selection is disabled through the _disableRowSelectionWhen_ parameter.
-   For accessibility purposes, every grid should have a row header configured. The first column containing text is usually the correct choice for row header. See the [SAIL Design System](sail/ux-grids.html#accessibility) for more information.

### Configuring grid paging

-   To reduce clutter on smaller grids, the following happens:
    -   No paging controls are displayed when all rows are on one page.
    -   Paging controls to jump to the first or last page are not displayed when a grid has less than 3 pages.
-   When a read-only grid is used offline, paging and sorting don't function and images won't render.
-   If you are [managing your own paging](read-only-grid-configuration.html#manual-paging), you cannot pass a datasubset which has a paging configuration that uses a batch size of `-1`.
-   When entering a query in the _data_ parameter (either directly, or indirectly from a rule reference), the query must return the total count (`fetchTotalCount: true`).

### Grid height and column width

-   Grid heights behave as a fixed height on web but a maximum height on mobile.

-   For columns using the `"AUTO"` width, each column's width is determined by the length of the longest value in that column.

    -   See the [read-only grid column component](Grid_Column_Component.html#using-the-width-parameter) for more information on using the `"AUTO"` width.
    -   For complete guidance on when and how to use column widths, see [Column Widths](sail/ux-grids.html#column-widths).

### Design mode guidance

**Note:**  This guidance does not apply to grids that use a record type as the data source. See [Configuring the Read-Only Grid](read-only-grid-configuration.html) to learn how to configure a records-powered grid in design mode.

The following guidance applies when configuring a read-only grid in design mode:

-   **Generated columns**:

    -   When you populate the _data_ parameter from design mode and [let the grid manage the paging](read-only-grid-configuration.html#grid-managed-paging), the grid will automatically generate an initial set of columns in the order they appear.
    -   Grid columns are _not_ automatically generated when you select **VARIABLE** as the data source and use a _local variable_ to power the read-only grid.
    -   The initial values for automatically-generated columns are:

    | Parameter | Value | Description |
    | --- | --- | --- |
    | _label_ | `fv!row.<fieldname>` | The field name is converted to title case. If the field name is in camel case, it will be split and converted to title case. If the field name is too long, it will be truncated with ellipses (`...`). |
    | _value_ | `fv!row.<fieldname>` | The field value to display. |
    | _sortField_ | `<fieldname>` | The field name of the primary key. |
    | _align_ | `"END"` or `fixed()` | The alignment depends on the field's data type. If the data type for the column value is numerical or date-based, then it will set _align_ : `"END"`. If the data type for the column value is a decimal, then it will be wrapped in the `fixed()` function to two decimal places. Ex. `value: fixed(fv!row.cost, 2)`. |

-   **Updating columns**:
    -   After initial columns have been generated, the grid will automatically update with new columns to match any new fields added to the data source.
    -   However, automatic updates _do not_ occur when the data source is an **RULE** or **EXPRESSION**. To update the columns displayed in the grid, you must update the data source, and add or remove the columns manually.
-   **Selecting QUERY as the data source**:
    -   If you select **QUERY** as the data source, you'll use the [query editor](query-editor.html) to configure the query that powers your grid.
    -   Appian will automatically use the following query values in your grid:
        -   The query's _batchSize_ will be the value of the grid's _pageSize_ parameter.
        -   The query's _sortInfo_ will be used as the grid's _initialSort_ parameter.
-   **Batch size limitation**:
    -   The grid cannot use a query that has a paging info with a batch size of `-1` in design mode.

## Examples

You can find example configurations of the grid at [Configuring the Read-Only Grid](read-only-grid-configuration.html) and [Grid Tutorial](Grid_Tutorial.html).

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...