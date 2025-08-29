---
source_url: https://docs.appian.com/suite/help/25.3/doc-classification-tutorial.html
original_path: doc-classification-tutorial.html
version: "25.3"
title: "Tutorial: Build a Doc Classification Process"
page_id: "doc-classification-tutorial"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tutorial: Build a Doc Classification Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Automate Your Business Tasks with AI Skills](https://academy.appian.com/#/online-courses/d491ae39-23c9-4c43-bd04-45a3fefc76e7)

For additional practice, check out this course to apply your understanding of AI skills by configuring two workflows for common industry use cases.

**Estimated time to complete this tutorial**: 1 hour

**User experience level**: Beginner

## Overview

In this tutorial, you'll build an Appian process model that uses an [AI skill to classify documents](create-skill-doc-classify.html).

In the process, users can submit a document and the AI skill will classify the type of document that's submitted. Depending on the classification, the process will notify the appropriate group that they need to review and approve the document. If the AI skill can't confidently classify the document, then an analyst will be notified so they can manually assess the document.

[![Fully built process](images/tutorial-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img911)

[![](images/tutorial-process.png)](#_)

By delegating this task to AI, the process proceeds much faster and with a higher degree of accuracy than if this classification were done manually by a person.

This page walks you through how to create your own document classification process:

1.  [Create and train AI skills](#part-1-create-ai-skill).
2.  [Create a record type to manage documents](#part-2-create-a-record-type-to-manage-documents).
3.  [Create additional design objects](#part-3-create-additional-design-objects), like a start form and user input task, to use in your process model.
4.  [Configure a document classification process model](#part-4-build-the-classification-process).

## Scenario

Acme Logistics is a shipping and receiving company that manages inventory for its customers. In addition to physical items, Acme has to manage and act on documents such as invoices and purchase orders.

Different teams need to approve the different document types: the fulfillment department is responsible for approving purchase orders, while the accounts payable department approves invoices. Customers submit these documents through Acme's website, so all documents have one submission channel.

It takes time to analyze each incoming document and know which department should be notified, so Acme is eager to see how Appian can help. In this tutorial, you'll build a process to classify the submitted documents and route them to the appropriate teams.

### Quick definitions

-   **Model**: The product of combining a [dataset](ai-glossary.html#data-set) with a machine learning [algorithm](ai-glossary.html#algorithm). A model is unique to a purpose which requires recognition, understanding, reasoning, and decision-making. For example, the model used to classify purchase orders isn't necessarily the same one that can recognize stop signs in a set of pictures.
    -   An AI skill can contain multiple models. When the AI skill is integrated in a process model, only the published model within that AI skill is used.
-   **Document type**: The categories of documents you want the AI skill to classify. In this tutorial, the document types are invoice and purchase order.
-   **Confidence**: Measures how sure the model is of its prediction. Confidence is calculated per document. Most decisions (made by humans or computers) can vary in confidence.

## Setup

Before you start this tutorial, complete the following setup.

### Create an application

First, you need to create an application to contain the design objects you'll create in this tutorial. You can use the [Application Building Tutorial](Application_Building_Tutorial.html#create-the-appian-tutorial-application) to quickly create an application for this exercise.

If you have an existing application, you can use that instead.

**Tip:**  Objects in this tutorial use the `AT` prefix. If you're creating objects in an application that uses a different prefix, use your application's prefix in new object names.

### Download example documents

Before the AI skill can serve its purpose, it needs to learn a lot about the documents your business encounters. In your own applications, you'll need to [build a complete and representative dataset](collect-data.html) to train the model. The model can only learn from the documents you provide to it, so it's important to have a large number and variety of realistic examples.

For this tutorial, we've provided sample documents for you. Download the following files to your computer since you'll use them to train your AI skills:

-   [Purchase Orders](downloadables/TutorialPurchaseOrders.zip)
-   [Invoices](downloadables/TutorialInvoices.zip)

Unzip the compressed folders, as you'll need to upload the documents individually and not as a ZIP file.

### System requirements

This tutorial is designed to be used with Appian 25.2 and later.

## Part 1: Create AI skill

First, you'll create an [AI skill](ai-skill-object.html). This AI skill takes a document as an input and uses machine learning to classify that document.

To create this AI skill:

1.  In your application, go to the **Build** view.
2.  In the application toolbar, click **NEW** > **AI Skill**. The **Create AI Skill** dialog displays.
3.  Expand the **Classification** section and choose **Documents**.
4.  Configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT_IncomingDocument`. |
    | **Description** | Enter `AI skill to classify documents Acme receives.` |

5.  Click **CREATE**.
6.  In the **Review AI Skill Security** dialog, keep the default settings.
    -   The **AT Users** group should be assigned **Viewer** permissions.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
7.  Click **SAVE**.

### Create document types

In this step, you'll begin telling the document classification skill about each type of document that is typically attached to a form submission.

You'll need to train the model to recognize whether a document is an invoice or a purchase order. To do that, you'll create a document type and add examples of those documents.

To create a document type:

1.  In your new AI skill, click **\+ CREATE FIRST MODEL**.
2.  Click **\+ NEW DOCUMENT TYPE**.
3.  In the **Document Type Name**, enter `Invoice`.
4.  Click **UPLOAD**.
5.  Browse for and select the [Invoice documents you downloaded earlier](#download-example-documents).

    [![Invoice document type](images/tutorial-invoice.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img912)

    [![](images/tutorial-invoice.png)](#_)

6.  After the documents finish uploading, click **CREATE AND ADD ANOTHER** to create this document type and add another document type.
7.  In the **Document Type Name**, enter `Purchase Order`.
8.  Click **UPLOAD** to add training documents.
9.  Browse for and select the [Purchase Order documents you downloaded earlier](#download-example-documents).
10.  After the documents finish uploading, click **CREATE**.
11.  Click **SAVE**.

### Train the model

Once you finish creating the document types, you'll need to train the model.

From the **Create Model** page, click **TRAIN MODEL**.

**Note:**  If this option is unavailable, check that you've met all of the requirements for the example documents and that you've saved your changes. The AI skill checks your documents as you upload them.

Training takes a few minutes to complete. While you wait, proceed to the next step.

[![images/tutorial-incoming-document-skill.png](images/tutorial-incoming-document-skill.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img913)

[![](images/tutorial-incoming-document-skill.png)](#_)

## Part 2: Create a record type to manage documents

Now, you'll create a record type to manage the different documents submitted by customers. Since there are different types of documents that can be submitted, you'll also create a related record type to store a list of document types.

To create these record types:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Record Type**.
3.  In **Create Record Type**, configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT Order Document`. |
    | **Display Name (Plural)** | Keep the default display name of `Order Documents`. |
    | **Description** | Enter `A record type to manage documents uploaded to Acme Logistics.` |

4.  Click **CREATE**.
5.  In the **Review Record Type Security** dialog, keep the default settings.
    -   The **AT Users** group should be assigned **Viewer** permissions.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
6.  Click **SAVE**. The record type opens in a new tab.
7.  Click **TELL US ABOUT YOUR DATA**. The **Configure Data Source** dialog opens.
8.  Click **New Data Model**.
9.  Click **NEXT**.
10.  For **Data Source**, select the relational database where Appian will create your table. If your environment contains a single relational database, that database is selected and cannot be unselected.
11.  Click **NEXT**.
12.  Click **X** next to the following fields to remove them from the data model:

     -   `createdBy`
     -   `createdOn`
     -   `modifiedBy`
     -   `modifiedOn`

     **Tip:**  We won't use these fields in this tutorial; however, in your own applications, you should consider keeping these fields so you can easily track when data is created and updated, and by whom.

13.  Click **NEW FIELD** and configure the following:
     -   Enter `document` for the field name.
     -   Select **Document** as the data type.
     -   For **Will This Record Type only Store Documents?**, keep **Yes** selected and click **DONE**.
14.  Click **NEW FIELD** and configure the following:
     -   Enter `isApproved` for the field name.
     -   Select **Boolean** as the data type.
15.  Click **NEW CHOICE LIST**.
16.  In the **Add Choice List Field** dialog, configure the following:
     -   For **Name**, enter `AT Order Document Type`.
     -   For **List Items**, copy and paste the following:

         ```
         1
         2
         3
         Invoice
         Purchase Order
         Unknown
         ```

17.  Click **CREATE CHOICE LIST**. The AT Order Document Type record type is created, and a field of type Number (Integer) is added to the AT Order Document record type to create a many-to-one relationship to AT Order Document Type.
18.  Click **NEXT**.
19.  Click **NEXT** again since you won't add any additional relationships. The record type will already have two relationships:

     -   A many-to-one relationship to the AT Order Document Type record type.
     -   A many-to-one relationship to the [Document record type](about-doc-management.html).

     **Tip:**  In a real application, this record type would likely have a relationship to an Order record type, where core order information is stored, like the customer who submitted it, the assigned account executive, and the warehouse where the order will be fulfilled. For the purposes of this tutorial, we're only creating relationships to these two record types.

20.  Keep the **Create Table** checkbox checked and click **SAVE CHANGES**.
21.  Click **CLOSE**.

[![Order Document record type](images/tutorial-document-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img914)

[![](images/tutorial-document-record-type.png)](#_)

## Part 3: Create additional design objects

Next, you'll create the following objects to use in the process model:

-   A start form, which will allow users to upload documents.
-   A task form, which will allow users in the Fulfillment department to review a purchase order.
-   A group for the fulfillment department.
-   A group for accounts payable.

### Create a start form

You need to create a start form to allow Acme's customers to upload invoices.

To create this form:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Interface**.
3.  Configure the following fields:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT_IntakeForm`. |
    | **Description** | Enter `Interface to allow vendors to upload documents.` |
    | **Save In** | Keep the default folder selection of **AT Rules & Constants**. |

4.  Click **CREATE**.
5.  In the **Rule Inputs** pane, click **New Rule Input** and configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `document`. |
    | **Type** | Select the **Document** data type. |

6.  Click **CREATE**.
7.  In the templates panel, find the **FORMS** section and select **Form with Simple header**.
8.  Remove the section layout that has a title of **Section**.
9.  Click the **Simple Header Template** component.
10.  In the **COMPONENT CONFIGURATION**, configure the following:

     | Parameter | Action |
     | --- | --- |
     | **Title** | Enter `Submit to Acme Logistics`. |
     | **Secondary Text** | Enter `Thank you for contacting Acme! Upload your document and we'll be in touch.` |

11.  In the **Section Layout** component, drag and drop a **FILE UPLOAD** component from the palette.
12.  Click the **File Upload** component.
13.  In the **COMPONENT CONFIGURATION**, hover over the **Target Folder** and click **Edit as Expression**.
14.  In the expression box, enter the following:

     **Note:**  Record type references are specific to each record type and environment, so you'll need to reference the record type from your own environment whenever you copy and paste a record type reference from outside the application.

     ```
     1
     2
     3
      a!documentFolderForRecordType(
          recordType: recordType!AT Order Document
      )
     ```

15.  Click **OK**.
16.  For **Maximum Selection**, enter `1`.
17.  For **Selected Files**, use the dropdown to select **ri!document**.
18.  For **Save Files To**, use the dropdown to select **ri!document**.
19.  Select the **Required** checkbox.
20.  Click **SAVE**.

[![images/tutorial_classification_start_form.png](images/tutorial_classification_start_form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img915)

[![](images/tutorial_classification_start_form.png)](#_)

### Create a task form

In this step, you'll create a form to display as part of a user input task. This form will allow accounts payable or the fulfillment department to approve or reject a submitted document.

To create the task form:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Interface**.
3.  Configure the following fields:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT_reviewTask`. |
    | **Description** | Enter `Interface to review the customer submitted document.` |
    | **Save In** | Keep the default folder selection of **AT Rules & Constants**. |

4.  Click **CREATE**.
5.  In the **Rule Inputs** pane, click **New Rule Input** and configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `record`. |
    | **Type** | Select `AT Order Document (record type)`. |

6.  Click **CREATE**.
7.  In the templates panel, find the **FORMS** section and select **Form with Simple header**.
8.  Remove the following component and rule input since you won't use them in your process:
    -   Click the `cancel` rule input and click **DELETE**. Users won't be able to cancel this action since they must either approve or reject the document.
    -   Remove the section layout that has a title of **Section**.
9.  Click the **Simple Header Template** component.
10.  In the **COMPONENT CONFIGURATION**, configure the following:

     | Parameter | Action |
     | --- | --- |
     | **Title** | Enter `Review Document`. |
     | **Secondary Text** | Enter `Someone submitted a document via Acme's website. Review the document before approving.` |

11.  Drag and drop a **DOCUMENT VIEWER** component in the **Section Layout** component.
12.  Click the **Document Viewer** component.
13.  In the **COMPONENT CONFIGURATION**, configure the following properties:

     | Property | Action |
     | --- | --- |
     | **Label Position** | Select **Hidden**. |
     | **Document** | Click **Edit as Expression** and enter `ri!record[recordType!AT Order Document.fields.document]`. |

14.  Click **OK**.
15.  Click the **SUBMIT** button.
16.  In the **COMPONENT CONFIGURATION**, configure the following properties:

     | Property | Action |
     | --- | --- |
     | **Label** | Enter `Approve`. |
     | **Value** | Click **Edit as Expression**. In the expression box, enter `true` and click **OK**. |
     | **Save Value To** | Select **ri!record** > **isApproved**. This appears as `ri!record[AT Order Document.fields.isApproved]`. |

17.  Click the **CANCEL** button.
18.  In the **COMPONENT CONFIGURATION**, configure the following properties:

     | Property | Action |
     | --- | --- |
     | **Label** | Enter `Reject`. |
     | **Value** | Click **Edit as Expression**. In the expression box, enter `false` and click **OK**. |
     | **Save Value To** | Select **ri!record** > **isApproved**. This appears as `ri!record[AT Order Document.fields.isApproved]`. |

19.  Click **SAVE**.

Since there isn't any data in the AT Order Document record type yet, the document viewer will be blank.

[![images/tutorial-po-task-form.png](images/tutorial-po-task-form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img916)

[![](images/tutorial-po-task-form.png)](#_)

### Create a group for the fulfillment department

In this step, you'll create a group for the fulfillment department. You'll also create a constant for the group so you can reference it in your process model.

To create the fulfillment department group and constant:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Group**.
3.  Configure the followings:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT Fulfillment Department`. |
    | **Description** | Enter `Group of all users in the fulfillment department.` |
    | **Group Members** | Enter your username. |

4.  Click **CREATE**.
5.  In the **Review Group Security** dialog, keep the default settings.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
6.  Click **SAVE**.
7.  Click **NEW** > **Constant**.
8.  Configure the following:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT_GROUP_FULFILLMENT_DEPT`. |
    | **Type** | Select **Group**. |
    | **Value** | Search and select the **Fulfillment Department**. |
    | **Save In** | Keep the default folder selected. |

9.  Click **CREATE**.

### Create a group for accounts payable

You'll also create a group and constant for the accounts payable department.

To create the accounts payable group and constant:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Group**.
3.  Configure the followings:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT Accounts Payable`. |
    | **Description** | Enter `Group of all users in Accounts Payable.` |
    | **Group Members** | Enter your username. |

4.  Click **CREATE**.
5.  In the **Review Group Security** dialog, keep the default settings.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
6.  Click **SAVE**.
7.  Click **NEW** > **Constant**.
8.  Configure the following:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT_GROUP_ACCOUNTS_PAYABLE`. |
    | **Type** | Select **Group**. |
    | **Value** | Search and select the **Accounts Payable**. |
    | **Save In** | Keep the default folder selected. |

9.  Click **CREATE**.

## Part 4: Build the classification process

With your objects created and configured, you can start building your end-to-end process.

The following instructions walk you through how to publish your document classification model and configure the process model below.

[![Fully built process](images/tutorial-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img917)

[![](images/tutorial-process.png)](#_)

### Publish the document classification model

Before you create the process model to classify documents, you'll need to publish your document classification model.

Publishing the model will make it available to use in the [Classify Documents smart service](#configure-the-classify-documents-smart-service) in the process model.

To publish the model:

1.  Open the **AT\_IncomingDocument** AI skill.
2.  Under **Unpublished Models**, click **PUBLISH**.

    [![Training metrics](images/tutorial-training-metrics.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img918)

    [![](images/tutorial-training-metrics.png)](#_)

3.  Click **SAVE**. The model should now appear under **Published Models**.

    [![Publish the model](images/tutorial-publish-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img919)

    [![](images/tutorial-publish-model.png)](#_)

### Create the process model

Now that the document classification model can be called from a smart service, let's build the process that will use the published model in this AI Skill.

To create the process model:

1.  In the application toolbar, click **NEW** > **Process Model**.
2.  Configure the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `AT Document Intake`. |
    | **Description** | Enter `Process to collect and verify incoming documents from Acme customers.` |
    | **Save In** | Keep the default folder selected. |

3.  Click **CREATE**.
4.  In the **Review Process Model Security** dialog, keep the default settings.
    -   The **AT Users** group should be assigned **Viewer** permissions.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
5.  Click **SAVE**.
6.  From the **File** menu, click **Properties**.
7.  In the **Process Model Properties** dialog, go to the **Variables** tab.
8.  Create the following process variables:

    | Name | Type | Value | Parameter? | Required? | Multiple? |
    | --- | --- | --- | --- | --- | --- |
    | `cancel` | Boolean | Blank | Yes | No | No |
    | `docType` | Number (Integer) | Blank | No | No | No |
    | `document` | Document (Data Type) | Blank | Yes | No | No |
    | `record` | AT Order Document (Record Type) | Blank | No | No | No |

### Configure the start form

Next, you'll configure the start form:

1.  In the **Process Model Properties** dialog, go to the **Process Start Form** tab.
2.  In the **Interface** text box, enter `AT`.
3.  Select `AT_intakeForm` when it displays in the dropdown list.
4.  Click **No** in the **Create Process Parameters** dialog since you already created all of the variables in the previous step.

    The rule inputs from the interface are automatically mapped to the process variables created earlier.

    [![Configure the start form](images/tutorial-config-start-form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img920)

    [![](images/tutorial-config-start-form.png)](#_)

5.  Click **OK** to return to the process model.
6.  In the menu bar, click **File > Save & Publish**.

### Configure the Classify Documents smart service

After defining your start form and process variables, the first node to add to the process is the [**Classify Documents**](Classify_Documents_Smart_Service.html) smart service.

This smart service will return predictions for each document type, grouped by the model's confidence in those predictions. You'll save the results of the document classification into process variables so you can reference them later in the process.

To configure the smart service:

1.  From the palette, drag in a **Classify Documents** node.

    [![images/tutorial-classification-node.png](images/tutorial-classification-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img921)

    [![](images/tutorial-classification-node.png)](#_)

2.  Open the **Classify Documents** node.
3.  Go to the **Setup** tab.
4.  Under **Select AI Skill**, select the `AT_IncomingDocument` skill you created earlier.
5.  Go to the **Data** tab.
6.  On the **Inputs** tab, configure the inputs with the following values:

    | Input | Action |
    | --- | --- |
    | **Document** | For **Value**, click **Edit as Expression** and enter `pv!document`. |
    | **Confidence Threshold** | For **Value**, enter `60` |

7.  On the **Outputs** tab, configure the outputs with the following values:

    | Output | Action |
    | --- | --- |
    | **AboveThreshold** | For **Target**, click **New process variable**. This will automatically create a process variable called `AboveThreshold` with a type of **ClassificationResult**.

    Click **OK** to set the **Target** to this process variable. |
    | **BelowThreshold** | For **Target**, click **New process variable**. This will automatically create a process variable called `BelowThreshold` with a type of **ClassificationResult**.

    Click **OK** to set the **Target** to this process variable. |
    | **Failed** | For **Target**, click **New process variable**. This will automatically create a process variable called `Failed` with a type of **ClassificationResult**.

    Click **OK** to set the **Target** to this process variable. |

8.  Click **OK** to return to the process model.
9.  In the menu bar, click **File > Save & Publish**.

### Assign document and type to the record process variable

After the AI skill classifies the document type, you want to assign the document identifier and type to the `record` process variable. This will allow you to write these values to the AT Order Document later.

To assign the document identifier and type to the `record` process variable:

1.  From the palette, drag in a [**Script Task**](Configuring_the_Script_Task.html) node and place it after the **Classify Documents** node.

    [![images/tutorial-script-task-node.png](images/tutorial-script-task-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img922)

    [![](images/tutorial-script-task-node.png)](#_)

2.  Open the **Script Task**.
3.  For **Name**, enter `Assign Doc and Type to Record`.
4.  Go to the **Data** tab.
5.  On the **Outputs** tab, click **\+ New Custom Output**.
6.  For **Expression**, click **Edit as Expression**.
7.  Enter the following expression. This will determine which value to write to the record type depending on the classification type. If the classification is below the threshold, no type will be written.

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    if(
       pv!BelowThreshold,
       3,
       if(
         pv!AboveThreshold.type = "Invoice",
         1,
         2
      )
    )
    ```

8.  Click **SAVE AND CLOSE**.
9.  For **Target**, choose **record** > **typeId**. This will appear as `record.typeId`.
10.  Click **\+ New Custom Output**.
11.  For **Expression**, click **Edit as Expression**.
12.  Enter `pv!document`.
13.  Click **SAVE AND CLOSE**.
14.  For **Target**, choose **record** > **document**. This will appear as `record.document`.
15.  Click **OK**.

### Write the document identifier and type

Next, you'll add a [Write Records](Write_Records_Smart_Service.html) node to write the document identifier and type to the AT Order Document record type.

To write the document identifier and type:

1.  From the palette, drag in a **Write Records** node and place it after the **Assign Doc Type to Record** node.

    [![images/tutorial-write-purchase-order-node.png](images/tutorial-write-purchase-order-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img923)

    [![](images/tutorial-write-purchase-order-node.png)](#_)

2.  Open the **Write Records** node.
3.  For **Name**, enter `Write Document and Type`.
4.  Go to the **Setup** tab.
5.  For **Records Input**, select the **record** process variable. The **Record Type** field will automatically populate with the AT Order Document record type.

    **Note:**  Since the record type does not have record events configured, no events will be written.

6.  Go to the **Data** tab and select the **Outputs** tab.
7.  For **Records Updated**, set the **Target** to **record**.
8.  Click **OK**.

### Build additional paths

Next, you'll add a [gateway](Gateways.html) to the process so you can specify which action to take depending on the outcome of the document classification.

To add a gateway:

1.  From the palette, drag in an **XOR** node and place it after the **Write Document and Type** node.

    [![images/tutorial-xor-classification-node.png](images/tutorial-xor-classification-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img924)

    [![](images/tutorial-xor-classification-node.png)](#_)

2.  Open the **XOR** node.
3.  For **Name**, enter `Classification result?`
4.  Click **OK**.

You'll create two paths:

-   If the classification is above the threshold, [send a user input task to the correct department](#notify-the-appropriate-department).
-   If the classification is below the threshold, [notify the analyst](#notify-the-analyst) and ask for manual verification.

#### Notify the appropriate department

In this path, you'll add a [User Input Task](Configuring_the_User_Input_Task.html) to assign a review document task to either the fulfillment department or accounts payable depending on how the document was classified.

After the User Input Task, you'll write the approval status to the AT Order Document record type to indicate whether the document was approved or rejected.

To create this path:

1.  From the palette, drag in a **User Input Task** and place it after the **Classification result?** node.

    [![images/tutorial-user-input-classification-node.png](images/tutorial-user-input-classification-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img925)

    [![](images/tutorial-user-input-classification-node.png)](#_)

2.  Open the **User Input Task**.
3.  On the **General** tab, configure the following:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter `Send Doc for Approval`. |
    | **Description** | Enter `Notifies the appropriate department that there is a new document ready for review and approval.` |
    | **Task Display Name** | Enter `New document received`. |
    | **Default Task Priority** | Select **Normal**. |

4.  Go to the **Forms** tab.
5.  For **Interface**, search and select `AT_reviewTask`.
6.  Click **Yes** to create an activity class parameter. The **record** rule input from the interface should be mapped to the **record** process variable.
7.  Go to the **Data** tab.
8.  In the **Inputs** tab, click the **record** input and configure the following:
    -   For **Value**, enter `pv!record`.
    -   For **Save into**, select the **record** process variable.
9.  Go to the **Assignment** tab.
10.  For **Assign to the following**, click **Edit as Expression**.
11.  In the expression editor, enter the following. This will send the document to accounts payable if the document is an invoice, or to the fulfillment department if it's a purchase order.

     **Note:**  Record type references are specific to each record type and environment, so you'll need to reference the record type from your own environment whenever you copy and paste a record type reference from outside the application.

     ```
     1
     2
     3
     4
     5
     =if(
        pv!record[recordType!AT Order Document.fields.typeId] = 1,
        cons!AT_GROUP_ACCOUNTS_PAYABLE,
        cons!AT_GROUP_FULFILLMENT_DEPT
      )
     ```

12.  Click **SAVE AND CLOSE**.
13.  Click **OK**.
14.  From the palette, drag in a **Write Records** and place it after the **Send Doc for Approval** node.

     [![images/tutorial-write-reviewed-doc-node.png](images/tutorial-write-reviewed-doc-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img926)

     [![](images/tutorial-write-reviewed-doc-node.png)](#_)

15.  Open the **Write Records** node.
16.  For **Name**, enter `Write Approval Status`.
17.  Go to the **Setup** tab.
18.  For **Records Input**, select the **record** process variable. The **Record Type for Events** field will automatically populate with the AT Order Document record type.
19.  Click **OK**.

#### Notify the analyst

Next, you'll create a path to follow when the model's prediction aren't up to your standards (that is, the model isn't very confident in its predictions).

In this path, you'll notify an analyst if any predictions fall below the threshold, so they can review the document manually.

To create this path:

1.  Add a second flow connector between the **Classification result?** and **End** nodes.
2.  From the palette, drag in a **Send Email** node and place it on the connector between **Classification result?** node and the **End** node.

    [![images/tutorial-send-email-node.png](images/tutorial-send-email-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img927)

    [![](images/tutorial-send-email-node.png)](#_)

3.  Open the **Send Email** node.
4.  For **Name**, enter `Notify Analyst`.
5.  Go to the **Setup** tab.
6.  For **Email Configuration**, configure the following:

    | Property | Value |
    | --- | --- |
    | **From** | Select **Process Model**. |
    | **To** | Enter your email. |
    | **Subject** | Enter `For Review: Document type prediction below threshold.` |

7.  For **Message Body**, click **Insert An Expression** and enter the following:

    ```
    1
    2
    3
    4
    5
    "Dear Analyst, the following document type was predicted with a confidence level before your threshold. Review the prediction to confirm it's correct." & char(10),
    char(10),
    "Document: " & pv!document,
    char(10),
    "Predicted type: " & pv!BelowThreshold.type
    ```

8.  Click **SAVE AND CLOSE**.
9.  Click **OK**.

    **Tip:**  In a real application, you may add nodes after the Send Email email node to identify and fix the document's classification. For the purposes of this tutorial, we're just demonstrating a potential alternative path for when the classification isn't confident enough.

#### Configure the gateway node

Now that you've built the possible paths, you can configure the gateway to direct the process model to any of them based on the results of the **Classify Documents** smart service.

To configure the gateway:

1.  Open the **Classification Result?** node.
2.  Go to the **Decision** tab.
3.  Click **NEW CONDITION** and configure the following:

    | Property | Action |
    | --- | --- |
    | **Condition** | Click **Edit as Expression** and enter `a!isNotNullOrEmpty(pv!BelowThreshold)`.

    Click **SAVE AND CLOSE**. |
    | **Result** | Select **Notify Analyst**. |
    | **Path Label** | Enter `Low confidence`. |

4.  In the **Else if no rules are TRUE** row, set the **Result** to the **Send Doc for Approval** node.
5.  Click **OK**.
6.  In the menu bar, click **File > Save & Publish**.

That's it! Your process should look like this:

[![Fully built process](images/tutorial-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img928)

[![](images/tutorial-process.png)](#_)

## Test the process

Now that you've finished creating your process model, you can run it a few times to test the different AI skills.

To verify each path, you should try classifying both types of documents.

To test the process model above:

1.  From the **File** menu, click **Start Process for Debugging**.
2.  Use the form to upload an invoice or purchase order document.
3.  Click **SUBMIT**. The monitoring tab for the process displays.
4.  Click **Refresh** in the toolbar to watch the process advance through each node.

    **Note:**  The **Classify Documents** smart service may take a few minutes to complete.

5.  Observe the path the process took, and click **Process Details** in the toolbar.
6.  In the **Process History** tab, verify that the **Classify Documents** node ran successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...