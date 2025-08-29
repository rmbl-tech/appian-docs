---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-managing-evaluations.html
original_path: gss-25.2.2.4/gss-managing-evaluations.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Evaluations

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

After [creating a new evaluation](gss-creating-new-evaluation.html), GSS makes it easy to view and manage it on the **EVALUATIONS** page. You can view all existing evaluations or use search and filter options to find specific ones. Drill down into a single evaluation to see more details or take action.

This page provides a brief overview of how to manage your existing evaluations.

## View evaluations

To view your organization's complete list of evaluations:

1.  Click **Evaluations** on the side navigation bar to navigate to the **Evaluations** page. The evaluations list displays all existing evaluations and key details about each, including the selected evaluation method, the evaluation's start date, and the due date.
2.  Enter evaluation keywords in the search bar and click **SEARCH** to filter the evaluation list.
3.  Select the evaluation **STATUS** (`Set up`, `In Progress`, or `Complete`) using the dropdown.
    -   `Set up`: The evaluation has not started. You can update details such as duration, evaluation method, and vendors.
    -   `In Progress`: The evaluation has started. Only limited details such as evaluators, tasks, and documents can be updated.
    -   `Complete`: The evaluation is complete. Only limited details such as tasks and documents can be updated.
4.  Select the evaluation **DUE DATE** using the date picker.

![Evaluations list with search, status, and due date filters](images/view_evaluations.png)

To view evaluation details, click an evaluation in the evaluations list. This displays specific information related to the evaluation:

![Evaluation summary view showing key details and sections.](images/view_evaluations_2.png)

Each evaluation record is organized into the following tabs:

| Tab | Description |
| --- | --- |
| **Summary** | Provides detailed information about the evaluation, including the status, important dates, factors, approach, contracting team members, and more. The default tab when you open an evaluation record. |
| **Factors** | Provides information about all factors assigned to the evaluation. Expand each factor to see detailed information about any subfactors that have been set up. |
| **Vendors** | Provides a list of vendors assigned to the evaluation and information about each. Easily search or filter the list to display the vendors you want to see. |
| **Ratings** | Provides the rating results for each vendor assigned to the evaluation, including the rating method, legend, and any related documents. Filter the rating results to view only the vendors that match your selected criteria or download a summary of the rating results for a specific vendor. |
| **Consensus Reports** | Lists all vendor consensus for the evaluation, including the status of each. Clicking the vendor link opens the consensus report, which allows you to start the consensus or view the final report of a completed vendor consensus. |
| **Documents** | Provides a list of all documents associated with an evaluation record. |
| **Teams** | Allows you to view each team assigned to an evaluation and the member names and contact information. |
| **Tasks** | Provides a list of all tasks associated with the evaluation and sorts them by Outstanding, Completed, Not Needed, and Canceled. |
| **Task History** | Provides a log of all completed tasks for the evaluation. |
| **Evaluation History** | Provides a log of all edits, updates, and deletions for the evaluation. |

**Note:**  The Ratings and Consensus Reports tabs are applicable for best value evaluations, but not for LPTA evaluations.

On the Summary tab, you can also add tasks, upload documents or create a new document from a template, and continue the evaluation setup if necessary.

_Need to create a new evaluation?_ Click **\+ CREATE NEW EVALUATION** to open the guided wizard that walks you through each step of the setup process. See [create a new evaluation](gss-creating-new-evaluation.html) for more information.

## Update evaluations

To update an evaluation, navigate to its summary and:

