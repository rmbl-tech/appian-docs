---
source_url: https://docs.appian.com/suite/help/25.3/google-cloud-natural-language.html
original_path: google-cloud-natural-language.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google Cloud Natural Language

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

Appian supports the integration of Google AI services in your application. You can use the Google Cloud Natural Language connected system to perform entity and sentiment analysis to collect information from HTML or plain text. Using these capabilities on elements of text allows you to identify key subjects such as people, places, and events, determine a user's opinion or conveyed emotion, and even classify the contents of the text into predefined categories.

To use this connected system, you must have a Google Service Account. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Google Cloud Natural Language connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Project ID | Found in your Google Service Account file. |
| Private Key ID | Found in your Google Service Account file. |
| Private Key | Found in your Google Service Account file. |
| Client Email | Found in your Google Service Account file. |
| Client ID | Found in your Google Service Account file. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

![screenshot of a GCNL connected system](images/create_a_connected_system/gcnl_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `projectId`
-   `privateKeyId`
-   `privateKeyId`
-   `clientEmail`
-   `clientId`

## Operation

| Name | Description | Type |
| --- | --- | --- |
| Run Analysis | [Run analysis](https://cloud.google.com/natural-language/docs/reference/rest/v1/documents) on the provided text. | READ |

This integration uses the REST Resource [documents](https://cloud.google.com/natural-language/docs/reference/rest/v1/documents) from the Google Cloud Natural Language API to categorize text and perform entity and sentiment analysis. Using the analysis options available, you can identify common entities, like proper names and common nouns, analyze sentiment in the text or associated with each entity, and categorize text into [logical groupings](https://cloud.google.com/natural-language/docs/categories) for easier organization.

![screenshot of a GCNL integration object](images/create_a_connected_system/gcnl_integration.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...