---
source_url: https://docs.appian.com/suite/help/25.3/Open_Office_Writer_Doc_From_Template_Smart_Service.html
original_path: Open_Office_Writer_Doc_From_Template_Smart_Service.html
version: "25.3"
title: "Open Office Writer Doc From Template Smart Service"
page_id: "Open_Office_Writer_Doc_From_Template_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Open Office Writer Doc From Template Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Open Office Writer Doc From Template Smart Service generates an Open Office Writer Document that is populated with process data. It is found under **Appian Smart Service** > **Document Generation** in the Process Modeler.

This activity uses an Open Office Writer Doc template in .odt format. To create the merge template, edit a Open Office Writer Document. Identify each merge field by enclosing the field with three pound symbols (###).

### Example Writer Template

**writer\_template.odt**

```
1
2
###Name### joined ###Department### on ###Date of Joining###. The employee's position is ###Position### and their
 supervisor is ###Supervisor###.
```

When you've created your template, upload it to a folder in Appian Document Management that can be accessed by any user who may start the process. You can also upload alternate templates, which can be selected at runtime using a rule or an expression. Any alternate template must use the same substitution keys.

Double-click the activity after dragging it onto the canvas in the desired location. The Configure Open Office Writer Doc From Template dialog is displayed. Select from the following tabs in this dialog to configure the activity.

### Properties

-   **Category**: Document Generation

-   **Icon**: ![](images/Smart_Service_Icons/Open_Office_Doc_From_Template.png)

-   **Assignment Options**: Always Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

The Setup Tab displays the main property sheet used to configure the automated activity.

-   **Template**: Select your merge template from Appian Document Management. To browse through Appian Document Management, click the **Directory** button. The **Choose a document** dialog is displayed. Select a document. (Only documents that have a .docx extension are listed.) You can also type the name of the document. Once a document has been selected, the substitution keys in the document are scanned and appear as shown below.

![](images/Configure_word_doc_from_template.png )

-   (Optional) In the **Runtime Template** field, type an expression that selects a document using a variable or a Constant. (You can create Constants that contain each desired template.) The substitution keys in the runtime template(s) do not have to match the base template exactly, but any keys used in the runtime template must be present in the base template.
-   **Destination**: Once a template document has been selected you can create a new document, or update an existing document.
-   If the **Create a new file** option is selected, complete the following fields.

1.  **New document name**: Enter the name of the new document that is to be created by this smart service activity. You can type the name into the text-field, or a name can be specified through an expression. To access the Expression Editor click ![](images/Exp_editor.gif ). Take care when forming a filename to avoid characters that are disallowed in Appian Document Management filenames (such as / \\ : ; < > " \* ' ? ).
2.  **New document description**: Type a brief description of the of document. The expression editor can also be used to formulate a description.

-   **Save in folder**: Specify the folder where the newly created document is to be stored. Once you have selected a folder, click ![](images/Validate.gif ) to check the name of the folder specified. You can also use an expression or a rule to select a folder at runtime.
-   If the **Overwrite an existing document** option is selected, the document that is replaced must be specified.
    -   **Document to replace**: In this field, specify the document to be updated. Click **Directory** to browse for a document. You can also look up the document using autocomplete by typing the document name in the text field.
-   The substitution keys found in the template file are listed in the **Find in template document** column. This column cannot be edited. In the **Replace with** column, enter the text to substitute in place of the key. You can type the value or use an expression. If the field is left blank, the key is removed (replaced with nothing). The substitutions can be sorted using the **Sort** button on the toolbar. Substitution keys can be sorted alphabetically or reverse-alphabetically by clicking the ![](images/A_z.gif ) or ![](images/Z_a.gif ) buttons. The default sort order is restored by clicking ![](images/Original_order.gif ).
-   If you've made changes to the template document, click ![](images/Rescan_template.gif ) on the toolbar. The template is then rescanned for substitution keys. Whenever the template path is changed, the specified document is also parsed for substitution keys. The node supports Unicode (UTF-8) templates and generates Unicode documents.

If the node is run as a user who does not have adequate rights to: the template document, the document that is to be replaced, or the folder where the new document is generated, an error message is sent to the process administrator and the task is paused.

### Data tab

The [Data tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays the node inputs and outputs for the smart service. You can add additional inputs and outputs, if needed.

#### Node outputs

The ID of the document that was created or replaced is returned by the node.

To retain the ID of the document so that it can be referenced elsewhere in the process model:

-   Click the **Outputs** property sheet (tab).
-   Select **New Document Created** on the **Results** list. The Result properties are displayed.
-   Create a new process variable to store the result, or select an existing process variable with a Document data type from the available list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...