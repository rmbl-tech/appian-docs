---
source_url: https://docs.appian.com/suite/help/25.3/Classify_Emails_Smart_Service.html
original_path: Classify_Emails_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Classify Emails Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Classify Emails smart service lets you integrate your AI skill into your process. This smart service takes emails as its input, uses custom artificial intelligence models to analyze those emails, and then returns a prediction of the email type. The smart service also returns data on its level of confidence, based on thresholds you can configure.

The smart service takes emails in the form of EML files as input.

When called, this smart service uses the published model within the AI skill you select. As you train the AI skill, you create models and evaluate their ability to meet your requirements. When you determine a model is ready to use, you publish it. To check which model is published and will be called by the smart service, see the AI Skill design object.

### Permissions

The user who executes the process model doesn't need to have access to the AI skill being called by the Classify Emails smart service. However, without those permissions, some smart service configuration options are masked.

To properly view the results, you need to have permission to the email being analyzed.

### Properties

-   **Category**: AI Skills
-   **Icon**: ![](images/Smart_Service_Icons/Classify_Emails.png)
-   **Assignment options**: Unattended

## Configuration options

### Setup tab

The **Setup** tab allows you to select an AI skill.

-   **Select AI Skill**: Search or browse for an AI skill to use with this smart service.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Emails | Document | List of emails to classify | Y | Y |
| Confidence Threshold | Number (Integer) | Optional parameter that can be set as a number between 0 and 100. Default is 0.

Predictions with confidence scores above this threshold appear in the `Above Threshold` output, while predictions with confidence scores that fall below this threshold appear in the `Below Threshold` output. More on [confidence scores](evaluate-ai.html#confidence).

When left blank, all predictions appear in the `Above Threshold` output. | N | N |

#### Node outputs

The smart service returns three lists of emails, organized based on the confidence threshold you set. Each list contains the email and the email type. The skill's published model also outputs a confidence value for each email type prediction it makes.

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Above Threshold | Classification Result | Y | Returns documentId, classification, and confidence classified above threshold value when set |
| Below Threshold | Classification Result | Y | Returns documentId, classification, and confidence below threshold value when set |
| Failed | Classification Result | Y | Returns documentId, error code, and error details of the emails that don't get classified |

## Usage considerations

Activity chaining is not supported.

EML files must include **Date** and **From** data in the header, and each piece of information in the header should be on its own line. **Subject** and **body** data are used for [model training](create-skill-email-classify.html#add-training-emails).

Keep in mind the following requirements when using this smart service:

-   Maximum size of a set of emails used as input: 100 MB
-   Number of concurrent AI Skill smart services you can have running across all skills in an environment: 100
    -   AI Skill smart services include [**Classify Documents**](Classify_Documents_Smart_Service.html), **Classify Emails**, and [**Extract from Document**](Extract_from_Document_Smart_Service.html).
-   Maximum number of emails in a set used as input: 100 EMLs

If any of these guardrails are limiting, please reach out to your Appian contact.

## Runtime behavior

At run-time, the smart service calls a machine learning model that is published in the AI skill configured in the **Setup** tab.

Classification by the model is asynchronous and may take some time to complete.

## Possible error messages

`Error code/message captured in the "Failed" output` may appear for any of the following reasons:

-   Invalid file format. Use EMLs as inputs.
-   Combined size of the emails is too large. Send 100MB or less to the smart service.
-   Invalid emails, such as an empty emails or corrupted file.
-   Email has been deleted. Reconfigure the smart service to use existing emails.
-   Internal error. Try again later. If the error persists, contact Appian support.

`Document corrupted or could not be converted` may appear if any EML file doesn't contain **Date** and **From** data in the header.

If you see the following error, it is because the Classify Emails smart service is referring to an AI Skill design object that no longer exists. Reconfigure the smart service to use an existing AI Skill.

`There is a problem with the task "Classify Emails" in the process "process_model_name". The underlying AI Skill object has been deleted or is otherwise invalid. Please confirm the node's configuration and try again.`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...