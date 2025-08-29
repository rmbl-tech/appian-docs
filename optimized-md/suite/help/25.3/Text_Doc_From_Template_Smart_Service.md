---
source_url: https://docs.appian.com/suite/help/25.3/Text_Doc_From_Template_Smart_Service.html
original_path: Text_Doc_From_Template_Smart_Service.html
version: "25.3"
title: "Text Doc From Template Smart Service"
page_id: "Text_Doc_From_Template_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Text Doc From Template Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Text Doc from Template Smart Service allows you to update or create a new document using process data. It is found under **Appian Smart Service** > **Document Generation**.

The Text Doc from Template Smart Service allows you to update or create a new document using process data.

-   The template files must be encoded in UTF-8 if Unicode characters appear in the document.
-   The file extension of the template is not restricted by the system.
-   The following file extensions are supported:
    -   CSV
    -   JSON
    -   RTF
    -   TXT
    -   XLSX
    -   XML

When configuring variables used by the activity, consider the following:

-   Single-value variables provide better results when mapped to fields in your template.
-   When a multiple variable is mapped to a field in your template, the items are listed in a semi-colon separated list.
-   To list each item of an array on a separate line in a merge field, use a prior activity to combine the array into a single value variable.
    -   The [joinarray() function](fnc_array_joinarray.html) can be used in a custom output to save your array into a single-value variable, where each item is separated by a carriage return and a line feed character. For example: `joinarray(pv!MyMultipleProcessVariable,char(13)&char(10))`

### Properties

-   **Category**: Document Generation

-   **Icon**: ![](images/Smart_Service_Icons/Text_Doc_From_Template.png)

-   **Assignment Options**: Always Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

To configure this activity, perform the following steps:

-   In the **Template** field, type the name of the template document to be used, which must exist within Appian Document Management. — or —
    Click the **Directory** button to browse for the document.

At runtime, a task exception is thrown if the template document cannot be retrieved, either because the run-as user does not have rights to it or if the document is missing.

-   (Optional) In the **Runtime Template** field, type an expression that selects a document using a process variable or a constant. (You can create [constants](Constants.html) that contain each desired template.)
    -   The substitution keys in the runtime template(s) do not have to match the base template exactly, but any keys used in the runtime template must be present in the base template.

Sample Template Document:

**text\_template.txt**

```
1
2
###Name### joined ###Department### on ###Date of Joining###. The employee's position is ###Position### and their
supervisor is ###Supervisor###.
```

Once the template document is selected, the substitution grid is populated with the keys found within the template file.

For the **Destination** options, select an existing document to replace or output a new file by selecting **Create a new document**.

-   If you selected **Create a new document**, enter a name in the expressionable **New Document name** field.
    -   Take care when forming a filename to avoid characters that are disallowed in Appian Document Management filenames (such as / \\ : ; < > " \* ' ? ).
-   (Optional) Enter a brief description of the document in the **New document description** field.
-   Enter a destination directory in the **Save in folder** field. Once you have selected a folder, click ![](images/Validate.gif ) to validate the name of the folder specified.
    -   You can also use an expression or a rule to select a folder at runtime.
-   If you selected **Overwrite an existing document**, specify the document to be replaced.
-   All substitution keys found in the template file appear in the `Find in template document` column in the substitution grid. Under the **Replace with** column, enter the text to substitute for the key.
    -   You can also use the Expression Editor to generate an expression. (If the field is left blank, the key is replaced with a blank).
-   (Optional) Reorder the substitution list using the **Sort** buttons in the footer. Sort alphabetically by clicking ![](images/A_z.gif ). Sort the list in reverse alphabetical order by clicking ![](images/Z_a.gif ). Revert back to order they originally appeared in the template by clicking ![](images/Original_order.gif ).
-   (Optional) Refresh the list of substitution keys (when changes have been made to the template document) by clicking ![](images/Rescan_template.gif ).
    -   Whenever the template path is changed, the specified document is re-parsed for substitution keys. If so, preexisting keys are retained in the grid, with their corresponding mappings.
    -   This activity also supports Unicode (UTF-8) templates and generates Unicode documents.

If the activity is run as a user who does not have adequate rights to the template document, the document that is to be replaced, or the folder where the new document is generated, an error message is sent to the process administrator and the task is paused.

### Data tab

The Data tab displays the node inputs and node outputs for the smart service activity. You can add additional inputs and outputs, if needed.

#### Node outputs

The ID of the document that was created or replaced is returned by the activity.

To retain the ID of the document so that it can be referenced elsewhere in the process model:

1.  Click the **Outputs** property sheet.
2.  Select **New Document Created** on the **Results** list. The result properties display.
3.  Create a new process variable to store the result or select an existing process variable with a document data type from the available list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...