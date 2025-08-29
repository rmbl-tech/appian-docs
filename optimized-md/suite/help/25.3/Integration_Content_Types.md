---
source_url: https://docs.appian.com/suite/help/25.3/Integration_Content_Types.html
original_path: Integration_Content_Types.html
version: "25.3"
title: "Integration Content Types"
page_id: "Integration_Content_Types"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Integration Content Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

When configuring an [HTTP integration](Create_an_Integration.html) with a body, you must choose a value in the **Content Type** dropdown list. In all cases, this dropdown selection will set the "Content-Type" header on your request. The sections below provide more information on the individual content types and what they mean in the context of the integration.

**Note:**  The Document and Multipart Form Data Content Types can be used to send binary documents with your integrations

## JSON (application/json)

JavaScript Object Notation (**JSON**) is a lightweight data-interchange format that is commonly used for RESTful web services. It is structured as an array of objects where an object is a collection of name/value pairs. In many ways, JSON objects are similar to Appian dictionaries. When this value is selected, you can enter an Appian dictionary or CDT into the expression editor and Appian will automatically convert it to JSON. You should not use this content type when sending [primitive types](Appian_Data_Types.html#primitive-system-data-types). You can also [upload base64 documents inline with JSON](Integration_Object.html#sending-base64-inline-with-json).

Note that the charset will automatically be set to UTF-8. If you need to override this, add a custom HTTP header to the request with the name `Content-Type` and the value `application/json`.

The request body cannot exceed 5 MB. However, this does not include the up to 75 MB of base64 documents that can be streamed.

## XML (application/xml)

eXtensible Markup Language (**XML**) is a data-interchange format that is commonly used for SOAP web services, though it is also compatible with REST. It is composed of nested units called elements that form data structures similar to Appian dictionaries and [complex data types](Appian_Data_Types.html#complex-system-data-types). When this value is selected, you can enter a CDT into the expression editor and Appian will automatically convert it to JSON. You should not use this content type when sending [primitive types](Appian_Data_Types.html#primitive-system-data-types). You can also [upload base64 documents inline with XML](Integration_Object.html#sending-base64-inline-with-xml).

Note that the charset will automatically be set to UTF-8. If you need to override this, add a custom HTTP header to the request with the name `Content-Type` and the value `application/xml`.

The request body cannot exceed 5 MB. However, this does not include the up to 75 MB of base64 documents that can be streamed.

## Document (auto-detect)

The **Document** Content Type option allows you to send files to external systems. Choosing this option affects your request in three ways:

1.  Appian sets the Content-Type header. The media type in parenthesis is "auto-detect" because Appian will automatically detect the correct [media type](https://www.iana.org/assignments/media-types/media-types.xhtml) based on the content of the chosen document and the document's extension.
2.  Appian casts the body or part value to an [Appian document](Appian_Data_Types.html#document) whose content type will be detected. This step follows standard Appian casting rules.
3.  Appian sends the content of the Appian document as the body or part of the request instead of the document ID. This allows you to upload files to external systems, such as Google Drive or Microsoft SharePoint®. The file contents are streamed from the file system to the external service, meaning the file is never fully read into memory. As a result, it is safe to send large files to external systems using this functionality.

Although there is no request body size limit imposed on this Content-Type, the best practice is not to exceed 250 MB for a single document.

## Multipart Form Data (multipart/form-data)

Some services require data to be sent as multipart/form-data. This is typical for services that upload documents. Multipart HTTP requests can send multiple types of data in a single request, such as structured text and unstructured binary data. For example, sending JSON or XML data (structured text) along with files (unstructured binary data). In Appian, choosing the **Multipart Form Data (multipart/form-data)** for the **Content Type** allows you to configure this type of request. For more information on multipart requests in general, see the [RFC](https://tools.ietf.org/html/rfc2388).

The request body cannot exceed 5 MB. However, this doesn't include the documents that can be streamed.

### Sending documents

Documents can be sent as form part values. See the above section for more details on sending documents.

Document parts are sent differently than non-document parts. Unlike non-document parts, document parts are never fully stored in memory, making it safe to send large files through a multipart request. Best practice is to not send more than 75 MB of documents in a single request.

### Configuring form parts

If you have a static number of form parts that don't require additional logic, select **Specify data for each part** and use the form to specify the fields.

![Multipart Form Data Specify Values](images/multipart_form_data_specify_values.png)

You can also use an expression to define the form parts by selecting **Define all parts with a single expression**. This can be helpful if you need conditional logic, such as sending optional files. See [a!httpFormPart()](fnc_connector_http_a_httpformpart.html) for more information on setting up the expression.

## Text (text/plain)

Choosing this option sets the Content-Type header `text/plain`, which is the generic media type for plain text. This content type is rarely used by APIs.

Note that the charset will automatically be set to UTF-8. If you need to override this, add a custom HTTP header to the request with the name `Content-Type` and the value `text/plain`.

The request body cannot exceed 5 MB.

## Custom

Selecting the **Custom** option allows you to set content-type manually. This should be used when you cannot leverage any of the provided content-type options. Note that only text-based media types can be sent through integrations in this way, and the charset will automatically be set to UTF-8.

If you need to override the charset, add a custom HTTP header to the request with the name `Content-Type` and set the value to match the custom Content Type that you entered.

The request body cannot exceed 5 MB.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...