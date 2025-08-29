---
source_url: https://docs.appian.com/suite/help/25.3/collect-data.html
original_path: collect-data.html
version: "25.3"
title: "What Makes a Good Dataset?"
page_id: "collect-data"
section: "Why invest time in building a representative dataset?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# What Makes a Good Dataset?

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Training data is the foundation of your artificial intelligence (AI) model. The data you use to train your model is the model's only source of knowledge, so it's important to create a comprehensive and diverse dataset. Without a thoughtfully constructed set of training data, your model may not be equipped to serve its intended purpose when you deploy it to a production environment.

Before you build an AI model in Appian, you need to determine and collect the data you'll use to train it. The model can only learn from the data you provide to it, so this is a crucial step in the model development process. This page outlines some of the key things to consider when building your training dataset.

To help build and train a strong AI model, your dataset should include samples that are:

-   Relevant to your use case or problem
-   High quality scanned or natively digital documents
-   Non-duplicative, unique documents
-   Properly labeled
-   A combination of recent and historical data
-   Representative of the typical documents you expect to encounter in production
-   From multiple sources (such as vendors, senders, submitters)

## Why invest time in building a representative dataset?

When you decide to use machine learning in your application, it's tempting to focus on the outcome: A functional model that can detect traits of interest. The low-code [AI skill design object](ai-skill-object.html) accelerates your development, but there is no shortcut to training the model to effectively make predictions. After all, the model is only effective when it applies its learning, and it can only learn from the data you provide to it. You'll want to invest time and consideration when building a training dataset for your AI skill.

Think of yourself as a teacher in a classroom. You're teaching your students the difference between fruits and a vegetables. You'll want to show them multiple examples of each to help them discover patterns. Would you show them only red fruits and green vegetables?

![Example of a narrow dataset](images/ml-narrow-data-diagram.png)

Probably not. Color is a pattern, but it isn't indicative of whether something is a fruit or a vegetable. To help your students understand the variety that exists for fruits and vegetables, you'll show them many examples of different ones.

![Example of a robust dataset](images/ml-robust-data-diagram.png)

The same idea extends to machine learning. Your AI model will be more effective if it doesn't rely on a narrow set of criteria to make predictions. The more data you provide to it, the more patterns it can learn, and then the more patterns it can recognize when presented with new data.

**Tip:**  **Don't rely on training metrics to see if you have a representative dataset.** The model uses a randomly chosen subset of the data you upload to test its skills. If your entire dataset isn't representative, then the test data isn't either. The metrics may indicate that the model performs well during testing, but this may be misleading because both the training and test data don't really represent what the model will encounter in production.

## Defining the data you need

Chances are, if you're thinking of using AI in your business process, you have a good sense of what you want it to do. This is a great start! To help you get the most out of your time and effort building an AI model, you'll want to consider the following questions:

-   What problem am I trying to solve?
-   What is the ideal solution to this problem?
-   What other people or teams might be facing the same problem, or benefit from the solution?
-   Where can I find data?
-   Do I have enough data?
-   Do I have representative data?
-   Do I need to clean or change this data somehow?
-   How is this data stored and maintained?

