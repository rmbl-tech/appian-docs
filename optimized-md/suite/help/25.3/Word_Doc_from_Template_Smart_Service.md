---
source_url: https://docs.appian.com/suite/help/25.3/Word_Doc_from_Template_Smart_Service.html
original_path: Word_Doc_from_Template_Smart_Service.html
version: "25.3"
title: "MS Word 2007 Doc from Template Smart Service"
page_id: "Word_Doc_from_Template_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# MS Word 2007 Doc from Template Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The MS Word 2007 Doc from Template Smart Service generates a Microsoft Office 2007 (or Office 2010) Word document populated with process data.

This activity uses a Microsoft Word Document template in `.docx` format. To create the merge template, edit a Microsoft Word 2007/2010 document. Identify each merge field by enclosing the field with three pound symbols (###).

### Example Word template

Name: `word_template.docx`

Content:

```
1
2
 ###Name###. joined ###Department###. on ###Date of Joining###. The employee's position is ###Position###. and their
supervisor is ### Supervisor###.
```

When you've created your template, upload it to a folder in Appian Document Management. You can also upload alternate templates, which can be selected at runtime using a rule or an expression.

Your keyed template fields must pass Microsoft Word's spelling and grammar tests. When viewing the template in Microsoft Word, be sure to right-click the field in your template and select **Ignore** for any spelling or grammar issues that are listed. Ensure that any text formatting is contiguously applied to the entire substitution key, and not any partial section of the key. Formatting creates XML tags in the template that render the substitution key unrecognizable if an opening or closing tag falls within the key.

### Permissions needed

The user running the smart service must have **Author** rights to the folder holding the template in Document Management. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Document Generation

-   **Icon**: ![](images/Smart_Service_Icons/Word_Doc_From_Template.png)

-   **Assignment Options**: Always Unattended

## Configuration options

### Setup tab

The Setup Tab displays the main property sheet used to configure the automated activity.

-   _Template_: Select your merge template from Appian Document Management by typing in the name or clicking **Directory** and browsing through Appian Document Management. Only documents that have a `.docx` extension are listed.
    -   Once a document has been selected, the substitution keys in the document are scanned and appear as shown below.
    -   Any formatting applied to a substitution key must be contiguous, meaning it cannot be applied to some characters and not others. ![](images/Configure_word_doc_from_template.png)
-   (Optional) _Runtime Template_: Type an expression that selects a document using a variable or a Constant. (You can create Constants that contain each desired template.) The substitution keys in the runtime template(s) do not have to match the base template exactly, but any keys used in the runtime template must be present in the base template.

-   _Destination_: Choose between creating a new document and overwriting an existing document.

-   If you selected the _Create a new file_ option, complete the following fields.
    -   _New document name_: Enter the name of the new document that is to be created by this node. You can type the name into the text-field, or a name can be specified through an expression. Avoid using characters that are disallowed in Appian Document Management filenames (such as `/ \ : ; < > " \* ' ?` ).
    -   _New document description_: Type a brief description of the of document. The expression editor can also be used to formulate a description.
    -   _Save in folder_: Specify the folder where the newly created document is to be stored. Once you have selected a folder, click the checkbox icon to check the name of the folder specified. You can also use an expression or a rule to select a folder at runtime.
-   If you selected the _Overwrite an existing document_ option, complete the following fields.
    -   _Document to replace_: In this field, specify the document to be updated. Click **Directory** to browse for a document. You can also look up the document using autocomplete by typing the document name in the text field.
-   _Replace with_: Assign a process variable, constant, or typed value for each replacement key listed.
    -   Substitution values cannot contain HTML formatting tags, such as `<i>` or `<b>`, or the characters `&`, `<`, and `>`. If necessary, use the `toHtml()` function to remove these characters. See also: [tohtml()](fnc_text_tohtml.html) If you've made changes to the template document, click **Re-scan Template** on the toolbar. The template is then rescanned for substitution keys. Whenever the template path is changed, the specified document is also parsed for substitution keys. The node supports Unicode (UTF-8) templates and generates Unicode documents.

If the node is run as a user who does not have adequate rights to: the template document, the document that is to be replaced, or the folder where the new document is generated, an error message is sent to the process administrator and the task is paused.

### Data tab

#### Node outputs

The ID of the document that was created or replaced is returned by the node.

To retain the ID of the document so it can be referenced elsewhere in the process model:

1.  Click the **Outputs** tab.
2.  Select **New Document Created** on the **Results** list (the Result properties display).
3.  Create a new process variable to store the result or select an existing Process Variable with a Document data type from the available list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...