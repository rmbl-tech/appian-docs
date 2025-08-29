---
source_url: https://docs.appian.com/suite/help/25.3/about-doc-management.html
original_path: about-doc-management.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About Documents

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Any file you upload to Appian is considered a _document_. Whether it’s an image of a company logo that’s displayed on an interface, or an invoice uploaded by an application user, documents are an important element to consider during application design.

This page explains how to manage different types of documents in your applications.

## How to manage documents

There are two ways to store and manage documents—using record types or folders. Which method you use depends on how the document is used in your application.

You should use:

![Record Type Object Icon](images/object_type_icons/obj_record30px.png)[**Record types**](manage-docs-with-records.html) when documents are created and maintained as part of your application workflows. These documents are often related to your application data, like system logs attached to a support case or a resume associated with a candidate. These documents do not need to be deployed to other environments because they’re created in the application workflow.

![Document Folder Object Icon](images/object_type_icons/obj_document-folder30px.png) [**Folders**](folder-and-document-management.html) when documents are uploaded directly in Appian Designer and are used to build your application, like an image used as the logo in a site page or a PDF template used in a process to generate invoices. These documents need to be deployed to other environments since they are part of the application design.

Let’s look at an example support case application.

In this app, customers can create new support cases and attach relevant images and system logs to their case. Since these documents are uploaded whenever a user creates a support case, you can create a Case Document record type to store those documents and [relate them](record-type-relationships.html) to the Case record type.

Then, you can create streamlined process models to automatically write case information and documents at the same time. You can also secure those documents using [record-level security](record-level-security.html) so that only support engineers who can see the case can see the related documents. With your documents related and secured, you can easily display them in case summary views so support engineers can view all case information at once.

[![Diagram of documents managed by record types](images/doc_management/record-type-document-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img597)

[![](images/doc_management/record-type-document-example.png)](#_)

In the same support case application, you may want to display your company logo on the interface that customers use to submit a support case.

Since the company logo is directly used to build the application, you can upload the image to a [document folder](folder-object.html#document-folders) in Appian Designer. That document folder will also have an associated [knowledge center](folder-object.html#knowledge-centers) to specify which groups and users can view the document.

Once the image is uploaded in Appian Designer, you can use a constant to reference the logo and display it at the top of your form.

[![Diagram of documents managed by folders](images/doc_management/folder-document-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img598)

[![](images/doc_management/folder-document-example.png)](#_)

## Get started

Once you determine how you want to use your documents, get started by either:

-   [Using record types to manage documents](manage-docs-with-records.html).
-   [Using folders to manage documents](folder-and-document-management.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...