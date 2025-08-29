---
source_url: https://docs.appian.com/suite/help/25.3/ai-skills-intro.html
original_path: ai-skills-intro.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AI Skills

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

What Are Common Use Cases for AI Skills?

With Appian AI Skills, you can easily automate common content processing tasks: document classification, email classification, and document extraction. Watch this video to learn about three common use cases for implementing AI Skills in your applications.

An **AI skill** is [a design object](ai-skill-object.html) that enables you to build and configure artificial intelligence (AI) agents to use in your processes.

## What AI skills are available?

AI skills automate your business activities using AI agents. Choose the AI skill that best fits your use case.

**Tip:**  AI skills for generation, summarization, PII extraction, and unstructured extraction create a [prompt builder AI skill](create-skill-prompt-builder.html) with a pre-populated template.

### General purpose

If you don't see an AI skill suited to your use case, you can always use the [**Prompt Builder**](create-skill-prompt-builder.html). Use this skill to create a prompt to send to generative AI models. You'll tell the model what you want it to do using plain language. After adjusting a few settings and testing the prompt, you can see what the model returns based on your instructions. Use this skill to summarize long or complex text, generate new content, and more!

### Classification

-   **Text**: Identify text based on certain traits. You'll tell us about the types of text you want to classify in your business process and provide samples of each type.
-   [**Emails**](create-skill-email-classify.html): Identify an email's type based on certain traits. You'll tell us about the types of emails you want to classify in your business process and provide samples of each type. For example, this skill can help you classify and route inquiries, feedback, and help requests that you receive through one inbox.
-   [**Documents**](create-skill-doc-classify.html): Identify a document's type based on certain traits. You'll tell us about the types of documents you want to classify in your business process and provide samples of each type. For example, this skill can help you classify and route invoices, purchase orders, and receipts that you receive through one channel.

### Extraction

-   **Text or Emails**: Extract data from text or emails. You'll tell us what you want to extract and how you want that information to appear in the output.
-   **Documents**: Extract data from a document.
    -   [**Semi or Highly structured**](create-skill-doc-extraction.html): You'll tell us about the structure of the type of document you want to extract data from, such as invoices. For example, this skill can help you extract data from fields commonly found in certain documents. For invoices, this might be the invoice number, due date, and total.
    -   **Unstructured**: You'll tell us what you want to extract from an unstructured document and how you want that information to appear in the output. For example, this skill can help you extract data from large or free-flowing paragraphs of text, like contracts.
    -   [**Advanced IDP Tools**](create-skill-advanced-idp-tools.html): Tell us the type of document data you want to process, and we'll take care of the rest. The output is structured data that developers can use to add additional processing or validation if needed. For example, you could use expression rules or a Prompt Builder AI skill to map the outputs to fields in a record type.

### Generation

-   **Text**: Create text for any purpose. You'll tell us what text you want to generate and whether you want the output to include any specific logic, format, or other requirements.

### Summarization

-   **Text, Emails, or Documents**: Summarize text from any source, including emails and documents. You'll tell us what you want to summarize and how you want the summary to appear.

### PII Detection

-   **Text, Emails, or Documents**: Extract personally identifiable information (PII) in a document, email, or text block. You'll tell us the personally identifiable information (PII) you want to extract, such as names or phone numbers.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

**Note:**  [Generative AI Skills](gen-ai-skills.html), including unstructured document extraction, support high availability. AI skills that require training, such as document classification and structured document extraction, do not.

You can use all AI Skills in high availability environments without impacting other HA features. For more information, see [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html) for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...