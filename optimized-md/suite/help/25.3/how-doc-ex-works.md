---
source_url: https://docs.appian.com/suite/help/25.3/how-doc-ex-works.html
original_path: how-doc-ex-works.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How Document Extraction Works

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

If your business spends countless hours extracting data from documents and forms, Appian is here to help. Appian includes a rich set of artificial intelligence (AI) features that accelerate the low-code development of document extraction processes. Leverage the power of AI to minimize repetitive and manual data extraction, and eliminate the need for expensive, high-maintenance optical character recognition (OCR) software.

This page covers how document extraction works in Appian, as well as what makes a document either a good or bad candidate for document extraction.

## About your documents

### Document digitization status

The structured document extraction skill is capable of processing PDF documents up to 15 pages or 7 MB. In the context of Appian document extraction, there are three types of PDFs that can be processed:

-   **Flattened PDF**: No text data associated with the file. It doesn't contain digital text or form fields. Often, these types of PDFs are created from paper documents that have been scanned. The Document Extraction AI Skill automatically applies Optical Character Recognition (OCR) to these documents, turning images into readable text for data extraction.
-   **Searchable PDF**: Contains digital text data that can be highlighted, copied, searched, and accessed programmatically. This type of PDF has undergone previous processing or was saved from a word processor.
-   **Fillable PDF**: Similar to a searchable PDF, this file allows the user to input and save additional information into form fields.

Appian is able to process most data from documents in all three of these digitization statuses.

**Tip:**  Appian's built-in document extraction capabilities related to flattened PDFs, key-value pair extraction, and table extraction are only available for Cloud customers at this time. Self-managed customers don't have access to these features. Other built-in capabilities are available for both Cloud and self-managed customers.

### Document encryption

PDFs can contain sensitive information. Encryption helps protect that information from being seen by unintended recipients. If you are attempting to extract data from encrypted PDFs, the type of encryption may affect your ability to do so.

Appian is able to extract data from unencrypted PDFs. Appian is unable to extract data from RC4 encrypted PDFs in GovCloud environments.

### Document structure

The digitization status and format of your documents will ultimately determine how much data Appian can successfully extract from them. Documents vary by how the content is organized, so you may find it helpful to have a few examples to reference as you evaluate.

**Structured data** includes information that's arranged in a fixed layout. Tax forms, passport applications, and hospital forms are good examples of documents with structured data. Appian can extract data from these types of documents easily due to the predictable and consistent positions of labels and values. Appian can use field position to learn more about your data and improve extraction results. To help train the feature, you can use consistently structured documents that place the same fields in the same places. As you complete reconciliation tasks, the feature learns to recognize data based on its position.

Here is an example of a structured document:

![structured-example.png](images/doc_extraction/structured-example.png)

**Semi-structured data** includes similar pieces of information, but in varying layouts. Invoices, receipts, and utility bills are good examples of documents with semi-structured data. Appian's document extraction features are well equipped to identify and extract semi-structured data. Automatic extraction improves as you process additional documents.

Here is an example of a semi-structured document:

![semi-structured-example.png](images/doc_extraction/semi-structured-example.png)

**Unstructured data** includes free-flowing paragraphs of text or visual elements like checkboxes, charts, or images. Legal contracts and emails often include unstructured data. This type of information is more difficult to extract because the machine learning algorithms that identify the information are looking for key-value pairs. Larger blocks of text, or parts of that text, are more difficult to extract.

Here is an example of an unstructured document:

![unstructured-example.png](images/doc_extraction/unstructured-example.png)

If your documents contain unstructured data, you may still be able to extract data from them:

-   If you'd like to get text out of a document, we recommend using the [PDF Tools plug-in](https://community.appian.com/b/appmarket/posts/pdf-tools).
-   If you'd like to execute rule-based actions to find the desired text in a document, we recommend using Appian expressions or the [Regular Expression Functions plug-in](https://community.appian.com/b/appmarket/posts/regular-expression-functions).

### Document content

Documents with these traits make good candidates for Appian's suite of doc extraction features:

#### Similar information

For example, invoices that all have _invoice numbers_ and _totals_.

![invoice examples](images/doc_extract_good_invoices.png)

#### Clearly labeled values

When the data is extracted, Appian pairs these labels with their corresponding values. For example, the _date_ label and _March 1, 2021_ value.

![Purchase order good example](images/doc_extract_good_po.png)

#### Tables

Tables are another way to structure data in invoices and other documents with line items.

![table_good_example.png](images/doc_extraction/table_good_example.png)

#### Supported languages

Appian can extract data from documents in the following languages. Additional languages may be supported for documents with a digital layer (not flattened PDFs, i.e. scanned documents).

-   English
-   French
-   German
-   Italian
-   Portuguese
-   Spanish

Does your document sound like a good fit so far? Great! Before you get started, also be sure to consider which documents might not be a good fit. We want to make sure you get the most value from Appian document extraction, and identifying which documents won't work is equally as important as identifying the documents that will.

### If your document isn't a good fit

