---
source_url: https://docs.appian.com/suite/help/25.3/PDF_Doc_From_Template_Smart_Service.html
original_path: PDF_Doc_From_Template_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# PDF Doc From Template Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The PDF Doc From Template smart service is used to populate a form with process data and save the result as a PDF document. To use the smart service in your process model, click and drag it onto the canvas.

This smart service uses a PDF form template, and allows you to populate the form with process data.

### Properties

-   **Category**: Document Generation
-   **Icon**: ![](images/Smart_Service_Icons/PDF_Doc_From_Template.png)
-   **Assignment Options**: Always Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

To configure this node, perform the following steps.

1.  In the smart service properties, click **Setup**.
2.  In the **Template** field, type the name of your PDF template, which must exist within Appian Document Management.
    — or —
    Click the **Directory** button to browse for the document (you can only select documents with a .PDF file extension). The PDF file must be an Adobe Acrobat form, not a document. Once the template document is selected, the substitution grid is populated with the form fields found within the template file.
3.  (Optional) In the **Runtime Template** field, type an expression that selects a document using a variable or a [constant](Constants.html). The substitution fields in the runtime template(s) do not have to match the base template exactly, but any fields used in the runtime template must be present in the base template.
    -   You can create a process variable or a constant that contains a similar template that is selected at runtime.
    -   If all of the fields in the runtime template remain the same (with the same field name and properties), uploading a new template version updates it in all active processes.
    -   If any of the fields in the a new template version are different, the changed field mappings must be remapped to node inputs, and the process model must be republished. All active processes must be [edited](Monitoring_and_Editing_Processes.html#edit-mode) to use the new template.
4.  For the **Destination** options, select an existing document to replace, or output a new file by selecting **Create a new document**.
5.  If you selected **Create a new document**: enter a name or expression in the **New document name** field. Avoid characters that are disallowed in Appian document filenames (such as / \\ : ; < > " \* ' ? ).
6.  (Optional) Enter a brief description of the of document in the **New document description** field.
7.  Enter a destination directory in the **Save in folder** field. Once you have selected a folder, click ![](images/Validate.gif ) to validate the name of the folder specified. You can also use an expression or a rule to select a folder at runtime.
8.  If you selected **Overwrite an existing document**, specify the document to replace.
9.  All form fields found in the template file appear in the **Find in template document** column in the substitution grid. Any variable length fields that exist in the PDF template are not displayed. Variable length fields are not supported.
10.  In the **Replace with** column, enter the text to substitute in the form field. If you type a value enclosed with quotation marks, the quotation marks appear on the form. You can also use the Expression Editor to formulate a substitution value. If you use an expression that includes literal text enclosed with quotation marks, the quotation marks do not appear on your form. (If the field is left blank, the field is replaced with a blank.)
11.  (Optional) Reorder the substitution list using the **Sort** buttons in the footer. Sort alphabetically ![](images/A_z.gif ) or reverse alphabetically ![](images/Z_a.gif ). Click ![](images/Original_order.gif ) to revert back to the order in which they appear in the template.
12.  (Optional) Click ![](images/Rescan_template.gif ) to refresh the list of substitution fields (when changes have been made to the template document). Whenever the template path is changed, the specified document is re-parsed for substitution fields. If so, preexisting fields are retained in the grid, with their corresponding mappings. This activity also supports Unicode (UTF-8) templates and generates Unicode documents.

## Node inputs

The data tab displays the node inputs and node outputs for the smart service activity. These inputs and outputs are initially configured using the Setup Tab. The Data tab allows you to perform additional data processing, if needed.

## Node outputs

The ID of the document that was created or replaced is returned by the activity.

To retain the ID of the document so that it can be referenced elsewhere in the Process Model:

1.  Click the **Outputs** property sheet (tab).
2.  Select **New Document Created** on the **Results** list. The Result properties are displayed.
3.  Create a new process variable to store the result, or select an existing process variable with a Document data type from the available list.

## Usage considerations

### File format

You cannot use a standard document in Acrobat format as a template. The selected PDF template must be a PDF. When scanned, the PDF form fields are listed numerically, in the order they appear on the form. No substitution keys are required in the form fields.

### Images

Image fields are not supported and will not be recognized as a form field. Therefore it will not be found in the template file or appear in the **Find in template document** column in the substitution grid.

### Exceptions

At runtime, a task exception is thrown if the template document cannot be retrieved, either because the run-as user does not have rights to it, or if the document is missing.

If the node is run as a user who does not have adequate rights to the template document, the document that is replaced, or to the folder where the new document should be generated, an error message is sent to the Process Administrator and the process is paused. This also occurs if a file or folder no longer exists.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...