These questions can also help you establish a way to [maintain and refresh the training data](#data-maintenance) if the model ever needs to be recalibrated for your use case in the future. Your model will need to be recalibrated, or retrained with new/additional data, if the data you're now processing in production has changed from the data you originally trained your model with. It's a best practice to retrain your model with more recent data in addition to your original training set every few months. For example, if your forms change in template or the year ends and you have a new template for the new year, it's a good time to update your training data.

Your business probably has a ton of data you can use to train a model. However, not all of it will be relevant to this specific implementation. Even if you have a lot of samples that might help train your model, you might want to gather additional samples from colleagues who have relevant content. You don't just need a large volume of data: you also need enough [representative samples](#what-does-a-representative-training-dataset-look-like) with enough variation so the model learns to detect complex patterns or traits. By gathering a large variety of samples, your model will learn a lot during training, which will lead to better predictions in production.

As you collect data, pay as much attention to your methods as you do to your goal. The way you think about your dataset and use case may lead to [unintentional bias](#what-is-bias) in the training data as well as the published model.

## What does a representative training dataset look like?

Every training dataset will be different in one way or another because every AI model is different and unique to the business and use case. Let's examine what it takes to build a representative dataset for a fictional company.

Acme Insurance offers vehicle insurance to customers. They're exploring how a [document classification AI skill](create-skill-doc-classify.html) in Appian can support adjustors as they evaluate whether new claims have all of the proper documentation needed to proceed. This documentation includes police reports, repair shop quotes, medical bills, and rental car bills.

How should Acme start building a representative dataset to train the AI model?

1.  Determine the types of documents the model will classify in production.
    -   Acme needs to verify that each claim has police reports, repair shop quotes, medical bills, and rental car bills.
2.  Gather many real samples of those document types, taking special care that the documents are:
    -   **Gathered in equal numbers**: Even though Acme might expect the model to encounter many more repair shop quotes than medical bills, the model should be trained and ready to recognize them equally. If Acme provides 80 repair shop quote sample documents, but only 20 medical bill sample documents, the model might be better classifying documents as repair shop quotes because it has more practice with that document type. [Learn more about how fix imbalanced classes](#how-to-avoid-bias).
    -   **In the same or similar periods of time for each document type**: If Acme's set of repair quotes encompasses a three year span, the police reports should encompass that span as well. If it doesn't, the model may pick up this difference as a signal and make an inaccurate prediction.
    -   **Representative within their document type for your use case**: In other words, Acme should provide multiple types of medical bills from a variety of providers, for a variety of treatments, and for a variety of customers.

With this in mind, Acme is able to assemble a large set of documents that represent all of their data types in equal numbers, from a variety of customers, and with a lot of variety in other types of content. The model that Acme trains with this data will be challenged to learn about the complex patterns and traits, making it better equipped to classify the variety of documents it will encounter in the real world.

## Data maintenance

As your business changes, you should evaluate whether your AI model needs a refresh to keep up. Consider if the model is serving its intended purpose, or if it needs to adapt to meet your current and future needs. Even if the model remains useful, you should periodically retrain it using a more relevant set of data (by adding recent files or removing obsolete ones), so the model remains current with what it expects to see in production.

**Tip:**  Over time, there are nuances in data that humans are unable to explicitly identify. This is why it's a best practice to retrain the model every few months no matter what, and always after a perceptible change to your production data.

### Data drift

No matter how much care you put into crafting a thorough and complete training dataset, you'll need to monitor and refresh the model's understanding periodically after you deploy to production.

**Data drift** is the difference between data the model encounters in production and the data the model was trained with. To make the best predictions, data drift should be minimal. But a number of factors can cause changes to the data that the model encounters in production.

For example, if your business adds new customers, offers new products, or makes other changes, the data you work with can reflect that. If you start to receive invoices from a vendor who is unknown to the model, the predictions might be less accurate.

## What is bias?

Despite existing solely within computer systems, machine learning has a distinctly human trait: bias. Because human beings create, train, and deploy machine learning models, those models may be shaped by our human biases, both known and unknown.

In general terms, **bias** occurs when a person or group exhibits behaviors or judgments that aren't rational or normal in objective circumstances. In other words, something else influences these behaviors or judgments, often in an unfair way.

Bias is an important thing to identify and prevent in ML as well because it can have real-world implications within a business process. Remember: your AI model can only learn from the data that you give it, just like [the example above](#why-invest-time-in-building-a-representative-dataset) where children began to use color to identify fruits and vegetables. It's important to scrutinize your training data and your methods for preparing that data so that you minimize bias within your model as much as possible.

### Types of bias in machine learning

The main type of bias you'll want to be conscious of in machine learning is **Data selection bias**. As you gather samples, data selection bias occurs if your collection doesn't accurately represent all of the possible information or combinations of information that the model might encounter in production.

To demonstrate, consider what this bias might look like with the fruits and vegetables example. In reality, fruits and vegetables are all different colors: red, green, orange, yellow, etc. But if you select images of mostly red fruits and green vegetables, you'd be exhibited data selection bias.

You can see how each of this misstep might impact how the students come to understand the difference between fruits and vegetables. The same idea applies in machine learning.

### What can happen if bias goes unchecked in AI models?

Bias, and the incorrect ML predictions that may result from it, have real-world consequences. To demonstrate, let's look at an example with more impact than fruits and vegetables.

Consider an automated process that looks at applications for admission to a university. The AI model is tasked to predict whether the applicant would be a good fit at the university, based on a number of characteristics like extracurricular engagement, GPA, and aptitude test scores. The model was trained using a number of previously submitted applications where the applicant was ultimately accepted to the university and graduated within four years. However, the dataset didn't include many sample documents from applicants within protected classes, such as students with disabilities or from other countries. Because the model wasn't necessarily trained to recognize that applicants within protected classes are also ideal candidates for university admission, the model may overlook these applications, costing those individuals a chance at admission.

This poor model performance isn't just an oversight. In this case, bias can lead to discrimination and damage the organization's reputation. In the United States, it could also be against the law and lead to severe legal consequences. This is just one example of bias leading to unintended and negative outcomes in machine learning.

Bias doesn't just apply when the data relates to people. Consider a hypothetical pet insurance company training a model to recognize claim documents. If the sample documents only include information related to two pets, the machine learning model might learn to recognize those pet names as indicators of the document type. During training, the model's performance metrics might lead you to believe it is performing well at classifying this document type, but that's only because it was trained and tested on this narrow set of documents. In a real-world scenario, the model will encounter claims with other pet names. Without a wide variety of patterns to learn from, the model won't be as effective at classifying those documents.

### How to avoid bias

Evaluate your dataset by asking the following questions:

-   Does this data accurately represent how often these traits of interest occur in reality?
-   Is there an undesirable trait that has been intentionally left out of this data?
-   Did the person who collected this data take care to gather a diverse set of samples? When they made the selections, were they aware of the full scope of possible samples?
-   Does each item in the dataset completely represent all of the traits we want to use to make predictions?
-   Are there extreme outliers in this dataset?

There are two methods you can use to avoid class imbalance bias in the context of machine learning:

-   **Oversampling** the class that's underrepresented in the training dataset by adding more samples of that data type, relative to the overrepresented type.
-   **Undersampling** the class that's overrepresented in the training dataset by adding fewer samples of that data type, relative to the underrepresented type.

Let's recall the Acme Insurance example to demonstrate how this would work. Recall the guidance to gather example documents in equal numbers. Even though Acme might expect the model to encounter many more repair shop quotes than medical bills in production, the model should be trained and ready to recognize them equally.

If Acme provides 80 repair shop quote sample documents, but only 20 medical bill sample documents, the model might be better classifying documents as repair shop quotes because it has more practice with that document type.

To help ensure that the model is equally able to recognize and classify repair shop quotes and medical bills, Acme gathers 60 more samples of medical bills. Now, the model is trained on 80 samples of both classes. This is an example of **oversampling** the medical bills, so the model is trained to be able to recognize them as well as it can recognize repair shop quotes. Acme is intentionally adding more samples of medical bills, or oversampling that document type, for the benefit of training.

To understand **undersampling**, imagine that Acme is only able to source 50 samples of medical bills, but 10,000 samples of repair quotes. Acme will need to use every medical bill sample, but they'll want to control for the number of repair quotes that the model learns from, again so the model gets to know each document type equally.

In this case, Acme will intentionally add fewer samples of repair quotes. or undersample that document type, for the benefit of training the model to recognize repair quotes and medical bills equally.

## Get training

Once you've assembled a set of training data, you're ready to [start training the model](create-skill-doc-classify.html#start-training).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...