Since Appian Document Extraction is meant to extract labels and values, extracting paragraphs of text is not a good use case for it. If you need to extract paragraphs of text, try using the [Google Cloud Vision Connected System](google-cloud-vision.html).

![Paragraph bad example](images/doc_extract_bad_paragraph.png)

Likewise, if you need to find specific information in text, such as footnotes in a document, you will be better served by the Google Cloud Vision Connected System along with expressions to analyze the output.

![Footnotes bad example](images/doc_extract_bad_footnotes.png)

## How does document extraction work in Appian?

This section provides more detail on how Appian extracts and maps data from your documents.

Appian learns about your data two ways: custom machine learning (ML) models that you train with representative sample data, and [reconciliation tasks](completing-a-reconciliation-task.html). Appian applies this learning in subsequent extractions of the same document type, but the model is not retrained.

The document extraction process consists of three parts:

1.  [Extract data from a PDF](#step-1-data-extraction) using a custom ML model.
2.  [Map the extracted data](#step-2-data-mapping) to the customer's Appian data structure for reconciliation.
3.  [Complete a reconciliation task](#step-3-reconciliation) to verify the mapped data is correct.

### Step 1: Data extraction

**Who**: Appian
**Input**: PDF
**Output**: Identified text, key-value pairs, checkboxes, and tables

In the first step, the PDF goes to an ML model to run optical character recognition (OCR), extract key-value pairs, and identify special document formatting checkboxes and tables. The model returns all identified values (represented by blue bounding boxes in the image below). Keys are represented by purple bounding boxes for reference, but they do not appear in Appian.

![doc-ex-blue-box](images/doc-ex-blue-box.png)

### Step 2: Data mapping

**Who**: Appian
**Input**: Identified text, key-value pairs, checkboxes, and tables from step 1
**Output**: Reconciliation user input task

Next, Appian leverages previous mappings stored in the customer's environment to know which extracted data to map to the document structure. These mappings are stored in a dictionary as [you complete reconciliation tasks over time](#step-3-reconciliation) (step 3). So, the more mappings and reconciliation tasks you complete for a given document type, the better Appian is at mapping that data. Each subsequent reconciliation task is faster and more accurate.

If your Appian environment has previously mapped values to your structured fields, Appian leverages those previous keys to assist in mapping the data before assigning a reconciliation task.

**Example**

![doc-ex-blue-box](images/doc_extraction/key-value-example.png)

In the image above, Appian extracted `Invoice#` as the **key** and `INV-12` as the **value** in this document. In the [document structure](create-skill-doc-extraction.html#3-add-fields-to-extract), there is a field named `invoiceNumber`. `Invoice#` and `invoiceNumber` don't match, but that's okay! If you previously mapped the `Invoice#` key to the `invoiceNumber` field in a reconciliation task, Appian should automatically map this data for you.

Each time a user completes a reconciliation task, Appian stores updated mappings in a simple dictionary of terms (keys and positions) to use next time it has to map data from the pre-trained model (output of step 1) to the structured fields in your application.

### Step 3: Reconciliation

**Who**: User
**Input**: Identified and mapped text, key-value pairs, checkboxes, and tables from step 2
**Output**: Auto-extracted fields to Appian process model for use in your application

Finally, a user completes a reconciliation task to confirm that the mappings from step 2 are correct. When a user maps data to a field and submits the reconciliation task, Appian stores the label for the key that was mapped. For example, if you provide mappings, Appian will recognize that `P.O. #`, and `PO No.` both map to the `poNumber` Appian data type field.

Reconciliation helps Appian manage variations in semi-structured and structured forms. In this way, reconciliation helps document extraction learn more about your data.

As you complete reconciliation tasks, data mapping in step 2 improves because Appian can match the keys to more options. However, the model in step 1 **does not get retrained** when you submit a reconciliation task with updated mapping. This means that if the ML model misses a field in step 1, Appian will continue to miss that field in step 2, and that there are some forms where auto-extraction will not extract the data desired. In these situations, customers can use manual extraction in step 3 to get the last pieces of information.

![Doc_extraction_workflow.png](images/Doc_extraction_workflow.png)

## How do I get started?

Document extraction is a powerful tool to use in your business, but before you put in the work to create your own process, think about what you want to do. For example:

-   What kind of documents will you process?
-   Who is responsible for reconciling and correcting results?
-   Where do you want to display the data after?

If you want the ability to customize these aspects of the document extraction process, like how the data moves post-extraction or who corrects results, you can [build your own document extraction process](doc-extraction-tutorial.html) using the document extraction AI skill and related smart services in the Process Modeler.

To take advantage of Appian's full-stack automation features, consider pairing your document extraction process with other [AI-powered features](ai-use-cases.html) and [robotic process automation (RPA)](rpa-9.17/appian-rpa.html).

**Tip:**  We want everyone to have access to the power of automation, so we're offering Appian Cloud customers 20,000 pages of document extraction and classification per month included with the platform. This is substantially more than the free offerings of other document extraction vendors.

If your business processes a higher volume of documents, reach out to your account executive to learn about additional pricing options.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...