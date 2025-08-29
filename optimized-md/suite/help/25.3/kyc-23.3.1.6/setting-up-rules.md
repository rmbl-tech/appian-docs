---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/setting-up-rules.html
original_path: kyc-23.3.1.6/setting-up-rules.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Rules

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The **Questions** section of the Connected FS Settings site allows business users to tailor the questions and rules required for each KYC investigation. Questions and rules are the building blocks for a KYC workflow questions step. This page describes how to manage, create, and update questions and rules.

![questions_menu.png](images/questions_menu.png)

## Manage Questions

The **Questions** tab is where questions can be created, imported, edited, and deleted.

### Create a question

To create a question:

1.  Click **New Question**.
2.  Enter the question text.
3.  Select the response type.
4.  Configure answer responses based on the response type selected in **step 3**.
5.  Click **CREATE** or **CREATE AND ADD ANOTHER**.

![create_a_question_Kyc.jpg](images/create_a_question_Kyc.jpg)

### Question response types

There are several question response types for the user to choose to capture the correct data from the questionnaire.

The response types are:

1.  **Date**: respondents must enter a date to answer the question.
2.  **Dropdown**: respondents can select from a dropdown list of options.
3.  **Checkbox**: respondents can select one or more answers from a list of checkbox options.
4.  **Paragraph**: respondents must enter text to answer the question.
5.  **Radio Button**: respondents can select a single answer from a list of options.

![response_types_kyc.png](images/response_types_kyc.png)

### Configuring response types

Different response types may require some additional configuration.

For paragraph and date response types, business users can set the following configurations:

1.  **Tasks to be completed**: additional tasks that will be generated when the answer is selected.
2.  **Document requirements**: additional documents that are required when the answer is selected.

![paragraph_response_options_Kyc.jpg](images/paragraph_response_options_Kyc.jpg)

For checkbox, dropdown, and radio button response types, business users can set the following configurations:

1.  **Response text**: the answer the user can choose.
2.  **Max Selection**: The number of answers the users can select while answering the questions - applicable to checkbox and dropdown response type only.
3.  **Response Risk score**: the amount of risk score points added to the total risk score calculation if the answer is selected.
4.  **Manual review required**: the investigation requires routing for manual review when the answer is selected.
5.  **Tasks to be completed**: additional tasks that will be generated when the answer is selected.
6.  **Document requirements**: additional documents are required when the answer is selected.

![dropdown_response_options_kyc.jpg](images/dropdown_response_options_kyc.jpg)

### Update a question

When a user updates a question, the updates are applied everywhere the question is used.

To update a question:

1.  Click on the question name.
2.  Make any necessary edits to question text, tasks, documents, and response option text.
    -   **Note**: Changing response type is not supported.
    -   **Note**: Users cannot remove a response option if there is a follow-up question based on that answer in a rule or workflow template.
3.  Click **UPDATE**.

### Delete a question

If a question is entered incorrectly or is no longer needed, a user can delete a question. However, this question must not be used in any rules or workflow templates before being deleted.

To delete a question:

1.  Click the **delete** icon.
2.  Confirm that you would like to delete the question.
3.  Click **DELETE**.

If the question is used in either a rule set or a KYC workflow template, the user receives a warning that the question cannot be deleted.

## Manage Rules

Once you create questions, business users can create sets of questions, called **rules** and use them in the KYC workflow templates. Rules also allow the users to define dynamic relationships between questions that become the building blocks of the screening questionnaires.

### Create a rule

To create a rule:

1.  Click **CREATE RULE**.
2.  Enter **Rule Name** and **Rule Tags**.
3.  Add questions.
4.  Click **CREATE**.

While adding a question, the user can define relationships between questions to determine if another question should be asked based on the answer to a prior question.

To add a dynamic follow-up question:

1.  Click **Add Question**.
2.  If there is a dropdown or radio button question type already on the page, select **NO** for **Is this a standalone question?**.
3.  Select **What question in the template should this question appear after?**.
4.  Select **What response, if chosen, should this appear?**.
5.  Click **Add**.

#### Tag a rule

You can use rule tags to group different rules use together. This can help users better categorize and organize their rule sets.

To create a rule tag:

1.  Click **New Tag**.
2.  Enter the tag name.
3.  Click **SAVE**.

The rule tag will now be available in the rule tag dropdown so you can select and add the rule.

### Update a rule

If you edit or update a rule, the updates are applied everywhere the rule is used.

To update a rule:

1.  Click on the rule name.
2.  Make any necessary edits.
3.  Click **UPDATE**.

### Delete a rule

If a rule is no longer needed, a user can delete the rule. However, this rule must not be used in any workflow templates before being deleted.

To delete a rule:

1.  Click the trashcan icon.
2.  Confirm that you would like to delete the rule.
3.  Click **DELETE**.

If the rule is used in a KYC workflow template, the user receives a warning that the rule cannot be deleted.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...