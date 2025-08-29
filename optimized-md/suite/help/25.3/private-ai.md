---
source_url: https://docs.appian.com/suite/help/25.3/private-ai.html
original_path: private-ai.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Private AI

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Everything You Want to Know about Appian Private AI

What is private AI, and how does it work? In this video, Appian Director of Architecture Mark Talbot breaks down the basics of private AI, explains how it functions, and answers common questions from customers.

## Overview

Artificial intelligence (AI) and machine learning (ML) can revolutionize how you do business. But with data as the foundation, AI and ML are exciting prospects that must be carefully planned, implemented, and used: especially if you plan to use AI with proprietary or protected information.

This page describes **private AI**: Appian's approach to protecting your data during model creation, training, and use. You'll find details on private AI's advantages over public AI tools, and how we build features with private AI in mind.

With Appian's private AI, we:

-   Never share your data outside of the [Appian Cloud compliance boundary](https://appian.com/support/resources/trust/security.html).
-   Never train our own models on your data, or share your models with other customers.
-   Ensure data always remains in your control.

![Benefits of Private AI](images/private-ai-pyramid.png)

[Jump to the list of Appian private AI features](#private-ai-feature-matrix) to get started building secure AI-powered applications.

## Public AI vs. Private AI

Appian wants you to embrace AI knowing that your data is protected during every step of design, implementation, and use. The best and most secure way to integrate AI into your processes is through private AI.

Learn more about private AI's advantages over public AI:

|   | Private AI | Public AI |
| --- | --- | --- |
| Data sharing | Your data is never shared outside of Appian's Cloud compliance boundary. | Your data is in the hands of the public AI model owners, and may be used at their discretion. |
| Model training and sharing | Your data is only used to train your models and those models are never shared. | Your data may be used to train other models, including those for competitors. |
| Data control | Your data always remains within your control. | Once your data is shared, you can't always know how it will be used or who will see it. |

## Private AI feature matrix

| Feature | Privacy and protection |
| --- | --- |
| **AI Skills** |
| [Prompt builder AI skill](create-skill-prompt-builder.html) and [generative AI skills](gen-ai-skills.html) | Prompt and input text never leave Appian's security boundaries. |
| [Document extraction AI skill](create-skill-doc-extraction.html) | Build and train your own model using your own sample documents. Custom models are tailor-made for your business to provide higher accuracy. |
| [Document classification AI skill](create-skill-doc-classify.html) | Build and train your own model using your own sample documents. Custom models are tailor-made for your business to provide higher accuracy. |
| [Email classification AI skill](create-skill-email-classify.html) | Build and train your own model using your own sample emails. Custom models are tailor-made for your business to provide higher accuracy. |
| [Advanced IDP Tools AI skill](create-skill-advanced-idp-tools.html) | Tap into additional intelligent document processing capabilities to extract data from lengthy and complex documents with tables that span multiple pages, contain nested tables, or other complicated formatting. |
| [Sentiment analysis](fnc_system_a_sentimentscore.html) | This function analyzes text to determine its emotional sentiment and processes data with private AI, ensuring that your information remains protected and compliant with privacy standards. |
| **AI Copilot for Business Users** |
| [Records chat component](Records_Chat_Component.html) | This component returns data according to [record-level security](record-level-security.html) you have configured. We don't give models any information the user does not have permission to access. The component never has the opportunity to share information the user shouldn't have access to. |
| [Documents Chat](Documents_Chat_Component.html) | This component returns data according to [record-level security](record-level-security.html) you have configured. We don't give models any information the user does not have permission to access. The component never has the opportunity to share information the user shouldn't have access to. |
|
**Data Fabric Insights**

[AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric)
[AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports) |

Each dataset inherits the record type object security and record-level security configured on the record type and its related record types. AI Copilot responses only reference the data that the user has access to.

Appian does not share or reuse data or models utilized by this feature.

 |
|

**Process Insights**

[Suggested views](process-views.html#create-a-view)
[Suggested KPIs](process-custom-kpis.html#create-a-kpi)
[Suggested insight summaries](collaborate-on-insight.html#add-a-description-to-a-saved-insight) |

AI Copilot responses only reference the data that the user has access to.

Appian does not share or reuse data or models utilized by this feature.

 |
| [Enterprise Copilot](user-copilot.html#enterprise-copilot) | Files and conversations never leave Appian's security boundaries. |
| **AI Copilot for Developers** |
| [Generate interface from PDF](dev-copilot.html#generate-an-interface-from-a-pdf) | Allows you to harness the power of generative AI to quickly build beautiful, effortless user interfaces directly from a PDF in just a few clicks.

Appian does not share or reuse data or models utilized by this feature. |
| [Process model node recommendations](process-model-ai-assisted-development.html) | Appian uses AI to suggest the next steps as you design your process, making development faster and easier. All data stays securely within Appian maintaining strict adherence to privacy and security best practices. |
| [Create sample data for record types](records-create-sample-data.html) | Develop and test your applications faster by automatically creating realistic record data suitable for effective demos and in-depth testing. |
| [Generate test cases for expression rules](Expression_Rule_Testing.html#generate-test-cases-with-ai) | Appian AI Copilot helps to elevate your expression rule testing using AI-driven test cases. Perfect for unit testing, this capability not only suggests scenarios to consider but also saves you time by automatically generating basic test cases. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...