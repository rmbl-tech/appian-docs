---
source_url: https://docs.appian.com/suite/help/25.3/Extract_from_Document_Smart_Service.html
original_path: Extract_from_Document_Smart_Service.html
version: "25.3"
title: "Extract from Document Smart Service"
page_id: "Extract_from_Document_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Extract from Document Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Extract from Document smart service lets you integrate your AI skill into your process. This smart service takes a document as its input, uses machine learning models to analyze the data within the document, and then returns a map of the data it extracted based on the structure you defined in the skill.

### Permissions

The user who executes the process model doesn't need to have access to the AI skill being called by the Extract from Document smart service. However, without those permissions, some smart service configuration options are masked.

To properly view the results, you need to have permission to the document being analyzed.

### Properties

-   **Category**: AI Skills
-   **Icon**: ![](images/Smart_Service_Icons/Extract_From_Document.png)
-   **Assignment options**: Unattended

## Configuration options

### Setup tab

The **Setup** tab allows you to select an AI skill.

-   **Select AI Skill**: Search or browse for an AI skill to use with this smart service.

### Data tab

#### Node inputs

| Name | Data Type | Multiple | Required | Description |
| --- | --- | --- | --- | --- |
| Document | Document | N | Y | File to extract data from. |
| Confidence Threshold | Number (Integer) | N | N | Applies only to text entities. Optional parameter that can be set as a number between 0 and 100. Default is 0.

Text identified with confidence scores above this threshold appear in the `Extracted Data` output, while text identified with confidence scores that fall below this threshold appear as `null` in the `Extracted Data` output. More on [confidence scores](evaluate-ai.html#confidence).

When left blank, all text values appear in the `Extracted Data` output. |

#### Node outputs

The smart service returns a map of the data extracted from the document.

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Doc Extraction Id | String | N | The identifier of the AI skill execution, which can be used as input for the [Reconcile Doc Extraction](Reconcile_Doc_Extraction_Smart_Service.html) smart service. |
| Extracted Data | Any Type (Map) | N | Returns the extracted data in the form of the data structure defined in the AI Skill. |
| Confidence Scores | Any Type (Map) | N | Returns the confidence scores for each field prediction. |

**Note:**  The Reconcile Doc Extraction smart service uses new inputs in 23.2. To adapt an older document extraction process to use the Extract from Document smart service, you'll need to remove the old Reconcile Doc Extraction smart service and replace it with the updated node to use the new inputs.

## Usage considerations

Activity chaining is not supported.

### Document requirements

The structured document extraction skill is capable of processing PDF documents up to 15 pages or 7 MB. If a larger document is passed to the smart service, it will fail.

Appian is unable to extract data from RC4 [encrypted PDFs](how-doc-ex-works.html#document-encryption) in GovCloud environments.

For best results, we recommend documents meet the following minimum requirements:

-   **Text**: 8pt font
-   **Resolution**: 150 dots per inch (DPI).

### Casting to record types or CDTs

As you build your process, you'll map the smart service output to process variables. Appian supports casting data from Maps to CDTs or record types so you can use the extraction results to write to your database.

**Note:**  Review the [design guidance](create-skill-doc-extraction.html#mapping-data-as-you-define-the-document-structure) to ensure that the fields in your AI skill are named based on how you want to cast the data.

To ensure that the AI skill extracts and uses your data as you intend, carefully map the Extract from Document smart service output to the proper variables so your data is used or stored properly:

1.  Double-click the **Extract from Document** smart service node.
2.  Go to the **Data** tab.
3.  Go to the **Outputs** tab.
4.  In the **Results** section of the outputs tree, click **Extracted Data**. The results properties display in the right pane.
5.  In the **Target** field, select the process variable you want to use to store this data, including Record Types or CDTs.

## Runtime behavior

At run-time, the smart service calls the AI skill configured in the **Setup** tab.

Extraction is asynchronous and may take some time to complete.

## Possible error scenarios

The node will fail if the size of the document is too large. Send a document with 15 or fewer pages and 7 MB or less to the smart service.

If you see the following error, it is because the Extract from Document smart service is referring to an AI Skill design object that no longer exists. Reconfigure the smart service to use an existing AI Skill.

`There is a problem with the task "Extract from Document" in the process "process_model_name". The underlying AI Skill object has been deleted or is otherwise invalid. Please confirm the node's configuration and try again.`

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...