-   Click corresponding to a card to edit evaluation [details](gss-creating-new-evaluation.html#create-evaluations), description, personnel, and [phases](gss-creating-new-evaluation.html#add-phases).
-   Click **Continue Setup** in the **Factors** card to edit evaluation [factors](gss-creating-new-evaluation.html#add-factors).
-   Click **Add** in the **Vendors** card to add additional [vendors](gss-creating-new-evaluation.html#add-vendors) to an evaluation.

![Click the edit icons, Add, and Continue Setup to update specific evaluation details.](images/update_evaluations.png)

-   To update an existing vendor:
    1.  Click on a vendor card and select **Update Vendor** to open the **Update Vendor** wizard.

        ![Navigate to update a vendor.](images/update_evaluations_2.png)

    2.  Update the vendor details and click **UPDATE** to save changes.

        ![Update vendor.](images/update_evaluations_3.png)

-   To delete an existing vendor:
    1.  Click on a vendor card and select **Delete Vendor** to open the **Delete Vendor** wizard.
    2.  Click **DELETE** to delete the vendor.

        ![Delete vendor.](images/update_evaluations_4.png)

**Note:**  If GSS is integrated with VM, an `Update Required` tag appears next to the related vendor in GSS when the vendor resubmits a proposal in VM. If a vendor withdraws a proposal after being added to the evaluation, the vendor is removed accordingly.

![Update Required tag appears next to the related vendor in GSS when the vendor resubmits a proposal in VM.](images/update_evaluations_5.png)

## Complete evaluations

To mark an evaluation complete after the necessary tasks are completed:

1.  Navigate to an evaluation summary.
2.  Click and select **Complete Evaluation** to open the **Mark Evaluation Complete** wizard.

    ![Options menu showing 'Complete Evaluation' highlighted.](images/complete_evaluations.png)

3.  Select the **Completion Date** using the date picker.
4.  Click **MARK EVALUATION COMPLETE** to complete the evaluation.

    ![Mark Evaluation Complete wizard with date selection.](images/complete_evaluations_2.png)

## Delete evaluations

To delete an evaluation:

1.  Click **Evaluations** on the side navigation bar to navigate to the **Evaluations** page.
2.  Click on an evaluation record to navigate to its **Summary** page.
3.  Click the **…** more options dropdown.
4.  Select **Delete** to open the **Delete Evaluation** wizard.
5.  Enter the **Reason** for deletion.
6.  Click **DELETE**.

**Caution:**  Evaluations cannot be recovered once deleted. Any associated data such as documents and tasks are also deleted.

![Click ellipses icon and select Delete to delete an evaluation.](images/delete_evaluation_from_summary.png)

## Update evaluators

If your teams are impacted by personnel or staffing changes, GSS makes it easy for you to reflect those changes by allowing you to update your evaluation teams. Contracting personnel and evaluation chairs can add or delete team members from an evaluation team for any existing evaluations that are still in progress.

**Note:**  Changes to an evaluator team are not allowed once the evaluation is completed.

To update evaluators for an in-progress evaluation:

1.  Navigate to the evaluation’s Summary tab.
2.  Click and select **Update Evaluators** to open the **Update Evaluators** wizard.

    ![Click ellipses icon and select Update Evaluators to open the Update Evaluators wizard.](images/update_evaluators1.png)

    Alternatively, go to the **Teams** tab and click **UPDATE EVALUATORS** to open the **Update Evaluators** wizard.

    ![Select Update Evaluators to open the Update Evaluators wizard.](images/update_evaluators2.png)

3.  Select the evaluator team to update from the list on the **Teams** panel.

    ![Evaluator team list.](images/update_evaluators3.png)

    To add evaluators:

    1.  Click **ADD EVALUATORS**.
    2.  Select evaluators using the **Search for Evaluators** multi-select auto-suggest dropdown.
    3.  Click **ADD** to add the evaluators.

        ![Search and add evaluators.](images/update_evaluator4.png)

    To remove evaluators:

    1.  Select the evaluator checkbox(es).
    2.  Click **REMOVE EVALUATORS** to remove the selected evaluators.

        ![Check and remove evaluators as required.](images/update_evaluator5.png)

4.  Click **NEXT**.
5.  Verify that the correct evaluators are assigned to each factor and subfactor.
    1.  Select **Evaluation Team** using the dropdown.
    2.  Select **Evaluators** using the multi-select dropdown.
    3.  Select the **Due** date using the date picker.

        **Note:**  If the due date assigned to each factor or subfactor occurs in the past, you must use the date picker to change it to a future date before proceeding. The future due date you assign must occur before the evaluation due date.

6.  Click **UPDATE** to update the evaluators.

    ![Update evaluator fields.](images/update_evaluator6.png)

7.  Click **CLOSE** to close the **Update Evaluators** wizard.

    ![Close the Update Evaluator wizard.](images/update_evaluator7.png)

## View related solicitation

To view an evaluation’s related solicitation:

1.  Click **Evaluations** on the side navigation bar to navigate to the **Evaluations** page.
2.  Select a evaluation to navigate to its **Summary** tab.
3.  In the **Related Procurements** section, select the solicitation in the **Solicitation** section to navigate to its summary in the **Contract Writing** solution.

**Note:**  The Solicitation card in the Related Procurements section is read-only for non-contracting personnel.

## View related opportunity

To view an evaluation's related opportunity:

1.  Click **Evaluations** on the side navigation bar to navigate to the **Evaluations** page.
2.  Select a evaluation to navigate to its **Summary** tab.
3.  In the **Related Procurements** section, select the opportunity in the **Opportunity** section to navigate to its summary in the **Vendor Management** solution.

![GSS evaluation summary showing Related Procurements card.](images/related_procurements.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...