---
source_url: https://docs.appian.com/suite/help/25.3/google-cloud-translate.html
original_path: google-cloud-translate.html
version: "25.3"
title: "Google Cloud Translation"
page_id: "google-cloud-translate"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google Cloud Translation

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Customers who wish to use Google services in Appian will need to bring their own Google Cloud credentials to do so.

## Overview

Appian supports the integration of Google AI services in your application. The Google Cloud Translation connected system enables you to quickly and easily detect the language of a piece of text, and then translate it into the desired language. Once you're connected, you can [call an integration](Call_an_Integration.html) in your process model or interface so you can dynamically detect and translate text, allowing you to communicate information quickly and effectively.

To use this connected system, you must have a Google Service Account. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Google Cloud Vision connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Project ID\* | **Required**. Found in your Google Service Account file. |
| Private Key ID\* | **Required**. Found in your Google Service Account file. |
| Private Key\* | **Required/Sensitive**. Found in your Google Service Account file. |
| Client Email\* | **Required**. Found in your Google Service Account file. |
| Client ID\* | **Required**. Found in your Google Service Account file. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![google-cloud-translation-cs.png](images/create_a_connected_system/google-cloud-translation-cs.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `projectId`
-   `privateKeyId`
-   `privateKeyId`
-   `clientEmail`
-   `clientId`

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Detect Language](#detect_language) | [Discovers languages](https://cloud.google.com/translate/docs/discovering-supported-languages) from provided text | READ |
| [Translate Text](#translate_text) | [Translates](https://cloud.google.com/translate/docs/translating-text) provided text | READ |

### Detect Language

Detect and obtain the language of a piece of text. The detected language will return as a language code. See a list of [supported languages](https://cloud.google.com/translate/docs/languages) to see which language matches the language code.

![screenshot of Detect Language operation selected in an integration object](images/create_a_connected_system/translate-detect.png)

### Translate Text

Detect the source language of a piece of plain or HTML text and translate it into the language of your choosing. To dynamically translate content, consider adding a [rule input](Create_an_Integration.html#define-inputs) in your integration to pass different values to translate.

By default, text is translated using the Neural Machine Translation (NMT) model. If the NMT model is not supported for the requested language translation pair, then the Phrase-Based Machine Translation (PBMT) model is used. The runtime model will be returned in the result.

![screenshot of Translate Text operation selected in an integration object](images/create_a_connected_system/translate-translate-text.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...