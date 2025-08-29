---
source_url: https://docs.appian.com/suite/help/25.3/doc-extraction-tutorial.html
original_path: doc-extraction-tutorial.html
version: "25.3"
title: "Tutorial: Build a Document Extraction Process"
page_id: "doc-extraction-tutorial"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tutorial: Build a Document Extraction Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Estimated time to complete this tutorial**: 1 hour

**User experience level**: Beginner

## Overview

In this tutorial, you'll build an Appian process model that uses an [AI skill to extract data](create-skill-doc-extraction.html) from a document. Then, you'll send a task to someone to [reconcile the extracted data](completing-a-reconciliation-task.html), and save it as a new record in a record type.

[![images/doc_extraction/doc_extraction_tutorial_process.png](images/doc_extraction/doc_extraction_tutorial_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img929)

[![](images/doc_extraction/doc_extraction_tutorial_process.png)](#_)

This process model relies on a series of nodes that leverage artificial intelligence (AI) to map fields from a document to fields in a record type. Once the data is extracted, users can confirm or correct the results using a simple task interface. As you test your process model and reconcile results, the extraction will become smarter and more accurate over time.

This page walks you through how to create your own document extraction process:

1.  [Create a document extraction AI skill](#part-1-create-ai-skill) and define your document structure.
2.  [Create record types](#part-2-create-record-types-to-store-extracted-data) to map and save the document and the extraction results.
3.  [Create additional design objects](#part-3-create-additional-design-objects), like a start form and group, to use in your process model.
4.  Configure a basic [document extraction process model](#part-4-build-the-document-extraction-process).

**Tip:**  Check out the [Document Classification Tutorial](doc-classification-tutorial.html) to build a process that classifies documents in addition to extraction.

## Scenario

Acme Logistics is a shipping and receiving company that manages inventory for its customers. In addition to physical items, Acme has to manage and act on documents such as invoices.

Acme wants to create a process model to extract data from invoices, which customers and vendors submit through Acme's website. Acme also wants to save this data in a record type, so they can easily build reports and interfaces using this data.

![invoice_example_extraction.png](images/doc_extraction/invoice_example_extraction.png)

## Setup

Before you start this tutorial, complete the following setup.

### Create an application

First, you need to create an application to contain the design objects you'll create in this tutorial. You can use the [Application Building Tutorial](Application_Building_Tutorial.html#create-the-appian-tutorial-application) to quickly create an application for this exercise.

If you have an existing application, you can use that instead.

**Tip:**  Objects in this tutorial use the `AT` prefix. If you're creating objects in an application that uses a different prefix, use your application's prefix in new object names.

### Download example documents

Before the AI skill can serve its purpose, it needs to learn a lot about the documents your business encounters. In your own applications, you'll need to [build a complete and representative dataset](collect-data.html) to train the model. The model can only learn from the documents you provide to it, so it's important to have a large number and variety of realistic examples.

For this tutorial, we've provided a set of sample [Invoices](downloadables/TutorialInvoices.zip). Download these files to your computer, since you'll use them to setup and train the AI skill. Unzip the compressed folders, as you'll need to upload the documents individually and not as a ZIP file.

### System requirements

This tutorial is designed to be used with Appian 25.2 and later.

## Part 1: Create AI skill

First, you'll create an [AI skill](create-skill-doc-extraction.html). This AI skill takes a document as input and uses machine learning to extract data from that document.

To create a document extraction AI skill:

1.  In your application, go to the **Build** view.
2.  In the application toolbar, click **NEW** > **AI Skill**. The **Create AI Skill** dialog displays.
3.  Expand the **Extraction** section and choose **Document**.
4.  Choose **Semi or Highly Structured**.
5.  Configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `AT_ExtractInvoice` |
    | **Description** | (Optional) `AI skill to extract data from invoices Acme receives.` |

6.  Click **CREATE**.
7.  In the **Review AI Skill Security** dialog, keep the default settings.
    -   The **AT Users** group should be assigned **Viewer** permissions.
    -   The **AT Administrators** group should be assigned **Administrator** permissions.
8.  Click **SAVE**.

### Create a model and add documents

Now, you'll create a model and add examples of a typical invoice.

To start creating the model:

1.  In your new AI skill, click **\+ CREATE FIRST MODEL**.
2.  For **Document Layout**, keep **Semi-structured** selected.
3.  For **Documents**, click **UPLOAD** to add all training documents.
4.  After the documents finish uploading, click **NEXT**.

[![Add documents to the AI skill](images/doc_extraction/tutorial/tutorial-add-documents.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img930)

[![](images/doc_extraction/tutorial/tutorial-add-documents.png)](#_)

### Define the invoice structure

Next, you'll define the fields you want to extract from the document, and the type of data those fields will contain. You should provide the fields that appear on most invoices.

To define which fields to extract:

1.  In the **Field Name**, enter `name`. Keep the data type as **Text**.
2.  Click **Add Field** six more times, so you have a total of seven fields. Keep the default data type of `Text` for all fields.
3.  Enter the following field names:
    -   `email`
    -   `phone`
    -   `address`
    -   `invoiceNumber`
    -   `date`
    -   `total`
4.  Click **Add Field** again.
5.  For **Field Name**, enter `items` and select the data type `Table`.
6.  In the nested table fields that appear below `items`, add three additional table fields so you have a total of four fields. Keep the default data type of `Text` for all fields.
7.  Enter the following field names:
    -   `quantity`
    -   `description`
    -   `unitPrice`
    -   `amount`
8.  Click **NEXT**.

[![Document structure](images/doc_extraction/tutorial/tutorial_doc_structure.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img931)

[![](images/doc_extraction/tutorial/tutorial_doc_structure.png)](#_)

### Label field data

Once you define which fields to extract, you'll indicate where those fields appear in the sample documents. This process is called _labeling_ and it helps the model learn more about where these fields appear in your documents.

To label field data:

1.  In the document preview, click and drag your mouse around the company name to create a selection box.
2.  In the dropdown that appears, click **name**.
3.  Repeat steps 1 and 2 until you've labeled values for all fields in your [invoice structure](#define-the-invoice-structure).

    As you label values, note that you do not need to capture the field label on the invoice in your selection box. For example, in the image below, we are only labeling the value $2,863.99, not the text **Total Due**.

    **Note:**  You won't label the fields in the `items` table, but that information will still be extracted.

    [![Example showing the specific area of the document to label](images/doc_extraction/tutorial/label-values-not-field-labels.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img932)

    [![](images/doc_extraction/tutorial/label-values-not-field-labels.png)](#_)

4.  Above the document preview, click **NEXT** to label fields in the other sample documents. You should label all 28 sample invoices to get the most accurate results from this tutorial.

    [![Label fields in the sample documents](images/doc_extraction/tutorial/tutorial-label-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img933)

    [![](images/doc_extraction/tutorial/tutorial-label-fields.png)](#_)

5.  Click **SAVE**.
6.  Click **REVIEW**.

    **Note:**  Each field will need labels in at least half of the documents you uploaded. If you haven't labeled enough fields in the set of documents you uploaded, you'll see a message encouraging you to add more files and fields.

7.  Click **TRAIN MODEL**. Training may take a few minutes.

While you wait, proceed to create the record types you'll use to store extracted data.

## Part 2: Create record types to store extracted data

When extracting data, Appian will identify key-value pairs from the document and map them to the fields of your desired data object (a [record type](Record_Type_Object.html) or [CDT](Custom_Data_Types.html)). In most cases, you'll use a record type.

The record type should be constructed to reflect the data available in your documents. If your documents contain a table, like the invoice documents that contains a table of items, you'll ultimately create two record types:

-   A record type that for the document.
-   A record type for the tables in the document.

In this step, you'll create two record types to store the extracted data: one record type for the invoice data, and another for the data in the `items` tables commonly found in invoices Acme receives.

Then, you'll create a [bi-directional relationship](build-best-data-fabric.html#create-bi-directional-record-type-relationships) between the record types, so you can write data to both record types in your process model.

### Create a record type for invoices

To create a record type for your invoice data, you'll need to add the fields from your AI skill as fields in your record type.

You'll also add a field of type [Document](Appian_Data_Types.html#document) to this record type so you can manage the invoice documents uploaded to Appian using the record type.

To create a record type for invoices:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Record Type**.
3.  In **Create Record Type**, configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `AT Invoice` |
    | **Display Name (Plural)** | `Invoices` |
    | **Description** | `Manage invoice data sent to Acme Logistics.` |

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

13.  Next to the `id` field, click ![Add Multiple Fields](images/Create_Record_Type/add-multiple.png) **Add Multiple Fields**.
14.  In the **Add Multiple Fields** dialog, enter `7`.
15.  Click **ADD**.
16.  In the new fields, configure the following:

     | Name | Data Type |
     | --- | --- |
     | `invoiceNumber` | `Number (Integer)` |
     | `name` | `Text` |
     | `email` | `Text` |
     | `phone` | `Text` |
     | `address` | `Text` |
     | `date` | `Text` |
     | `total` | `Text` |

     **Note:**  In this tutorial, we're setting the data type for fields like `date` and `total` to Text since the invoices use different date formats and currency.

     In a real application, you could then use [functions](Appian_Functions.html) to extract and transform these values to use consistent date formats and currency. If the invoices all used the same format for date and currency, you could set these types of fields to type Date and Number (Decimal) instead.

17.  Click **NEW FIELD** and configure the following:
     -   Enter `document` for the field name.
     -   Select `Document` as the data type.
     -   For **Will This Record Type only Store Documents?**, keep **Yes** selected and click **DONE**.
18.  Click **NEXT**.
19.  Click **NEXT** again since you won't add any additional relationships. By default, the record type will have a relationship to the [Document record type](about-doc-management.html) since there is a field set to type Document.
20.  Keep the **Create Table** checkbox checked and click **SAVE CHANGES**.
21.  Click **CLOSE**.

Now that you have your record type for invoices, you'll create a record type for invoice items.

[![Record type to store an invoice](images/doc_extraction/tutorial/tutorial_record_invoice.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img934)

[![](images/doc_extraction/tutorial/tutorial_record_invoice.png)](#_)

### Create a record type for invoice items

While the [AT Invoice record type](#create-a-record-type-for-invoices) will store the extracted invoice data, like name, phone number, and invoice number, you need to create another record type to store the values extracted from the tables in an invoice.

Since the tables are related to the general invoice data, you will also add a relationship to the Invoice record type.

To create a record type for invoice items:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Record Type**.
3.  In **Create Record Type**, configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `AT Invoice Item` |
    | **Display Name (Plural)** | `Invoice Items` |
    | **Description** | `Stores the table data on invoices sent to Acme Logistics.` |

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
13.  Next to the `id` field, click ![Add Multiple Fields](images/Create_Record_Type/add-multiple.png) **Add Multiple Fields**.
14.  In the **Add Multiple Fields** dialog, enter `4`.
15.  Click **ADD**.
16.  In the new fields, configure the following:

     | Field | Data Type |
     | --- | --- |
     | `quantity` | `Number (Integer)` |
     | `description` | `Text` |
     | `unitPrice` | `Text` |
     | `amount` | `Text` |

     **Tip:**  Again, we are setting fields like `unitPrice` and `amount` to type Text since the invoices use different currencies for them.

17.  Click **NEXT**.
18.  Under **Suggested Record Types**, click **Invoice**. This will automatically create an `invoiceId` field to use as the [common field](record-type-relationships.html#common-field-values) in the relationship.
19.  Keep the default relationship configurations and click **ADD**.

     This will create a many-to-one relationship from the Invoice Item record type to the Invoice record type.

     [![Default relationship configurations](images/doc_extraction/tutorial/default-relationship-configurations.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img935)

     [![](images/doc_extraction/tutorial/default-relationship-configurations.png)](#_)

20.  Click **NEXT**.
21.  Keep the **Create Table** checkbox checked and click **SAVE CHANGES**.
22.  Click **CLOSE**.

[![Record type to store tabulated items in an invoice](images/doc_extraction/tutorial/tutorial_record_invoice_item.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img936)

[![](images/doc_extraction/tutorial/tutorial_record_invoice_item.png)](#_)

### Add a relationship between invoices and items

Now that you've set up record types for invoices and invoice items, you need to [add a relationship](record-type-relationships.html) between the Invoice record type and the Invoice Item record type.

In the last step, you added a relationship from the Invoice Item record type to the Invoice record type. Now, you can use a [suggested relationship](record-type-relationships.html#add-suggested-relationships) to easily set up a relationship from Invoice to Invoice Item.

To add a relationship between the Invoice record type and the Invoice Item record type:

1.  In your application, go to the **Build** view.
2.  In the list of design objects, open the **AT Invoice** record type.
3.  Under **Suggested Relationships**, click next to **AT Invoice Item** to automatically add a one-to-many relationship to the record type.

    [![Suggested relationships panel](images/doc_extraction/tutorial/suggested-invoice-item-relationship.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img937)

    [![](images/doc_extraction/tutorial/suggested-invoice-item-relationship.png)](#_)

4.  Click **SAVE**. The Invoice record type now has four relationships.

[![Set up a record type relationship between invoices and invoice table items](images/doc_extraction/tutorial/tutorial_relationship_invoice.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img938)

[![](images/doc_extraction/tutorial/tutorial_relationship_invoice.png)](#_)

## Part 3: Create additional design objects

Now that you have your record types, you'll create two additional objects to use in the process model:

-   A start form, which will allow users to upload documents.
-   An Analyst group, which will store certain users who will be responsible for reconciling the document extraction.

### Create a start form

You need to create a start form to allow Acme's customers to upload invoices.

To create this form:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Interface**.
3.  Configure the following fields:

    | Property | Value |
    | --- | --- |
    | **Name** | `AT_IntakeForm` |
    | **Description** | (Optional) `Interface to allow vendors to upload documents.` |
    | **Save In** | Keep the default folder selection of **AT Rules & Constants**. |

4.  Click **CREATE**.
5.  In the templates panel, find the **FORMS** section and select **Form with Simple header**.
6.  In the **Rule Inputs** pane, click **New Rule Input** and configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `invoice` |
    | **Type** | **Document** |

7.  Click **CREATE**.
8.  Remove the section layout that has a title of **Section**.
9.  In the live view, click the **Simple Header Template** component.
10.  In the **COMPONENT CONFIGURATION**, configure the following:

     | Parameter | Value |
     | --- | --- |
     | **Title** | `Submit to Acme Logistics` |
     | **Secondary Text** | `Thank you for contacting Acme! Upload your document and we'll be in touch.` |

11.  In the **Section Layout** component, drag and drop a **FILE UPLOAD** component from the palette.
12.  Click the **File Upload** component.
13.  In the **COMPONENT CONFIGURATION**, hover over the **Target Folder** and click **Edit as Expression**.
14.  In the expression box, enter the following:

     ```
     1
     2
     3
      a!documentFolderForRecordType(
          recordType: recordType!AT Invoice
       )
     ```

15.  Replace the record type reference with valid field references in your environment.
16.  Click **OK**.
17.  For **Maximum Selection**, enter `1`.
18.  For **Selected Files**, use the dropdown to select **ri!invoice**.
19.  For **Save Files To**, use the dropdown to select **ri!invoice**.
20.  Select the **Required** checkbox.
21.  Click **SAVE**.

[![Start form final configuration example](images/doc_extraction/tutorial/tutorial_start_form.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img939)

[![](images/doc_extraction/tutorial/tutorial_start_form.png)](#_)

### Create a constant for the analyst

Later, you'll add a node in the process model for the analyst to reconcile the extracted data. To assign that task, you'll first need to create a constant referencing the analyst.

To create a constant for the analyst:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Constant**.
3.  In **Create Constant**, configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Create from scratch** | Leave selected |
    | **Name** | `AT_ANALYST` |
    | **Description** | (Optional) `Constant pointing to the analyst at Acme Logistics.` |
    | **Type** | `User` |
    | **Value** | Select your username. |
    | **Save In** | Keep the default folder selected. |

4.  Click **CREATE**.

## Part 4: Build the document extraction process

With your objects created and configured, you can now start building your end-to-end process.

The following instructions walk you through how to configure the process model below.

[![images/doc_extraction/doc_extraction_tutorial_process.png](images/doc_extraction/doc_extraction_tutorial_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img940)

[![](images/doc_extraction/doc_extraction_tutorial_process.png)](#_)

As you build your process, you have the flexibility to incorporate other design objects and decisions that fit your specific business needs. See some [additional process configuration options](#additional-process-configuration-options) you can add to your own process model.

### Publish the document extraction model

Before you create the process model to extract documents, you'll need to publish your document extraction model.

Publishing the model will make it available to use in the Extract from Documents smart service in a process model.

To publish the model:

1.  Open the **AT\_ExtractInvoice** AI skill.
2.  Under **Unpublished Models**, click **PUBLISH**.
3.  Click **SAVE**. The model should now appear under **Published Models**.

### Create a process model

Now that the document extraction model can be called from a smart service, let's build the process that will use the published model in this AI Skill.

To create the process model:

1.  In the application toolbar, click **NEW** > **Process Model**.
2.  Configure the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `AT Invoice Extraction` |
    | **Description** | (Optional) `Process to extract invoice data from Acme vendors.` |
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
    | `docExtractionId` | Text | Blank | No | No | No |
    | `invoice` | Document (Data Type) | Blank | Yes | No | No |
    | `record` | AT Invoice (Record Type) | Blank | Yes | No | No |

### Configure the start form

Next, you'll configure the start form:

1.  In the **Process Model Properties** dialog, go to the **Process Start Form** tab.
2.  For **Interface**, enter `AT`.
3.  Select `AT_IntakeForm` when it displays in the dropdown list.
4.  Click **No** in the **Create Process Parameters** dialog since you already created all of the variables in the previous step.

    The `cancel` and `invoice` rule inputs from the interface are automatically mapped to the corresponding process variables.

5.  Click **OK**.
6.  In the menu bar, click **File** > **Save & Publish**.

### Configure the Extract from Document smart service

After defining your start form and process variables, the first node to add to the process is the [**Extract from Document**](Extract_from_Document_Smart_Service.html) smart service. This smart service takes the document as input, extracts the data, and returns the extracted data as output.

To configure the smart service:

1.  From the palette, drag in a [**Extract from Document**](Extract_from_Document_Smart_Service.html) node.

    [![images/doc_extraction/tutorial/add_doc_extraction_node.png](images/doc_extraction/tutorial/add_doc_extraction_node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img941)

    [![](images/doc_extraction/tutorial/add_doc_extraction_node.png)](#_)

2.  Open the **Extract from Document** node.
3.  Go to the **Setup** tab.
4.  Under **Select AI Skill**, select the `AT_ExtractInvoice` skill you created earlier.
5.  Go to the **Data** tab.
6.  On the **Inputs** tab, configure the inputs with the following values:

    | Input | Action |
    | --- | --- |
    | **Document** | For **Value**, enter `pv!invoice`. |
    | **Confidence Threshold** | For **Value**, enter `80` |

7.  On the **Outputs** tab, configure the outputs with the following values:

    | Output | Action |
    | --- | --- |
    | **Doc Extraction Id** | For **Target**, choose the **docExtractionId** process variable. |
    | **Extracted Data** | For **Target**, choose the **record** process variable. |
    | **Confidence Scores** | Leave the target blank. |

8.  Click **OK**.

### Configure the Reconcile Doc Extraction smart service

The next node you will configure is the [Reconcile Doc Extraction](Reconcile_Doc_Extraction_Smart_Service.html) smart service. This smart service will assign a [reconciliation task](completing-a-reconciliation-task.html) to a user to confirm or correct the extracted results.

To configure the smart service:

1.  From the palette, drag in a [**Reconcile Doc Extraction**](Reconcile_Doc_Extraction_Smart_Service.html) node and place it after the **Extract from Document** node.

    [![images/doc_extraction/tutorial/add_doc_reconcile_node.png](images/doc_extraction/tutorial/add_doc_reconcile_node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img942)

    [![](images/doc_extraction/tutorial/add_doc_reconcile_node.png)](#_)

2.  Open the **Reconcile Doc Extraction** node.
3.  Go to the **Data** tab.
4.  On the **Inputs** tab, configure the following:

    | Input | Action |
    | --- | --- |
    | **Doc Extraction Id** | For **Value**, choose the **docExtractionId** process variable. |

5.  On the **Outputs** tab, configure the following values:

    | Output | Action |
    | --- | --- |
    | **Reconciled Data** | For **Target**, choose the **record** process variable. |

6.  Go to the **Assignment** tab.
7.  For **Assign to the following**, click **Edit as Expression**.
8.  In the expression editor, enter `cons!AT_ANALYST`.
9.  Click **SAVE AND CLOSE**.
10.  Click **OK**.

### Assign the invoice document to the record process variable

Next, you need to ensure that the invoice document and the reconciled data are both written to the Invoice record type.

Before adding a Write Records node, you need to configure a script task to assign the invoice document to the `record` process variable.

To save the invoice document to the `record` process variable:

1.  From the palette, drag in a [**Script Task**](Configuring_the_Script_Task.html) node and place it after the **Reconcile Doc Extraction** node.

    [![images/doc_extraction/tutorial/add_script_task_node.png](images/doc_extraction/tutorial/add_script_task_node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img943)

    [![](images/doc_extraction/tutorial/add_script_task_node.png)](#_)

2.  Open the **Script Task** node.
3.  For **Name**, enter `Assign Doc to Record`.
4.  Go to the **Data** tab.
5.  On the **Outputs** tab, click **\+ New Custom Output**.
6.  For **Expression**, click **Edit as Expression**.
7.  Enter `pv!invoice`.
8.  Click **SAVE AND CLOSE**.
9.  For **Target**, choose **record** > **document**. This will appear as `record.document`.
10.  Click **OK**.

### Write reconciled data to the Invoice record type

Finally, you'll add a Write Records node to write the document and reconciled data to the Invoice record type.

1.  From the palette, drag in a **Write Records** node and place it after the **Assign Doc to Record** node.

    [![images/doc_extraction/tutorial/add_write_records_node.png](images/doc_extraction/tutorial/add_write_records_node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img944)

    [![](images/doc_extraction/tutorial/add_write_records_node.png)](#_)

2.  Open the **Write Records** node.
3.  For **Name**, enter `Write Invoice`.
4.  Go to the **Setup** tab.
5.  For **Record Input**, select the **record** process variable. The **Record Type** field will automatically populate with the AT Invoice record type.

    **Note:**  Since the record type does not have record events configured, no events will be written.

6.  Click **OK**.

### Add a cancel flow

It's a best practice to include a pathway in your process model in case the user clicks **Cancel** on the start form.

The start form is already configured to pass `true` to the `cancel` rule input if a user clicks this button. Now, you just need to add the cancel flow to the process.

To add a cancel flow:

1.  From the palette, drag in an [**XOR** gateway](XOR_Node.html) and place it on the connector between the **Start Node** and **Extract from Document** node.

    [![images/doc_extraction/tutorial/add_cancel_node.png](images/doc_extraction/tutorial/add_cancel_node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img945)

    [![](images/doc_extraction/tutorial/add_cancel_node.png)](#_)

2.  Add a connector from the **XOR** gateway to the **End Node**.
3.  Open the **XOR** gateway.
4.  For **Name**, enter `Cancel?`.
5.  Go to the **Decision** tab.
6.  Click **NEW CONDITION**.
7.  Click **Open the Expression Editor** next to the **Condition** field.
8.  In the **Expression Editor**, enter `pv!cancel`.
9.  Click **SAVE AND CLOSE**.
10.  In the **Result** field, select **End Node**.
11.  For **Else if no rules are TRUE**, select **Extract from Document** in the **Results** field.
12.  Click **OK**.
13.  In the menu bar, click **File** > **Save & Publish**.

That's it! Your process is set up to extract and write document data. It should look like this:

[![images/doc_extraction/doc_extraction_tutorial_process.png](images/doc_extraction/doc_extraction_tutorial_process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img946)

[![](images/doc_extraction/doc_extraction_tutorial_process.png)](#_)

## Test your process

After creating your process model, run it with a few samples to test the extraction and to see how your auto-extracted results change.

To test the document extraction process created above:

1.  Go to your process model.
2.  From the **File** menu, click **Start Process for Debugging**.
3.  Use the form to upload an invoice document.
4.  After the **Extract from Document** node completes, you should receive a task to [reconcile the extracted data](completing-a-reconciliation-task.html).

    **Note:**  The **Extract from Document** node may take a few minutes to complete.

5.  Return to the process model monitoring view to observe the results.

    [![images/doc_extraction/doc-extraction-success.png](images/doc_extraction/doc-extraction-success.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img947)

    [![](images/doc_extraction/doc-extraction-success.png)](#_)

6.  Go to the AT Invoice record type and verify the data was written correctly.

    -   In the **Data Preview** page, review the extracted data and ensure the document field has a valid document identifier associated with it.
    -   In the **Documents** page, view or download the invoice associated with the row of data.

    [![images/doc_extraction/documentId-extraction-tutorial.png](images/doc_extraction/documentId-extraction-tutorial.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img948)

    [![](images/doc_extraction/documentId-extraction-tutorial.png)](#_)

As you test, Appian uses the field names from the data type to find a match. Over time, Appian learns how to map your data to your data type fields from the user interactions with the [reconcile interface](completing-a-reconciliation-task.html).

Appian deletes document extraction runs after 30 days, or when the total amount of data surpasses 10 GB. If you attempt to access a run that has been deleted, you will see an error. Appian will not delete the documents you uploaded. Learn more about your [document's security](Appian_Doc_Extraction.html).

### Additional process configuration options

The process model detailed above provides the basic nodes needed to create an extraction process, but you aren't bound to this model. In fact, the major benefit of creating your own document extraction process is the flexibility to add additional rules or decisions that are specific to your business needs.

There a few ways you can enhance or modify this process, for example:

-   Dynamically skip reconciliation: After the **Extract from Document** smart service, you can use a **Script Task** to evaluate the extracted data.

    For example, you may want to validate that all fields were extracted, or that the extracted data meets your business validations. If your validations are met, you can use an **XOR** node to skip the **Reconcile Doc Extraction** smart service and write the extracted data directly to your record type, without any human review.

-   Use the two optional outputs in the **Reconcile Doc Extraction** smart service to route the process model after reconciliation:
    -   `isSubmit` is `true` when the user selects the **Submit** button on the [reconciliation task](completing-a-reconciliation-task.html). Add logic after this smart service to use `isSubmit=true()` to trigger an email notification or a confirmation dialog.
    -   `isException` is `true` when the user selects the **Mark as Invalid** button on the [reconciliation task](completing-a-reconciliation-task.html). Add logic after this smart service to use `isException=true()` to route to a chained user input task, where the user provides more information.

-   Add conditionality to the **Reconcile Doc Extraction** smart service to determine who should be assigned the reconciliation task based on certain business criteria or rules.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...