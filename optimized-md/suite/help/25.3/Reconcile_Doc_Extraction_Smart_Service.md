---
source_url: https://docs.appian.com/suite/help/25.3/Reconcile_Doc_Extraction_Smart_Service.html
original_path: Reconcile_Doc_Extraction_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reconcile Doc Extraction Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Reconcile Doc Extraction node allows you to assign an interface to review and update extracted data from a doc extraction run, started by the started by the [Extract from Document](Extract_from_Document_Smart_Service.html) smart service, which leverages the [Document Extraction AI Skill](create-skill-doc-extraction.html).

See also:

-   [Admin Console > Document Extraction](Appian_Administration_Console.html#ai-service-appian)

**Note:**  The Reconcile Doc Extraction smart service uses new inputs in 23.2. To adapt an older document extraction process to use the [Extract from Document](Extract_from_Document_Smart_Service.html) smart service, you'll need to remove the old Reconcile Doc Extraction smart service and replace it with the updated node to use the new inputs.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Reconcile_Doc_Extraction.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays all the Node Inputs and Node Outputs for the Service Node. You can add additional inputs and outputs, if needed.

#### Node inputs

The default inputs are:

| Input | Data Type | Required | Multiple | Description |
| --- | --- | --- | --- | --- |
| Document Extraction Id | String | Yes | No | ID of the doc extraction run.

Use the `Doc Extraction Id` output from the Extract from Document smart service in this field. |
| Title | Text | No | No | Text for the title of the interface. Default is `Reconcile [name of document]`. |
| Submit Button Label | Text | No | No | Label for the "Submit" button. Default is `Submit`. |
| Mark As Invalid Button Label | Text | No | No | Label for the "Mark as Invalid" button. Default is `Mark as Invalid`. |

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Reconciled Data | Any Type | The data reconciled by the user. Returns the extracted data in the form of the data structure defined in the AI skill. |
| Is Submit | Boolean | User selected the "Submit" button. |
| Is Invalid | Boolean | User selected the "Mark as Invalid" button. |

To save the **Reconciled Data** into a process variable:

1.  Select the **Outputs** property sheet (tab).
2.  Click **Reconciled Data** on the **Results** list. The result properties are displayed.
3.  Create a new process variable to store the result, or select an existing process variable with data type of your input **Data Type Number** from the available list.

#### Usage considerations

The doc extraction reconciliation interface can only be accessed by a user who has permissions to the original document.

Appian will delete document extraction runs after 30 days, or when the total amount of data surpasses 10 GB. If you attempt to access a run that has been deleted, you will see an error. Appian will not delete the documents you uploaded.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...