---
source_url: https://docs.appian.com/suite/help/25.3/setup-case-comments-summary.html
original_path: setup-case-comments-summary.html
version: "25.3"
title: "Setting Up Case Comments Summary Module"
page_id: "setup-case-comments-summary"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Case Comments Summary Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

After installing the [Case Comments Summary module](install-case-comments-summary.html), you need to set it up before using it with the Case Management Studio Base application. This guide walks you through the setup steps, which include:

1.  [Generate a summary on new and updated comments](#step-1-generate-a-summary-on-new-and-updated-comments).
2.  [Generate a summary when a comment is deleted](#step-2-generate-a-summary-on-comment-deletion).
3.  [Display the comments summary on the case summary view](#step-3-display-the-comments-summary-on-the-case-summary-view).

## Step 1: Generate a summary on new and updated comments

To set up the Case Comments Summary module with Case Management Studio you need to first update the process model that handles creating and updating case comments so the case comments summary can be generated when a comment is added or updated:

To update the process model:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Comment\_CreateUpdate** process model.
    1.  Add a subprocess node after the **Merge Flows** node and name it `Summarize with AI`.

        -   **Note**: The incoming path should be chained, but the outgoing path should not be chained.

        ![cms_case_comments_summary_add_comment](images/cms_case_comments_summary_add_comment.png)

5.  In the new subprocess node, go to **Properties**.
    1.  Navigate to the **Setup** tab and select the following settings:

        ![cms_case_comments_summary_add_comment_setup](images/cms_case_comments_summary_add_comment_setup.png)

        1.  In the **Subprocess Setup** section, select **Asynchronously** in the **Subprocess will run** section.
        2.  In the **Run this process model** section, select **CMGT\_CMT\_AI\_CaseCommentSummary\_Update** as the process to run.
            1.  Select the **Reporting** checkbox to include data from this subprocess in the parent process model reports.
        3.  In the **Input Variables** section, click the **Expression Editor** for the **caseId** variable and paste the following code snippet.

            ```
            1
            pv!comments['recordType!{e57250b0-f216-4a23-afd9-39e7d532d302-cmgt}CMGT_Comment.fields.{e834d841-d4e3-4e0e-a251-4c864cb0b853}caseId']
            ```

        4.  Navigate to the **Other** tab and select the **Run all instances at the same time**.
        5.  Click **OK**.
6.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 2: Generate a summary on comment deletion

For the case comments summary to be generated when a comment is removed:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Comment\_Delete** process model.
    1.  Add a subprocess node after the **Merge Flows** node and name it `Summarize with AI`.

        -   **Note**: The incoming path should be chained, but the outgoing path should not be chained.

        ![cms_case_comments_summary_delete_comment](images/cms_case_comments_summary_delete_comment.png)

5.  In the new subprocess node, go to **Properties** > **Setup** and select the following settings: ![cms_case_comments_summary_delete_comment_setup](images/cms_case_comments_summary_delete_comment_setup.png)

    1.  In the **Subprocess Setup** section, select **Synchronously** and check **Enable activity chaining into all initial nodes in the subprocess**.
    2.  In the **Run this process model** section, select **CMGT\_CMT\_AI\_CaseCommentSummary\_Update** as the process to run.
    3.  In the **Input Variables** section:
        1.  Click the **Expression Editor** for the **caseId** variable and paste the following code snippet.

            ```
            1
            pv!comments['recordType!{e57250b0-f216-4a23-afd9-39e7d532d302-cmgt}CMGT_Comment.fields.{e834d841-d4e3-4e0e-a251-4c864cb0b853}caseId']
            ```

        2.  Navigate to the **Other** tab and select the **Run all instances at the same time**.
        3.  Click **OK**.
    4.  From the **File** menu, click **Save & Publish**, then **Exit**.

## Step 3: Display the comments summary on the case summary view

To display the comments summary on the case summary view:

1.  Login to the target environment.
2.  Navigate to the **Appian Designer**.
3.  Navigate to the **Case Management Studio Base** application.
4.  Search for and open the **CMGT\_Comment\_Sub\_CommentThread** interface.
    1.  Find the section layout that calls **CMGT\_Comment\_Sub\_CommentThread\_DisplayComment**.
        1.  Locate the `a!forEach()` function that calls **CMGT\_Comment\_Sub\_CommentThread\_DisplayComment** and paste the following code snippet above it as shown.

            ![cms_case_comments_summary_display_summary](images/cms_case_comments_summary_display_summary.png)

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
            rule!CMGT_CMT_AI_CaseCommentSummary_Display(
            caseId: ri!caseId,
            brandingMap: ri!brandingMap,
            triggerRefresh: ri!triggerRefresh,
            commentRefresh: ri!commentRefresh,
            showWhen: index(
             local!commentTabs,
             local!selectedCommentsTab,
             "name",
             null
            ) = 'translation!{84af98bc-da91-4f4e-a9c3-1fc60289d669}CMGT_CMT_AI Translations.{d97fb5e7-8221-4ccd-a819-de6b9adc8150}Case'
            ),
            ```

    2.  Click **SAVE**.

## Next step

Now that you have set up the [Case Comments Summary](cms-case-comments-summary-overview.html) module, you can leverage AI to generate a summary of all the comments on a case.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...