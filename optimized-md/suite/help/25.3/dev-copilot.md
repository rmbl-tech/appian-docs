---
source_url: https://docs.appian.com/suite/help/25.3/dev-copilot.html
original_path: dev-copilot.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian AI Copilot for Developers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

With Appian AI Copilot, developers can:

-   [Create an interface](#generate-an-interface-from-a-pdf) in seconds by uploading a PDF form.
-   [Create sample data](#generate-sample-data-for-record-types) to test and showcase their development efforts.
-   [Create realistic test cases](#generate-test-cases-for-expression-rules) to thoroughly test expression rules.

**Note:**  AI tools are primarily designed for language-based tasks, such as generating text, answering questions, or providing insights. While AI Copilot for data fabric can assist with obtaining numerical answers, other AI Copilot tools are not optimized for performing precise mathematical calculations or for scenarios that require numerical accuracy.

## Generate an interface from a PDF

AI Copilot allows you to harness the power of generative AI to help you [quickly build interfaces](working_in_design_mode.html#generate) that provide a beautiful and effortless experience for your users. You can use AI Copilot to generate an interface directly from a PDF in just a few clicks.

### Support and compatibility considerations

This capability now uses [private AI](private-ai.html). For cloud customers in regions not supported by private AI, access to this capability may be limited unless cross-region configuration is enabled.

On June 6, 2025, Microsoft will end support for GPT-4, impacting Appian versions 23.3-24.3. Self-managed customers using these versions of Appian will lose access to the PDF to interface capability, which may result in errors if the capability remains active. To prevent issues, we recommend removing OpenAI credentials to disable and hide the capability when building interfaces.

## Generate sample data for record types

Explore a faster way to develop, test, and showcase your work with AI-generated sample data. Skip the manual effort and instantly [create realistic data for record types](records-create-sample-data.html) linked to your existing database. Thanks to Appian AI Copilot, you'll enjoy secure, authentic data that's ideal for captivating demos and comprehensive testing.

[![images/sdg-example.gif](images/sdg-example.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img887)

[![](images/sdg-example.gif)](#_)

## Generate test cases for expression rules

Testing is the cornerstone of exceptional applications. Appian AI Copilot helps to elevate your expression rule testing using AI-created test cases. Perfect for unit testing, this capability [automatically generates test cases](Expression_Rule_Testing.html#generate-test-cases) and proposes new scenarios for you to consider, saving you valuable time. AI Copilot generates test cases using specific details from your expression rule, including the rule's name, description, full definition with comments, rule inputs, and any existing test cases to avoid duplicates. While Appian AI Copilot does not possess the same in-depth understanding of the application as you do, it is designed to identify potential edge cases that may not be immediately obvious. These include scenarios involving null values or unusually large or small data inputs. You can discard suggestions you find irrelevant and refine the rest, just like you would with your own test cases.

[![images/tcg-example-testcases.gif](images/tcg-example-testcases.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img888)

[![](images/tcg-example-testcases.gif)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...