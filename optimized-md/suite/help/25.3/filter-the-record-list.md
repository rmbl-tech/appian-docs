---
source_url: https://docs.appian.com/suite/help/25.3/filter-the-record-list.html
original_path: filter-the-record-list.html
version: "25.3"
title: "Add User Filters"
page_id: "filter-the-record-list"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add User Filters

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how users filters work and how to create them.

## Overview

When you configure the [record list](record-list.html), you're providing users with an easy way to navigate and view a list of their data. You can enhance your record list by adding [user filters](#user-filters) so users can control what information displays in the list.

User filters can also be reused on any read-only grid that uses a record type as the source, also known as a [records-powered grid](Using_the_Records_Tab.html#read-only-grid), so you can build data-centric interfaces more quickly.

[![images/user-filters-support-case.gif](images/user-filters-support-case.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img450)

[![](images/user-filters-support-case.gif)](#_)

## User filters

User filters allow application users to filter the record list or a records-powered grid by selecting options in a list or using a date range. You can configure multiple user filters to filter by record fields or related record fields.

You can use a [guided configuration](#guided-user-filter-configuration) or an [expression](#expression-user-filter-configuration) to create:

-   [List user filters](#list-user-filter).
-   [Date range user filters](#date-range-user-filter).

You can have a combination of these user filters available on the record list. If multiple filter options are selected, the record list will show only records that meet the criteria for all selected user filters.

For example, a Support Case record list may have both a **Status** and **Submitted Date** filter. The **Status** filter has the "Open" and "In Progress" options selected. The **Submitted Date** filter has a date range of "1/1/2022 - 12/31/2023" selected. When both filters are applied, the record list will show support cases that are Open or In Progress between the dates 1/1/2022 and 12/31/2023.

### List user filter

List user filters allow users to filter records by selecting one or more options from a list of values. For example, a filter named "Region" might contain five options:

-   Africa
-   Asia and Pacific
-   Europe and Middle East
-   North America
-   South America

Each filter option will display in a filter dropdown at the top of the record list. By default, users can select multiple filter options at a time from a single user filter, and the filter will return all records that match at least one of the selected options.

[![images/region-userFilter.gif](images/region-userFilter.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img451)

[![](images/region-userFilter.gif)](#_)

To speed up your design experience, Appian will automatically generate a list user filter whenever you define a new [many-to-one relationship](record-type-relationships.html#supported-relationship-types). This user filter is created using the related record field that defines the relationship (the [common field](record-type-relationships.html#common-field-values)), and the filter options are the values from the first Text field listed after the primary key field on the related record type.

### Date range user filter

Date range filters allow users to filter records by specifying two dates or using an open-ended range where only a start date or end date is provided.

For example, using a "Customer Since" filter, users could filter the list of customers to only show customers from 2021 and onward.

[![images/dateRange-userFilter.gif](images/dateRange-userFilter.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img452)

[![](images/dateRange-userFilter.gif)](#_)

## Guided user filter configuration

The **Guided Configuration** allows you to easily specify which field to filter on and the different filter options available to users. It's best to use the guided configuration when you have a static list of filter options, and only a few options that need to be configured.

If you want to dynamically populate your list of filter options, or you have several filter options to include, consider using an [expression](#expression-user-filter-configuration) instead.

**Note:**  If your [unsynced record type](Record_Type_Object.html#synced-and-unsynced-record-types) uses a web service as the data source, the user filter configuration is slightly different. [Learn more](#user-filters-for-unsynced-service-backed-record-types).

### Create a list user filter

To create a [list user filter](#list-user-filter):

1.  In your record type, go to **Filters**.
2.  Under **User Filters**, click **New User Filter**.
3.  Keep the default selection of **Guided Configuration**.
4.  For **Filter Configurations**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Name**

     |

    Enter a name for the user filter. This name is only visible in the record type and is not shown to application users.

     |
    |

    **Label**

     |

    Enter a label to display on the user filter. This label appears to application users.

     |
    |

    **Field**

     |

    Select a record field or related record field to filter on.

     |
    |

    **Type**

     |

    Keep the default selection of **List**.

     |
    |

    **Visibility**

     |

    Specify when the filter appears:

    -   By default, **Always** is selected.
    -   Select **Only show when...** to enter an expression that determines when the filter appears. The filter will only appear when the expression evaluates to _true_.

     |

5.  For **List Configuration**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Users can select multiple options**

     |

    Specify if users can select multiple options in a user filter:

    -   By default, this checkbox is selected.
    -   Clear the checkbox to only allow users to select a single option from the list.

     |
    |

    **Choice Options**

     |

    \*This option only appears if you selected a **Field** from a many-to-one relationship.

    Specify how you want to populate the list options in the filter:

    -   **Related record values**: Automatically use the values from the related record field as the list options. This option is selected by default.
    -   **Fixed Values**: Manually configure the list options.

     |
    |

    **Option Labels**

     |

    Add option labels for users to select in the user filter dropdown:

    1.  Click **New Option** to add a list option.
    2.  For **Option Label**, enter an expression to define the filter option. This label will appear as an option in the user filter.
    3.  For **Operator**, select the appropriate operator value.
    4.  For **Value**, enter an expression to define the value to filter by when a user selects the option label.
    5.  Click **SAVE FILTER OPTION**.

    Repeat these steps until you have all of your necessary list options.

     |
    |

    **Default Options**

     |

    Enter the filter option labels to automatically apply when the record list first loads. If left blank, no filter options are automatically applied to the list.

    If the **Users can select multiple options** checkbox is selected, you can provide multiple option labels. For example `{"Active", "Inactive"}`. Otherwise, you can only provide a single default option.

     |

6.  Click **OK**.

In the example configuration below, users can filter a list of customers based on whether they are active or inactive. Users can have both filter options selected to see a full list of customers.

[![images/UserFilterCreation.png](images/UserFilterCreation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img453)

[![](images/UserFilterCreation.png)](#_)

### Create a date range user filter

To create a [date range user filter](#date-range-user-filter):

1.  In your record type, go to **Filters**.
2.  Click **New User Filter**.
3.  Keep the default selection of **Guided Configuration**.
4.  For **Filter Configurations**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Name**

     |

    Enter a name for the user filter. This name is only visible in the record type and is not shown to application users.

     |
    |

    **Label**

     |

    Enter a label to display on the user filter. This label appears to application users.

     |
    |

    **Field**

     |

    Select a record field or related record field to filter on.

     |
    |

    **Type**

     |

    Select **Date Range**.

     |
    |

    **Visibility**

     |

    Specify when the filter appears:

    -   By default, **Always** is selected.
    -   Select **Only show when...** to enter an expression that determines when the filter appears. The filter will only appear when the expression evaluates to _true_.

     |

5.  For **Date Range Configuration**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Default FROM Date**

     |

    Enter a start date to filter by when the record list first loads. By default, this value is blank so users will see an open-ended date range.

     |
    |

    **Default TO Date**

     |

    Enter an end date to filter by when the record list first loads. By default, this value is blank so users will see an open-ended date range.

     |

6.  Click **OK**.

In the example configuration below, users can filter a list of customers using an open-ended date range.

[![images/UserFilterDateRangeCreation.png](images/UserFilterDateRangeCreation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img454)

[![](images/UserFilterDateRangeCreation.png)](#_)

## Expression user filter configuration

The **Expression** configuration allows you to dynamically populate your list of filter options. By using an expression, you can create filter options using data stored in a [constant](Constants.html), [variable](Local_Variables.html), or in a [record type](Record_Type_Object.html).

**Note:**  If your [unsynced record type](Record_Type_Object.html#synced-and-unsynced-record-types) uses a web service as the data source, the user filter configuration is slightly different. [Learn more](#user-filters-for-unsynced-service-backed-record-types).

To create a user filter in expression mode:

1.  In your record type, go to **Filters**.
2.  Click **New User Filter**.
3.  Select **Expression**.

    ![/expression-user-filter-blank](images/expression-user-filter-blank.png)

4.  For **Name**, enter the name of the user filter. This name is visible in the record type configuration only. It won't be visible to end users.
5.  For **Filter Expression**, enter an expression using the [a!recordFilterList()](fnc_system_a_recordfilterlist.html) or [a!recordFilterDateRange()](fnc_system_a_recordfilterdaterange.html) function. See example expressions below.

    **Tip:**  Consider defining the user filter expression in an [expression rule](Expression_Rules.html) for version control and testing purposes. Then, you can call that rule in the **Filter Expression**.

### Create a filter option for every item in an array

Let's say you have an employee management system, and you want to filter the list of employees by the employee's department.

Every employee has a "Department" dropdown that refers to a constant (`cons!EMPLOYEE_DEPARTMENT`), which has the following values:

-   Corporate
-   Engineering
-   Finance
-   HR
-   Professional Services
-   Sales

In the example below, we have a user filter called "Department". Instead of manually creating an option for each status, we will use the [a!forEach()](fnc_looping_a_foreach.html) function to write those options for us based on the constant (`cons!EMPLOYEE_DEPARTMENTS`).

The `a!forEach()` function will take an array of values and pass them to an expression one at a time, creating the `a!recordFilterListOption` function for each item in the array.

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
a!recordFilterList(
  name: "Department",
  options: a!forEach(
    items: cons!AT_DEPARTMENT_LIST,
    expression: a!recordFilterListOption(
      id: fv!index,
      name: fv!item,
      filter: a!queryFilter(
        field: recordType!Employee.fields.department,
        operator: "=",
        value: fv!item
      )
    )
  )
)
```

In the _options_ parameter, we're using the `a!forEach` function to return every value in the status constant. To give each value an ID, we're using the `a!forEach` function value _index_ (`fv!index`), which keeps track of which value should appear in the array.

The array of department values in `cons!EMPLOYEE_DEPARTMENT` is passed into the function, one at a time, which will result in three `recordFilterListOption` functions, one for each status.

**Tip:**  Instead of a constant, you could store the different employee departments in a new Department record type. As a best practice, you should [store lookup data in a separate record type](build-best-data-fabric.html#store-lookup-data-in-a-separate-record-type).

Then, you could create a many-to-one relationship between Employees and Departments. Appian will automatically generate a user filter on the Employee record type that allows users to filter by department. Learn about all the [sync features](about-data-sync.html) that accelerate application design.

### Create filter options for values from a lookup table

Let's say you have a customer management system, and you want to filter the list of customers by their district.

All customer information is stored in a Customer record type, while each district is stored in a District record type. Since the Customer record type has a [relationship](record-type-relationships.html) to the District record type, you can easily query all districts and display them as filter options.

In the example below, we have a local variable to store a query of all district names. Then, we use the [a!forEach()](fnc_looping_a_foreach.html) function to write each district (stored in `local!fieldValues`) as its own filter option.

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
a!recordFilterList(
  name: "District",
  options: a!localVariables(
    local!fieldValues: a!queryRecordType(
      recordType: recordType!District,
      fields: recordType!District.fields.name,
      pagingInfo: a!pagingInfo(
        1,
        5000
      )
    ).data,
    a!forEach(
      items: local!fieldValues,
      expression: a!recordFilterListOption(
        id: fv!index,
        name: fv!item[recordType!District.fields.name],
        filter: a!queryFilter(
          field: recordType!Customer.fields.districtId,
          operator: "=",
          value: fv!item[recordType!District.fields.id]
        )
      )
    )
  ),
  defaultOption: null,
  isVisible: true,
  allowMultipleSelections: true
)
```

### Create filter options from unique values in the data

Let's say you have an employee management system, and you want to filter the list of employees by the employee's title. You also want to show the number of employees who have that specific title in the filter option.

In the example below, we use a local variable to store a query returning a list of unique employee titles and a count of employees for each title. Then, we use the [a!forEach()](fnc_looping_a_foreach.html) function to write each title and the count of employees with that title (stored in `local!employeeTitles.data`) as its own filter option.

**Note:**  This method may perform poorly with large data sets. We recommend that you create a lookup table and [create filter potions for values from a lookup table](#create-filter-options-for-values-from-a-lookup-table) when possible.

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
a!localVariables(
  local!employeeTitles: a!queryRecordType(
    recordType: recordType!Employee,
    fields: a!aggregationFields(
      groupings: {
        a!grouping(
          field: recordType!Employee.fields.title,
          alias: "title"
        )
      },
      measures: {
        a!measure(
          field: recordType!Employee.fields.id,
          function: "COUNT",
          alias: "count"
        )
      }
    ),
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 5000
    )
  ),
  a!recordFilterList(
    name: "Title",
    options: a!forEach(
      items: local!employeeTitles.data,
      expression: a!recordFilterListOption(
        id: fv!index,
        name: fv!item.title,
        filter: a!queryFilter(
          field: recordType!Employee.fields.title,
          operator: "=",
          value: fv!item.title
        ),
        dataCount: fv!item.count
      )
    )
  )
)
```

### Create filter options for users in a group

Let's say you have a group for account owners, and you want to create a filter option with the name of every member of that group.

To create this user filter, we'll use the [a!forEach()](fnc_looping_a_foreach.html) function to write those options for us. To get the list of users for the `a!forEach` function, we'll use the [getdistinctusers()](fnc_people_getdistinctusers.html) function to return a list of every user within a group.

In the example below, you'll notice that instead of passing the group ID to the `getdistinctusers()` function, we referenced a constant that points to the group object.

This expression will be added to the options parameter of the `recordFilterList` function for each user in the list.

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
a!localVariables(
   local!acctExecs: getdistinctusers(cons!ACCOUNT_OWNERS),
   a!recordFilterList(
     name: "Account Executives",
     options: a!forEach(
       items: local!acctExecs,
       expression: a!recordFilterListOption(
         id: fv!index,
         name: user(fv!item, "firstName") & " " & user(fv!item, "lastName"),
         filter: a!queryFilter(
           field: recordType!Customer.fields.AccountOwner,
           operator: "=",
           value: fv!item
         )
       )
     )
   )
 )
```

### Create a date range filter with default options

Let's say you want to filter your list of employees by their start date.

To create this filter, we'll simply specify the `startDate` field. We'll also add a default filter value so the list of employees automatically filters by employees who started within the last year.

```
1
2
3
4
5
6
7
a!recordFilterDateRange(
  name: "Start Date",
  field: recordType!Employee.fields.startDate,
  defaultFrom: "today() - 365",
  defaultTo: "today()",
  isVisible: true
)
```

## User filters for unsynced service-backed record types

To configure a user filter for an [unsynced service-backed record type](configure-record-data-source.html#unsynced-web-service), you must first [enable user filters](#enable-user-filters).

Then, you'll notice a slightly different guided configuration experience for creating [list](#list-user-filter) and [date range](#date-range-user-filter) user filters. Although configuration is slightly different, the same filter behavior for list and date range filters still apply.

### Enable user filters

To enable user filters on an unsynced service-backed record type, you must add a rule input for each user filter in the [record data source](configure-record-data-source.html#create-a-record-data-source) expression and in your underlying [integration](configure-record-data-source.html#create-an-integration).

Each rule input should correspond to the type that will be returned by the associated user filter dropdown. The selected value will then be passed to the record data source, and applied to the integration.

### Create a list user filter

To create a list user filter for an unsynced service-backed record type:

1.  In the record type, go to **Filters**.
2.  Click **New User Filter**. The **Configure User Filter** dialog appears.

    [![images/Create_Record_Type/user_filters_for_expression_backed_records.png](images/Create_Record_Type/user_filters_for_expression_backed_records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img455)

    [![](images/Create_Record_Type/user_filters_for_expression_backed_records.png)](#_)

3.  For **Filter Configurations**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Name**

     |

    Enter a name for the user filter. This name is only visible in the record type, it is not shown to application users.

     |
    |

    **Label**

     |

    Enter a label to display on the user filter. This label appears to application users.

     |
    |

    **Rule Input**

     |

    Select a rule input from the **[Record Data Source](configure-record-data-source.html#create-a-record-data-source)** expression to pass the filter selections to the integration.

    If you don't see any rule inputs, ensure you've [enabled user filters](#enable-user-filters).

     |
    |

    **Type**

     |

    Keep the default selection of **List**.

     |
    |

    **Visibility**

     |

    Specify when the filter appears:

    -   By default, **Always** is selected.
    -   Select **Only show when...** to enter an expression that determines when the filter appears. The filter will only appear when the expression evaluates to _true_.

     |

4.  For **Choices**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Users can select multiple options**

     |

    Specify if users can select multiple options in a user filter:

    -   By default, this checkbox is selected.
    -   Clear the checkbox to only allow users to select a single option from the list.

     |
    |

    **Choices**

     |

    Enter an expression using [a!recordFilterChoices()](fnc_system_a_recordfilterchoices.html) to define the user filter choices.

     |
    |

    **Default Choice**

     |

    Enter an expression that evaluates to one or more of the choice labels defined in the `a!recordFilterChoices()` function so it is applied by default when a user first loads the record list.

     |
    |

    **Filter Preview**

     |

    Test your configured user filter:

    1.  Select one or more choices from the filter dropdown.
    2.  Click **UPDATE FILTER PREVIEW** to preview any recent changes to the user filter configuration.

     |

5.  Click **OK**.

### Create a date range user filter

To create a date range user filter for an unsynced service-backed record type:

1.  In your record type that uses a web service, go to the **Filters** page.
2.  Click **New User Filter**. The **Configure User Filter** dialog appears.

    [![images/Create_Record_Type/date-range-expression-backed-user-filter.png](images/Create_Record_Type/date-range-expression-backed-user-filter.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img456)

    [![](images/Create_Record_Type/date-range-expression-backed-user-filter.png)](#_)

3.  For **Filter Configurations**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Name**

     |

    Enter a name for the user filter. This name is only visible in the record type, it is not shown to application users.

     |
    |

    **Label**

     |

    Enter a label to display on the user filter. This label appears to application users.

     |
    |

    **Rule Input**

     |

    Select a rule input from the **[Record Data Source](configure-record-data-source.html#create-a-record-data-source)** expression to pass the filter selections to the integration.

    If you don't see any rule inputs, ensure you've [enabled user filters](#enable-user-filters). Also consider the following:

    -   The rule input associated with the date range filter must be of type List of Date.
    -   The value for the user filter will always be a list of two values. If there is a start and end date, the user filter value would be `{startDate, endDate}`, where the start date is passed to index 1, and the end date is passed to index 2.
    -   When there is no selection for the start or end date, the value of the associated index will be null. For example, if you enter a `startDate` but leave the `endDate` blank, the user filter value would be `{startDate, null}`.

     |
    |

    **Type**

     |

    Keep the default selection of **List**.

     |
    |

    **Visibility**

     |

    Specify when the filter appears:

    -   By default, **Always** is selected.
    -   Select **Only show when...** to enter an expression that determines when the filter appears. The filter will only appear when the expression evaluates to _true_.

     |

4.  For **Date Range Configuration**, configure the following:

    |
    Property

     |

    Action

     |
    | --- | --- |
    |

    **Default FROM Date**

     |

    Enter a start date to filter by when the record list first loads. By default, this value is blank so users will see an open-ended date range.

     |
    |

    **Default TO Date**

     |

    Enter an end date to filter by when the record list first loads. By default, this value is blank so users will see an open-ended date range.

     |

5.  Click **OK**.

## User-saved filters

Once you create user filters, application users can save and manage their own user filter selections from the record list or records-powered grids.

Each saved filter will display with a shortcut at the top of the page next to **My Filters**. In a records-powered grid, the saved filter set will only appear if the grid uses the same combination of user filters as the record list. Read-only grids that use different combinations of user filters can save different filter selections on the grid.

[![images/savedUserFiltersEx.png](images/savedUserFiltersEx.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img457)

[![](images/savedUserFiltersEx.png)](#_)

### Create user-saved filters

To save their filter options, users can:

1.  Select the necessary filter options in the user filters.
2.  Click the **Manage Filters** icon and select **Save filters as…**.

    [![images/save_multiple_user_filters.png](images/save_multiple_user_filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img458)

    [![](images/save_multiple_user_filters.png)](#_)

3.  In the **Filters** menu, enter a name for the filter and determine if the filter should load by default when they navigate to the record list or records-powered grid.

    [![images/save_filters_dialog.png](images/save_filters_dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img459)

    [![](images/save_filters_dialog.png)](#_)

### Manage user-saved filters

Users can also view, remove, or rename a user-saved filter.

To manage their saved filter, users can:

1.  Click the **Manage Filters** icon and select **Manage my filters…**.

    [![images/manage_filters_dialog.png](images/manage_filters_dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img460)

    [![](images/manage_filters_dialog.png)](#_)

2.  Select the **Set as default** icon to load the user-saved filter by default when they navigate to the record list or records-powered grid.
3.  For **Name**, enter a new name for the filter.
4.  Click **Remove** to delete the user-saved filter.

### Troubleshoot user-saved filters

Users can save values for any filters visible on a record list or a records-powered grid. However, adding, updating, or removing a user filter may affect a user’s saved values.

The following changes will either impact the filter's saved values or remove the user-saved filter entirely:

-   A user filter is removed.
-   A user filter option is removed.
-   A user filter is changed from list to date range (or vice versa).
-   A user filter is changed from multiple to single select _and_ the user saved multiple values.
-   (Records-powered grids only) A user filter is added.

In all of these scenarios, users will need to update or create new saved filters.

Additionally, if a user has selected too many filter options, they may not be able to save the filter. As a best practice, avoid configuring user filters that contain over 100 options, and encourage users to only save filters with fewer than 10 selections.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...