---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-setup-ai-claim-comments-summary.html
original_path: cc-25.1.1.0/cc-setup-ai-claim-comments-summary.html
version: "25.3"
title: "Setting Up AI Claim Comment Summary Module"
page_id: "cc-25.1.1.0/cc-setup-ai-claim-comments-summary"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up AI Claim Comment Summary Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

After installing the [AI Claim Comment Summary module](cc-install-ai-comment-summary.html), you need to set it up before using it with the Connected Claims Base application.

This guide walks you through the incorporation steps, which include:

-   [Adding the Comment Summary to the Create and Update Comment process](#step-1-adding-the-comment-summary-to-the-create-and-update-comment-process).
-   [Adding the Delete Comment Summary to the Delete Comment process](#step-2-adding-the-delete-comment-summary-to-the-delete-comment-process).
-   [Displaying the Comment Summary in the Comment thread](#step-3-displaying-the-comment-summary-in-the-comment-thread).

### System Prerequisites

-   Appian platform running version 25.1 or greater with the Record Chat feature enabled.
-   A supported [web browser](../System_Requirements.html#web-browsers). Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`
-   Imported AI Claim Comment Summary module application containers, including:
    -   `CCM Add On: Comments Summary AI (CCM_CSAI)`

## Step 1: Adding the Comment Summary to the Create and Update Comment process

To set up the AI Claim Comment Summary module with Connected Claims you need to first update the process model that handles creating and updating claim comments. This allows the claims comments summary can be generated when a comment is added or updated:

To update the process model:

1.  Open the **CCM\_Comment\_CreateUpdate** process model.
    1.  After the **Merge Flows Script Task** node, add a new subprocess node called **Update AI Comment Summary**, as shown below:

        ![ccm_comment_createupdate_process_model](images/ccm_comment_createupdate_process_model.png)

        1.  Set up the subprocess node in the following way:

            ![cc_setup_the_subprocess_node](images/cc_setup_the_subprocess_node.png)

            1.  For the **claimId** input variable, pass in `pv!comments.claimId`.

## Step 2: Adding the Delete Comment Summary to the Delete Comment process

Next, you need to add a subprocess to the **Comment Delete** process model to handle updating the Comment Summary.

To update the process model:

1.  Open the **CCM\_Comment\_Delete** process model.
    1.  After the **Merge Flows Script** task, add a new subprocess node called **Update AI Comment Summary**, as shown:

        ![cc_comment_delete](images/cc_comment_delete.png)

        1.  Set up the subprocess node as shown:

            ![cc_configure_update_comment_summary_node](images/cc_configure_update_comment_summary_node.png)

            1.  For the **claimId** input variable, pass in `pv!comments.claimId`.
                -   **Note**: Do not pass out any output variables.

## Step 3: Displaying the Comment Summary in the Comment thread

Finally, you need to update the Comment Thread interface to display the Comment summary

To update the interface:

1.  Open the **CCM\_Comment\_Sub\_CommentThread** interface.
2.  In the contents of the `a!sectionLayout` and above the section of code that contains an `a!forEach()` iteration over `local!comments.data` (around **line ~224**), insert the following code:

    ![cc_comment_sub_comment_thread.png](images/cc_comment_sub_comment_thread.png)

    ```
    1
    2
    3
    4
    5
    6
    7
    rule!CCM_CSAI_ClaimCommentSummary_Display(
                        brandingMap: ri!brandingMap,
                        claimId: ri!claimId,
                        triggerRefresh: ri!triggerRefresh,
                        showWhen: index(
                          local!commentTabs,
                          local!selectedCommentsTab,
    ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...