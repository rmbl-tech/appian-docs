---
source_url: https://docs.appian.com/suite/help/25.3/ai-use-cases.html
original_path: ai-use-cases.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# When to Use AI and ML

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian AI Quickstart: 3 Types of AI to Enhance Your Apps

This quickstart guide will help you understand the basics, so that you can identify the AI features that you may want to add to your new or existing Appian apps.

Appian provides a variety of low-code design objects, functions, and smart services you can use to easily integrate artificial intelligence (AI) and machine learning (ML) functionality into your application. This page highlights some common situations where AI and ML can be useful, and how you can use different Appian features to meet your needs.

-   Already know what problem you're trying to solve? Learn [when to use AI and ML](#when-to-use-ai-and-ml).
-   Looking for some inspiration? Jump to [use case examples](#use-case-examples).

## Appian's AI capabilities

Appian provides multiple ways to leverage the power of AI in your applications. Features marked with an asterisk (\*) use generative AI and are subject to [token limits](gen-ai-skills.html#token-limits).

| Feature | Description |
| --- | --- |
| **AI Skills**: automate your business activities using AI |
| [Document classification AI skill](create-skill-doc-classify.html) | Use AI to identify a document's type based on certain traits. |
| [Document extraction AI skill](create-skill-doc-extraction.html) | Use AI to extract data from documents. |
| [Email classification AI skill](create-skill-email-classify.html) | Use AI to identify an email's type based on certain traits. |
| [Prompt builder AI skill](create-skill-prompt-builder.html)\* and [generative AI skills](gen-ai-skills.html)\* | Create a prompt to send to generative AI models. Generative AI skills provide pre-populated templates to help automate common tasks. |
| [Advanced IDP Tools AI skill](create-skill-advanced-idp-tools.html) | Use AI to extract data from complex documents. |
| [Sentiment analysis](fnc_system_a_sentimentscore.html) | Analyze the sentiment of text and receive a list of scores representing the emotional or subjective sentiment. |
| **AI Copilot for Business Users**: End users can collaborate with AI Copilot to gain insights into their enterprise data, without needing to do any extensive analysis. |
|
**Data Fabric Insights**

[AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric)\*
[AI Copilot for reports](allow-users-to-build-reports.html#ai-copilot-for-reports)\* | Ask questions any dataset available in the data catalog, or about custom-built reports. |
|

**Process Insights**

[Suggested views](process-views.html#create-a-view)\*
[Suggested KPIs](process-custom-kpis.html#create-a-kpi)\*
[Suggested insight summaries](collaborate-on-insight.html#add-a-description-to-a-saved-insight)\* | Quickly and easily create process views, KPIs, and summaries for saved insights in Process HQ. |
| [Documents Chat](Documents_Chat_Component.html) | Ask questions about a curated set of documents, enabling users to interact with conversational AI to get quick insights. |
| [Enterprise Copilot](user-copilot.html#enterprise-copilot)\* | Easily access to institutional knowledge specific to your organization, rather than having to search and browse files themselves. |
| [Records chat component](Records_Chat_Component.html)\* | Ask questions about a single record and related record data. For instance, a customer case and all comments associated to it. |
| [Data fabric chatbot component](Data-Fabric-Chatbot-Component.html)\* | Ask questions about your data fabric, enabling users to interact with conversational AI to get quick insights. |
| [Smart Search](records-smart-search.html) | Smart search transforms how you find records by using AI-powered semantic search to understand your intent and deliver relevant results faster.

It ranks results by similarity to uncover hidden connections, detect patterns, and accelerate decision making across your records. |
| **AI Copilot for Developers**: AI Copilot helps developers create applications more quickly by making it faster to create interfaces, generate test data, create test cases, and more. |
| [Create sample data for record types](records-create-sample-data.html)\* | Automatically create realistic record data for existing record types and bypass lots of manual entry. This capability provides secure, authentic record data suitable for effective demos and in-depth testing. |
| [Generate interface from PDF](dev-copilot.html#generate-an-interface-from-a-pdf)\* | Create an interface in seconds by uploading a PDF form. |
| [Generate test cases for expression rules](Expression_Rule_Testing.html#generate-test-cases-with-ai)\* | Elevate your expression rule testing using AI-created test cases. Perfect for unit testing, this capability automatically generates test cases and proposes new scenarios for you to consider, saving you valuable time. |
| [Process model node recommendations](process-model-ai-assisted-development.html) | Use AI to augment your process model development. AI helps developers building process models by suggesting the nodes you are most likely to use next. |

Many Appian Solutions use these AI features to address specific use cases. The following table describes which platform features are integrated into solutions. Features marked with an asterisk (\*) use generative AI and are subject to [token limits](gen-ai-skills.html#token-limits).

| Solution | Platform feature |
| --- | --- |
| Case Management Studio modules: [Case Comments Summary](cms-case-comments-summary-overview.html) and [Case Document Summary](cms-case-document-summary-overview.html) | [Prompt builder AI skill](create-skill-prompt-builder.html)\* and [generative AI skills](gen-ai-skills.html)\* |
| AI Document Center | [Advanced IDP Tools AI skill](create-skill-advanced-idp-tools.html) and [generative AI skills](gen-ai-skills.html)\* |
| Case Management Studio module: [Case Record Chat](cm-case-record-chat-overview.html). | [Records chat component](Records_Chat_Component.html)\* |

## When to use AI and ML

| I want to… | How Appian can help | Example use case |
| --- | --- | --- |
| Enable users to ask questions about business-specific information, like human resources policies. | [Enterprise Copilot](enterprise-copilot.html) | [Document processing & procurement](#processing) |
| Enable users to learn more about vast amounts of data. | [AI Copilot for data fabric and reports](allow-users-to-build-reports.html#ai-copilot) | [Customer support application](#insights-into-case-data) |
| Quickly create realistic data to test my interfaces with. | [Create sample data](records-create-sample-data.html) in record types. | [Insurance claim application](#insurance-claim-application) |
| Automate part of expression rule testing. | [Create test cases](Expression_Rule_Testing.html#generate-test-cases) for expression rules. | [Insurance claim application](#insurance-claim-application) |
| Create content as part of my business process. | Use a [text generation AI skill](gen-ai-skills.html) to tell a generative AI model what text you want to generate and whether you want the output to include any specific logic, format, or other requirements. | [Case management](#case-management-for-large-law-firms) |
| Speed up interface development. | [Generate an interface from a PDF](working_in_design_mode.html#generate) | [Insurance claim application](#insurance-claim-application) |
| Quickly learn more about data within record types. | Chat with data fabric using the [Records Chat](Records_Chat_Component.html) interface component. | [Case management](#case-management-for-large-law-firms) |
| Classify documents into categories specific to my business. | Use the document classification AI skill to build and configure AI models. | [Insurance claim application](#insurance-claim-application) |
| Extract data from PDFs without classification. | Use the document extraction AI skill to define your document structure for extraction. | [Document processing & procurement](#processing) |
| Manually confirm the results of data extracted from a document. | Use the [Reconcile Doc Extraction](Reconcile_Doc_Extraction_Smart_Service.html) smart service. | [Supply management application](#supply-management-application) |
| Classify text into categories from HTML or plain text sources. | Use the [text classification AI skill](gen-ai-skills.html). | [Customer support application](#customer-support-application) |
| Detect the language of text and translate it into the desired language. | Use the [prompt builder AI skill](create-skill-prompt-builder.html). | [Customer support application](#customer-support-application) |

## Use case examples

Appian allows you to integrate modern AI capabilities like document classification, document extraction, and natural language processing seamlessly into your application.

Although you can leverage different AI services within minutes, it's important to consider practical AI adoption in your application.

Depending on the nature of your application, you could use AI to review files and extract key data points, gauge the happiness of your customer relationships, or collect and digitize handwritten information from contracts. Whatever your situation, it's best to consider how AI can improve or solve pain points in your existing process. Let's look at some industry examples.

### Case management for large law firms

#### Generative AI

To help demonstrate how Appian can help your business be more productive using generative AI, let's look at an example in the legal industry.

A large law firm handles class action lawsuits and manages case data in Appian. A single case can include thousands of plaintiffs, so it could take a long time to look for the traits of interest that the plaintiffs have in common. For example, suppose a law clerk needs to determine how many plaintiffs reported a respiratory illness due to materials used to build apartments where they live. This could take a long time to research manually.

The [Records Chat component](Records_Chat_Component.html) can speed up this research tremendously. With this component, the law clerk can ask questions of record data, including related records, using natural language without needing to engineer a prompt. The component uses generative AI—powered by AI Copilot—to answer questions held within that record data. So if the law clerk asks the question in the context of the case record, AI Copilot looks within the related records (such as plaintiffs) to find the answers in a flash.

Where Records Chat surfaces information to help you make decisions, the [text generation AI skill](gen-ai-skills.html) helps you complete the next steps. For example, you can use AI to produce communications in this scenario as well. Using the prompt builder AI skill, you can use plain language to ask an AI model to create whatever text content you need to complete your next task: summarize complex content for lay audiences, create email responses to common inquiries, and more.

When it comes to legal data, privacy and protection are two of the utmost concerns. The Records Chat component and prompt builder AI skill are entirely private AI, so you can rest assured that any inputs and outputs stay within your Appian Cloud site's boundaries and within your control.

#### Document extraction

The firm handles numerous non-disclosure agreements (NDAs) that require close review to ensure identified risks are mediated in the final agreements. The current manual review is time-consuming and prone to errors, diverting lawyers from higher-priority tasks. The [Prompt Builder AI skill](create-skill-prompt-builder.html) can automate this process by extracting and comparing relevant language from both original and negotiated documents. With the prompt builder, the law firm improves their accuracy, saves time, reduces risk of error, and allows their lawyers to focus on more strategic work, leading to an increase in process efficiency.

![prompt-builder-lawyer-usecase](images/prompt-builder-lawyer-usecase.png)

### Document processing & procurement

#### Self-service knowledge

Imagine a state-level department that deals with procurement and contracts on a daily basis. Their workforce often has questions around the management of procurements. The department maintains a few key documents detailing procurement management, but each is long and dense with information. Today, many employees who have questions about procurements have to ask more experienced colleagues, or sort through multiple documents to get their answers. This process takes time for the curious employee, and for the individuals who are sharing their knowledge. This results in time away from other impactful tasks, as well as bottlenecks that prevent procurement from moving forward.

With [Enterprise Copilot](enterprise-copilot.html), the department can solve these challenges using a generative AI chat experience where users can ask questions about curated sets of information specific to their business. The department's knowledge set administrators can upload procurement documentation into a knowledge set. Appian AI Copilot then processes file contents and uses the information to provide deeper, more specific answers to users' questions. Whenever an employee asks a question, they'll also see which file was used to generate the answer, so they can continue learning about that part of the procurement process and trust the answer's accuracy.

#### Document extraction

Invoice and purchase order (PO) processing is essential for businesses across nearly all industries. As organizations scale, processing invoice and PO documents manually can quickly become a bottleneck for other workflows.

Let's say your Appian application supports a rapidly growing finance department. You have a limited number of employees, and they increasingly spend an overwhelming amount of time processing invoices and POs each day. Building a [document extraction AI skill](create-skill-doc-extraction.html) into your existing Appian workflows can take the burden off your employees, freeing them up for more meaningful tasks. Not only does AI take these tasks off your employees' plates, but AI performs these tasks far more quickly and accurately.

Invoice and purchase order document types are a great fit for automatic document extraction because they contain [semi-structured data](how-doc-ex-works.html#document-structure). This document type contains clearly labeled values that are easily extracted into key-value pairs.

### Consumer banking forms processing

#### Document extraction

When working with sensitive financial documents at a bank, security is of the utmost importance. Yet, you most likely still process many forms manually on paper without a digital workflow. Because you often process thousands of these documents a week, these processes are error-prone and time consuming. You may already be using Appian to enhance your other workflows, so how can you take it one step further?

We recommend using built-in [Appian document extraction](create-skill-doc-extraction.html) to process your secure documents and keep all of your data within Appian Cloud.

![consumer-banking-forms-use-case.png](images/doc_extraction/consumer-banking-forms-use-case.png)

### Supply management application

#### Document classification + extraction

Now let's say you work for a company specialized in supply management. Every day, your Appian application receives several invoice forms that need to be audited and filed for processing. Since each form is structured in the same format and contains easily identified fields, you could delegate this task to Appian to extract the data from each field and then store the results.

Using AI skills and smart services, you can design your process to [classify documents](create-skill-doc-classify.html) and [extract data](create-skill-doc-extraction.html) from them automatically and in the context of other steps of your process. If you want to confirm that the data extracted was correct before saving it to the database, you can build human-in-the-loop validation into the process to your employees are involved at the right place and right time.

A supply management application is just one example of using document extraction. You could apply this process to any type of application that requires a human to audit, review, or organize data from a document. Since document extraction focuses on fields, consider using these capabilities when processing forms like invoices, records, or applications.

### Insurance claim application

#### Process models + document classification

Next, let's look at the insurance industry. Say your application receives hundreds of insurance claims a day, and your team is overwhelmed by the amount of claim data, which is slowing down the process and increasing the possibility for inaccurate decision making. With this example, AI can be used to improve the claim process.

To start, you can [design a claims submission interface quickly with AI Copilot](dev-copilot.html#generate-an-interface-from-a-pdf). Simply upload a PDF of the claim form your customers fill out, and AI Copilot will generate an interface. You'll verify the fields and configure the data in a fraction of the time it used to take. Need to test the interface, but don't have data yet? AI Copilot can also help [generate sample data](records-create-sample-data.html) to test the interface using realistic examples. If your interface uses expressions to dynamically populate content, you can also [create test cases using AI Copilot](Expression_Rule_Testing.html#generate-test-cases).

Instead of having all claims go to one team to manually identify and sort through supporting documentation, you could delegate claims to different teams depending on where the damage occurred. Custom AI models can identify the types of documentation that accompanies each claim, so that the relevant teams are notified or involved at the right times.

[Create an AI skill](create-skill-doc-classify.html) to use in the claims process. Within the AI skill object, define document types you expect to accompany incoming insurance claims. Use representative data sets to train the AI model to recognize each document type based on their unique characteristics. Then, configure the process model to follow different workflows based on the types of documents each incoming claim includes.

This is just one way the insurance industry could incorporate AI into their daily processes. Using Appian, applications like this one can easily benefit from full stack automation by leveraging low-code workflows, [robotic process automation (RPA)](rpa-9.17/appian-rpa.html), and AI. Appian's [Connected Claims Application](https://www.appian.com/connected-claims/) demonstrates this by using built-in intelligent document management to evaluate claims and system-recommended investigation paths for intelligent fraud analysis. Paired with RPA, the Connected Claims Application allows you to pass data easily between different systems and view data in a unified interface within Appian.

### Customer support application

#### Translation + natural language processing

Let's say your Appian application is built to manage a global customer support center. You receive support tickets from around the world in many different languages, and your support engineers need to be able to understand customer issues quickly in order to resolve them in a prompt manner.

To avoid slow resolution time and misinterpreting the customer's issue, you can incorporate AI translation into your application so each submitted issue is translated into the support engineer's native language. Using Appian, you can leverage the [prompt builder AI skill](create-skill-prompt-builder.html) to translate text and analyze sentiment in seconds. Add the skill to your process model and configure the smart service to use the text as an input. The text describing the customer issue is translated and appears in the support engineer's task in their native language.

![workflow_translation](images/workflow_translation.png)

Customer support related applications are prime candidates for numerous types of AI since they are responsible for constant and reliable communication with customers. Using AI, you can easily detect customer sentiment with [natural language processing](google-cloud-natural-language.html), properly understand a customer's issue through fast AI [translation](google-cloud-translate.html), or leverage [document extraction](Appian_Doc_Extraction.html) capabilities to review and audit customer contracts.

#### Insights into case data

Depending on the size of your customer base, support cases may generate tons of data. This information is not only important to learning about how to improve your product or documentation to prevent future incidents, but also to help uncover insights on how to optimize the process and make it more efficient.

Suppose an analyst is tasked with learning more about how efficiently the support process solves customers' problems. [Process HQ](processhq.html) offers two ways to get these insights using [AI Copilot](appian-ai-copilot.html).

The analyst is asked to build a report that shows the number of tickets in various statuses. He isn't sure which dataset contains the most relevant information for the report, so to start, the analyst can use [AI Copilot for data fabric](allow-users-to-build-reports.html#ai-copilot-for-data-fabric) to ask questions about all of the available data sets. He can ask AI Copilot any of the following questions:

-   What is the number of cases in each status?
-   How many cases have been created by year and month?
-   How many cases are assigned to each employee?

Because AI Copilot cites its sources, the analyst can also see the name of the dataset used to answer the question, as well as other details about the query. The analyst can then use the name of the dataset to start building the report.

After he selects the dataset and relevant fields, the analyst can begin to [ask AI Copilot questions about the report](allow-users-to-build-reports.html#ai-copilot-for-reports). For example, he can ask "which factors help case workers close their cases faster?" and "What are some areas for improvement?". AI Copilot replies with insights in a fraction of the time it would take a human being to analyze the wealth of available data found in the report.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...