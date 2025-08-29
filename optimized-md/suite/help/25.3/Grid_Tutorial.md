---
source_url: https://docs.appian.com/suite/help/25.3/Grid_Tutorial.html
original_path: Grid_Tutorial.html
version: "25.3"
title: "Grid Tutorial"
page_id: "Grid_Tutorial"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Grid Tutorial

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Grids allow us to display data in a tabular format (AKA a _table_). A record type takes data from a [data source](configure-record-data-source.html) and maps that information to a set of _fields_ that become the _records_. A grid displays fields as _columns_ and records as _rows_. The read-only grid understands the relationship between columns and rows, and is designed to handle your record data in intelligent ways.

In this tutorial, you'll learn all the major features and functions of the read-only grid by creating a grid with selection pattern in design mode (the best way).

### Use case

We've been asked to create a grid list that displays a complete list of all employees in the company. From the grid, we should be able to select any number of employees to be entered into a raffle and configure a secondary display zone that populates a list of selected employees by their first and last name. We've also been asked to prevent the selection of employees in the _Sales_ department (since they're already drowning in additional compensation), but allow them to still show up in the grid list.

![00_finished_version.png](images/grid_tutorial/00_finished_version.png)

**Tip:**  The interface you'll create is a variation of the [Grid with Selection pattern](grid-with-selection-pattern.html). Component patterns are a great way to get started quickly, or learn from expert designs.

### Objectives

Learn how to create a read-only grid with the most common configurations in **about 15 minutes**. After completing this tutorial, you will know how to:

-   Create a read-only grid in design mode
-   Use the grid's function variables
-   Format the display value of column data
-   Configure selection for a grid
-   Capture and share row data from a grid
-   Conditionally disable row selection

## Requirements

This tutorial requires basic familiarity with the Appian platform. If you are brand new to Appian, head over to [Appian Academy Online](https://academy.appian.com) and explore the many, free courses available.

In this tutorial, we'll be working with the following design objects and components:

-   [Interface Object](interface_object.html)
-   [Read-Only Grid Component](Paging_Grid_Component.html)
-   [Read-Only Grid Column Component](Grid_Column_Component.html)
-   [Column Component](Column_Layout.html)
-   [Grid Selection Component](Grid_Selection_Component.html)
-   [Checkbox Component](Checkbox_Component.html)

### Create the Appian Tutorial application

**Tip:**  The Appian Tutorial application is used throughout Appian tutorials. Skip the steps in this section if you've already created this application in another tutorial.

To begin with, we need to create an application to contain our design objects.

We will be creating the _Appian Tutorial_ application for this tutorial. All of Appian's tutorials use the Appian Tutorial application as the reference application. After completing this tutorial, you can reuse this application as you work through other Appian tutorials.

To create the Appian Tutorial application:

1.  Log in to [Appian Designer](welcome-app-designer.html).
2.  In the **Applications** view, click **\+ New Application**.
3.  In the **Create New Application** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter `Appian Tutorial`. |
    | **Prefix** | Keep the default prefix, `AT`, which Appian constructs using the initial characters of each word you entered in the **Name** parameter. We'll be following the [recommended naming standard](Standard_Object_Names.html), and using this short, unique prefix whenever we name an object in this application. |
    | **Description** | Leave blank. It's normally a best practice to add descriptions to all design objects. However, to save a little time during this tutorial, we'll skip adding descriptions unless the description displays to the end user. |
    | **Generate groups and folders to secure and organize objects** | Keep this checkbox selected, so that Appian will automatically [generate standard groups and folders](creating-applications.html#generated-groups-and-folders) and [assign default security groups](creating-applications.html#default-security-groups) for this application. |

4.  Click **CREATE**.
5.  In the **Review Application Security** dialog, keep the default security settings. Because we selected the **Generate groups and folders** option in the previous step, Appian automatically uses the **AT Users** and **AT Administrator** groups it generated to set our application security appropriately.

    **Tip:**  The security of the application object is unrelated to the security of each of the objects contained within the application. This means that you will need to set security permissions for every object in an application in addition to the application object itself. For more information about security permissions for the application object, see [Application Security](application-settings.html#prodlink-security).

6.  Click **SAVE**.

    ![screenshot of the Explore view](images/application_tutorial/appian_tutorial_explore_view_23_2.png)

7.  Click **X** to close the **What do you want to build first?** dialog.

Right now, the application contains the folders and groups Appian generated automatically. To see these, click **Build** in the navigation pane.

Each design object that you create during the course of this tutorial will appear in this list in the **Build** view and be associated with the tutorial application.

![screenshot of the build view](images/application_tutorial/appian_tutorial_build_view.png)

### Create the Employee record type

To build the interface, you need to create an Employee record type as described in the [Use the Write Records Smart Service Function on an Interface](recipe-use-the-write-records-smart-service-function-on-an-interface.html#create-a-record-type) pattern. Complete this pattern before continuing.

## Set up the read-only grid

Once you've completed the application and record type setup, we can start building our grid.

To set up the grid:

1.  In the Appian Tutorial application, go to the **Build** view.
2.  Click **NEW** > **Interface**.
3.  Configure the following interface properties:
    -   Name: `AT_raffleGrid`
    -   Description: `Grid for selecting employees for the raffle.`
    -   Folder: `AT Examples`
4.  From the **COMPONENTS** palette, drag the **READ-ONLY GRID** component onto your blank interface.

## Select the data source

After dragging the grid onto your interface, you can select your record data using the **Component Configuration** panel on the right.

To select a data source for your grid:

1.  In the **Data** section, leave the default selection of **RECORD TYPE**.
2.  In the **Search record types** field, enter `AT` and select **AT Employee**.

    Your grid is now populated with the employee data from the record type.

    ![03_grid_preview.png](images/grid_tutorial/03_grid_preview.png)

If you're just _reading_ this tutorial, and you see the image above and think, "Wait, that was too easy. I must have missed a bunch of steps somewhere." You can relax; you didn't miss anything.

When you use the a record type as the data source of a grid, Appian automatically queries the record type, populates the grid columns, makes them sortable, and even concatenates the `firstName` and `lastName` fields into a single Name column that links to each Employee record. In addition, when Appian detects a column with numbers or dates, it aligns the field data to the right for you.

## Set paging & sorting

You can configure paging and sorting for the query, but the grid handles both automatically. This allows you to change these settings from the **Component Configuration** panel.

To set paging and sorting on the grid:

1.  From the **Paging & Sorting** section, enter `5` in **Rows to Display Per Page**.
2.  Under **Initial Sorts**, click **ADD SORT**.
3.  For **Field**, select **lastName**.
4.  For **Order**, select **Ascending**.
5.  Click **Read-only Grid** to navigate back up to the grid properties.

## Configure columns

When you select a record type as the data source, the grid will automatically populate with the record list configuration. The grid's columns will match the columns selected in the record list, but you can modify them as required for the interface you're building.

The display value of every column is set with the function variable, `fv!row`. This variable contains all the data for the entire row. For example, in the _Start Date_ column, the display value is `fv!row[recordType!AT Employee.fields.startDate]`.

In this section, we'll remove a column from the grid and update the formatting on another columns.

### Remove a column

Since we don't need to see the employee's title, let's remove it.

-   From the **Columns** section, hover over the **Options** menu ( ) for **Title (Grid Column)**, and click **X** to delete the _Title_ column.

### Format a column

Now, let's format the _Department_ column by changing the text style.

1.  From the **Columns** section, click **Department (Grid Column)**.
2.  Under **Display Value**, click **DISPLAY OPTIONS**.
3.  In **Display Options**, select **TEXT** from the **RICH TEXT TYPE** row.
4.  In the **Display Value** field for the grid column, click the **Rich Text** link.
5.  In the **Display Value** field for the Rich Text, click the **Text Item** link under **Configure items**.
6.  From the **Style** dropdown, select **Emphasis**.

#### Conditionally change the text color in a column

Since we don't want anyone from the _Sales_ department entered into the raffle, let's remind the user by changing the color of "Sales" in that column.

1.  Hover over **Color** until the **Edit as Expression** icon () appears, then click it.
2.  In the expression editor, enter:

    ```
    1
    2
    3
    4
    5
    if(
       fv!row[recordType!AT Employee.fields.department] = "Sales",
       "SECONDARY",
       null
    )
    ```

    **Note:**  Record type field references are specific to each record type and environment. This means that you need to reference the record type fields from your own environment whenever you copy and paste a record type reference from outside the application.

3.  Click **OK**.

    Now when the row evaluates, if the _Department_ in that row is `Sales`, the text color will be set to `"SECONDARY"`; otherwise it'll be `null` (the default).

    ![05_sales_grey.png](images/grid_tutorial/05_sales_grey.png)

## Add display zone

Since our grid has selection and paging, it's a good [UX practice](sail/ux-grids.html) to provide a secondary display so the user can see the totality of their selection no matter what page they're on.

If you're familiar with interface design, you can follow the higher-level steps below to add a display zone. If you're still somewhat new to interface design in Appian, skip to [these directions](#add-columns).

1.  Add a **Columns Layout** with two columns.
2.  Put the grid in the left column, and set the column width to `WIDE`.
3.  Put a rich text display component in the right column.
4.  In that rich text display component, add two items:
    -   Rich text icon (`user-circle`).
    -   Rich text item (`First Last`).
5.  Jump to [Add Selection](#add-local-variables-and-selection).

### Add columns

We'll add a columns layout so that our grid is in one column, and the grid rows appear in the other column.

To add a columns layout:

1.  Drag a **COLUMNS** component from the palette to just below the grid.

    ![06_columns_drag.png](images/grid_tutorial/06_columns_drag.png)

2.  Delete one of the columns by clicking on the _Delete column_ icon ().

    ![06_delete_column.png](images/grid_tutorial/06_delete_column.png)

3.  Drag the grid into the first column.
4.  Hover over the **Read-Only Grid** selector until the component hierarchy displays, then click **Column Layout**.

    ![06_grid_selector.png](images/grid_tutorial/06_grid_selector.png)

Now that the column is selected, let's increase the width.

1.  For **Width**, select **Set fixed width**.
2.  From the dropdown, select **Wide**.

### Add a display field

Now, that the grid is in one column, we'll add a display field in the other column. The display field will show all of the selected grid rows.

To add a display field:

1.  Drag a **RICH TEXT** component from the **Component Palette** into the second column.
2.  For **Label**, enter `Selected Employees`.
3.  For **Label Position**, select **Above**.
4.  For the **Display Value**, with **Use editor** selected, click the **Icon** button ().
5.  Enter `user-circle` into the search box and select this icon (), and click **INSERT**.
6.  In the editor, after the icon, enter `First Last`.

    And this is where we're going to leave it for now:

    ![06_rich_confirmation.png](images/grid_tutorial/06_rich_confirmation.png)

## Add local variables and selection

To set up grid selection, you need to create a local variable to save the selection value into. In our case, we also need to pass the selected row's data to a local variable so we can display the selected employees in the display zone. To accomplish this, we're going to add two local variables: (1) `local!selection` for the grid's current selection, and (2) `local!selectedEmployees` for the row data of those selections.

To add these local variables:

1.  From the **Local Variables** panel toolbar, click the **New Local Variable** icon.
2.  For **Name**, enter `selection`.
3.  Click **CREATE AND ADD ANOTHER**.
4.  For **Name**, enter `selectedEmployees`.
5.  Click **CREATE**.

![06_rich_confirmation.png](images/grid_tutorial/local_variables.png)

### Configure selection values

1.  In design mode, select the **Read-Only Grid** component to get to the component configuration.
2.  From the **Selection** section, select **Selectable**. This will enable selection for the grid, and provide some additional configurations below.
3.  From the **Selection Value** dropdown, select **local!selection**.
4.  Hover over **Save Selection To** until the _Edit as Expression_ icon () appears, then click it.
5.  In the expression editor, enter this expression:

    ```
    1
    2
    3
    4
    5
    6
    7
    {
      local!selection,
      /* This save adds the full rows of data for items selected in the most recent user interaction to local!selectedEmployees. */
      a!save(local!selectedEmployees, append(local!selectedEmployees, fv!selectedRows)),
      /* This save removes the full rows of data for items deselected in the most recent user interaction to local!selectedEmployees. */
      a!save(local!selectedEmployees, difference(local!selectedEmployees, fv!deselectedRows))
    }
    ```

6.  Click **OK**.

You can now persist your selection. Try it out by selecting and deselecting rows. The selection index is saved to `local!selection`, and the row data for those selections is saved to `local!selectedEmployees`; you can't see that yet, but we'll set that up in the next section.

**Tip:**  The grid is actually smart enough to use a single selection variable for both the _selection index_ and the _row data_. You can test it out by setting the **Selection Value** to `local!selectedEmployees[recordType!AT Employees.id]`. If you only pass the data, the grid won't know which field is the primary key, so you'll need to create a second variable for the selection index; we show the two-variable method in this tutorial because it works in both cases.

## Populate display section

It's time to configure the second column of our interface to show the employee names of the selected rows. With the components we want already setup, we're going to wrap them in a looping function (`a!forEach()`) to reuse them for every employee in `local!selectedEmployees`.

1.  Click on the **Rich Text** component to show its **Component Configuration**.
2.  Hover over **Display Value** until the () **Edit as Expression** icon appears, then click it. You will see the following expression in the editor:

    ```
    1
    2
    3
    4
    5
    6
    {
      a!richTextIcon(
        icon: "user-circle"
      ),
      " First Last"
    }
    ```

3.  Replace that expression with this one:

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
    a!forEach(
      items: local!selectedEmployees,
      expression: {
        a!richTextIcon(
          icon: "user-circle"
        ),
        " " & fv!item[recordType!AT Employees.fields.firstName] & " " & fv!item[recordType!AT Employees.fields.lastName]&char(10)
      }
    )
    ```

    The record field references for `firstname` and `lastname` are placeholders and need to be replaced with those from your environment.

4.  Click **OK**.

Select _Scott Bailey_, _Laura Bryant_, and _Janet Coleman_ in the grid to see each name appear on the right.

![08_selected_names.png](images/grid_tutorial/08_selected_names.png)

## Disable selection for sales

Changing the color of "Sales" isn't enough; to prevent users from selecting anyone in the Sales department, we're going to tell the grid to disable selection for rows when the department in that row is _Sales_.

**Note:**  Be sure to unselect the employee records you selected in [Populate display section](#populate-display-section) before proceeding with the steps in this section.

1.  Select the **Read-only Grid** to show the **Component Configuration**.
2.  From the **Selection** section, select **Only disable when…** under **Disable Row Selection**.
3.  Click **Edit Condition**.
4.  In the expression editor, replace the existing value with the following expression: `fv!row[recordType!AT Employee.fields.department] = "Sales"`
5.  Update the placeholder record field reference to use the `department` from your Employee record type.
6.  Click **OK**.

Now employees in Sales can't even be selected from the grid. Try it out for yourself.

![09_disabled.png](images/grid_tutorial/09_disabled.png)

## Filter ineligible rows

Now that you've had a good look at your grid, you realize not everyone will be interested in seeing those employees in Sales who aren't eligible for the raffle. So, we're going to add an option to hide those rows with a checkbox. For this, we're going to use the method described in the [Configure a Boolean Checkbox](recipe-configure-a-boolean-checkbox.html) pattern.

### Set variable & default

Before we create the checkbox, let's first create a local variable to store the checkbox value, and set a default value on load.

To add a local variable:

1.  From the **Local Variables** panel toolbar, click the **New Local Variable** icon.
2.  For **Name**, enter `showIneligible`.
3.  For value, enter `false()`.
4.  Click **CREATE**.

### Add a checkbox

Now that we have the local variable, we're ready to set up the checkbox to have only one option, and for that option to toggle `true` and `null` in the variable to act as a switch for the filter we will create in the next section.

To add a checkbox:

1.  Drag a **Checkboxes** component from the palette onto the canvas, just above the grid.
2.  From the **Component Configuration** panel, under the **Checkboxes** section, select **Hidden** for **Label Position**.
3.  From **Choice Labels**, click the **List of Text** link.
4.  Hover over the options menu on the second item and click and click **X** to delete it.

    **Note:**  Note that the interface will warn you that your options and values don't match; ignore the warning for now.

5.  Replace the text for the first item with: `Show ineligible employees`
6.  Click **Checkboxes** to navigate up.

#### Set up the checkbox

Now that we've set up the choice labels, we'll update the choice values. This will also remove the error.

To configure the choice values:

1.  From **Choice Values**, click the **List of Any Type** link.
2.  Hover over the options menu on the second item and click and click **X** to delete it.
3.  Click on the number **1** link.
4.  In the expression editor, replace the value (`1`) with `true`.
5.  Click **OK**.
6.  Click **Checkboxes** to navigate up.
7.  Hover over **Selected Values** until the **Edit as Expression** icon () appears, then click it.
8.  Enter this expression: `if(local!showIneligible, true, null)`
9.  Click **OK**.
10.  Hover over **Save Selection To** until the **Edit as Expression** icon () appears then click it.
11.  Enter this expression:

     ```
     1
     2
     3
     4
     5
     6
     7
     8
     a!save(
      local!showIneligible,
      if(
       isnull(save!value),
       false,
       true
      )
     )
     ```

12.  Click **OK**.

Now that the checkbox is set up, let's connect a query filter to it.

### Filter the grid

We're going to add a simple filter to the grid to exclude employees in the _Sales_ department. This filter exclusion will only run when the checkbox variable (`local!showIneligible`) is `false`.

To filter the grid when the checkbox is selected:

1.  Click on the grid to select it, then from the **Component Configuration**, under **Data Source**, click **FILTER RECORDS**.
2.  On the **Filter Records** dialog, click the **Add Filter** link. This adds an empty row to the filters table.
3.  For **Field**, select **department**.
4.  For **Condition**, select **not equal to**.
5.  For **Value**, enter `Sales`.
6.  From **Apply Filter**, click the **_Always_** link.
7.  In the expression editor, enter `local!showIneligible = false`.
8.  Click **OK**.
9.  Click **SAVE** to save the changes to your interface.

Now you can toggle the checkbox on and off to view or hide the _Sales_ rows.

## Finish up and celebrate

Now that it's all working, let's wrap up:

-   Double-click on **Read-only Grid** and change that label to `Employee Directory`.

That's it!

![images/grid_tutorial/00_finished_version.png](images/grid_tutorial/00_finished_version.png)

We know that was pretty easy, but you should feel proud anyway.

What you do next is up to you.

-   You might want to limit the number of rows that can be selected to the number of raffle tickets you have. In which case, check out [Limit the Number of Rows in a Grid That Can Be Selected](recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html).
-   It probably makes sense to only enter people into the raffle who haven't been entered recently. Check out [Show Calculated Columns in a Grid](recipe-show-calculated-columns-in-a-grid.html).

Learn more about the Read-Only Grid, and find more patterns and examples [here](Paging_Grid_Component.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...