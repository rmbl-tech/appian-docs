---
source_url: https://docs.appian.com/suite/help/25.3/Paging_Grid_Component.html
original_path: Paging_Grid_Component.html
version: "25.3"
title: "Read-Only Grid Component"
page_id: "Paging_Grid_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Read-Only Grid Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Configure a Read-Only Grid in Appian

This video from an [Academy Online course on configuring charts, grids, and KPIs in reports](https://academy.appian.com/#/online-courses/25483fc1-53be-403b-8035-16786160b99e) explains how to quickly add and configure a read-only grid component.

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-grids.html">SAIL Design System guidance available for Grids</a><p class="ds-release-notice-p">Grids should help your users take action and make decisions. Check out the grids design guidance page to learn how to display your data in a structured, easy-to-scan layout to help your users find what they need.</p></td></tr></tbody></table>

## Function

**a!gridField**( _label, labelPosition, instructions, helpTooltip, emptyGridMessage, data, columns, pageSize, initialSorts, secondarySorts, pagingSaveInto, selectable, selectionStyle, selectionValue, selectionSaveInto, selectionRequired, selectionRequiredMessage, disableRowSelectionWhen, validations, validationGroup, showWhen, spacing, height, borderStyle, shadeAlternateRows, rowHeader, accessibilityText, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, userFilters, showSearchBox, showRefreshButton, showExportButton, recordActions, openActionsIn, actionsDisplay, actionsStyle, maxSelections, showSelectionCount, loadDataAsync, similarityScoreThreshold_ )

Displays a grid of data as rich text, links, images, buttons, tags, record actions, or progress bars. This grid component also supports searching, filtering, selecting, sorting, and paging. For example:

[![images/example_grid.png](images/example_grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img70)

[![](images/example_grid.png)](#_)

**See also**:

-   To learn how to work with the read-only grid, see [Configuring the Read-Only Grid](read-only-grid-configuration.html) or the [Grid Tutorial](Grid_Tutorial.html).
-   To organize editable inputs in a tabular layout, use an [editable grid](Editable_Grid_Component.html).

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

Data Source

 |

`data`

 |

_recordType, List of Map and List of Dictionary, DataSubset, or PortalReportDataSubset_

 |

The data to display in the grid. Use a [record type reference](reference-records.html) or [a!recordData()](fnc_system_recorddata.html) to source your data from records and utilize records functionality, such as user filters and export to Excel. For other cases, you can use a query, such as `a!queryEntity()` with _pagingInfo_ set as `fv!pagingInfo` to have the grid automatically manage paging. The function `a!queryProcessAnalytics()`, a Data Subset, a list of Dictionary, or an array of data can also be used. When using a query that returns a `datasubset`, you must pass the total count (`fetchTotalCount: true` on the query).

 |
|

Columns

 |

`columns`

 |

_List of `a!gridColumn()`_

 |

The columns to display in the grid, configured using [a!gridColumn()](Grid_Column_Component.html).

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

Determines the style of the grid border. Valid values: `"STANDARD"`, `"LIGHT"` (default).

 |
|

Shade Alternate Rows

 |

`shadeAlternateRows`

 |

_Boolean_

 |

Determines whether alternate rows are shaded. Default: `false`.

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

Refresh after each user interaction

 |

`refreshAlways`

 |

_Boolean_

 |

When true, grid data will be refreshed after each user interaction and each interval refresh. Default: _false_.

 |
|

Refresh after record action completes

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes grid data each time a specified action completes. Valid values: `"RECORD_ACTION"`.

 |
|

Refresh after an interval of time

 |

`refreshInterval`

 |

_Number (Decimal)_

 |

How often grid data gets refreshed in minutes. When null, grid data will not be refreshed on an interval. Valid values: `"0.5"`, `"1, 2"`, `"3"`, `"4"`, `"5"`, `"10"`, `"30"`, and `"60"`.

 |
|

Refresh after referenced variable changes

 |

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When true, grid data will be refreshed each time the value of any variable referenced in the _data_ parameter is updated. To refresh grid data when another variable that is not used in the _data_ parameter changes, use `refreshOnVarChange`. Default: _true_.

 |
|

Refresh after variable changes

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
|

Load Grid Data in Background

 |

`loadDataAsync`

 |

_Boolean_

 |

When a record type is used as the grid's data source, set this to true to load the grid data and filters independently from the rest of the interface. To asynchronously load data that is used in other components as well, instead of setting this to true, use [a!asyncVariable](fnc_evaluation_a_asyncvariable.html) to define a local variable and use the local variable in the data parameter. See [Asynchronous Loading](async_loading.html) for more information. Default: false.

 |
|

Similarity Score Threshold

 |

`similarityScoreThreshold`

 |

_Number (Decimal)_

 |

When [smart search](records-smart-search.html) is available, it returns records that match the user's search for fields with smart search enabled, as long as they appear in the grid and meet or exceed the similarity score. Default: 1. A value of 1 means that only keyword matches will be displayed.

 |

## Usage considerations

### Choosing the source of the grid

The fastest way to configure a read-only grid is from [design mode](working_in_design_mode.html). When you drag and drop the component into the live view, you can select one of the following options as the grid's data source:

| Data Source | Action |
| --- | --- |
| [Record type](Record_Type_Object.html) | Select a record type to use as the source. Grids that use a record type as the source are referred to as a _records-powered grids_.

When you select a record type as the data source, the grid will populate with the record list configured on the record type. You can also reuse [other elements from the record type](#use-records-specific-components). |
| Query | Create an [a!queryEntity()](fnc_system_a_queryentity.html) expression from the query editor and use the resulting query as the source. |
| Variable | Select a rule input or local variable as the source. |
| Rule | Select an expression rule to use as the source. |
| Expression | Write an expression directly in the component to use as the source. |

### Using records-powered grids

Consider the following when creating a records-powered grid.

#### Using records-powered grids in a portal

When you use a records-powered grid in a portal, there are a few things to keep in mind:

-   **Some record components don't work in portals**: Certain record components, such as [record links](Record_Link_Component.html) and [record actions](Record_Action_Component.html), are incompatible with portals. When you create a read-only grid using a record type, it may automatically use these components, so be sure to remove the incompatible components before publishing your portal.
-   **Users can't save their filters in a portal**: The record list search, refresh button, export to Excel, and user filters will all function in a portal. However, users can't save their filters in a portal since they aren't signed in. The **Manage filters** button is replaced with a **Clear Filters** button in a published portal.
-   **[Asynchronous loading](async_loading.html) is not compatible with portals.**

[![filters in read only grid filters](images/read_only_grid_filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img71)

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

If you reference a related record field from a one-to-many relationship as a column in the grid, the maximum number of related records returned for each base record is 100.

To filter, limit, and sort the related record set returned from the one-to-many relationship, you can leverage the _relatedRecordData_ parameter in [a!recordData()](fnc_system_recorddata.html#using-the-relatedrecorddata-parameter).

Avoid using relationship references to display related one-to-many data. Instead, you should only reference the specific related record field you want to display. This avoids querying more data than necessary, which can impact the grid's performance and [export behavior](Optimizing_Record_Lists_for_Export_to_Excel.html#export-one-to-many-data).

For example, to display a list of cases associated with each customer, you should use the related record field reference `recordType!Customer.relationships.cases.fields.title` in the grid column. You should not use the relationship reference `recordType!Customer.relationships.cases`.

#### Use records-specific components

You can display the following components on any records-powered grid:

-   [User filters](filter-the-record-list.html#user-filters)
-   [Search](search-the-record-list.html)
-   [Export to Excel button](#export-data-to-excel)
-   [Record actions](#display-and-style-record-actions)

#### Export data to Excel

When set to _true_, the _showExportButton_ parameter allows users to export the grid data to Microsoft Excel. By default, any columns visible in the grid will export to Excel. You can specify which columns are exported by configuring the [_exportWhen_ parameter on individual grid columns](Grid_Column_Component.html#using-the-exportwhen-parameter).

Users should only export grid data from applications and sites. You should not export grid data from an interface in Appian Designer.

Review [how much data can be exported](Optimizing_Record_Lists_for_Export_to_Excel.html#how-much-data-can-be-exported) from the grid, and how [certain display elements are exported to Excel](Optimizing_Record_Lists_for_Export_to_Excel.html#how-is-data-exported).

#### Display and style record actions

The _recordActions_ parameter allows you to display [record actions](record-actions.html), like related actions or record list actions, on the grid. You can display actions from different record types.

You can then use the _actionsStyle_ parameter to determine whether all actions display as with standard styling, or if the first record action displays as a primary button style. Appian recommends using the `"TOOLBAR_PRIMARY"` option when you want the first action, typically the most common action, to stand out.

When _actionsStyles_ is set to `"TOOLBAR"`, the buttons display like this:

[![images/grid-toolbar-standard.png](images/grid-toolbar-standard.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img72)

[![](images/grid-toolbar-standard.png)](#_)

When _actionsStyles_ is set to `"TOOLBAR_PRIMARY"`, the buttons display like this:

[![images/grid-toolbar-primary.png](images/grid-toolbar-primary.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img73)

[![](images/grid-toolbar-primary.png)](#_)

See the [record action component](Record_Action_Component.html#usage-considerations) for other details to consider when adding record actions to a grid.

#### Record action security

Each action specified in the _recordActions_ parameter has [security](record-action-security.html) that is checked to ensure only the right users can see the right actions. In most cases where you use security rules, Appian evaluates the security for the entire grid before it is shown to the user. Because security rules are verified in bulk, the overall grid loading time will be shorter than if security expressions are used.

**Note:**  If you use `a!localVariables()` inside an `a!recordActionItem()`, Appian cannot perform a bulk security evaluation, so the grid may load slower than expected. Whenever possible, create local variables outside `a!recordActionItem()`.

#### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

#### Using the loadDataAsync parameter

When you use a record type as the grid's data source, you can set the _loadDataAsync_ parameter to `true` to allow the interface to load without waiting for the grid data. A placeholder will display in the grid's place, enabling users to interact with other parts of the interface while the grid's data loads in the background.

If the grid's data is reused elsewhere in the interface, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to create an async variable instead. See [Asynchronous Loading](async_loading.html) for more information on choosing the right method.

**Note:**  In [offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces, read-only grids that are configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

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

### Using smart search

Business users often work with large data sets in grid components. Without a search feature, you need to scroll or apply manual filters to find what they need. [Smart search](records-smart-search.html) simplifies this by letting your users enter search terms or sentences. Then smart search finds related sentences with similar meaning and quickly locates the right records, even when your users search with incomplete or imprecise search terms.

You can use [smart search](records-smart-search.html) across multiple text fields or a document field in a grid.

To use smart search with a read-only grid:

1.  [Enable smart search](records-smart-search.html#enable-smart-search) on the record type.
2.  Set `showSearchBox` to true.
3.  Set `similarityScoreThreshold` to a numeric value less than 1 to return semantically relevant results. For example: 0.0026. By default, `similarityScoreThreshold` is set to 1, so only keyword matches are returned—just like it worked prior to smart search.
4.  Add an initial sort on _searchResults.allSearchFields.similarityScore_ in descending order so the best matches appear first. This sort is ignored when no search term is entered and applies only after a user starts a search.
5.  Use labels or colors to indicate how closely each result matches the search term. See [these smart search](records-smart-search.html#examples) examples for details.

#### Search behavior in a!gridField

The following points describe how Appian processes search queries in `a!gridField` (read-only grid component).

-   By default, the `a!gridField` component search box uses keyword search.
-   If smart search is enabled, Appian runs both keyword and smart searches.
    -   Keyword search matches return a `similarityScore` of exactly 1.
    -   Smart search matches return a `similarityScore` less than 1.
    -   To use the `similarityScoreThreshold` parameter in the `a!gridField` component, `showSearchBox` must be set to `true`.
    -   To use your own search box, set `showSearchBox` to `false` and apply filters with `a!recordData`.
    -   Once set up, the `a!gridField` component uses keyword search for all integer and text fields in the `a!gridColumn`, and smart search for text or document fields that have smart search enabled and are displayed in the grid.

**Tip:**  Grids use a [keyword search](records-smart-search.html#keyword-search-and-smart-search) by default because the similarity score threshold defaults to 1. To enable smart search, lower this value.

#### Primary similarity score

The primary similarity score represents the highest similarity score Appian finds from any searched field or section of content for a given record.

To retrieve how and where the match occurred, use:

-   `searchResults.allSearchFields.similarityScore`: This field provides the primary similarity score for a record when a smart search is performed across multiple fields.
-   `searchResults.allSearchFields.sourceContent`: This field indicates the specific content that matched the search term and resulted in the highest similarity score for that record.
-   `searchResults.allSearchFields.sourceField`: The field where the search term with the highest similarity score was found. Use this to access the contents of the matched field.

For example, imagine you have a grid displaying case information where the fields **title** and **description** are enabled for smart search. When you enter a search term:

-   If the **title** in the first row is a better semantic match than the **description**, `allSearchFields.similarityScore` and `sourceContent` will match `searchResults.title.similarityScore` and `searchResults.title.sourceContent` for that row.
-   If, in the second row, the better match is found in the **description** field, then `allSearchFields.similarityScore` and `sourceContent` will match `searchResults.description.similarityScore` and `searchResults.description.sourceContent` for that row.

#### Sorting by similarity score

You can let users sort search results by `similarityScore` in descending order to prioritize the most relevant matches at the top of the grid. To enable this, set the `sortField` parameter in an `a!gridColumn` to one of the following:

-   `allSearchFields.similarityScore`(recommended): This is used when you are searching across multiple fields and want to sort by the [primary similarity score](#primary-similarity-score). The primary similarity score represents the highest similarity score Appian finds from any searched field or section of content for a given record. Because it works in most situations, we recommend using it.
-   `searchResults.description.similarityScore`: This is used when you are specifically sorting by the similarity score of the `description` field and want to sort by its relevance. You may also use individual field similarity scores to debug or display relevance scores to end users, such as showing `description.similarityScore`.

#### Tips for smart search

-   Verify the fields you want to search are [enabled for smart search](records-smart-search.html#enable-smart-search).
-   Make sure the smart search [indexing status](records-smart-search.html#troubleshooting) is _Completed_ and not _Failed_ or _Running_.
-   Search time increases as the number of records and searchable fields grows. To improve performance, limit the number of fields and records being searched when possible. For example, searching 10,000 records is faster than searching 1 million records.
-   Use `allSearchFields.similarityScore` whenever possible to sort and filter. Only use `<<fieldName>>.similarityScore` if your use case requires it. This field behaves like related records and may return unexpected results without a search. Add logic to check for a search term first.
-   Don't filter or sort by `sourceContent`. `sourceContent` is designed to be a result of the search, not a criteria for filtering or sorting.

#### Smart search example

You can find example configurations for using smart search in a read-only grid at [Configure Smart Search](records-smart-search.html#examples).

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!gridField\_19r1](/suite/help/25.3/Paging_Grid_Component_191.html) |
Now supports embedded queries, columns widths, and rich text.

 |
| [a!gridField\_23r3](/suite/help/25.3/Paging_Grid_Component_23r3.html) |

Enhanced read-only grids that use a record type as the source so they only query the record fields specified in the _columns_, _pagingSaveInto_, and _selectionSaveInto_ parameters. This allows for more optimal grid performance. Additionally, if your grid includes dynamic behavior, you can configure the _fields_ parameter in [a!recordData()](fnc_system_recorddata.html) to specify when to query fields in the grid.

 |
| [a!gridField\_24r3](/suite/help/25.3/Paging_Grid_Component_24r3.html) |

Enhanced [records-powered grids](Using_the_Records_Tab.html#interface-components) so they can automatically detect if fields have been queried from a different relationship and skip any redundant queries. Additionally, updated the grid's default border style and shading.

 |
| [a!gridField\_25r2](/suite/help/25.3/Paging_Grid_Component_25r2.html) |

Enhanced [records-powered grids](Using_the_Records_Tab.html#interface-components) so the _relatedRecordData_ parameter can accept a limit of up to 100 related records.

For more on what's changed, see [New version details](/suite/help/25.3/Paging_Grid_Component_25r2.html#new-version-details).

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Read-Only Grid Component.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Configure a Chart to Grid Toggle](/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html) (_Charts, Grids_): Display a column chart with a toggle to display an alternate grid view of the data.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Delete Rows in a Grid](/suite/help/25.3/recipe-delete-rows-in-a-grid.html) (_Grids_): Delete one or more rows of data in a read-only grid.

-   [Display Last Refresh Time](/suite/help/25.3/recipe-display-last-refresh-time.html) (_Auto-Refresh, Grids, Records_): Display the last time the interface was updated, either based on a user interaction or a timer.

-   [Display Processes by Process Model with Status Icons](/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html) (_Grids, Images, Reports_): Use an interface to display information about instances of a specific process model.

-   [Display a User's Tasks in a Grid With Task Links](/suite/help/25.3/recipe-display-a-users-tasks-in-a-grid-with-task-links.html) (_Grids, Reports, Looping_): Display the tasks for a user in a Read-Only Grid and allow them to click on a task to navigate to the task itself.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Grid With Detail Pattern](/suite/help/25.3/grid-with-detail-pattern.html) (_Grids_): The grid with detail pattern allows users to select an item from a grid to see more details next to the grid.

-   [Grid with Heatmap Pattern](/suite/help/25.3/grid-with-heatmap-pattern.html) (_Grids_): Displays a grid with conditional formatting of background colors at different thresholds.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [More-Less Link](/suite/help/25.3/more-less.html) (_Grids, Rich Text_): Use this pattern to keep grids with rows containing varying text lengths looking clean and uniform. This design also improves readability and the user experience by limiting the amount of text in the interface.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Refresh Data Using a Refresh Button](/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html) (_Auto-Refresh_):

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Show Calculated Columns in a Grid](/suite/help/25.3/recipe-show-calculated-columns-in-a-grid.html) (_Formatting, Grids, Records_): Display calculated values in columns in a grid.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use the Write to Data Store Entity Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) (_Smart Services, Grids, Looping_): Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...