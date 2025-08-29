---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-excel-nolicense.html
original_path: rpa-9.17/actions-excel-nolicense.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Excel License Not Required Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Build a robotic task to parse Excel files](https://academy.appian.com/#/online-courses/57b938d8-8880-4d2c-bf8e-aa5c3e9cb1fd)

Learn how to automate Excel using Appian RPA.

## Overview

Microsoft Excel is a widely used spreadsheet program available in most business settings. It's likely that you use Excel to complete a variety of tasks, such as data analysis, financial modeling, and project management, among others. With just a few clicks, Appian RPA can automate tedious and time-consuming tasks in Excel. This means the Excel: License Not Required module can read and write data within an Excel workbook for you.

Because the strategy you use to interact with Excel depends on your purposes and the data involved, we've assembled guidance and tips to improve your design experience. [Learn more about the many ways to use Excel with Appian](../excel-guidance.html), based on your goals.

The Excel License Not Required module is compatible with the following Excel file types.

-   Workbook (.xlsx)
-   Excel 97-2003 Workbook (.xls)
-   Macro-Enabled Workbook (.xlsm)

**Tip:**  You cannot use this module to _create_ a Macro-Enabled Workbook (.xlsm) file. However, you can open an .xlsm file and work with it.

Excel actions are listed in the **Excel: License Not Required** area of the palette. The actions described in this section do not need a licensed version of Excel on the host machine.

-   [Open or create workbook](#open-or-create-workbook)
-   [Close workbook](#close-workbook)
-   [Find range end](#find-range-end)
-   [Get value](#get-value)
-   [Get worksheet names](#get-worksheet-names)
-   [Save workbook as](#save-workbook-as)
-   [Select worksheet](#select-worksheet)
-   [Write into worksheet](#write-into-worksheet)

**Tip:**  You can't mix low-code actions from the Excel: Licensed Not Required and Excel: License Required modules together. The technologies used in each module can't interact with the same workbook at the same time.

| **Does your host machine have a licensed version of Excel?** | **Then use the**… |
| --- | --- |
| No | **Excel: License Not Required** module. |
| Yes
 | [**Excel: License Required**](actions-excel-license-required.html) module.

The Excel: License Required module can complete more advanced actions and is better at managing large (in terms of file size or number of rows) Excel files.

**Note:** The Excel: License Required module is only available on Windows machines. |

## Example

![excel-action-example.png](images/excel-action-example.png)

## Open or create workbook

This action opens an existing Excel workbook or creates a new workbook.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Workbook Action**: Select from one of the following options. Depending on the workbook action you select, additional parameters display.

    | **Workbook Action** | **Additional Parameters** |
    | --- | --- |
    | **Open existing workbook**
     | **File Path**: This is the folder path and name of the Excel file, including its extension, to be opened. This field lets you enter a text string, choose a variable, or use the expression editor. |
    | **Create new workbook** | **Folder**: This is the path to the folder where you want to save a new workbook. This field lets you enter a text string, choose a variable, or use the expression editor.

    **File Name**: This is the name of the new workbook you are creating. This field lets you enter a text string, choose a variable, or use the expression editor.

    **File Type**: This field identifies the Excel file type for the new workbook. Options include .xlsx, or .xls. This field only displays if you are creating a new workbook. |

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Close workbook

This action closes the Excel workbook and can optionally save changes.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameter:

-   **Save changes on close**: If you select this checkbox, the robotic task saves the file when it closes. This checkbox is selected by default.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Find range end

This action retrieves the position of the last cell within a range or the total number of rows or columns up to and including the last cell. The result is stored in a [robotic task variable](configure-edit-tab.html#robotic-task-variables) that you must create. You could use this action to determine the [limits for a loop](actions-general.html) or use it with the [Get Value](#get-value) action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Starting Cell**: This field identifies the row and column where your range starts. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Search By**: Select to search in a **Row** or **Column**.
-   **Attribute to Return**: Select the information you want to retrieve.
    -   **Ending cell in range**
    -   **Count of columns or rows in range**

### Outputs

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**:
    -   **is stored as**
    -   **is appended to**
-   **Target**: Select the [robotic task variable](configure-edit-tab.html#robotic-task-variables) where you want to store the result.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Get value

This action retrieves data from a workbook and stores it in a [robotic task variable](configure-edit-tab.html#robotic-task-variables) that you must create.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Component Type**: Select the component from which you want to retrieve data. Each component type returns a different type of data. Depending on the component you select, additional parameters display.

    | **Component** | **Returns** | **Additional Parameter(s)** |
    | --- | --- | --- |
    | Cell | primitive system data type | **Cell**: This is the column letter and row number for the cell from which you want to return data. This field lets you enter a text string, choose a variable, or use the expression editor. |
    | Column | an array with a data type determined by the file's content | **Column**: This is the column letter; e.g., A, B, C, for which you want to return data. You can enter text or select a variable. This field lets you enter a text string, choose a variable, or use the expression editor. |
    | Range | map array | **Starting Cell** and **Ending Cell**: These fields represent the start and end of the range for which you want to return data. These fields let you enter a text string, choose a variable, or use the expression editor. |

-   **Specify header row**: When this checkbox is marked, the robotic task uses the column headers as the key in the returned map. If the starting cell, ending cell, or any fields in the specified header row are empty, the column names (e.g., A, B, C) are the key in the returned map.

    -   To use this parameter with the Range component, you also need to enter the **Header Row Starting Cell** and **Header Row Ending Cell**. These fields let you enter a text string, choose a variable, or use the expression editor.
    -   To use this parameter with the Row component, you also need to enter the **Header Row**. This field lets you enter a text string, choose a variable, or use the expression editor.

### Outputs

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**:
    -   **is stored as**
    -   **is appended to**
-   **Target**: Select the [robotic task variable](configure-edit-tab.html#robotic-task-variables) where you want to store the result.

### Usage considerations

When storing custom-formatted numbers, particularly those representing currency, save them as decimal numbers rather than text to maintain accuracy.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Get worksheet names

This action returns the worksheet names, including hidden worksheets, in the same order as they appear in the file. The returned value is an array of strings ordered by index; e.g., `tab 1`, `tab 2`, and is stored in [robotic task variable](configure-edit-tab.html#robotic-task-variables) that you create.

### Outputs

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**:
    -   **is stored as**
    -   **is appended to**
-   **Target**: Select the [robotic task variable](configure-edit-tab.html#robotic-task-variables) where you want to store the result.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Save workbook as

After a workbook is opened or created, this action saves the workbook with the name and to the location that you specify in the parameters. If the file name in the configuration is different than the opened file, the robotic task saves the workbook as a new file.

**Note:**  This action works with .xlsx and .xls files only.

**Tip:**  You can't use this action to rename an existing workbook. However, if you want to rename an existing workbook, you can use the [Rename a file or folder](actions-file-management.html#rename-a-file-or-folder) File System action to do that.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Folder**: This is the path to the folder where the file is saved.
-   **File name**: The name that identifies the file being saved. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Replace existing workbook**: Check this box to replace an existing file in the specified folder when the file names are also the same.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Select worksheet

This action selects a specific worksheet within an Excel file so that the robotic task can interact with it.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameter:

-   **Select Worksheet Name or Index**: Choose whether you want to select the worksheet by using a specific **Worksheet name** or **Worksheet index**.
-   **Worksheet Name**: The worksheet name that identifies the sheet in the workbook being selected. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Worksheet Index**: The index number, a sequential number assigned to a sheet, that identifies the file being selected. The first worksheet is index 1. This field lets you enter a text string, choose a variable, or use the expression editor.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Write into worksheet

This action writes data or a formula into a single cell or a range.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Interaction Type**: Select whether this action will **Write Data** or **Write a Formula**.
-   **Value Array**: The data, entered as a value array, to write to the worksheet. The values can be numbers, text, dates, maps, dictionaries (returned by a query to a DSE), or lists of CDTs. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Formula**: The Excel formula; e.g., SUM(A1+B1), to write to the worksheet. This field lets you enter a text string or array, choose a variable, or use the expression editor. If you want the formula to be dynamic, you can build a dynamic expression rule and use looping to generate the formula dynamically. Otherwise, this same action is available in the Excel License Required module where you can utilize the "autofill" feature to make the formula dynamic.
-   **Exclude column headers**: When you mark this checkbox, the robotic task does not write the header data (specified by the key in your value array) into the Excel file.
-   **Starting Cell**: This field identifies the row and column from which you want to start. This field lets you enter a text string, choose a variable, or use the expression editor.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action (seconds)**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

### Usage considerations

-   Nested entries are not supported. Only use a flat table structure. If your data includes a nested column, that column will be written as an empty cell.
-   Map data types must have the same number of columns across entries.
-   If you're working with data from an array of CDTs, and each of those CDTs has a different number of fields, the order of that data may differ when writing that data to columns in the worksheet. For example, if your CDT array contains three CDTs with inconsistent fields, such as: `{"id": 1, "name": "banana"}, {"id": 2, "name": "apple", "color": "red"}, {"id": 3, "shape": "round", "botanicalName": "hesperidium"}`, RPA may not write the data in the column order you intended. To have more control over the column order, use the [`cast()` function](../Casting.html) to convert the CDTs to a map before writing to the worksheet.
-   To write data from a record, you must first convert the record data into a map. To do this, you can use the `cast()` function with `a!listType(type!Map)` and `a!queryRecordType` as its arguments, and wrap it around the queryRecordTypes expression; e.g., `cast(a!listType(type!Map), a!queryRecordType())`.
-   If you want specific fields from a record query result, you can use Appian expressions to refine the data.
    -   To refine the data, you need to define the [function `a!queryRecordType`](../fnc_system_queryrecordtype.html) to select the fields you want to return.
    -   To exclude IDs from a record query result, you can use the `fn!remove()` function as IDs are returned automatically with record queries.
    -   If your query includes record relationships, you must flatten the data structure using `a!flatten()` and `a!map()` functions to ensure the output is in a flat structure suitable for writing into an Excel document.
    -   Here is a pattern for refining the data.

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
        fn!with(
        local!dataWithoutIds: fn!remove(
          a!queryRecordType(
            recordType: recordType!Department,
            fields: {recordType!Department.fields.name,
              recordType!Department.relationships.employee.fields.status},
            pagingInfo: a!pagingInfo(
              startIndex: 1,
              batchSize: 100
            )
        ).data,
        {recordType!Department.fields.id, recordType!Department.fields.employeeId}
        ),
        a!flatten(
          a!forEach(
            items: local!dataWithoutIds,
            expression: a!map(
                name: fv!item [recordType!Department.fields.name],
                status: fv!item[recordType!Department.fields.status]
            )
          )
        )
        ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...