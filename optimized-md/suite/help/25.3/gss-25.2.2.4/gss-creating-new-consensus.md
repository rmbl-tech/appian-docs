---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-creating-new-consensus.html
original_path: gss-25.2.2.4/gss-creating-new-consensus.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating a New Consensus

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Source selection involves creating, reviewing, and finalizing vendor evaluations for the goods and services required for business operations. This process includes assessing each vendor based on various factors and using these evaluations to determine a final consensus rating. Once the consensus process begins, Appian Records provides straightforward and informative interfaces that allow end users to easily view and update vendor information.

This page provides instructions for creating a new consensus.

### Group requirements

You must be a member of the `AS GSS Start or Continue Consensus PM Access` security group to create a new consensus. By default, the `Factor Chairs` assigned to the selected factor and `Factor Advisor` groups belong to this security group.

## Start consensus

Creating a new consensus is a guided experience that walks you through the process of entering the information you need to provide a final rating for a factor and vendor.

**Note:**  Before creating a new consensus, evaluation must be started, and all its tasks for the selected factor and vendor must be completed.

To start a new consensus:

1.  Navigate to an evaluation summary.
2.  Click **Consensus Reports** to navigate to the **Consensus Reports** tab and view the evaluation tasks associated with each factor and subfactor for a specific vendor. The Consensus tab defaults to showing an expanded view of all factors and subfactors for each vendor assigned to the evaluation. Click to hide the subfactors and to show them.
3.  Click the vendor name to open the consensus report.

    ![Navigate to consensus reports](images/start_consensus.png)

4.  Click **START CONSENSUS FORM** to open the **Submit Consensus Form** wizard.

    ![Open the Submit Consensus Form wizard](images/start_consensus_2.png)

The Submit Consensus Form contains three tabs to complete:

-   [Evaluator Responses](#select-evaluator-responses)
-   [Included Responses](#update-and-combine-included-responses)
-   [Final Rating & Comments](#submit-final-rating-and-comments)

## Select evaluator responses

The evaluator responses data collection step is divided into five rating categories: `Significant Strengths`, `Strengths`, `Significant Weaknesses`, `Weaknesses`, and `Deficiencies`.

When creating a new consensus, select which evaluator responses to include in the final consensus report.

To select evaluator responses:

1.  On the **Evaluator Responses** tab, click or to show or hide consensus rating categories each evaluator assigned to the vendor.
2.  Review evaluator responses for each consensus category.
3.  Select the **Decision** to **Include** or **Exclude** an evaluator response in the final consensus report using the radio buttons.
4.  Enter a **Reason** for including or excluding an evaluator response.

    **Note:**  If you choose to exclude a response, you must add a comment explaining your decision.

5.  Click **NEXT** to save changes and continue to the [Update and combine included responses](#update-and-combine-included-responses) tab, or click **SAVE AND CLOSE** to save changes and close the wizard to continue the consensus form later.

![Include or exclude an evaluator response.](images/select_evaluator_responses.png)

## Update and combine included responses

The COMBINE RESPONSES data collection step enables you to combine similar or redundant responses.

To update and combine included responses:

1.  On the **Included Responses** tab, click corresponding to an evaluator response to update it.
2.  Edit evaluator response sections (such as justification and references) and click **SAVE** to save changes.
3.  Click **COMBINE RESPONSES** to combine the responses within a consensus category.
    1.  Select the responses to combine using the checkboxes.
    2.  Select the **Suggest combined response using AI** radio button to combine and generate an AI response, or select the **Combine manually** radio button to combine the responses manually.
    3.  Click **COMBINE** to save changes.

        **Note:**  There must be at least two individual responses within the same consensus category to create a combined response.

4.  Click **NEXT** to save changes and continue to the [Final Rating & Comments](#submit-final-rating-and-comments) tab, or click **SAVE AND CLOSE** to save changes and close the wizard to continue the consensus form later.

![Update and combine included responses.](images/update_and_combine_included_responses.png)

Once you click **NEXT**, AI may take a few seconds to generate a recommendation for final comments.

## Submit final rating and comments

The Final Rating & Comments tab enables you to select the vendor's final rating and make edits to the comments according to the evaluation factor. The evaluation response fields are pre-populated with the responses from the previous steps.

To submit the final rating and comments:

1.  On the **Final Rating & Comments** tab, select a **Final Rating** using the radio buttons. See [rating methods](gss-creating-new-evaluation.html#rating-methods).
2.  Review the **AI Suggestion** and click **Use Suggestion** to use the AI-generated suggestion, or enter **Final Comments** manually.
3.  Click **SUBMIT** to save changes and submit the consensus Form, or click **SAVE AND CLOSE** to save changes and close the wizard to continue the consensus Form later.
4.  Click **YES** to confirm the submission and generate the final consensus report.

![Submit final rating and comments.](images/submit_final_rating_and_comments.png)

## View and download consensus report

To download an evaluation’s vendor consensus report:

1.  Navigate to an evaluation summary.
2.  Click **Consensus Reports** to navigate to the **Consensus Reports** tab.
3.  Click the vendor name to open and view the consensus report.
4.  Click **Download Report Version** to download the consensus report.

    **Note:**  The Download Report Version link is only available for completed consensus reports.

## Sign consensus report

To complete a consensus report, all contributors must sign it:

1.  On the submitted consensus report, click **SIGN** to open the **Sign Consensus Report** wizard.

    ![Navigate to sign the report.](images/on_the_spot_consensus_5.png)

2.  Acknowledge the accuracy of the report using the checkbox.
3.  Click **SIGN**.

    ![Sign the report](images/on_the_spot_consensus_6.png)

To view and download a consensus report, see [View and download consensus report](#view-and-download-consensus-report).

To add a new version for a consensus report, see [Add consensus version](#add-consensus-version)

## Add consensus version

To create a new consensus version and archive the existing version:

1.  Navigate to an evaluation summary.
2.  Click **Consensus Reports** to navigate to the **Consensus Reports** tab.
3.  Click the vendor name to open the consensus report.
4.  Click **ADD VERSION** to open the **Add Consensus Report Version** wizard.
5.  Select the **Reason** for creating a new consensus version and archiving the existing one.
    1.  Enter comments if you have selected **Other** as the reason.
6.  Click **ADD** to add the new consensus version.

![Enter reason and add the consensus version.](images/on_the_spot_consensus_7.png)

## On-the-spot consensus

**Note:**  This section applies when on-the-spot consensus is enabled during [evaluation creation](gss-creating-new-evaluation.html), allowing users to skip [individual evaluations](gss-evaluating-vendors.html) and submit the consensus immediately.

To submit consensus after [starting an evaluation](gss-creating-new-evaluation.html#review-and-start-evaluation):

1.  From the evaluation summary page, click **Consensus Reports** to navigate to the **Consensus Reports** tab.
2.  Select the vendor to submit the consensus.

    ![Select vendor to submit consensus.](images/on_the_spot_consensus.png)

3.  Click **OPEN CONSENSUS FORM** to open the **Submit Consensus** wizard.

    ![Open consensus form.](images/on_the_spot_consensus_2.png)

4.  Click a document in the **Vendor Documents** section to download and review the vendor submission document.
5.  Click **ADD** in the **Responses** section to open the response form.
6.  Select **Section** using the dropdown. Out-of-the-box values are `Significant Strengths`, `Strengths`, `Significant Weaknesses`, `Weaknesses`, and `Deficiencies`.
7.  Enter **Response** and its **Justification**.
8.  Enter **References** to sections in the vendor response document.
9.  Click **ADD** to add the vendor response, or click **SAVE AND ADD ANOTHER** to add more vendor responses.

    ![Add responses.](images/on_the_spot_consensus_3.png)

10.  Scroll down to the **Closing Remarks** section.
11.  Select a rating. [Rating methods](gss-creating-new-evaluation.html#add-factors) are pre-configured during the evaluation creation process.
12.  Enter **Rating Justification**. Alternatively:
     1.  Click **Generate AI Suggestion** to generate the rating justification’s **AI Suggestion**.
     2.  Click **Paste Suggestion Below** to paste the **AI Suggestion** in the **Rating Justification** field, or click **Generate Again** to regenerate the justification.
13.  Click **SUBMIT** to submit the consensus and generate the final consensus report.

     ![Submit final rating.](images/on_the_spot_consensus_4.png)

After submitting the on-the-spot consensus report, you can:

-   [View and download the consensus report](#view-and-download-consensus-report).
-   [Sign the consensus report](#sign-consensus-report).
-   [Add consensus version](#add-consensus-version).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...