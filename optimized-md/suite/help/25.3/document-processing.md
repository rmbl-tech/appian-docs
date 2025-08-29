---
source_url: https://docs.appian.com/suite/help/25.3/document-processing.html
original_path: document-processing.html
version: "25.3"
title: "Intelligent Document Processing"
page_id: "document-processing"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Intelligent Document Processing

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Up to this point, companies that needed to extract data from documents and forms had two options: slow, labor-intensive manual entry or outdated, hard-to-customize optical character recognition software.

But if you have Appian, you have another option: intelligent document processing (IDP) capabilities. With IDP, you can automate some of your most common tasks when it comes to documents your business receives. IDP is no longer a single application for document classification and extraction. Instead, IDP is a suite of capabilities within Appian that allow you to automate the most labor-intensive parts of document management.

What's possible? We're glad you asked. With Appian, you can:

| If you want to... | Use | Additional details |
| --- | --- | --- |
| Apply optical character recognition (OCR) | [Document extraction AI skill](create-skill-doc-extraction.html)
[Document classification AI skill](create-skill-doc-classify.html) |  |
| Recognize handwriting | [Document extraction AI skill](create-skill-doc-extraction.html)
[Document classification AI skill](create-skill-doc-classify.html) |  |
| Recognize text in multiple languages | [Document extraction AI skill](create-skill-doc-extraction.html)
[Document classification AI skill](create-skill-doc-classify.html) |  |
| Extract text in multiple languages | [Document extraction AI skill](create-skill-doc-extraction.html) | See [supported languages](how-doc-ex-works.html#supported-languages). |
| Integrate with bring-your-own OCR services | [Integration object](Integration_Object.html) | Set up integration with extraction OCR engine. |
| Extract data from documents | [Document extraction AI skill](create-skill-doc-extraction.html) |  |
| Extract data from tables | [Document extraction AI skill](create-skill-doc-extraction.html) |  |
| Extract data from tables across multiple pages | [Document extraction AI skill](create-skill-doc-extraction.html)
[PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools) | [See below](#extract-data-from-tables-across-multiple-pages). |
| Extract data from tables with multi-line rows | [Document extraction AI skill](create-skill-doc-extraction.html) |  |
| Extract data from tables without grid lines | [Document extraction AI skill](create-skill-doc-extraction.html) |  |
| Extract data from tables with merged cells | [Document extraction AI skill](create-skill-doc-extraction.html) |  |
| Merge documents | [Document classification AI skill](create-skill-doc-classify.html)
[PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools) | [See below.](#merge-documents) |
| Split documents | [Document classification AI skill](create-skill-doc-classify.html)
[PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools) | [See below.](#split-documents) |
| Convert documents | Image files: [PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools)
HTML files: [HTML to PDF plug-in](https://community.appian.com/b/appmarket/posts/html-to-pdf)
MS Word files: [Dynamic Document Generator plug-in](https://community.appian.com/b/appmarket/posts/dynamic-document-generator) | Not recommended for use with Excel. See [Using Excel with Appian](excel-guidance.html). |
| Deskew documents | [Document extraction AI skill](create-skill-doc-extraction.html) | Deskewing occurs during OCR. The image will not be deskewed to the end user, but the text will be identified accurately. |
| Capture documents | Image files: [PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools).
HTML files: [HTML to PDF plug-in](https://community.appian.com/b/appmarket/posts/html-to-pdf).
MS Word files: [Dynamic Document Generator plug-in](https://community.appian.com/b/appmarket/posts/dynamic-document-generator).
Uploading on an interface with [a!fileUploadField()](File_Upload_Component.html).
Using a [Document Generation smart service](Smart_Services.html#-automation-smart-services).
Receiving a binary or Base64 document through an [integration](Integration_Object.html).
From a robotic task using [document actions](/suite/help/25.3/rpa-9.17/actions-appian-services.html). | Not recommended for use with Excel. See [Using Excel with Appian](excel-guidance.html). |
| Implement capture rules, such as thresholds to accept a document (including quality) | [Document extraction AI skill](create-skill-doc-extraction.html)
[Expression rules](Expressions.html) | [See below](#implement-capture-rules). |
| Validate documents | [Document extraction AI skill](create-skill-doc-extraction.html)
[Expression rules](Expressions.html) | [See below](#validate-documents). |
| Adjust images | [Document extraction AI skill](create-skill-doc-extraction.html) | Occurs during OCR. The image isn't updated for end users, but the text is accurately identified. |
| Classify documents | [Document classification AI skill](create-skill-doc-classify.html) |  |
| Manage metadata | [Edit Document Properties smart service](Edit_Document_Properties_Smart_Service.html)
[Records](Record_Type_Object.html) | Can be used in conjunction with AI skills. |
| Store documents | [Document folders](folder-object.html#document-folders) |  |
| Apply document retention rules | [Delete Document](folder-and-document-management.html#deleting-documents) | Customers can control how long docs are stored in the Appian platform. |
| Apply rules for archiving | [Records](Record_Type_Object.html)
[Folder properties](folder-object.html) |  |
| Apply legal holds | [Records](Record_Type_Object.html)
[Folder properties](folder-object.html) | Configure security on any records or folders containing legal data. |
| Search documents using metadata | [Integration object](Integration_Object.html) |  |

## Implementation patterns

### Extract data from tables across multiple pages

To extract data from tables that span multiple pages in a document:

1.  Use the [PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools) to split the document into individual pages.
2.  Use the [document extraction AI skill](create-skill-doc-extraction.html) to extract table data from each page.
3.  Combine the results using post-processing logic.

### Merge documents

When documents are received in packets containing multiple document types:

1.  Split the file into individual pages.
2.  Classify each page into its appropriate document type using the [document classification AI skill](create-skill-doc-classify.html).
3.  Combine like pages into new files.
4.  Send the newly composed files to the [document extraction AI skill](create-skill-doc-extraction.html) created for the corresponding document type.

### Split documents

When documents are received in packets containing multiple document types:

1.  Split the file into individual pages.
2.  Classify each page into its appropriate document type using the [document classification AI skill](create-skill-doc-classify.html).
3.  Send the split files to the [document extraction AI skill](create-skill-doc-extraction.html) created for the corresponding document type.

### Implement capture rules

1.  Add the [Extract from Document smart service](Extract_from_Document_Smart_Service.html) to a process.
2.  Configure the `Confidence Threshold` input and `Confidence Score` output according to your requirements.
3.  Configure additional verification using expression rules or user input tasks to confirm documents near the confidence threshold meet your requirements.

### Validate documents

1.  Extract data from the documents using the [document extraction AI skill](create-skill-doc-extraction.html) and [Extract from Document smart service](Extract_from_Document_Smart_Service.html).
2.  To verify the completeness or accuracy of required fields, use expression rules or user input tasks.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...