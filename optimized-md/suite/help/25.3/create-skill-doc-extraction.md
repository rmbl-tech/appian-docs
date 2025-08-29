---
source_url: https://docs.appian.com/suite/help/25.3/create-skill-doc-extraction.html
original_path: create-skill-doc-extraction.html
version: "25.3"
title: "Create a Document Extraction AI Skill"
page_id: "create-skill-doc-extraction"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Document Extraction AI Skill

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

This topic covers how to create an AI skill to extract text from documents using machine learning (ML) models.

A document extraction skill takes a document as input via the [**Extract from Document** smart service](Extract_from_Document_Smart_Service.html), analyzes the document, and returns a map of the text extracted from the document. You'll create a document extraction AI skill for each type of document you want to extract data from.

The Document Extraction skill takes care of digitizing your documents, even if they're scanned or image-based. It automatically applies Optical Character Recognition (OCR) to identify text so you can extract the information you need with ease.

**Tip:**  AI skills created before the 23.4 release use pre-trained models for document extraction. To create custom models for document extraction, create a new AI skill.

## Before you begin

Before setting up your AI Skill for document extraction, determine the type of documents you'll be working with. This decision will guide you toward the best extraction method for your needs:

-   **Structured or Semi-structured Documents**: If your documents have a consistent format with predictable fields (like forms, tables, or invoices), use [Semi or highly structured document extraction](#semi-or-highly-structured-documents). This method allows you to define specific fields for precise data extraction.

-   **Unstructured Documents**: If your documents are free-form—such as contracts or other text-heavy files without a fixed layout—or if you need to extract data from visual elements like checkboxes, charts, or images, use [Unstructured document extraction](#unstructured-documents). This method focuses on flexible prompt configuration to capture key information from varied formats and languages.

Your document type is the primary way you choose your extraction method. However, your choice can also be influenced by:

-   **Regional availability**: Structured document extraction and unstructured document extraction are available in [different regions](security-compliance.html#regional-availability). Review regional availability to select the option that best fits your needs.

-   **Document language**: [Structured document extraction](#language-support-for-semi-or-highly-structured-documents) and [unstructured document extraction](#language-support-for-unstructured-documents) support different languages. Review language support details for each of the above options to select the one that best fits your needs.

    | Language to extract | Structured documents | Unstructured documents |
    | --- | --- | --- |
    | English | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | French | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | German | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | Italian | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | Portuguese | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | Spanish | Supported | Supported with **Text only** and **Visual and text elements** options. |
    | Most other languages | Unsupported | Supported with **Visual and text elements** option. |

Choosing the right approach ensures that your extraction process is efficient and tailored to your document type.

## Semi or highly structured documents

This section covers the steps for extracting data from semi-structured or highly structured documents. These types of documents typically follow a consistent layout, with predictable fields and labels, making it easier to identify specific data points like names, dates, and values. By defining fields and configuring extraction parameters, you can tailor the model to accurately capture the information you need from these structured formats.

Follow the steps below to set up and refine your model for structured documents.

1.  [Create an AI skill](#create-skill-structured)
2.  [Provide documents](#2-provide-documents)
3.  [Add fields to extract](#3-add-fields-to-extract)
4.  [Label field data](#4-label-field-data)
5.  [Start training](#5-start-training)
6.  [Assess the results](#6-assess-the-results)
7.  [Train a new model](#7-train-a-new-model)
8.  [Publish the model](#8-publish-the-model)
9.  [Use the skill!](#use-skill-structured)

### 1\. Create an AI skill

The first step in setting up document extraction is to create an AI Skill. This skill acts as the foundation for processing your documents, allowing you to configure and fine-tune the model to recognize and extract the information you need.

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  In the **Extraction** section, select **Documents**.

    ![create-skill](images/create-ai-skill-doc-ex.png)

3.  Choose **Semi or Highly Structured** as the document type.

4.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

5.  Click **CREATE**.
6.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
7.  Click **SAVE**. The AI skill opens in a new dialog or window.
8.  Complete one of the following actions.
9.  Click **CREATE FIRST MODEL** to proceed and [provide documents](#2-provide-documents).

### 2\. Provide documents

The document extraction AI skill is powered by a machine learning model designed to extract data from documents businesses commonly receive or interact with, such as invoices, purchase orders, insurance claims, ID cards, and more.

Before you add the fields you want to extract, you need to upload samples that represent the document you want to extract data from. The model needs training documents to learn about the patterns or traits of the fields within the documents. The model also uses some of these training documents to test its knowledge after training.

The model can only learn from the documents you provide, so be sure to [build a comprehensive and diverse set of documents](collect-data.html) that represent what you expect to extract in your process.

Training documents must meet the following requirements:

-   Upload at least 25 documents, though you may need many more based on your use case. We recommend you start with at least 50 documents.
-   Each document is 7 MB or less.
-   Each document is 15 or fewer pages.
-   Each document has 50 or fewer text fields.
-   All documents must be PDFs.
-   Each document must be unique.

In **Step 1: Provide Documents**:

1.  Choose your **Document Layout**:
    -   **Semi-structured**: These documents include similar pieces of information, but in varying layouts. Invoices, receipts, and utility bills are good examples of documents with semi-structured data.
    -   **Highly Structured**: These documents contain information that is arranged in a fixed layout. Tax forms, passport applications, and hospital forms are good examples of documents with structured data. Due to the predictable and consistent positions of labels and values in highly structured documents, you won't need to label as many fields in [step 4](#4-label-field-data).
2.  In the **Documents** section, click **UPLOAD**.
3.  Browse for and select the sample documents you want to add.
4.  Click **NEXT** when the files are finished uploading.

![Step 1](images/doc_extraction/ai-skill-step-1.png)

### 3\. Add fields to extract

Next, you'll add the fields that commonly appear in the document type. For example, if you're building an AI skill to extract data from invoices, you'll want to add common fields that contain the data you want to extract, such as **Invoice Number**, **Date**, and **Vendor Name**.

[![images/doc-extraction-skill.png](images/doc-extraction-skill.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img900)

[![](images/doc-extraction-skill.png)](#_)

Before Appian can extract data from your documents, you'll need to define what those fields are and the type of data they contain:

1.  On the **Add Fields to Extract** page, enter a field name. If you plan to save extracted data to a record type or CDT, see [field naming guidelines](#mapping-data-as-you-define-the-document-structure) below.
2.  Choose the data type for this field. Extracted fields must be **Text**, **Checkbox**, or **Table** types. Fields nested within tables must be **Text** type.
3.  Click **Add Field** to add more fields.
4.  Continue to add field names and data types until you've defined all of the fields you want to extract from this document type. You can add up to 50 text fields.

**Tip:**  Add a field for each piece of data in the document you want to extract using the AI skill. If you don't add a field, the skill won't know to extract the data or how to label it.

#### Mapping extracted data

The document extraction AI skill extracts data as type [**Text**](Appian_Data_Types.html#text) or [**Boolean**](Appian_Data_Types.html#boolean) (for checkboxes). However, your document data may be of different data types, such as Dates or Numbers. Additionally, you may want to save this extracted data in specific [data objects](design-objects.html#data-objects), such as record types or custom data types (CDTs).

To ensure your data reaches the intended destination and in the proper format, you'll need to properly name and map fields as you configure your AI skill and smart service.

##### Mapping data as you define the document structure

Pick the right name for the field as you define your document structure in the AI skill.

**Flat data**: If you're planning to save extracted data to a [flat CDT](cdt_design_guidance.html#flat-cdts) or record type, name each field in the document structure to match the target field so Appian casts it properly.

-   Example: You want to extract data from invoices. Each invoice has a field containing the name of the vendor. You want to configure your process so that the smart service saves this value into the `invoiceNumber` field in your `InvoicesReceivable` record type. To achieve this, create a `invoiceNumber` field (type: _Text_) in your skill to match its ultimate destination (the `invoiceNumber` field in your record type) in Appian.

**Tables** (nested data): If you plan to extract document data that's formatted in a table, you'll need to carefully name these fields as well. When Appian extracts data from a table in a document, the results is a list of maps, with each map representing a row in the table. The name you choose for the table field helps Appian cast all of this data properly.

Name the table fields based on the data object where you plan to store it:

-   Record type relationships: name the field to match the [Relationship Name](record-type-relationships.html#add-relationships).
-   CDTs: name the field to match the field name you assigned the table CDT in the parent CDT.

**Example**: You want to extract data from invoices. Each invoice has a table containing a list of items you ordered, the unit costs, and how many of each item you ordered. Invoice data is stored in the `Invoice` CDT, which contains a field `lineItems` (type: `Invoice_Table` CDT) to store itemized data from tables in each invoice. You want to configure your process so that the smart service saves the itemized values into the `Invoice_Table` CDT.

To achieve this, create a `lineItems` (type: _Table_) field in your skill to match its ultimate destination (the `Invoice_Table` CDT, by way of the `lineItems` field of the `Invoice` CDT) in Appian. Additionally, name each field within the table to match the corresponding fields within the CDT as well.

The following image include numbers to demonstrate the fields that should match when extracting table data with an AI skill.

[![images/doc_extraction_map_example.png](images/doc_extraction_map_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img901)

[![](images/doc_extraction_map_example.png)](#_)

The following table summarizes guidance for naming fields in your document structure:

| Extracted data type | Target location | Field name requirement | Example field name |
| --- | --- | --- | --- |
| Text or Boolean | Record type or CDT | Field name must match the target field. | `invoiceNumber` |
| Table | Record type relationship | Field name must match the name of the relationship. | `maInvoiceItems` |
| Table | CDT | Field name must match the name of the field that contains table data. Fields within the table must match the names of the fields within the CDT. | `lineItems` |

##### Mapping data as you configure the process

As you build your process, you'll map the smart service output to process variables. Appian supports casting data from Maps to CDTs or record types so you can use the extraction results to write to your database.

**Note:**  Review the [design guidance](create-skill-doc-extraction.html#mapping-data-as-you-define-the-document-structure) to ensure that the fields in your AI skill are named based on how you want to cast the data.

To ensure that the AI skill extracts and uses your data as you intend, carefully map the Extract from Document smart service output to the proper variables so your data is used or stored properly:

1.  Double-click the **Extract from Document** smart service node.
2.  Go to the **Data** tab.
3.  Go to the **Outputs** tab.
4.  In the **Results** section of the outputs tree, click **Extracted Data**. The results properties display in the right pane.
5.  In the **Target** field, select the process variable you want to use to store this data, including Record Types or CDTs.

### 4\. Label field data

After you tell Appian which fields you want to extract from the document, you'll indicate the values that correspond to those fields in the sample documents. This process is called labeling, and it helps the model understand what the data might look like or where it might appear in other documents.

**Tip:**  You'll only label **Text** values in this step. Although you won't label tables and checkboxes, these fields will still be extracted.

1.  In the document preview, click and drag your mouse around a value to create a selection box.
2.  Click the field this value represents. For example, if you created a selection box around the value `$4,000` in the document, you might select `total` as the field it maps to.
3.  Repeat steps 1 and 2 until you've labeled values for all fields in your document structure. Regularly click **SAVE** to save your progress, especially if you're labeling a lot of fields and documents.
4.  Above the document preview, click **NEXT** to view other sample documents and label additional values. To select a specific document, use the dropdown menu labeled with a count of the documents you uploaded.

    **Tip:**  Each field will need labels in at least half of the documents you uploaded.

5.  Click **REVIEW** to see a summary of how many labels appear for each field.

[![images/doc-ex-label-data.png](images/doc-ex-label-data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img902)

[![](images/doc-ex-label-data.png)](#_)

The final step of creating a document extraction AI skill asks you to review the fields you've labeled in the sample documents. The more fields you label, the more the model can learn about your fields. This is what makes the model smarter and better at extracting data of interest.

If you haven't labeled enough fields in the set of documents you uploaded, you'll see a message encouraging you to add more files and fields.

### 5\. Start training

You'll manually prompt the model to start training based on the training documents and labeled fields you provided. When you've labeled all the fields you can, click **TRAIN MODEL** on the **Review** page.

During training, the model analyzes a portion of your training documents to learn about the traits or patterns that identify each field.

After learning about your documents, the model uses the remaining portion of the training documents to test itself. The model training will display metrics to show how it performed.

**Tip:**  Training can take a few minutes. You can close the **Training Summary** page and return later to view the results.

### 6\. Assess the results

After the model is finished training and testing, you're shown a number of metrics measuring its performance. You'll use this information to determine if this model is ready to publish, or if you'd like to provide more documents or labels for the model to continue training.

[![images/doc_extraction/doc-ex-training-metrics.png](images/doc_extraction/doc-ex-training-metrics.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img903)

[![](images/doc_extraction/doc-ex-training-metrics.png)](#_)

Some of these metrics might be more or less relevant based on your use case and the fields you expect to extract.

Learn more about [evaluating model performance](evaluate-ai.html).

### 7\. Train a new model

If the model's training metrics don't yet meet your requirements, you can continue training to try to boost the model's performance. Each time you retrain, you're creating a new model. Provide the new model with additional training documents to help it learn more about the document fields. Be sure your training documents represent the documents you expect to see in production.

**Tip:**  Training a new model doesn't make the AI skill unavailable or otherwise impact a published model. The AI skill uses the existing published model until you publish a new one.

To continue training by creating a new model:

1.  In the AI skill, click **CREATE MODEL**.
2.  Choose how you want to start:
    -   **I want to create a model using previous configurations and data**: Start building a new model using previously configured fields, labels, and sample documents. When you create a new model from an existing model, you can add or remove sample documents, add new fields and labels, or remove existing fields and labels. In this way, you have multiple options to configure the model so it can learn more about your data. This option doesn't change anything within the model you're using as the basis for the new model.
    -   **I want to create a model without data**: Start with an entirely new model. With this option, you'll create fields, upload sample documents, and label the fields in those documents to start training from scratch.
3.  Click **CONTINUE**. A **Create Model** page appears, where you can continue refining and training the model.

#### Retraining vs. creating a new skill

As you expand how you use machine learning models throughout your applications, you might wonder: when should I train a new model vs. creating an entirely new skill?

Keep in mind you can only [publish one model for a skill](#8-publish-the-model). In practice, this means that a **Extract from Document** smart service will only be able to access one model for the skill the smart service is configured to use.

Also keep in mind that ML models are designed for a specific purpose. To help the model specialize and hone in on key traits in your document, consider creating one at the lowest level possible for your process. That is, if a single step in a process requires you to extract data from invoices, don't bother including fields for fields that appear on purchase orders. Adding this extraneous information will only serve to distract the model, so it's best to exclude. Instead, create fields specific to the documents you expect to extract from in your specific use case.

### 8\. Publish the model

When the model's training metrics meet your requirements, you're ready to put it to use. Publish the model to make it available for use in your process, through the [Extract from Document smart service](Extract_from_Document_Smart_Service.html).

[![images/doc-ex-published-model.png](images/doc-ex-published-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img904)

[![](images/doc-ex-published-model.png)](#_)

You'll configure the Extract from Document smart service to use your AI skill. When the process reaches the smart service node, it uses the published model within the skill to analyze your document and extract field data.

### 9\. Use the skill

Now you're ready to use your document extraction skill in a process.

Add the [Extract from Document smart service](Extract_from_Document_Smart_Service.html) and configure it to call your new skill.

You'll also want to add the [Reconcile Doc Extraction smart service](Reconcile_Doc_Extraction_Smart_Service.html) so a person can verify that the extracted table and checkbox data maps to the proper fields.

### Language support for semi or highly structured documents

Appian can extract data from structured documents in the following languages:

-   English
-   French
-   German
-   Italian
-   Portuguese
-   Spanish

## Unstructured documents

The following steps guide you through configuring and testing a prompt specifically for unstructured document extraction. Unlike semi-structured documents, unstructured documents lack a consistent format, which means they require a flexible approach to data extraction. By setting up a clear prompt and testing it with sample documents, you can train the model to identify and extract key information accurately, even from varied layouts.

Use these steps to define your prompt, adjust the model's settings, and refine the extraction process to ensure reliable results.

1.  [Create an Al skill](#create-skill-unstructured)
2.  [Identify document type](#2-identify-document-type)
3.  [Define the Prompt](#3-define-the-prompt)
4.  [Set temperature](#4-set-temperature)
5.  [Provide example inputs and outputs](#5-provide-example-inputs-and-outputs-text-document-type-only) (text document type only)
6.  [Test the Prompt](#6-test-the-prompt)
7.  [Refine the Prompt](#7-refine-the-prompt-if-needed) (if needed)
8.  [Save the configuration](#8-save)
9.  [Use the skill](#use-skill-unstructured)

### 1\. Create an AI skill

The first step in setting up document extraction is to create an AI Skill. This skill acts as the foundation for processing your documents, allowing you to configure and fine-tune the model to recognize and extract the information you need.

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  In the **Extraction** section, select **Documents**.

    ![create-skill](images/create-ai-skill-doc-ex.png)

3.  Choose **Unstructured** as the type of document.

4.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

5.  Click **CREATE**.
6.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
7.  Click **SAVE**. The AI skill opens in a new dialog or window.

### 2\. Identify document type

In this step, specify whether your unstructured document is text-only or includes visual elements like checkboxes, charts, or images. This choice helps configure the model to process the content accurately, whether it's focusing solely on text or handling both text and visual data.

1.  Go to the **Identify Document Type** section.
2.  Select what kind of documents you will be uploading for extraction.

    | Option | Description |
    | --- | --- |
    | Text only | Extract data from text within documents. Supports up to 100 pages. This option only supports extracting data from documents in [select languages](#before-you-begin). |
    | Visual elements and text | Extract data from visual elements, like checkboxes, charts, or images, as well as text within documents. Supports up to 20 pages. This option supports extracting data in [most languages](#before-you-begin), in addition to the languages supported by the **Text only** option. |

[![document type image](images/automation/identify-doc-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img905)

[![](images/automation/identify-doc-type.png)](#_)

### 3\. Define the prompt

Now it's time to set up a prompt that tells the AI exactly what to look for in your unstructured documents. A clear, specific prompt helps the model focus on the right details, even when the document format varies. Think about the key info you need–like names, dates, or specific terms—and build your prompt around that to get the best results.

1.  Go to the **Prompt** section.
2.  Enter a description of what you want the model to do with the document.

**Tip:**  

-   Use clear and specific instructions that outline the data you need extracted. For example: "Extract contractor name, address, and contract date from the document."

-   Use entity labels (like `contractorName`, `contractorAddress`) to make the extracted data easy to map.

[![prompt image](images/automation/doc-prompt.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img906)

[![](images/automation/doc-prompt.png)](#_)

### 4\. Set temperature

In this step, you'll set the temperature to control how the AI reads your documents. Lower temperatures keep things consistent, while higher temperatures let the model be more flexible.

-   A lower temperature (0-25) will make the model more consistent and predictable.
-   A higher temperature (75-100) will make the model more flexible when interpreting text and images but may be less consistent. This could be helpful if key information appears in varied formats like dates in different layouts or names appearing in unconventional places.

1.  Go to the **Temperature** section.
2.  Adjust the slider to control the output variability.

**Tip:**  For most unstructured document extractions, start with a lower temperature to ensure stable results.

[![temperature image](images/automation/temp.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img907)

[![](images/automation/temp.png)](#_)

### 5\. Provide example inputs and outputs (text document type only)

Adding sample inputs and expected outputs helps the model understand your requirements better. This option only appears if you selected **Text only** as the document type.

1.  Go to the **Provide Examples** section.
2.  In the **Example Input** field, add a sample document or text that represents the type of unstructured data you'll be working with. This helps the AI model learn the structure and context of your documents.
3.  In the Example Output field, specify how you'd like the extracted data to appear. Use a structured format (like JSON) with labels for each piece of information, such as:

    ```
    1
    2
    3
    4
    5
    {
    "contractorName": "NexGen",
    "contractorAddress": "4567 Rose Blvd, Rosetown",
    "contractDate": "02/07/2024"
    }
    ```

4.  Click **ADD ANOTHER** to add more examples if needed. This improves the model's ability to extract the correct data. This can improve the model's accuracy across various document types.

[![automation/provide-examples.png](images/automation/provide-examples.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img908)

[![](images/automation/provide-examples.png)](#_)

### 6\. Test the Prompt

Now it's time to test your prompt to see how well the model extracts the information you need. Testing helps you evaluate and refine the prompt to ensure accurate results.

1.  In the **Test Input** section on the right, upload a document similar to what you'll be using for extraction.
2.  Click **TEST** to evaluate how well the model performs with your prompt.
3.  Review the output to ensure the extracted data matches your expectations.

![test prompt](images/automation/test-prompt.png)

### 7\. Refine the Prompt (if needed)

Based on the test results, adjust the prompt to improve accuracy. Modify the [prompt instructions](#3-define-the-prompt) for clarity or add more [example inputs and outputs](#5-provide-example-inputs-and-outputs-text-document-type-only). Keep testing until you get the extraction results you're looking for.

### 8\. Save

Once the model provides consistent, accurate results, click **SAVE** to finalize your AI skill.

Your AI skill is now configured to extract data from unstructured documents based on your custom prompt and you're ready to [use the skill](#use-skill-unstructured) in a process.

### 9\. Use the skill

With your AI skill configured, you're ready to integrate it into your process. This allows you to automatically extract and process information from documents as part of your workflow.

Add the [Execute Generative AI Skill smart service](Execute_Generative_AI_Skill_Smart_Service.html) and configure it to call your new skill.

### Language support for unstructured documents

Appian is able to extract data from documents in most languages when **Visual elements and text** is selected in the **Identify Document Type** section of the AI skill. When **Text only** is selected, supported languages are the same as those [supported by structured extraction](#language-support-for-semi-or-highly-structured-documents).

## See also

Learn more about [how document extraction works](how-doc-ex-works.html) in Appian.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...