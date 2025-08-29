---
source_url: https://docs.appian.com/suite/help/25.3/create-skill-doc-classify.html
original_path: create-skill-doc-classify.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Document Classification AI Skill

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

How to Create an AI Skill to Classify Documents

In this video walkthrough, you'll learn how to create a document classification AI skill that can interpret and classify document types and route them to the appropriate people with a custom-trained model.

## Overview

This topic covers how to create an AI skill to classify documents using machine learning (ML) models.

A document classification AI skill takes documents as inputs via the [**Classify Documents** smart service](Classify_Documents_Smart_Service.html), analyzes the documents, and returns predictions about a document's type.

Here's a high-level breakdown of how to create and use a document classification AI skill:

1.  [Create an AI skill](#create-an-ai-skill)
2.  [Create document types](#create-document-types)
3.  [Add training documents](#add-training-documents)
4.  [Start training](#start-training)
5.  [Assess the results](#assess-the-results)
6.  [Test the model](#test-the-model)
7.  [Train a new model](#train-a-new-model)
8.  [Publish the model](#publish-the-model)
9.  [Use the skill!](#use-the-skill)

## Create an AI skill

**Note:**  This AI skill type is only available in [select regions](security-compliance.html#regional-availability).

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  In the **Classification** section, select **Documents**.

    ![create-skill](images/create-ai-skill-doc-class.png)

3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

4.  Click **CREATE**.
5.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
6.  Click **SAVE**. The AI skill opens in a new dialog or window.
7.  Click **CREATE FIRST MODEL**.

## Create document types

Document types are the categories of documents you want this skill to classify. For example, document types might be purchase orders or invoices. You'll define a document type for each category of document, and then [provide training documents](#add-training-documents) that represent the documents you expect to classify in production.

To create a document type:

1.  On the **Configure Training** page, click **NEW DOCUMENT TYPE**.

    ![ai-new-doc-type](images/ai-new-doc-type.png)

2.  Enter the **Document Type Name**.
3.  Click **UPLOAD** to [add training documents](#add-training-documents).
4.  Browse for and select the documents you want to add.
5.  Click **CREATE** to finish creating the document type, or **CREATE AND ADD ANOTHER** to create this document type and add another document type.

## Add training documents

The model needs training documents to learn about the patterns or traits the documents have in common. The model also uses some of these training documents to test its knowledge after training.

The model can only learn from the documents you provide, so be sure to [build a comprehensive and diverse set of documents](collect-data.html) that represent what you expect to classify in your process.

Training documents must meet the following requirements:

-   Upload at least 10 documents, though you may need many more based on your use case. We recommend you start with at least 50 documents.
-   All documents must be PDFs.
-   Each document must be unique.

You can add training documents to a new or existing document type.

To add training documents to an existing document type:

1.  Click **CONTINUE EDITING** on the unpublished model where you want to add more documents.
2.  Click **EDIT** in the row of the relevant document type.
3.  Click **UPLOAD**.
4.  Browse for and select the documents you want to add.

After you've added training documents, you're ready to start training the model.

### Performance guidelines

Keep in mind the following requirements when training this AI skill type:

-   Maximum number of document types for a model: 20
-   Maximum number of PDFs for training per document type: 100 PDFs
-   Maximum size of a single document for training: 25 MB
-   Maximum number of PDF documents for a model: 2000 PDFs

If any of these guardrails are limiting, please reach out to your Appian contact.

## Start training

You'll manually prompt the model to start training based on the training documents you provided. When you've created the relevant document types and provided training documents for each one, click **TRAIN MODEL** on the **Configure Training** page.

During training, the model analyzes a portion of your training documents to learn about the traits or patterns that could identify them as the document type.

After learning about your documents, the model uses the remaining portion of the training documents to test itself. The model training will display metrics to show how it performed.

**Tip:**  Training can take a few minutes. You can close the **Training Summary** page and return later to view the results.

## Assess the results

After the model is finished training and testing, you're shown a number of metrics measuring its performance. You'll use this information to determine if this model is ready to publish, or if you'd like to provide more documents for the model to continue training.

Some of these metrics might be more or less relevant based on your use case and the type of documents you expect to classify.

Learn more about [evaluating model performance](evaluate-ai.html).

## Test the model

Before you integrate the skill into a process, you want to be confident the published model performs as you expect. You can test the model using a few sample files to verify it works as you expected directly within the AI skill object.

To test the model:

1.  Navigate to the published model.
2.  Click **TEST MODEL**.

    ![test-model.png](images/test-model.png)

3.  Click **UPLOAD**.
4.  Browse for and select the documents you want to add. You can add up to five files.

    ![test-model-upload.png](images/test-model-upload.png)

5.  After the files finish uploading, click **TEST MODEL**. The list of models displays.
6.  In the banner showing you the test status, click **REFRESH** to see when results are available.

    ![test-model-refresh.png](images/test-model-refresh.png)

7.  When results are ready, click **CHECK RESULT**.
8.  In the **Results** window, you can see the predicted type for each file, as well as the model's confidence score for each prediction.
9.  Click **START OVER** to run another test with different files, or **CLOSE** to exit the results window.

    ![test-skill-results.png](images/test-skill-results.png)

## Train a new model

If the model's training metrics don't yet meet your requirements, you can continue training to try to boost the model's performance. Each time you retrain, you're creating a new model. Provide the new model with additional training documents to help it learn more about the document type. Be sure your training documents represent the documents you expect to see in production.

**Tip:**  Training a new model doesn't make the AI skill unavailable or otherwise impact a published model. The AI skill uses the existing published model until you publish a new one.

To continue training by creating a new model:

1.  In the AI skill, click **CREATE MODEL**.
2.  Choose how you want to start:
    -   **I want to create a model using previous configurations and data**: Start building a new model using previously configured document types and samples. When you create a new model from an existing model, you can add new document types, remove existing document types, and add or remove samples for those document types. In this way, you have multiple options to configure the model so it can learn more about your data. This option doesn't change anything within the model you're using as the basis for the new model.
    -   **I want to create a model without data**: Start with an entirely new model. With this option, you'll create document types and upload samples to start training from scratch.
3.  Click **CONTINUE**. A **Create Model** page appears, where you can continue refining and training the model.

[![images/model-options-doc-classification.png](images/model-options-doc-classification.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img898)

[![](images/model-options-doc-classification.png)](#_)

### Retraining vs. creating a new skill

As you expand how you use machine learning models throughout your applications, you might wonder: when should I train a new model vs. creating an entirely new skill?

Keep in mind you can only [publish one model for a skill](#publish-the-model). In practice, this means that a **Classify Documents** smart service will only be able to access one model for the skill the smart service is configured to use.

Also keep in mind that ML models are designed for a specific purpose. To help the model specialize and hone in on key traits in your document types, consider creating one at the lowest level possible for your process. That is, if a single step in a process requires you to classify invoices and purchase orders, don't bother including a third document type for inventory reports. Adding this extraneous information will only serve to distract the model, so it's best to exclude. Instead, create document types specific to the documents you expect to classify in your specific use case.

To help demonstrate these ideas, let's use the example of studying for a test. Imagine you're taking a driving exam to get your license. You'll study laws and general rules of the road, as well as practice identifying street signs. You may even test your knowledge by navigating a practice test that contains word problems and multiple choice questions. Your family is moving to a neighboring state around the same time you're planning to take the test.

With these two things in mind, you can begin to consider when to create a new AI skill instead of using an existing one. In short:

-   If you're classifying the same document types in multiple processes and you trained the model based on what the model expects to see in production for each process, you can call the same skill each time. Retrain the model as needed to improve performance or recalibrate its baseline understanding of your documents.
    -   Using the example above, this would be a situation where you can use your same knowledge no matter where you take the test. In all states, a red octagonal sign with STOP written across it means the same thing.
-   If you're classifying new and different document types in a different process, use a separate AI skill. The longer period of time that models are used in production, the greater chance that they experience data drift. Data drift is when your production data moves away from training data, which can result in a degraded model performance over time. One way to help treat data drift is to retrain the model using updated training documents, so the model can adjust its understanding of your document types over time.
    -   Using the example above, this would be a situation where you want to focus on learning about the state-specific laws that might appear on the test you're taking.

## Publish the model

When the model's training metrics meet your requirements, you're ready to put it to use. Publish the model to make it available for use in your process, through the [**Classify Documents** smart service](Classify_Documents_Smart_Service.html).

[![images/ai-published-model.png](images/ai-published-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img899)

[![](images/ai-published-model.png)](#_)

You'll configure the **Classify Documents** smart service to use your AI skill. When the process reaches the smart service node, it uses the published model within the skill to analyze and classify documents.

## Use the skill

Now you're ready to use your document classification skill in a process.

Add the [**Classify Documents** smart service](Classify_Documents_Smart_Service.html) and configure it to call your new skill.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Supported languages

Appian can classify documents in the following languages:

-   English
-   French
-   German
-   Italian
-   Portuguese
-   Spanish

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...