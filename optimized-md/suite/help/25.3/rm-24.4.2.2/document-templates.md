---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/document-templates.html
original_path: rm-24.4.2.2/document-templates.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Document Templates

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Requirement Management (RM) solution provides the ability to associate a document template with a task for users when creating a requirements package. This allows users to generate documents in a consistent format. The solution also auto-populates the document with data entered into Appian.

For example, in building a requirement package a user has to create a 508 Determination document. The template for the 508 Determination form is provided to the user in the task. They can click a link to generate and populate the requirement document based on the template.

![Task UI: Auto-populate and download document from template.](images/autopopulate.png)

This page describes how to add your templates to the solution and how to auto-populate the document.

### Add new document templates

To add templates to be used for the create document from template task type:

1.  Go to **Appian Designer** > **AS RM Full Application**.
2.  Search for and open `AS RM Document Template Folder`.
3.  Add document template to `AS RM Document Template Folder`. See instructions for [creating documents](../folder-and-document-management.html#creating-documents).

    ![Select 'Document' from 'NEW' menu to add a template.](images/add_new_document_templates_3.png)

4.  In the folder properties for `AS RM Document Template Folder`, note the folder **ID**.

    ![AS RM Document Template Folder properties, ID highlighted.](images/add_new_document_templates.png)

5.  In the document properties for each template that you added to the folder, note the document **ID**.

    ![Document properties, ID highlighted.](images/add_new_document_templates_2.png)

6.  Go to **Cloud Database**.
7.  Search for and open the `AS_RM_R_DOCUMENT_TEMPLATE` table.
8.  Add an entry to the `AS_RM_R_DOCUMENT_TEMPLATE` table for each document added to the folder using the folder ID and document IDs that you noted. See the [Document Template Reference data table](reference-data-tables.html#document-template-reference-data-table) section.

### Auto-populate new document templates

To auto-populate the template with the data entered:

1.  Go to **Appian Designer** > **AS RM Full Application**.
2.  Search for and open the `AS RM Create Word Doc from Template` process model.
3.  Add a `MS Word 2007 Doc from Template` Smart service document node for each template added to `AS_RM_R_DOCUMENT_TEMPLATE` table.

    ![Appian process model with new 'MS Word 2007 Doc from Template' smart service node.](images/auto_populating_new_document_templates.png)

4.  In the **Setup** tab of the added node:
    1.  Add **Template Configuration** values and save the document to the `AS RM Temporary Document Template Folder`.

        ![Setup tab for configuring a Word document template, showing template name, destination, and save folder.](images/auto_populating_new_document_templates_2.png)

    2.  Add the fields to find in the template and the values to replace them with. You can use the sample template `Capabilities Template` as a guide.

        ![Template auto-population setup: fields to find and their replacement values.](images/auto_populating_new_document_templates_3.png)

5.  In the `XOR` gateway **Decision** tab, add a new condition for each template.

    ![Adding a new condition to an XOR gateway decision tab for template auto-population.](images/auto_populating_new_document_templates_4.png)

6.  In the **Process Modeler**, link the new node to the end node.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...