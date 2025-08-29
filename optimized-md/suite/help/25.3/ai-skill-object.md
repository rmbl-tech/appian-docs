---
source_url: https://docs.appian.com/suite/help/25.3/ai-skill-object.html
original_path: ai-skill-object.html
version: "25.3"
title: "AI Skill Object"
page_id: "ai-skill-object"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AI Skill Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

[Introduction to AI Skill](https://academy.appian.com/#/online-courses/cd8bec9f-ca5c-49e1-bfae-53ca9c39c5de)

Learn what the AI skill design object is and when to use it to easily add artificial intelligence functionality into your business applications.

## Overview

An AI skill is a design object that enables you to build and configure an artificial intelligence (AI) agent using Appian low-code capabilities.

This page discusses the basic features and functionality of the AI skill design object.

## Create an AI skill

To create an AI skill:

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  Select the skill type you want to create.

    ![create-skill](images/create-skill.png)

3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

4.  Click **CREATE**.
5.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
6.  Click **SAVE**. The AI skill opens in a new dialog or window.
7.  Click **CREATE FIRST MODEL**.

## Skill types

![create-skill](images/create-skill.png)

As you create an AI skill, you'll select the type of skill that suits your purpose.

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

You'll configure your skill based on its type.

## Design guidance

The AI skill design object is not versioned. However, as you train your skill, you can [review the results](evaluate-ai.html) and create a new model using additional sample data. During this refinement process, each model is preserved in the training summary.

You can access the training summary to view details on model creation history and how the skill was refined to its current state.

## Using an AI skill in a process

After you train the skill and determine a model's predictions are suitable for your purposes, you'll publish the model. The published model is what the corresponding smart service uses when it calls the AI skill in a process model.

**Tip:**  Only one model can be published at a time within an AI skill design object.

You'll call an AI skill in a process model using the smart services in the **AI Skill** menu of the palette:

-   [Classify Documents](Classify_Documents_Smart_Service.html)
-   [Classify Emails](Classify_Emails_Smart_Service.html)
-   [Extract from Document](Extract_from_Document_Smart_Service.html)
-   [Execute Generative AI Skill](Execute_Generative_AI_Skill_Smart_Service.html)

## Delete

Deleting an AI skill prevents users from further viewing or editing it or the models it contains. Additionally, any smart service configured to use the AI skill will no longer work as intended.

AI skills can be deleted by users with **Administrator** permissions to it.

To delete an AI skill:

1.  In your application, go to the **Build** view.
2.  Select the checkbox of the AI skill you want to delete.
3.  Click **Delete**.
4.  Review any object dependents and click **DELETE**.

**Note:**  System administrators have the ability to delete decisions (and other objects) in bulk by selecting them and clicking **Delete** in the toolbar.

## Security

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Execute the skill | Yes | Yes | Yes | No |
| View the skill | Yes | Yes | Yes | No |
| Update the skill | Yes | Yes | No | No |
| Save the skill | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Create a model in the skill | Yes | Yes | No | No |
| Publish a model in the skill | Yes | Yes | No | No |
| Configure the smart service to use the skill | Yes | Yes | No | No |
| Update the security | Yes | No | No | No |
| Delete the skill | Yes | No | No | No |

**Note:**  If a user or group is assigned the **Deny** role, they cannot perform any action associated with the AI Skill.

## Deployment behavior

You can [deploy](deploying-applications.html) the AI skill alongside other design objects in your Appian application. This section describes what is deployed with the object and what isn't.

**Tip:**  If you import an AI skill from another Appian environment, you can't use its models to create a new model.

|  | Deployed | Not Deployed |
| --- | --- | --- |
| Document extraction AI skill |
-   Document structure
-   Published model
-   Training metrics for published model
-   [Learned mappings from reconciliation tasks](completing-a-reconciliation-task.html#learned-mappings-across-environments)

 |

-   Documents used to train the model
-   Unpublished models

 |
| Document classification AI skill |

-   Document types
-   Published model
-   Training metrics for published model

 |

-   Documents used to train the model
-   Unpublished models

 |
| Email classification AI skill |

-   Email types
-   Published model
-   Training metrics for published model

 |

-   Emails used to train the model
-   Unpublished models

 |
| Generative AI skills |

-   Prompt
-   Temperature
-   Example inputs and outputs

 | N/A |

## Compliance

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...