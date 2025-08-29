---
source_url: https://docs.appian.com/suite/help/25.3/create-skill-prompt-builder.html
original_path: create-skill-prompt-builder.html
version: "25.3"
title: "Create a Prompt Builder AI Skill"
page_id: "create-skill-prompt-builder"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Prompt Builder AI Skill

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

Create and Manage Prompts with Appian Prompt Builder AI Skill

Learn how you can use the Appian prompt builder AI skill to quickly and simply integrate generative AI prompts into your Appian apps.

## Overview

This topic covers how to create an AI skill and build a prompt to send to generative artificial intelligence (AI) models.

A prompt builder AI skill helps you to create a prompt to send to [generative AI](what-is-ai.html#generative-models) models. You'll tell the model what you want it to do using plain language. After adjusting a few settings and testing the prompt, you can see what the model returns based on your instructions.

Here's a high-level breakdown of how to create and use a prompt builder AI skill:

1.  [Create an AI skill](#create-an-ai-skill)
2.  [Describe what you want the skill to do](#describe-what-you-want-the-skill-to-do)
3.  [Adjust the temperature](#adjust-the-temperature)
4.  [Provide examples](#provide-examples)
5.  [Test the prompt](#test-the-prompt)
6.  [Use the skill!](#use-the-skill)

## Create an AI skill

1.  In the [**Build** view](build-view.html), click **NEW > AI Skill**.

    ![new-menu-ai-skill](images/new-ai-skill.png)

2.  Click **TRY PROMPT BUILDER**.

    ![create-skill](images/create-ai-skill-prompt-builder.png)

3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#rule-objects). |
    | **Description** | (Optional) Enter a brief description of the AI skill. |

4.  Click **CREATE**.
5.  On the **Review AI Skill Security** window, [configure security](ai-skill-object.html#security).
6.  Click **SAVE**. The AI skill opens in a new dialog or window.

## Describe what you want the skill to do

To start, instruct the model on what to do with the information you'll give it. Use plain language to describe what you're going to send the model and what you expect in response.

For example, you could instruct the model to:

-   Summarize long or complex pieces of text
-   Generate responses or other content
-   Extract certain pieces of information from larger pieces of text

You can also include details about what to exclude, the format of the response, as well as the length or tone.

Not sure what to say? That's okay! You can start by describing the minimum requirements for the model. Then, [add some example inputs and outputs](#provide-examples). You can [test the prompt](#test-the-prompt) directly in the AI skill to see if the model responded in a way you need and expect.

### What makes a good prompt?

As you get started, remember the model doesn't have any context or awareness of what your end goal is. The model isn't like an old coworker who knows your habits or expectations. Instead, the model is more like a brand new hire who's learning and eager to help. You'll have to be very clear in your prompt, describing your task and your expectations. This is why [examples](#provide-examples) are helpful, too.

Let's use an example to compare a good prompt to a bad prompt, and how the results differ. Imagine we're going to use this model to summarize form submissions on our website. Customers sometimes submit support requests through the general inquiry form, and we want to make sure that we respond to them in a timely manner. We get hundreds of submissions a day, which takes a lot of time to manually review and triage. So our business is building an Appian process to summarize the form submissions and involve a human being when the model spots a support inquiry.

Based on that use case, consider how these prompts might perform:

| Bad prompt | Good prompt |
| --- | --- |
| Summarize the key information in this form and let me know if it's a support request. | From the content of this form submission, please answer the following questions:
-   What type of submission is this?
-   What information is important in this submission?
-   What team would be responsible for responding to this submission?

 |

When the model analyses a form submission from a customer asking for assistance with their electric bike, here are the responses it returns:

| Bad prompt response | Good prompt response |
| --- | --- |
| This appears to be a support request regarding a persistent battery issue affecting the reliability of an electric bike. The customer has attached images of error messages and is seeking clear instructions or steps to promptly address the malfunctioning battery. | This is a customer support submission.
The important information in this submission includes:
-   The customer is reporting a persistent issue with their electric bike battery malfunctioning since January 1st
-   customer has followed troubleshooting steps in the manual but the problem persists
-   The customer has attached images of error messages shown on the bike's console
-   The customer is seeking guidance and clear instructions to resolve the battery malfunction promptly

The team responsible for responding to this submission would be the electric bikes customer support/service team, as the customer is reporting an issue with their electric bike battery and is seeking assistance from the company. |

Specifying the output format is especially helpful if you plan to use the response data elsewhere in your process. You can ask the model to return that information in the format you need, and you won't need to transform it using a script task in the process.

**Tip:**  Learn more about [what makes a good prompt for generative AI](gen-ai-skills.html#what-makes-a-good-prompt?)

## Adjust the temperature

Next, choose the **temperature** of the prompt. This value tells the model how controlled or creative to be with its answers.

As a generative AI model creates a response, it uses probability to determine the word that most likely comes next in a sequence. Temperature controls the probability that the model uses to choose the next word in its response.

A lower temperature means that the model should only choose words where there's a high probability it comes next in a sequence. With a lower temperature, you can expect more consistent answers each time the model is prompted.

Conversely, a higher temperature tells the model that it can choose words with a lower probability. This leads to more diverse responses because the model isn't always choosing the highest probability word that comes next.

## Provide examples

Examples help show the model what you'll send to it and what you expect in response. Remember that you're building a prompt for a specific use case, so your examples should help support that use case. Refer to the following table for examples:

| Use case | Example inputs | Example outputs |
| --- | --- | --- |
| Detect contact information in an email | Email text | List of phone numbers and email addresses |
| Summarize complex content, like a legal brief | Legal brief text | Short, easy to read summary |
| Generate FAQs about a new policy | Part of the policy | Two to three questions and answers related to this part of the policy |

## Test the prompt

Before you integrate the skill into a process, you want to be confident the model interprets the prompt properly and returns the results you expect. You can test the prompt using sample text to verify it works as you expected directly within the AI skill object.

To test the prompt:

1.  Within the AI skill, locate the **Test Prompt** area.
2.  Add sample text into the **Test Input** field.
3.  Click **TEST**. The AI model returns a response based on your prompt and test input.

If the response meets your requirements, you're ready to use the skill in a process. If you want to continue experimenting, you can [alter the prompt](#describe-what-you-want-the-skill-to-do), [adjust the temperature](#adjust-the-temperature), or [add more examples](#provide-examples) to help improve the model's responses.

## Use the skill

Now you're ready to use your prompt in a process.

Add the [**Execute Generative AI Skill** smart service](Execute_Generative_AI_Skill_Smart_Service.html) and configure it to call your new skill.

Review [the feature's compliance](https://trustcenter.appian.com/?view=adfcffa6-eb6b-495d-4d53-690439985a1a) to ensure it aligns with your organization's security requirements.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...