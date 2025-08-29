---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/rm-configuring-questionnaires.html
original_path: rm-24.4.2.2/rm-configuring-questionnaires.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Questionnaires

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The process of entering new requirements involves capturing information that varies by organization. Requirements Management provides the capability to customize the questionnaires and questions used to capture this information without modifying the solution.

This page describes how to use the [Requirements Management Settings](accessing-rm-settings.html) site to configure these questions.

## Questions

Questions are added to the questionnaires displayed in the [Additional Information](creating-new-requirement.html#enter-additional-information) section of the Create New Requirement wizard.

### View Questions

To view questions:

1.  Navigate to the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site.
2.  Expand **Configure Questionnaires** and select the **Questions** option to navigate to the **Questions** page.
3.  Enter question keywords in the search field and click **SEARCH** to filter the questions by the entered keywords.
4.  Select question **TYPE** (such as Radio Button or Dropdown) using the dropdown to filter the questions by their type.

![Questions page displaying existing questions, search, and type filters.](images/view_questions.png)

### Create questions

To create a question:

1.  Click **+CREATE** to open the **Create Question** wizard.
2.  Enter **Question Text**.
3.  Select **Response Type** using the dropdown. **Choose from**:
    -   **Date**: Adds a date picker.
    -   **Dropdown**: Adds a dropdown with multiple **Response Options** and **Max Selections** (Maximum number of responses that users are able to select when answering this question) limit.
    -   **Integer**: Adds a number-only field.
    -   **Radio Button**: Adds radio button(s) with multiple **Response Options**.
    -   **Text**: Adds a text field.
4.  Click **CREATE** to create the question.

![Create Question wizard showing dropdown response type and options.](images/create_questions.png)

### Import questions

Questions can be imported by uploading .XLSX files.

To import questions:

1.  Click **IMPORT** to open the **Import** wizard. The Import wizard displays a sample format to use for importing questions.
2.  **OPTIONAL**: Click **Excel Sample Template** to download the sample template to use for importing questions.
3.  Click **UPLOAD** to open the file picker wizard and select the .XLSX file.
4.  Review the uploaded questions and make the required changes within the wizard.
5.  Click **BEGIN IMPORT** to preview the imported questions.

    ![Import questions wizard: Uploaded Excel data for review.](images/import_questions.png)

6.  Click X icon corresponding to a question to remove it.
7.  Click **ADD QUESTIONS** to import the questions.

![import questions](images/import_questions_2.png)

### Update questions

To update a question:

1.  Click a **Question** to open the **Update Question** wizard.
2.  Update the **Question Text** and **Response Type**. See [response types](#create-questions).
3.  Click **UPDATE** to update the question.

![Update Question wizard for modifying question text, response type, and response options.](images/update_questions.png)

**Caution:**  Changes to a question are reflected on all questionnaire templates that reference it.

### Delete questions

To delete a question:

-   Click Trash icon corresponding to a question to delete it.

![Table of questions with search bar, type filter, and delete options.](images/delete_questions.png)

**Note:**  A question must be removed from all associated questionnaires before it can be deleted.

## Questionnaires

Questionnaires are sets of grouped questions to collect organization-specific information for a requirement. They appear in the Additional Information section of the Create requirement form.

### View questionnaires

To view questionnaires:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Enter questionnaire keywords in the search field and click **SEARCH** to filter the questionnaire list by the entered keywords.

![Appian Questionnaire page with searchable list of questionnaires.](images/view_questionnaires.png)

### Create questionnaires

To create a questionnaire:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Click **+CREATE** to open the **Create Questionnaire** wizard.
3.  Enter a **Questionnaire Name**.
4.  Enter a **Description** for the questionnaire.
5.  Enter a **Section Name** for the questionnaire section.
6.  Enter questions keywords in the **Choose Question** field and click Search icon to filter and display resulting questions.

    **Note:**  The questions list contains all of the [configured questions](#create-questions).

7.  Select a **Question**.
8.  Select **Visibility** using the radio buttons. **Choose from**:
    -   **Always Visible**: The question is always visible with no conditions.
    -   **Visible on Conditions**: The question is only visible when the set conditions are met. Select **Configure Conditional Logic** using the radio buttons. **Choose from**:
        -   **OR (Matches any conditions)**: The question is displayed if any of the set conditions are met.
        -   **AND (Matches all conditions)**: The question is displayed if all the set conditions are met.
            1.  Select **Question**, **Operator**, and **Response** to set conditional questions.
            2.  Click **Add Condition** to add more conditions.
9.  Click **ADD** to add the question to the section.

    ![Create Questionnaire wizard: configuring conditional logic for a question.](images/create_questionnaires.png)

10.  Click **+Add Question** to add more questions to the section.
11.  Click **Add New Section** to add more sections to the questionnaire.
12.  Click **PREVIEW** to preview the questionnaire.
13.  Click **PUBLISH** to create and publish the questionnaire.

![Configuring conditional logic for a questionnaire question.](images/create_questionnaires_2.png)

**Note:**  Any questionnaire that contains the updated question displays the latest version of the question. All future requirements use the modified default questionnaire. Requirements that are already in progress or completed are not affected.

### Set default questionnaires

To set a questionnaire as default:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Click Vertical Ellipsis icon corresponding to a questionnaire and then select the **Set Default** option to open the **Set Default Questionnaire** wizard.
3.  Click **SET DEFAULT** to set the questionnaire as default.

**Note:**  The default questionnaire is marked with .

![Questionnaire list showing the 'Set Default' action via a dropdown menu.](images/set_default_questionnaires.png)

To remove a questionnaire as default:

1.  Click Vertical Ellipsis icon corresponding to the default questionnaire and select the **Remove Default** option to open the **Remove Default Questionnaire** wizard.
2.  Click **REMOVE DEFAULT** to remove the questionnaire as default.

![Questionnaire list showing default questionnaire and 'Remove Default' menu option.](images/set_default_questionnaires_2.png)

### Update questionnaires

To update a questionnaire:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Click Vertical Ellipsis icon corresponding to a questionnaire and select **Edit** to open the **Edit Questionnaire** wizard.
3.  Update the [questionnaire fields](#create-questionnaires).
4.  Click **PREVIEW** to preview the questionnaire.
5.  Click **PUBLISH** to create and publish the questionnaire.

![Update Questionnaire wizard with editable fields for questionnaire name, description, and questions.](images/update_questionnaires.png)

### Delete questionnaires

To delete a questionnaire:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Click Vertical Ellipsis icon corresponding to a questionnaire and then select **Delete** to open the **Delete Questionnaire** wizard.
3.  Click **DELETE** to delete the questionnaire.

![Delete Questionnaire confirmation for 'Laptop Requirements' questionnaire.](images/delete_questionnaires.png)

### Clone questionnaires

To clone a questionnaire:

1.  Expand **Configure Questionnaires** and select the **Questionnaire** option to navigate to the **Questionnaire** page.
2.  Click Vertical Ellipsis icon corresponding to a questionnaire and select **Clone** to open the **Clone Questionnaire** wizard.
3.  Edit the [questionnaire fields](#create-questionnaires).
4.  Click **PREVIEW** to preview the questionnaire.
5.  Click **PUBLISH** to publish the cloned questionnaire.

![Clone Questionnaire wizard displaying editable name, description, and questions.](images/clone_questionnaires.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...