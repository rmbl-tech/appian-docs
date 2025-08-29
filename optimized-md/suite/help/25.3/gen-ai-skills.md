---
source_url: https://docs.appian.com/suite/help/25.3/gen-ai-skills.html
original_path: gen-ai-skills.html
version: "25.3"
title: "Generative AI Skills"
page_id: "gen-ai-skills"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Generative AI Skills

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

This topic describes AI skills that use generative AI to automate many common tasks in your business processes.

Generative AI skills handle document digitization, even for scanned or image-based content. They support file types like JPEG, PNG, TIFF, and PDFs, and automatically apply Optical Character Recognition (OCR) to extract text for seamless processing.

### What is generative AI?

Generative AI models create new content. Generative models take a prompt as input (such as a question or request). As the model evaluates that request, it recalls what it knows about those characteristics. As it begins to formulate a response, it uses probability to determine what comes next.

The output is entirely new content. Rather than regurgitating information word-for-word, generative models can formulate more specific answers, crafted just for that prompt. Examples of generative models include chat bots and image generators.

### When to use generative AI

Generative AI is very flexible, so you can use it in multiple ways in your Appian processes. You can use generative AI to summarize content, extract information you're interested in, and detect sensitive information. You can even specify how you want those results to appear: in code, a paragraph, or a bulleted list.

Here are a few examples of when to use generative AI in Appian:

| If you want to… | Use… |
| --- | --- |
| Quickly determine whether a form submission is a support request or a general inquiry | Text classification or unstructured email classification |
| Extract essential details of a legal document, such as a contract | Unstructured document extraction |
| Summarize action items and assignments in a meeting transcript | Text extraction |
| Identify sensitive, legally protected information in a portfolio of medical documents | PII extraction from documents |
| Evaluate if your business is a good fit for a contract opportunity | Document summarization |
| Create content for a new product launch, in line with your business's branding | Text generation |

## AI Skills using generative AI

All generative AI skills create a [prompt builder AI skill](create-skill-prompt-builder.html) with a pre-populated template based on your use case. You can adjust the prompt, control the temperature, provide examples, and test the prompt directly within the AI skill.

If you don't see an AI skill suited to your use case, you can always use the ![ai](images/icon/ai.png) [**Prompt Builder**](create-skill-prompt-builder.html). Use this skill to create a prompt to send to generative AI models. You'll tell the model what you want it to do using plain language. After adjusting a few settings and testing the prompt, you can see what the model returns based on your instructions. Use this skill to summarize long or complex text, generate new content, and more!

### Classification

-   ![ai](images/icon/ai.png) **Text**: Identify text based on certain traits. You'll tell us about the types of text you want to classify in your business process and provide samples of each type.

### Extraction

-   ![ai](images/icon/ai.png) **Text or Emails**: Extract data from text or emails. You'll tell us what you want to extract and how you want that information to appear in the output.
-   **Documents**: Extract data from a document.
    -   ![ai](images/icon/ai.png) **Unstructured**: You'll tell us what you want to extract from an unstructured document and how you want that information to appear in the output. For example, this skill can help you extract data from large or free-flowing paragraphs of text, like contracts or from visual elements like checkboxes, charts, or images.

### Generation

-   ![ai](images/icon/ai.png) **Text**: Create text for any purpose. You'll tell us what text you want to generate and whether you want the output to include any specific logic, format, or other requirements.

### Summarization

-   ![ai](images/icon/ai.png) **Text, Email Text, or Document Text**: Summarize text from any source, including emails and documents. You'll tell us what you want to summarize and how you want the summary to appear.

### PII Detection

-   ![ai](images/icon/ai.png) **Text, Email Text, or Document Text**: Extract personally identifiable information (PII) in a document, email, or text block. You'll tell us the personally identifiable information (PII) you want to extract, such as names or phone numbers.

**Tip:**  To use these AI skills in a process, add the [**Execute Generative AI Skill** smart service](Execute_Generative_AI_Skill_Smart_Service.html) to your process model.

