---
source_url: https://docs.appian.com/suite/help/25.3/google-cloud-vision.html
original_path: google-cloud-vision.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google Cloud Vision

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

Appian supports the integration of Google AI services in your Appian application. You can leverage the power of Google Cloud Vision to collect key information and structure from images and PDFs. Once you're connected to Google Cloud Vision machine learning models, you can extract information like logos, landmarks, and text from your selected file.

To use this connected system, you must have a Google Service Account. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

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

![screenshot of a Google Cloud Vision connected system object](images/create_a_connected_system/gcv_connected_system.png)

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
| [Analyze and Detect text in images](#analyze-and-detect-text-in-images) | [Run analysis](https://cloud.google.com/vision/docs/reference/rest/v1/images/annotate) on the provided image to extract structure and information from images, including logos, landmarks, and text (Optical Character Recognition). Provide an image and select different dimensions to analyze. | READ |
| [Detect text in files (PDF/TIFF)](#detect-text-in-files-\(pdf/tiff\)) | Detect and transcribe text from PDF and TIFF files. Uploads a document to Google Cloud Storage, starts OCR analysis, and returns the output. | WRITE |

### Analyze and Detect text in images

Extract structure and information from images, including logos, landmarks, and colors, or detect text using Optical Character Recognition (OCR). Select one or more types of analysis to perform on an image selected from the **Image Source** dropdown. Your image can be from a URL, Google Cloud Storage, or a document in your application.

This integration uses the method [images.annotate](https://cloud.google.com/vision/docs/reference/rest/v1/images/annotate) from the Google Cloud Vision API to run image detection and annotation on images. Using detection and analysis options available in the integration, you can retrieve data about the type of objects viewed in the image, the emotions displayed, the text located in the background or on the image, and more.

![screenshot of Analyze and Detect text in images operation selected in an integration object](images/create_a_connected_system/gcv-integration.png)

### Detect text in files (PDF/TIFF)

Detect and transcribe text from PDF or TIFF files. To use the integration, simply choose an existing document from your application or upload a new document, identify the file type, and choose the name of your Google Cloud Storage bucket. When you use this integration, the selected file is uploaded to your Google Cloud Storage bucket where OCR analysis occurs on the file. The output of the analysis is a Text value that is returned in the integration where you can then use it in your application.

**Note:**  Detect text in files (PDF/TIFF) is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of Detect text in files operation selected in an integration object](images/create_a_connected_system/vision-detect-text.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...