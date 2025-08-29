---
source_url: https://docs.appian.com/suite/help/25.3/Automation_Use_Cases.html
original_path: Automation_Use_Cases.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Automation Use Cases

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

We offer a complete suite of automation capabilities that are powerful individually, but work even better together. This page highlights potential use cases that are solved with a variety of automation capabilities.

-   If you already know what you want to do, see [when to use automation](#when-to-use-automation).
-   If you need more inspiration, see [use case examples](#use-case-examples).

## When to use automation

| I want to… | How Appian can help |
| --- | --- |
| Configure business rules to assign tasks, execute processes dynamically, set permissions, and more. | Use [Decisions](Appian_Decisions.html). |
| Send emails from processes and include process data. | Use [communication smart services](Send_Email_Smart_Service.html). |
| Generate or update PDF, text, or Word documents. | Use document generation smart services for [PDFs](PDF_Doc_From_Template_Smart_Service.html), [text](Text_Doc_From_Template_Smart_Service.html), or [Word](Word_Doc_from_Template_Smart_Service.html) documents in your process models. |
| Automate updates or queries **from Appian** to external modern systems. | Use [integration rules](Create_an_Integration.html). |
| Automate updates or queries **from an external system** to Appian. | Use [web APIs](Designing_Web_APIs.html). |
| Extract data from claims, invoices, purchase orders, or receipts, and classify these documents into types. | Use [Document Extraction AI skill](create-skill-doc-extraction.html). |
| Automate repetitive tasks that involve interacting with a web browser or desktop. For example, you may wish to [build a retrieval process](rpa-9.17/tutorial-retrieval-process.html) that collects and stores information from a webpage. | Use [RPA](rpa-9.17/appian-rpa.html). |
| Automate interactions with legacy applications that don't have an API. | Use [RPA](rpa-9.17/appian-rpa.html). |
| Identify key subjects (entity analysis), determine a user's opinion and emotion (sentiment analysis), and classify text into pre-defined categories from HTML or plain text sources. | Use the [Google Cloud Natural Language](google-cloud-natural-language.html) connected system. |
| Detect the language of text and translate it into the desired language. | Use the [Google Cloud Translation](google-cloud-translate.html) connected system. |
| Extract logos, colors, labels, and signatures from images and PDFs. | Use the [Google Cloud Vision](google-cloud-vision.html) connected system. |
| Store and retrieve items from a Google Storage bucket. | Use the [Google Drive](google-drive-connected-system.html) connected system. |

**Note:**  Process models remain central to all Appian workflows. Use process models to orchestrate these automation capabilities in your own application.

## Use case examples

### Procurement department

#### Process Models + RPA + Document Extraction

Let’s say your procurement department performs several tasks that you wish to automate:

-   Interacting with vendor records
-   Comparing the prices of goods and services
-   Managing purchase orders (POs) and invoices
-   Ensuring compliance

These essential tasks require workers to use a variety of different systems with a high attention to detail. The purchasing manager notices that employees are spending an increasing amount of time navigating these disparate applications, and the growing complexity is causing employees to make errors.

To streamline these processes, you can create process models that describe your existing business processes. You may already have these processes documented with business process modeling notation (BPMN), making the transition to process models even easier. Process models orchestrate all of your workflows in Appian, including automation tasks.

RPA can automatically interact with your external web or desktop applications so your employees don't have to. Even better, robotic tasks can execute right from your process models. To add robotic process automation to your processes, use the [Execute Robotic Task Smart Service](Execute_Robotic_Task.html).

A benefit of executing RPA from process models is that you can automate exception handling. For example, if your robotic task cannot access the web portal that you use to compare prices of goods, the process model can be configured to wait for a specified time until before trying again. Also, there may be exceptions that require human intervention, such as updating login credentials if a log in task fails. Process models can quickly triage these exceptions to the appropriate users to provide a resolution.

Like many organizations, your employees also spend an increasingly large amount of time processing POs and invoices. You can build AI-based document extraction into your process models with the [Document Extraction AI skill](create-skill-doc-extraction.html). Not only does AI lighten your employees' workloads, but AI performs these tasks far more quickly and accurately, which ensures that you remain compliant with your company-approved procurement policies.

### Consumer banking forms processing

#### AI Skills

When working with sensitive financial documents at a bank, security is of the utmost importance. Yet, you most likely still process many forms manually on paper without a digital workflow. Because you often process thousands of these documents a week, these processes are error prone and time consuming. You may already be using Appian to enhance your other workflows, so how can you take it one step further?

The AI Skill is a low-code design object you can use to build, train, and deploy machine learning (ML) models to classify documents and extract data from them. Using the [Document Classification AI skill](create-skill-doc-classify.html) and [Classify Documents smart service](Classify_Documents_Smart_Service.html), you can easily configure your processes to automatically classify and route documents to the right groups. For example, your process can securely send loan applications to loan officers and beneficiary change forms to account managers. Further, if your process needs to extract data from certain documents, you can create a [Document Extraction AI skill](create-skill-doc-extraction.html) and use the [Extract from Document smart service](Extract_from_Document_Smart_Service.html) to extract important text from structured documents so you can easily use that data in your applications with little effort.

![consumer-banking-forms-use-case.png](images/doc_extraction/consumer-banking-forms-use-case.png)

### Hand-written insurance claims processing

#### Process Models + Document Extraction + AI

Your business receives hundreds of handwritten insurance claims a day, and your team is overwhelmed by the amount of claims data. Manual processes are slowing you down and increasing the possibility of errors. You may not think it is possible to automate data extraction from handwritten documents, but document extraction can accurately extract meaningful data from these document types right inside your Appian application.

You can enhance your processes even further by intelligently sending claims to adjusters to review customers’ medical records. Use process models to orchestrate the workflow and [natural language processing](google-cloud-natural-language.html) to automatically classify the documents with AI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...