## What makes a good prompt?

In the context of AI, a prompt is how we communicate with the large language model (LLM) about what we want it to do. A well crafted prompt can help you communicate with the model more effectively, and reduce the amount of time you spend tweaking or troubleshooting.

Crafting a good prompt can improve:

-   precision and relevance of the model output,
-   efficiency by getting the desired response in one question,
-   safety by excluding undesired output, and
-   customization with our own relevant data.

If you're looking to build a prompt from scratch, you might want to consider the following aspects:

-   **Define your use case**: What do you want the model to do? This is your use case. It can also be helpful to think of edge cases. Essentially, what do you want the model to _not_ do? Writing these requirements and expectations in your prompt helps the model understand its purpose.
-   **Tell the model what input to expect (defining the input data)**: If the prompt will always include content for a certain type or format, it may be helpful to tell the model this in the prompt. For example, "I want you to summarize this email text and provide a suggested response."
-   **Tell the model what output you want (defining the output data)**: LLMs are not deterministic, so it is possible that the model won't always return data in the structure you specify. However, you can be specific about what you want the model to return. For example, you can tell the model you want the response to be in JSON, HTML, a bulleted list, or any other format. You can also tell the model to include its response between tags, to help keep the answer more focused.
-   **Gather examples**: You'll want to provide examples to help the model produce the answers you're looking for. Examples help provide the model with context, so it will produce output that's more specific to your request.
-   **Consider length, tone, and audience**: Another thing to consider when specifying the output is how it will be used and who will see it. Does it need to be a certain length, perhaps 3 paragraphs? Should it be written for a certain audience, such as customers? If you help define the context for the model, you'll get results that are more in-line with what you need.
-   **Remember token limits**: The model can process [a set number of tokens](#token-limits), or units of analysis. The model will process your prompt and the input data. Keep this in mind when you craft the prompt, because the longer the prompt is, the smaller the input can be.

**Tip:**  Put the most important part of your prompt (such as output format or a specific question to answer) at the end of your prompt so the model is clear on what your ultimate request is.

### Prompt formatting tips

As you work with generative AI skills, you may notice that formatting your prompt in certain ways helps generate more accurate or consistent responses. If you're experimenting with writing a prompt, here are a few suggestions to try.

Each guideline is applied to an example prompt for this scenario: You work at NexGen, a distribution company that runs order fulfillment centers. You use Appian to automate order submission workflows across several teams with the Order Fulfillment (OF) app. You're building an AI skill to extract information from contracts.

-   **Use XML tags**: Like other pieces of code or programs, AI models are highly structured and logical. You can make your prompt easier for the model to interpret by structuring it with XML tags. For example, you can surround parts of the prompt with tags to show the model what elements are found there:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    <Task>
    You need to find contract agreement entities from the input information.

    <Context>
    Here are the entities you need to return:
    contractorName (Contractor Name):
    contractorAddress (Contractor Address):
    contractorContractSigner (Contractor Contract Signer):
    clientName (Client Name):
    clientAddress (Client Address):
    clientContract Signer (Client Contract Signer):
    effectiveDate (Effective Date):
    servicesProvided (Services Provided):
    fees (Fees - only the currency & numerical value):
    paymentTerms (Payment Terms):
    severabilityClauseExists (Severability Clause exists, yes or no):
    </Context>
    </Task>

    <Instructions>
    1) Your output will be json format
    2) Only output the entities listed in the context section
    </Instructions>
    ```

-   **Assign roles**: Remember that the AI model only has the context you provide it. So if you want the response to be appropriate for a certain person, or use the expertise of a certain profession, you could include that in the prompt. You could add the following to the top of the prompt:

    ```
    1
    2
    3
    <Role>
    You are an expert at sifting through large amounts of information and finding the entities of interest.
    </Role>
    ```

-   **Prefill the model's response**: Prefilling is a technique used to tell the model how its response should start. This is especially useful when prompting the model to return a certain structure, like JSON. When prompting the model for a JSON list, add `Assistant: [{` and when prompting for a single JSON object, add `Assistant: {`. These formats are in addition to the description you provide in plain language. If we apply this guidance to the prompt above, it might look like this:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    21
    22
    23
    24
    25
    <Task>
    You need to find contract agreement entities from the input information.

    <Context>
    Here are the entities you need to return:
    contractorName (Contractor Name):
    contractorAddress (Contractor Address):
    contractorContractSigner (Contractor Contract Signer):
    clientName (Client Name):
    clientAddress (Client Address):
    clientContract Signer (Client Contract Signer):
    effectiveDate (Effective Date):
    servicesProvided (Services Provided):
    fees (Fees - only the currency & numerical value):
    paymentTerms (Payment Terms):
    severabilityClauseExists (Severability Clause exists, yes or no):
    </Context>
    </Task>

    <Instructions>
    1) Your output will be json format
    2) Only output the entities listed in the context section
    </Instructions>

    Assistant: {
    ```

-   **Ask the model to show its work**: If your prompt is returning unexpected results, you can try to identify the issue by instructing the model to show how it arrived at that result. You can add an instruction such as "Tell me step-by-step how you arrive at the answer." The output should include detailed steps about the logic the model used, which can help you determine the point at which it starts to stray from the response you're seeking. You can then update the prompt to help clarify that part.
-   **Ask the model to cite its sources**: If you see any results that you aren't confident are correct, you might find it useful to ask the model to cite the sources (such as a page number or paragraph number) it used to generate the response.

### Token limits

In the context of machine learning, a token is a unit of analysis. A model breaks down data into meaningful parts – tokens – before it begins processing that data. Language processing models break down paragraphs of text into their smallest units, but these units aren't always equivalent to words. Instead, a token could be part of a word. Therefore, the number of tokens won't always equal the number of words in the text analyzed.

For example, the model is given the sentence, "the quickest brown fox is jumping over the laziest dog." There are 10 words in this sentence. However, there could be 13 tokens if the model breaks longer words such as `quickest` into `quick` and `est` for analysis. `Quickest` is one word, but `quick` and `est` are two tokens.

## Usage considerations

### File types

In addition to PDFs, generative AI skills also accept JPEG, PNG, and TIFF files as direct inputs. The way these files are processed depends on the option you select for the AI Skill. If the skill is set to **Text only**, only the text content is analyzed. If it's set to **Text and visual elements**, the skill will also analyze the visual elements of the document.

Different requirements apply for each input type:

-   **Text**: Only plain text is supported for text input, so file size, page count, and image limits do not apply.
-   **Email**: EML files are supported with a maximum file size of 25 MB. Page and image size limits do not apply.
-   **Document**: See the following table for the Document input type requirements.

### Document input type requirements

| File Type | Mode | Max File Size | Page Limit | Max Image Size |
| --- | --- | --- | --- | --- |
| **PDF** | Text only | 25 MB | 100 pages | N/A |
| Visual elements and text | 25 MB | 20 pages | N/A |
| **JPEG, PNG** | Text only | 10 MB | N/A | 10k x 10k pixels |
| Visual elements and text | 3.75 MB | N/A | 8k x 8k pixels |
| **TIFF (single-page)** | Text only | 10 MB | 1 page | 10k x 10k pixels |
| Visual elements and text | 3.75 MB | 1 page | 8k x 8k pixels |
| **TIFF (multi-page)** | Text only | 10 MB | 100 pages | 4k x 4k pixels |
| Visual elements and text | 3.75 MB | 20 pages | 4k x 4k pixels |

### Language support

Appian is able to extract data from documents in most languages when certain configurations are enabled. To extract data in languages other than English:

1.  Create a generative AI skill that takes documents as inputs, including:
    -   **Extraction > Documents > Unstructured**
    -   **Summarization > Document Text**
    -   **PII Detection > Document Text**
2.  In the AI skill object, under **Identify Document Type**, select **Visual elements and text**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...