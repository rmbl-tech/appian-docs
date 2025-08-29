---
source_url: https://docs.appian.com/suite/help/25.3/Classify_Documents_Smart_Service.html
original_path: Classify_Documents_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Classify Documents Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Classify Documents smart service lets you integrate your [Document Classification AI skill](create-skill-doc-classify.html) into your process. This smart service takes documents as its input, uses custom artificial intelligence models to analyze those documents, and then returns a prediction of the document type. The smart service also returns data on its level of confidence, based on thresholds you can configure.

The smart service takes documents in the form of PDF files as input.

When called, this smart service uses the published model within the AI skill you select. As you train the AI skill, you create models and evaluate their ability to meet your requirements. When you determine a model is ready to use, you publish it. To check which model is published and will be called by the smart service, see the AI Skill design object.

### Permissions

The user who executes the process model doesn't need to have access to the AI skill being called by the Classify Documents smart service. However, without those permissions, some smart service configuration options are masked.

To properly view the results, you need to have permission to the document being analyzed.

### Properties

-   **Category**: AI Skills
-   **Icon**: ![](images/Smart_Service_Icons/Classify_Documents.png)
-   **Assignment options**: Unattended

## Configuration options

### Setup tab

The **Setup** tab allows you to select an AI skill.

-   **Select AI Skill**: Search or browse for an AI skill to use with this smart service.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Documents | Document | List of documents to classify | Y | Y |
| Confidence Threshold | Number (Integer) | Optional parameter that can be set as a number between 0 and 100. Default is 0.

Predictions with confidence scores above this threshold appear in the `Above Threshold` output, while predictions with confidence scores that fall below this threshold appear in the `Below Threshold` output. More on [confidence scores](evaluate-ai.html#confidence).

When left blank, all predictions appear in the `Above Threshold` output. | N | N |

#### Node outputs

The smart service returns three lists of documents, organized based on the confidence threshold you set. Each list contains the document and the document type. The skill's published model also outputs a confidence value for each document type prediction it makes.

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Above Threshold | Classification Result | Y | Returns documentId, classification, and confidence classified above threshold value when set |
| Below Threshold | Classification Result | Y | Returns documentId, classification, and confidence below threshold value when set |
| Failed | Classification Result | Y | Returns document (or id), error code, and error details of the documents that don't get classified |

## Usage considerations

Activity chaining is not supported.

Keep in mind the following requirements when using this smart service:

-   Maximum size of a set of documents used as input: 100 MB
-   Number of concurrent AI Skill smart services you can have running across all skills in an environment: 100
    -   AI Skill smart services include **Classify Documents**, [**Classify Emails**](Classify_Emails_Smart_Service.html), and [**Extract from Document**](Extract_from_Document_Smart_Service.html).
-   Maximum number of documents in a set used as input: 100 PDFs

If any of these guardrails are limiting, please reach out to your Appian contact.

## Runtime behavior

At run-time, the smart service calls a machine learning model that is published in the AI skill configured in the **Setup** tab.

Classification by the AI model is asynchronous and may take some time to complete.

## Possible error messages

`Error code/message captured in the “Failed” output` may appear for any of the following reasons:

-   Invalid document format. Use PDFs as inputs.
-   Combined size of the documents is too large. Send 100MB or less to the smart service.
-   Invalid document, such as an empty document or corrupted PDF.
-   Document has been deleted. Reconfigure the smart service to use existing documents.

If you see the following error, it is because the Classify Documents smart service is referring to an AI Skill design object that no longer exists. Reconfigure the smart service to use an existing AI Skill.

`There is a problem with the task "Classify Documents" in the process "process_model_name". The underlying AI Skill object has been deleted or is otherwise invalid. Please confirm the node's configuration and try again.`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...